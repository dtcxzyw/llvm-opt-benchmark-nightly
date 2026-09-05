Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.08?download=true
inline.NumInlined: 497
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECs31YAwBA1AlL_19xet_core_structures:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.041 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.120, %bb.k ] ; 3 uses
  %.sroa.7.040 = phi i64 [ %2, %.lr.ph ], [ %.sroa.7.118, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %.sroa.0.041, i64 noundef %.sroa.7.040) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split27
    i64 0, label %.split28
    i64 1, label %.split
  ], !prof !12

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = invoke noundef zeroext i1 %i.n(i32 noundef %i.l)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !0

.split27:                                         ; preds = %bb.c
  %i.p = lshr i64 %i.g, 32
  %i.q = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.p to i8
  %spec.select.i.i.i = select i1 %i.q, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.r = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.s, label %bb.i, label %._crit_edge

.split28:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !15, !noundef !5
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.thread, label %._crit_edge

.split:                                           ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !15, !noundef !5
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.sroa.7.040, %i.g
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.7.040, i64 noundef %.sroa.7.040, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = sub nuw nsw i64 %.sroa.7.040, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.041, i64 %i.g
  br label %bb.k

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.o, label %.thread.thread, label %._crit_edge

._crit_edge:                                      ; preds = %.split28, %.split27, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.e, %bb.k, %bb.a
  %.sroa.09.0 = phi ptr [ null, %bb.a ], [ @3, %bb.e ], [ %i.f, %.split27 ], [ %i.f, %.split ], [ %i.f, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ], [ %i.f, %.split28 ]
  ret ptr %.sroa.09.0

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures.exit

bb.i:                                             ; preds = %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.g, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !1052
  store i8 3, ptr %i.a, align 8, !alias.scope !1052
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures.exit
  %.sroa.0.120 = phi ptr [ %.sroa.0.041, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures.exit ], [ %i.ac, %bb.h ]
  %.sroa.7.118 = phi i64 [ %.sroa.7.040, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures.exit ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.7.118, 0
  br i1 %i.ah, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures(ptr nonnull %i.f) #26
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBY_6cursor6CursorRINtNtB6_3vec3VechEEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %1, align 8, !range !6, !noundef !5 ; 3 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %3, -1025
  br i1 %i.i, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit, !prof !16

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.b
  %i.j = add nuw i64 %3, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %3, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.053.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit ], [ %i.e, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1i_6cursor6CursorRINtNtB8_3vec3VechEEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread, label %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread_crit_edge

._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.d, align 8
  br label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread

._crit_edge:                                      ; preds = %bb.af, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.cv, %bb.af ]
  %.lcssa93 = phi i64 [ %i.ci, %.outer ], [ %i.cv, %bb.af ] ; 4 uses
  %.lcssa90 = phi i64 [ %i.cj, %.outer ], [ %i.cy, %bb.af ] ; 3 uses
  %.lcssa = phi i1 [ %i.cl, %.outer ], [ %i.da, %bb.af ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.af
  %i.ad = call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1i_6cursor6CursorRINtNtB8_3vec3VechEEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.ac, label %bb.ad

bb.g:                                             ; preds = %bb.k, %._crit_edge
  %i.ah = phi i64 [ %..i.i.i, %bb.k ], [ %.lcssa90, %._crit_edge ] ; 2 uses
  %i.ai = phi i64 [ %i.av, %bb.k ], [ %.lcssa93, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.av, %bb.k ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw i64 %i.ai, 32
  %i.al = icmp ugt i64 %.sroa.027.3, %i.ak
  %i.am = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai ; 3 uses
  br i1 %i.al, label %bb.l, label %.thread

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %i.ao = icmp ugt i64 %.lcssa93, -33
  br i1 %i.ao, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nuw i64 %.lcssa93, 32
  %i.aq = shl nuw i64 %.lcssa90, 1
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ap, i64 range(i64 0, -1) %i.aq) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1061
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1061
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %.lcssa90, ptr %.val13.i.i, i64 noundef %..i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef 1), !noalias !1061
  %i.ar = load i64, ptr %i.b, align 8, !range !13, !noalias !1061, !noundef !5
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1061
  br label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.s, align 8, !noalias !1061, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1061
  store ptr %i.at, ptr %i.r, align 8, !alias.scope !1061
  %i.au = icmp sgt i64 %..i.i.i, -1
  call void @llvm.assume(i1 %i.au)
  store i64 %..i.i.i, ptr %1, align 8, !alias.scope !1061
  %.pre12.i = sub nuw i64 %..i.i.i, %.lcssa93
  %4 = icmp samesign ugt i64 %.pre12.i, 31
  call void @llvm.assume(i1 %4)
  %i.av = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.aw = icmp sgt i64 %i.av, -1
  call void @llvm.assume(i1 %i.aw)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.ax = sub nsw i64 %i.ah, %i.ai
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ax, i64 %.sroa.053.3.ph)
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ay = sub nuw i64 %.sroa.027.3, %i.ai         ; 3 uses
  %.pre162 = sub nsw i64 %i.ah, %i.ai             ; 2 uses
  %.not60 = icmp ugt i64 %i.ay, %.pre162
  br i1 %.not60, label %bb.n, label %bb.m, !prof !17

bb.m:                                             ; preds = %.thread, %bb.l
  %.sroa.034.0170 = phi i64 [ %..i, %.thread ], [ %i.ay, %bb.l ] ; 3 uses
  %i.az = add i64 %.sroa.034.0170, %i.ai
  %.not59 = icmp uge i64 %.sroa.027.3, %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.an, ptr %i.c, align 8
  store i64 %.sroa.034.0170, ptr %i.t, align 8
  store i64 0, ptr %i.u, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.v, align 8
  %i.ba = call noundef ptr @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRINtNtB9_3vec3VechEEENtNtB7_4read4Read8read_bufCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.c) ; 2 uses
  %.not61124 = icmp eq ptr %i.ba, null
  br i1 %.not61124, label %.split84._crit_edge, label %.lr.ph127

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ay, i64 noundef %.pre162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29
  unreachable

.lr.ph127:                                        ; preds = %bb.m, %bb.r
  %i.bb = phi ptr [ %i.ce, %bb.r ], [ %i.ba, %bb.m ] ; 10 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 4 uses
  %i.bd = and i64 %i.bc, 3
  switch i64 %i.bd, label %default.unreachable [
    i64 2, label %bb.o
    i64 3, label %.split83
    i64 0, label %.split84
    i64 1, label %.split
  ], !prof !12

default.unreachable:                              ; preds = %.lr.ph127
  unreachable

bb.o:                                             ; preds = %.lr.ph127
  %i.be = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.o
  %i.bf = lshr i64 %i.bc, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !5, !noundef !5
  %i.bj = invoke noundef zeroext i1 %i.bi(i32 noundef %i.bg)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.t, !inline_history !0

.split83:                                         ; preds = %.lr.ph127
  %i.bk = lshr i64 %i.bc, 32
  %i.bl = icmp ult ptr %i.bb, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bk to i8
  %spec.select.i.i.i = select i1 %i.bl, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bm = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bn, label %bb.p, label %.split84._crit_edge.loopexit

.split84:                                         ; preds = %.lr.ph127
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !range !15, !noundef !5
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %.thread86, label %.split84._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph127
  %i.br = getelementptr i8, ptr %i.bb, i64 31
  %i.bs = load i8, ptr %i.br, align 8, !range !15, !noundef !5
  %i.bt = icmp eq i8 %i.bs, 35
  br i1 %i.bt, label %bb.q, label %.split84._crit_edge.loopexit

.split84._crit_edge.loopexit:                     ; preds = %.split84, %.split83, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.r
  %.lcssa105.ph = phi ptr [ null, %bb.r ], [ %i.bb, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.bb, %.split ], [ %i.bb, %.split83 ], [ %i.bb, %.split84 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.r ], [ false, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split83 ], [ false, %.split84 ]
  %i.bu = ptrtoint ptr %.lcssa105.ph to i64
  br label %.split84._crit_edge

.split84._crit_edge:                              ; preds = %.split84._crit_edge.loopexit, %bb.m
  %.lcssa105 = phi i64 [ 0, %bb.m ], [ %i.bu, %.split84._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.m ], [ %.not61.lcssa.ph, %.split84._crit_edge.loopexit ]
  %i.bv = load i64, ptr %i.u, align 8, !noundef !5 ; 3 uses
  %i.bw = load i8, ptr %i.v, align 8, !range !18, !noundef !5
  %i.bx = trunc nuw i8 %i.bw to i1                ; 2 uses
  %.pre160 = load i64, ptr %i.d, align 8          ; 3 uses
  %i.by = add i64 %.pre160, %.sroa.034.0170
  %spec.select184 = select i1 %i.bx, i64 %i.by, i64 %.sroa.027.3
  %i.bz = icmp sgt i64 %.pre160, -1
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add i64 %.pre160, %i.bv                 ; 3 uses
  store i64 %i.ca, ptr %i.d, align 8
  br i1 %.not61.lcssa, label %bb.v, label %.loopexit

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bj, label %.thread86, label %.split84._crit_edge.loopexit

.thread86:                                        ; preds = %.split84, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.r

bb.p:                                             ; preds = %.split83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cb = and i64 %i.bc, 1095216660480
  %i.cc = icmp ne i64 %i.cb, 1095216660480
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.assume(i1 %i.cc)
  br label %bb.r

bb.q:                                             ; preds = %.split
  %i.cd = getelementptr i8, ptr %i.bb, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  store ptr %i.cd, ptr %i.w, align 8, !alias.scope !1062
  store i8 3, ptr %i.a, align 8, !alias.scope !1062
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.thread86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = call noundef ptr @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRINtNtB9_3vec3VechEEENtNtB7_4read4Read8read_bufCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.c) ; 2 uses
  %.not61 = icmp eq ptr %i.ce, null
  br i1 %.not61, label %.split84._crit_edge.loopexit, label %.lr.ph127

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %lpad.thr_comm

bb.t:                                             ; preds = %.noexc, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures(ptr nonnull %i.bb) #26
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.v:                                             ; preds = %.split84._crit_edge
  %i.cg = icmp eq i64 %i.bv, 0
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ch = sub nsw i64 %i.ca, %i.e
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %.not64 = xor i1 %i.bx, true
  %brmerge = or i1 %i.h, %.not64
  %.sroa.053.3.mux = select i1 %i.h, i64 %.sroa.053.3.ph, i64 -1
  br i1 %brmerge, label %bb.y, label %bb.z

.loopexit:                                        ; preds = %.split84._crit_edge, %bb.w
  %.sroa.8.0 = phi i64 [ %i.ch, %bb.w ], [ %.lcssa105, %.split84._crit_edge ]
  %.sroa.07.0 = phi i64 [ 0, %bb.w ], [ 1, %.split84._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.ab, %bb.aa, %bb.z
  %.sroa.053.4 = phi i64 [ -1, %bb.ab ], [ %i.co, %bb.aa ], [ %.sroa.053.3.ph, %bb.z ], [ %.sroa.053.3.mux, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.outer

.outer:                                           ; preds = %bb.y, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread
  %i.ci = phi i64 [ %i.ca, %bb.y ], [ %.pre, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread ] ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.y ], [ %.sroa.053.2, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select184, %bb.y ], [ %i.e, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread ]
  %i.cj = load i64, ptr %1, align 8, !range !6, !noundef !5 ; 3 uses
  %i.ck = sub i64 %i.cj, %i.ci
  %i.cl = icmp ult i64 %i.ck, 32                  ; 2 uses
  %i.cm = icmp eq i64 %i.cj, %i.g
  %or.cond63120 = and i1 %i.cm, %i.cl
  br i1 %or.cond63120, label %.lr.ph, label %._crit_edge

bb.z:                                             ; preds = %bb.x
  %i.cn = icmp eq i64 %i.bv, %.sroa.053.3.ph
  br i1 %i.cn, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.co = shl nuw i64 %.sroa.053.3.ph, 1
  %i.cp = icmp slt i64 %.sroa.053.3.ph, 0
  br i1 %i.cp, label %bb.ab, label %bb.y, !prof !16

bb.ab:                                            ; preds = %bb.aa
  br label %bb.y

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %bb.h, %bb.j, %bb.f, %bb.ac, %bb.ae, %bb.e, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.ab, %bb.e ], [ %.sroa.8.0, %.loopexit ], [ %i.ct, %bb.ac ], [ %i.cx, %bb.ae ], [ 0, %bb.f ], [ 163208757251, %bb.j ], [ 163208757251, %bb.h ]
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit ], [ 1, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.f ], [ 1, %bb.j ], [ 1, %bb.h ]
  %i.cq = inttoptr i64 %.sroa.8.1 to ptr
  %i.cr = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0
  %i.cs = insertvalue { i64, ptr } %i.cr, ptr %i.cq, 1
  ret { i64, ptr } %i.cs

bb.ac:                                            ; preds = %.lr.ph
  %i.ct = ptrtoint ptr %i.af to i64
  br label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.ad:                                            ; preds = %.lr.ph
  %i.cu = icmp eq ptr %i.af, null
  %i.cv = load i64, ptr %i.d, align 8, !noundef !5 ; 5 uses
  %i.cw = icmp sgt i64 %i.cv, -1
  call void @llvm.assume(i1 %i.cw)
  br i1 %i.cu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cx = sub nsw i64 %i.cv, %i.e
  br label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.cy = load i64, ptr %1, align 8, !range !6, !noundef !5 ; 3 uses
  %i.cz = sub nsw i64 %i.cy, %i.cv
  %i.da = icmp ult i64 %i.cz, 32                  ; 2 uses
  %i.db = icmp eq i64 %i.cy, %i.g
  %or.cond63 = and i1 %i.db, %i.da
  br i1 %or.cond63, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %1, align 8, !range !6, !noundef !5 ; 3 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %3, -1025
  br i1 %i.i, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit, !prof !16

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.b
  %i.j = add nuw i64 %3, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %3, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.053.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread

_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit ], [ %i.e, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1i_6cursor6CursorRShEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread, label %._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread_crit_edge

._RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.d, align 8
  br label %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread

._crit_edge:                                      ; preds = %bb.af, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.cv, %bb.af ]
  %.lcssa93 = phi i64 [ %i.ci, %.outer ], [ %i.cv, %bb.af ] ; 4 uses
  %.lcssa90 = phi i64 [ %i.cj, %.outer ], [ %i.cy, %bb.af ] ; 3 uses
  %.lcssa = phi i1 [ %i.cl, %.outer ], [ %i.da, %bb.af ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.af
  %i.ad = call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1i_6cursor6CursorRShEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.ac, label %bb.ad

bb.g:                                             ; preds = %bb.k, %._crit_edge
  %i.ah = phi i64 [ %..i.i.i, %bb.k ], [ %.lcssa90, %._crit_edge ] ; 2 uses
  %i.ai = phi i64 [ %i.av, %bb.k ], [ %.lcssa93, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.av, %bb.k ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw i64 %i.ai, 32
  %i.al = icmp ugt i64 %.sroa.027.3, %i.ak
  %i.am = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai ; 3 uses
  br i1 %i.al, label %bb.l, label %.thread

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.ao = icmp ugt i64 %.lcssa93, -33
  br i1 %i.ao, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nuw i64 %.lcssa93, 32
  %i.aq = shl nuw i64 %.lcssa90, 1
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ap, i64 range(i64 0, -1) %i.aq) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1071
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1071
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %.lcssa90, ptr %.val13.i.i, i64 noundef %..i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1, i64 noundef 1), !noalias !1071
  %i.ar = load i64, ptr %i.b, align 8, !range !13, !noalias !1071, !noundef !5
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1071
  br label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.s, align 8, !noalias !1071, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1071
  store ptr %i.at, ptr %i.r, align 8, !alias.scope !1071
  %i.au = icmp sgt i64 %..i.i.i, -1
  call void @llvm.assume(i1 %i.au)
  store i64 %..i.i.i, ptr %1, align 8, !alias.scope !1071
  %.pre12.i = sub nuw i64 %..i.i.i, %.lcssa93
  %4 = icmp samesign ugt i64 %.pre12.i, 31
  call void @llvm.assume(i1 %4)
  %i.av = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.aw = icmp sgt i64 %i.av, -1
  call void @llvm.assume(i1 %i.aw)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.ax = sub nsw i64 %i.ah, %i.ai
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ax, i64 %.sroa.053.3.ph)
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ay = sub nuw i64 %.sroa.027.3, %i.ai         ; 3 uses
  %.pre162 = sub nsw i64 %i.ah, %i.ai             ; 2 uses
  %.not60 = icmp ugt i64 %i.ay, %.pre162
  br i1 %.not60, label %bb.n, label %bb.m, !prof !17

bb.m:                                             ; preds = %.thread, %bb.l
  %.sroa.034.0170 = phi i64 [ %..i, %.thread ], [ %i.ay, %bb.l ] ; 3 uses
  %i.az = add i64 %.sroa.034.0170, %i.ai
  %.not59 = icmp uge i64 %.sroa.027.3, %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.an, ptr %i.c, align 8
  store i64 %.sroa.034.0170, ptr %i.t, align 8
  store i64 0, ptr %i.u, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.v, align 8
  %i.ba = call noundef ptr @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read8read_bufCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.c) ; 2 uses
  %.not61124 = icmp eq ptr %i.ba, null
  br i1 %.not61124, label %.split84._crit_edge, label %.lr.ph127

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ay, i64 noundef %.pre162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29
  unreachable

.lr.ph127:                                        ; preds = %bb.m, %bb.r
  %i.bb = phi ptr [ %i.ce, %bb.r ], [ %i.ba, %bb.m ] ; 10 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 4 uses
  %i.bd = and i64 %i.bc, 3
  switch i64 %i.bd, label %default.unreachable [
    i64 2, label %bb.o
    i64 3, label %.split83
    i64 0, label %.split84
    i64 1, label %.split
  ], !prof !12

default.unreachable:                              ; preds = %.lr.ph127
  unreachable

bb.o:                                             ; preds = %.lr.ph127
  %i.be = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.o
  %i.bf = lshr i64 %i.bc, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !5, !noundef !5
  %i.bj = invoke noundef zeroext i1 %i.bi(i32 noundef %i.bg)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.t, !inline_history !0

.split83:                                         ; preds = %.lr.ph127
  %i.bk = lshr i64 %i.bc, 32
  %i.bl = icmp ult ptr %i.bb, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bk to i8
  %spec.select.i.i.i = select i1 %i.bl, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bm = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bn, label %bb.p, label %.split84._crit_edge.loopexit

.split84:                                         ; preds = %.lr.ph127
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !range !15, !noundef !5
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %.thread86, label %.split84._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph127
  %i.br = getelementptr i8, ptr %i.bb, i64 31
  %i.bs = load i8, ptr %i.br, align 8, !range !15, !noundef !5
  %i.bt = icmp eq i8 %i.bs, 35
  br i1 %i.bt, label %bb.q, label %.split84._crit_edge.loopexit

.split84._crit_edge.loopexit:                     ; preds = %.split84, %.split83, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.r
  %.lcssa105.ph = phi ptr [ null, %bb.r ], [ %i.bb, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.bb, %.split ], [ %i.bb, %.split83 ], [ %i.bb, %.split84 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.r ], [ false, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split83 ], [ false, %.split84 ]
  %i.bu = ptrtoint ptr %.lcssa105.ph to i64
  br label %.split84._crit_edge

.split84._crit_edge:                              ; preds = %.split84._crit_edge.loopexit, %bb.m
  %.lcssa105 = phi i64 [ 0, %bb.m ], [ %i.bu, %.split84._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.m ], [ %.not61.lcssa.ph, %.split84._crit_edge.loopexit ]
  %i.bv = load i64, ptr %i.u, align 8, !noundef !5 ; 3 uses
  %i.bw = load i8, ptr %i.v, align 8, !range !18, !noundef !5
  %i.bx = trunc nuw i8 %i.bw to i1                ; 2 uses
  %.pre160 = load i64, ptr %i.d, align 8          ; 3 uses
  %i.by = add i64 %.pre160, %.sroa.034.0170
  %spec.select184 = select i1 %i.bx, i64 %i.by, i64 %.sroa.027.3
  %i.bz = icmp sgt i64 %.pre160, -1
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add i64 %.pre160, %i.bv                 ; 3 uses
  store i64 %i.ca, ptr %i.d, align 8
  br i1 %.not61.lcssa, label %bb.v, label %.loopexit

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bj, label %.thread86, label %.split84._crit_edge.loopexit

.thread86:                                        ; preds = %.split84, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.r

bb.p:                                             ; preds = %.split83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cb = and i64 %i.bc, 1095216660480
  %i.cc = icmp ne i64 %i.cb, 1095216660480
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.assume(i1 %i.cc)
  br label %bb.r

bb.q:                                             ; preds = %.split
  %i.cd = getelementptr i8, ptr %i.bb, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  store ptr %i.cd, ptr %i.w, align 8, !alias.scope !1072
  store i8 3, ptr %i.a, align 8, !alias.scope !1072
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.thread86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = call noundef ptr @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read8read_bufCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.c) ; 2 uses
  %.not61 = icmp eq ptr %i.ce, null
  br i1 %.not61, label %.split84._crit_edge.loopexit, label %.lr.ph127

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %lpad.thr_comm

bb.t:                                             ; preds = %.noexc, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures(ptr nonnull %i.bb) #26
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.v:                                             ; preds = %.split84._crit_edge
  %i.cg = icmp eq i64 %i.bv, 0
  br i1 %i.cg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ch = sub nsw i64 %i.ca, %i.e
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %.not64 = xor i1 %i.bx, true
  %brmerge = or i1 %i.h, %.not64
  %.sroa.053.3.mux = select i1 %i.h, i64 %.sroa.053.3.ph, i64 -1
  br i1 %brmerge, label %bb.y, label %bb.z

.loopexit:                                        ; preds = %.split84._crit_edge, %bb.w
  %.sroa.8.0 = phi i64 [ %i.ch, %bb.w ], [ %.lcssa105, %.split84._crit_edge ]
  %.sroa.07.0 = phi i64 [ 0, %bb.w ], [ 1, %.split84._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.ab, %bb.aa, %bb.z
  %.sroa.053.4 = phi i64 [ -1, %bb.ab ], [ %i.co, %bb.aa ], [ %.sroa.053.3.ph, %bb.z ], [ %.sroa.053.3.mux, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.outer

.outer:                                           ; preds = %bb.y, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread
  %i.ci = phi i64 [ %i.ca, %bb.y ], [ %.pre, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread ] ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.y ], [ %.sroa.053.2, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select184, %bb.y ], [ %i.e, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRShEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread ]
  %i.cj = load i64, ptr %1, align 8, !range !6, !noundef !5 ; 3 uses
  %i.ck = sub i64 %i.cj, %i.ci
  %i.cl = icmp ult i64 %i.ck, 32                  ; 2 uses
  %i.cm = icmp eq i64 %i.cj, %i.g
  %or.cond63120 = and i1 %i.cm, %i.cl
  br i1 %or.cond63120, label %.lr.ph, label %._crit_edge

bb.z:                                             ; preds = %bb.x
  %i.cn = icmp eq i64 %i.bv, %.sroa.053.3.ph
  br i1 %i.cn, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.co = shl nuw i64 %.sroa.053.3.ph, 1
  %i.cp = icmp slt i64 %.sroa.053.3.ph, 0
  br i1 %i.cp, label %bb.ab, label %bb.y, !prof !16

bb.ab:                                            ; preds = %bb.aa
  br label %bb.y

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %bb.h, %bb.j, %bb.f, %bb.ac, %bb.ae, %bb.e, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.ab, %bb.e ], [ %.sroa.8.0, %.loopexit ], [ %i.ct, %bb.ac ], [ %i.cx, %bb.ae ], [ 0, %bb.f ], [ 163208757251, %bb.j ], [ 163208757251, %bb.h ]
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit ], [ 1, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.f ], [ 1, %bb.j ], [ 1, %bb.h ]
  %i.cq = inttoptr i64 %.sroa.8.1 to ptr
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10test_utils17build_xorb_object:bb.a
  %i.dm = and i64 %.sroa.4.0.copyload.i.4, 3
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %.loopexit51.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %exitcond.not.i.4 = icmp eq i64 %i.cz, 7
  br i1 %exitcond.not.i.4, label %.loopexit51.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.4.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %i.da, i64 304
  %.sroa.4.0.copyload.i.5 = load i64, ptr %.sroa.4.0..sroa_idx.i.5, align 8, !noalias !1513
  %i.do = and i64 %.sroa.4.0.copyload.i.5, 3
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.loopexit51.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %exitcond.not.i.5 = icmp eq i64 %i.cz, 8
  br i1 %exitcond.not.i.5, label %.loopexit51.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.4.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %i.da, i64 344
  %.sroa.4.0.copyload.i.6 = load i64, ptr %.sroa.4.0..sroa_idx.i.6, align 8, !noalias !1513
  %i.dq = and i64 %.sroa.4.0.copyload.i.6, 3
  %i.dr = icmp eq i64 %i.dq, 0
  %spec.select = select i1 %i.dr, i64 9, i64 %..i.i
  br label %.loopexit51.i

.loopexit51.i:                                    ; preds = %bb.am, %bb.ab, %.lr.ph287, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.aa
  %.sroa.010.0.i = phi i64 [ %i.cz, %bb.aa ], [ 3, %.lr.ph287 ], [ %..i.i, %bb.ab ], [ 4, %bb.ac ], [ %..i.i, %bb.ad ], [ 5, %bb.ae ], [ %..i.i, %bb.af ], [ 6, %bb.ag ], [ %..i.i, %bb.ah ], [ 7, %bb.ai ], [ %..i.i, %bb.aj ], [ 8, %bb.ak ], [ %..i.i, %bb.al ], [ %spec.select, %bb.am ] ; 2 uses
  %i.ds = add i64 %.sroa.010.0.i, %.sroa.03.0152.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1513
  %i.dt = icmp ult i64 %i.ds, %.sroa.03.0152.i
  %.not26.i = icmp ugt i64 %i.ds, %i.cu
  %or.cond.i = or i1 %i.dt, %.not26.i
  br i1 %or.cond.i, label %.invoke339.i, label %bb.an, !prof !27

bb.an:                                            ; preds = %.loopexit51.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1525
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(792) %i.c, i8 0, i64 792, i1 false), !noalias !1525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1525
  store i64 0, ptr %i.b, align 8, !noalias !1525
  %.idx.i.i = mul nuw nsw i64 %.sroa.010.0.i, 40
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i, %bb.an
  %.sroa.0.038.i.i = phi ptr [ %i.dv, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i ], [ %i.da, %bb.an ] ; 6 uses
  %.sroa.0.0437.i.i = phi i64 [ %i.fj, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i ], [ 0, %bb.an ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i, i64 40 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !1524, !noalias !1526, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  %i.dy = load i64, ptr %.sroa.0.038.i.i, align 8, !alias.scope !1530, !noalias !1531, !noundef !5
  invoke fastcc void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes13write_hex_u64(ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.dy) #30
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !1530, !noalias !1531, !noundef !5
  invoke fastcc void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes13write_hex_u64(ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.ea) #30
          to label %.noexc33.i unwind label %.loopexit.i

.noexc33.i:                                       ; preds = %.noexc.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !1530, !noalias !1531, !noundef !5
  invoke fastcc void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes13write_hex_u64(ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.ec) #30
          to label %.noexc34.i unwind label %.loopexit.i

.noexc34.i:                                       ; preds = %.noexc33.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i, i64 24
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !1530, !noalias !1531, !noundef !5
  invoke fastcc void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes13write_hex_u64(ptr noalias nofree noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.ee) #30
          to label %.noexc35.i unwind label %.loopexit.i

.noexc35.i:                                       ; preds = %.noexc34.i
  %i.ef = load i64, ptr %i.b, align 8, !alias.scope !1528, !noalias !1532, !noundef !5 ; 8 uses
  %i.eg = icmp ult i64 %i.ef, 792
  br i1 %i.eg, label %bb.ao, label %.invoke341.i

bb.ao:                                            ; preds = %.noexc35.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ef ; 3 uses
  store i8 32, ptr %i.eh, align 1, !alias.scope !1527, !noalias !1533
  %.not.i.i.i = icmp eq i64 %i.ef, 791
  br i1 %.not.i.i.i, label %.invoke341.i, label %bb.ap

.invoke341.i:                                     ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i, %bb.ar, %bb.ap, %bb.ao, %.noexc35.i, %bb.av
  %i.ei = phi i64 [ -1, %bb.av ], [ 792, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i ], [ 792, %bb.ar ], [ 792, %bb.ao ], [ %i.ef, %.noexc35.i ], [ 792, %bb.ap ]
  %i.ej = phi i64 [ 20, %bb.av ], [ 792, %.noexc35.i ], [ 792, %bb.ao ], [ 792, %bb.ap ], [ 792, %bb.ar ], [ 792, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i ]
  %i.ek = phi ptr [ @44, %bb.av ], [ @40, %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i ], [ @41, %bb.ar ], [ @38, %bb.ao ], [ @37, %.noexc35.i ], [ @39, %bb.ap ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ei, i64 noundef %i.ej, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek) #29
          to label %.cont342.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1513

.cont342.i:                                       ; preds = %.invoke341.i
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store i8 58, ptr %i.el, align 1, !alias.scope !1527, !noalias !1533
  %i.em = icmp samesign ult i64 %i.ef, 790
  br i1 %i.em, label %bb.aq, label %.invoke341.i

bb.aq:                                            ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  store i8 32, ptr %i.en, align 1, !alias.scope !1527, !noalias !1533
  %i.eo = add nuw nsw i64 %i.ef, 3                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  %i.ep = icmp eq i64 %i.dx, 0
  br i1 %i.ep, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.not8.i.i.i = icmp eq i64 %i.ef, 789
  br i1 %.not8.i.i.i, label %.invoke341.i, label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1535
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !noalias !1535
  br label %bb.ay

bb.at:                                            ; preds = %bb.ar
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.eo
  store i8 48, ptr %i.eq, align 1, !alias.scope !1536, !noalias !1537
  %i.er = add nuw nsw i64 %i.ef, 4
  br label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i

bb.au:                                            ; preds = %bb.ay
  %i.es = sub nuw nsw i64 21, %.sroa.04.018.i.i.i.i291 ; 3 uses
  %i.et = add nuw nsw i64 %i.es, %i.eo            ; 3 uses
  %i.eu = icmp ult i64 %i.et, 793
  br i1 %i.eu, label %bb.ax, label %bb.aw, !prof !22

bb.av:                                            ; preds = %bb.ay
  %i.ev = add nsw i64 %i.ez, -1                   ; 2 uses
  %i.ew = icmp ult i64 %i.ev, 20
  br i1 %i.ew, label %bb.ay, label %.invoke341.i

bb.aw:                                            ; preds = %bb.au
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.eo, i64 noundef %i.et, i64 noundef 792, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #29
          to label %.noexc39.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !1513

.noexc39.i:                                       ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ez
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.eo
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull %i.ey, i64 noundef %i.es, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ex, i64 noundef %i.es, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42)
          to label %.noexc40.i unwind label %.loopexit.i, !noalias !1513

.noexc40.i:                                       ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1535
  br label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i

bb.ay:                                            ; preds = %bb.as, %bb.av
  %i.ez = phi i64 [ 19, %bb.as ], [ %i.ev, %bb.av ] ; 4 uses
  %.sroa.04.018.i.i.i.i291 = phi i64 [ 20, %bb.as ], [ %i.ez, %bb.av ]
  %.sroa.0.019.i.i.i.i290 = phi i64 [ %i.dx, %bb.as ], [ %i.fb, %bb.av ] ; 3 uses
  %i.fa = urem i64 %.sroa.0.019.i.i.i.i290, 10
  %i.fb = udiv i64 %.sroa.0.019.i.i.i.i290, 10
  %i.fc = trunc nuw nsw i64 %i.fa to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ez
  %i.fe = or disjoint i8 %i.fc, 48
  store i8 %i.fe, ptr %i.fd, align 1, !noalias !1535
  %.not.i.i.i.i = icmp ult i64 %.sroa.0.019.i.i.i.i290, 10
  br i1 %.not.i.i.i.i, label %bb.au, label %bb.av

_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i: ; preds = %.noexc40.i, %bb.at
  %i.ff = phi i64 [ %i.er, %bb.at ], [ %i.et, %.noexc40.i ] ; 3 uses
  %i.fg = icmp samesign ult i64 %i.ff, 792
  br i1 %i.fg, label %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i, label %.invoke341.i

_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i: ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes17write_decimal_u64.exit.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ff
  store i8 10, ptr %i.fh, align 1, !alias.scope !1527, !noalias !1533
  %i.fi = add nuw nsw i64 %i.ff, 1                ; 2 uses
  store i64 %i.fi, ptr %i.b, align 8, !alias.scope !1528, !noalias !1532
  %i.fj = add i64 %i.dx, %.sroa.0.0437.i.i        ; 2 uses
  %i.fk = icmp eq ptr %i.dv, %i.du
  br i1 %i.fk, label %.loopexit.i.i, label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes16write_hash_entry.exit.i.i
  invoke void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash26compute_internal_node_hash(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.fi)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.i, !noalias !1513

bb.az:                                            ; preds = %.loopexit.i.i
  store i64 %i.fj, ptr %i.cf, align 8, !alias.scope !1523, !noalias !1538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1525
  %i.fl = load i64, ptr %i.ce, align 8, !noalias !1513, !noundef !5 ; 5 uses
  %i.fm = icmp ult i64 %.sroa.0.0153.i, %i.fl
  br i1 %i.fm, label %bb.ba, label %.invoke.i

bb.ba:                                            ; preds = %bb.az
  %i.fn = load ptr, ptr %i.cd, align 8, !noalias !1513, !nonnull !5, !noundef !5
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %i.fn, i64 %.sroa.0.0153.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fo, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1513
  %i.fp = add nuw nsw i64 %.sroa.0.0153.i, 1      ; 2 uses
  %i.fq = icmp ult i64 %i.fl, 230584300921369396
  call void @llvm.assume(i1 %i.fq)
  %.not.i38 = icmp eq i64 %i.ds, %i.fl
  br i1 %.not.i38, label %._crit_edge.i, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %bb.ba, %bb.z
  %.be = phi i64 [ %i.fl, %bb.ba ], [ %.pr.i, %bb.z ]
  %.sroa.0.0153.i.be = phi i64 [ %i.fp, %bb.ba ], [ 0, %bb.z ]
  %.sroa.03.0152.i.be = phi i64 [ %i.ds, %bb.ba ], [ 0, %bb.z ]
  br label %.lr.ph.i

.body.i:                                          ; preds = %bb.x, %bb.w
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !1513
  unreachable

_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes20aggregated_node_hash.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1513
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash17aggregated_hashes20aggregated_node_hash.exit, %bb.p
  %i.fr = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fr, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ft = load i64, ptr %i.fs, align 8, !noundef !5 ; 2 uses
  %i.fu = icmp ult i64 %i.ft, 2305843009213693952
  call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.fw = load i64, ptr %i.fv, align 8, !noundef !5 ; 2 uses
  %i.fx = icmp ult i64 %i.fw, 2305843009213693952
  call void @llvm.assume(i1 %i.fx)
  %i.fy = add nuw nsw i64 %i.fw, %i.ft            ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %.tr = trunc i64 %i.fy to i32
  %i.ga = shl i32 %.tr, 2                         ; 2 uses
  %i.gb = add i32 %i.ga, 40
  store i32 %i.gb, ptr %i.fz, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !noundef !5 ; 3 uses
  %i.ge = icmp ult i64 %i.gd, 288230376151711744
  call void @llvm.assume(i1 %i.ge)
  %.tr17 = trunc i64 %i.gd to i32
  %i.gf = shl i32 %.tr17, 5
  %i.gg = getelementptr inbounds nuw i8, ptr %i.w, i64 124
  %i.gh = add i32 %i.ga, 52
  %i.gi = add i32 %i.gh, %i.gf
  store i32 %i.gi, ptr %i.gg, align 4
  %i.gj = shl nuw nsw i64 %i.gd, 5
  %i.gk = shl nuw i64 %i.fy, 2
  %i.gl = add i64 %i.gk, 60
  %i.gm = add i64 %i.gl, %i.gj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %i.go = trunc i64 %i.gm to i32
  %i.gp = add i32 %i.go, 32
  store i32 %i.gp, ptr %i.gn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.h, ptr noundef nonnull align 8 dereferenceable(168) %i.w, i64 168, i1 false)
  %i.gq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.gr = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !5 ; 7 uses
  %.not.i41 = icmp slt i64 %i.gr, 0
  br i1 %.not.i41, label %bb.bf, label %bb.bc, !prof !25

bb.bc:                                            ; preds = %bb.bb
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures.exit.thread82, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1539
  %i.gt = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gr, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1539 ; 3 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.bf, label %bb.bk

bb.be:                                            ; preds = %bb.bf
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_format10XorbObjectEBH_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.h) #26
          to label %.body39 unwind label %bb.br

bb.bf:                                            ; preds = %bb.bb, %bb.bd
  %.sroa.475.0.ph = phi i64 [ 1, %bb.bd ], [ 0, %bb.bb ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.475.0.ph, i64 %i.gr) #28
          to label %bb.bq unwind label %bb.be

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures.exit.thread82: ; preds = %bb.bc, %bb.bk
  %i.gw = phi ptr [ %i.gt, %bb.bk ], [ inttoptr (i64 1 to ptr), %bb.bc ]
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.h, i64 168, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.gr, ptr %i.gz, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.gw, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.gr, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bi unwind label %bb.bg

bb.bg:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures.exit.thread82
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i43 = load i64, ptr %i.s, align 8, !alias.scope !1540 ; 2 uses
  %i.hb = icmp eq i64 %.val2.i43, 0
  br i1 %i.hb, label %.body47, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val3.i44 = load ptr, ptr %i.ab, align 8, !alias.scope !1541, !nonnull !5, !noundef !5
  %i.hc = mul nuw i64 %.val2.i43, 40
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i44, i64 noundef %i.hc, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1542
  br label %.body47

bb.bi:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures.exit.thread82
  %.val.i45 = load i64, ptr %i.s, align 8, !alias.scope !1540 ; 2 uses
  %i.hd = icmp eq i64 %.val.i45, 0
  br i1 %i.hd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.val1.i46 = load ptr, ptr %i.ab, align 8, !alias.scope !1541, !nonnull !5, !noundef !5
  %i.he = mul nuw i64 %.val.i45, 40
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i46, i64 noundef %i.he, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1543
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit

bb.bk:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gt, ptr nonnull align 1 %i.gq, i64 %i.gr, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures.exit.thread82

.body47:                                          ; preds = %bb.bh, %bb.bg, %bb.cx
  %.sroa.010.2 = phi i8 [ %.sroa.010.0, %bb.cx ], [ 0, %bb.bg ], [ 0, %bb.bh ]
  %.sroa.09.2 = phi i1 [ %.sroa.09.0, %bb.cx ], [ false, %bb.bg ], [ false, %bb.bh ]
  %.sroa.08.2 = phi i1 [ %.sroa.08.0, %bb.cx ], [ false, %bb.bg ], [ false, %bb.bh ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cx ], [ %i.ha, %bb.bg ], [ %i.ha, %bb.bh ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #26
          to label %bb.bp unwind label %bb.br

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.bn unwind label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i49 = load i64, ptr %i.t, align 8, !alias.scope !1544 ; 2 uses
  %i.hg = icmp eq i64 %.val2.i.i49, 0
  br i1 %i.hg, label %.thread100, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val3.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1545, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i49, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1546
  br label %.thread100

bb.bn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEEB1f_.exit
  %.val.i.i50 = load i64, ptr %i.t, align 8, !alias.scope !1544 ; 2 uses
  %i.hh = icmp eq i64 %.val.i.i50, 0
  br i1 %i.hh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.val1.i.i51 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1545, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i51, i64 noundef %.val.i.i50, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !1547
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs31YAwBA1AlL_19xet_core_structures.exit

bb.bp:                                            ; preds = %.body47
  br i1 %.sroa.08.2, label %bb.cy, label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.bq:                                            ; preds = %bb.bf
  unreachable

bb.br:                                            ; preds = %bb.bv, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cy, %bb.cx, %bb.cw, %.body, %.body47, %bb.be, %.body39
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bs:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.hj = invoke noundef nonnull ptr @_RNvNtNtCs4DkaUnCZMGd_4rand4rngs6thread3rng()
          to label %bb.bt unwind label %.loopexit

bb.bt:                                            ; preds = %bb.bs
  store ptr %i.hj, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store <2 x i32> %i.ak, ptr %i.o, align 8
  store i8 0, ptr %i.am, align 8
  %i.hk = invoke noundef i32 @_RINvYNtNtNtCs4DkaUnCZMGd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangemINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivemEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53)
          to label %bb.bw unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
