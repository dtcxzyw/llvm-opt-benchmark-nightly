Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.08?download=true
inline.NumInlined: 497
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBX_6cursor6CursorRShEEECs31YAwBA1AlL_19xet_core_structures:bb.a

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !1049
  store i8 3, ptr %i.a, align 8, !alias.scope !1049
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
define hidden noundef ptr @_RINvNtNtCsexYYUdYSQU6_5alloc2io4read18default_read_exactNtNtCsG258MDvU3F_3std2fs4FileECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
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
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.cw, %bb.af ]
  %.lcssa93 = phi i64 [ %i.cj, %.outer ], [ %i.cw, %bb.af ] ; 4 uses
  %.lcssa90 = phi i64 [ %i.ck, %.outer ], [ %i.cz, %bb.af ] ; 3 uses
  %.lcssa = phi i1 [ %i.cm, %.outer ], [ %i.db, %bb.af ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.af
  %i.ad = call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1i_6cursor6CursorRINtNtB8_3vec3VechEEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.ac, label %bb.ad

bb.g:                                             ; preds = %bb.k, %._crit_edge
  %i.ah = phi i64 [ %..i.i.i, %bb.k ], [ %.lcssa90, %._crit_edge ] ; 2 uses
  %i.ai = phi i64 [ %i.aw, %bb.k ], [ %.lcssa93, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.aw, %bb.k ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
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
  %.pre12.i = sub i64 %..i.i.i, %.lcssa93
  %i.av = icmp ugt i64 %.pre12.i, 31
  call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  call void @llvm.assume(i1 %i.ax)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.ay = sub nsw i64 %i.ah, %i.ai
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 %.sroa.053.3.ph)
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.az = sub nuw i64 %.sroa.027.3, %i.ai         ; 3 uses
  %.pre162 = sub nsw i64 %i.ah, %i.ai             ; 2 uses
  %.not60 = icmp ugt i64 %i.az, %.pre162
  br i1 %.not60, label %bb.n, label %bb.m, !prof !17

bb.m:                                             ; preds = %.thread, %bb.l
  %.sroa.034.0170 = phi i64 [ %..i, %.thread ], [ %i.az, %bb.l ] ; 3 uses
  %i.ba = add i64 %.sroa.034.0170, %i.ai
  %.not59 = icmp uge i64 %.sroa.027.3, %i.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.an, ptr %i.c, align 8
  store i64 %.sroa.034.0170, ptr %i.t, align 8
  store i64 0, ptr %i.u, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.v, align 8
  %i.bb = call noundef ptr @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRINtNtB9_3vec3VechEEENtNtB7_4read4Read8read_bufCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.c) ; 2 uses
  %.not61124 = icmp eq ptr %i.bb, null
  br i1 %.not61124, label %.split84._crit_edge, label %.lr.ph127

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.az, i64 noundef %.pre162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29
  unreachable

.lr.ph127:                                        ; preds = %bb.m, %bb.r
  %i.bc = phi ptr [ %i.cf, %bb.r ], [ %i.bb, %bb.m ] ; 10 uses
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = and i64 %i.bd, 3
  switch i64 %i.be, label %default.unreachable [
    i64 2, label %bb.o
    i64 3, label %.split83
    i64 0, label %.split84
    i64 1, label %.split
  ], !prof !12

default.unreachable:                              ; preds = %.lr.ph127
  unreachable

bb.o:                                             ; preds = %.lr.ph127
  %i.bf = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.o
  %i.bg = lshr i64 %i.bd, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !5, !noundef !5
  %i.bk = invoke noundef zeroext i1 %i.bj(i32 noundef %i.bh)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.t, !inline_history !0

.split83:                                         ; preds = %.lr.ph127
  %i.bl = lshr i64 %i.bd, 32
  %i.bm = icmp ult ptr %i.bc, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bl to i8
  %spec.select.i.i.i = select i1 %i.bm, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bn = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bo, label %bb.p, label %.split84._crit_edge.loopexit

.split84:                                         ; preds = %.lr.ph127
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !range !15, !noundef !5
  %i.br = icmp eq i8 %i.bq, 35
  br i1 %i.br, label %.thread86, label %.split84._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph127
  %i.bs = getelementptr i8, ptr %i.bc, i64 31
  %i.bt = load i8, ptr %i.bs, align 8, !range !15, !noundef !5
  %i.bu = icmp eq i8 %i.bt, 35
  br i1 %i.bu, label %bb.q, label %.split84._crit_edge.loopexit

.split84._crit_edge.loopexit:                     ; preds = %.split84, %.split83, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.r
  %.lcssa105.ph = phi ptr [ null, %bb.r ], [ %i.bc, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.bc, %.split ], [ %i.bc, %.split83 ], [ %i.bc, %.split84 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.r ], [ false, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split83 ], [ false, %.split84 ]
  %i.bv = ptrtoint ptr %.lcssa105.ph to i64
  br label %.split84._crit_edge

.split84._crit_edge:                              ; preds = %.split84._crit_edge.loopexit, %bb.m
  %.lcssa105 = phi i64 [ 0, %bb.m ], [ %i.bv, %.split84._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.m ], [ %.not61.lcssa.ph, %.split84._crit_edge.loopexit ]
  %i.bw = load i64, ptr %i.u, align 8, !noundef !5 ; 3 uses
  %i.bx = load i8, ptr %i.v, align 8, !range !18, !noundef !5
  %i.by = trunc nuw i8 %i.bx to i1                ; 2 uses
  %.pre160 = load i64, ptr %i.d, align 8          ; 3 uses
  %i.bz = add i64 %.pre160, %.sroa.034.0170
  %spec.select184 = select i1 %i.by, i64 %i.bz, i64 %.sroa.027.3
  %i.ca = icmp sgt i64 %.pre160, -1
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add i64 %.pre160, %i.bw                 ; 3 uses
  store i64 %i.cb, ptr %i.d, align 8
  br i1 %.not61.lcssa, label %bb.v, label %.loopexit

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bk, label %.thread86, label %.split84._crit_edge.loopexit

.thread86:                                        ; preds = %.split84, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.r

bb.p:                                             ; preds = %.split83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cc = and i64 %i.bd, 1095216660480
  %i.cd = icmp ne i64 %i.cc, 1095216660480
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.assume(i1 %i.cd)
  br label %bb.r

bb.q:                                             ; preds = %.split
  %i.ce = getelementptr i8, ptr %i.bc, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ce) ]
  store ptr %i.ce, ptr %i.w, align 8, !alias.scope !1062
  store i8 3, ptr %i.a, align 8, !alias.scope !1062
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.thread86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = call noundef ptr @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRINtNtB9_3vec3VechEEENtNtB7_4read4Read8read_bufCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.c) ; 2 uses
  %.not61 = icmp eq ptr %i.cf, null
  br i1 %.not61, label %.split84._crit_edge.loopexit, label %.lr.ph127

bb.s:                                             ; preds = %bb.t
  resume { ptr, i32 } %lpad.thr_comm

bb.t:                                             ; preds = %.noexc, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs31YAwBA1AlL_19xet_core_structures(ptr nonnull %i.bc) #26
          to label %bb.s unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.v:                                             ; preds = %.split84._crit_edge
  %i.ch = icmp eq i64 %i.bw, 0
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = sub nsw i64 %i.cb, %i.e
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %.not64 = xor i1 %i.by, true
  %brmerge = or i1 %i.h, %.not64
  %.sroa.053.3.mux = select i1 %i.h, i64 %.sroa.053.3.ph, i64 -1
  br i1 %brmerge, label %bb.y, label %bb.z

.loopexit:                                        ; preds = %.split84._crit_edge, %bb.w
  %.sroa.8.0 = phi i64 [ %i.ci, %bb.w ], [ %.lcssa105, %.split84._crit_edge ]
  %.sroa.07.0 = phi i64 [ 0, %bb.w ], [ 1, %.split84._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.y:                                             ; preds = %bb.x, %bb.ab, %bb.aa, %bb.z
  %.sroa.053.4 = phi i64 [ -1, %bb.ab ], [ %i.cp, %bb.aa ], [ %.sroa.053.3.ph, %bb.z ], [ %.sroa.053.3.mux, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.outer

.outer:                                           ; preds = %bb.y, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread
  %i.cj = phi i64 [ %i.cb, %bb.y ], [ %.pre, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread ] ; 2 uses
  %.sroa.053.3.ph = phi i64 [ %.sroa.053.4, %bb.y ], [ %.sroa.053.2, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread ] ; 6 uses
  %.sroa.027.2.ph = phi i64 [ %spec.select184, %bb.y ], [ %i.e, %_RNCINvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_endINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB10_6cursor6CursorRINtNtB8_3vec3VechEEEE0Cs31YAwBA1AlL_19xet_core_structures.exit.thread ]
  %i.ck = load i64, ptr %1, align 8, !range !6, !noundef !5 ; 3 uses
  %i.cl = sub i64 %i.ck, %i.cj
  %i.cm = icmp ult i64 %i.cl, 32                  ; 2 uses
  %i.cn = icmp eq i64 %i.ck, %i.g
  %or.cond63120 = and i1 %i.cn, %i.cm
  br i1 %or.cond63120, label %.lr.ph, label %._crit_edge

bb.z:                                             ; preds = %bb.x
  %i.co = icmp eq i64 %i.bw, %.sroa.053.3.ph
  br i1 %i.co, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.cp = shl nuw i64 %.sroa.053.3.ph, 1
  %i.cq = icmp slt i64 %.sroa.053.3.ph, 0
  br i1 %i.cq, label %bb.ab, label %bb.y, !prof !16

bb.ab:                                            ; preds = %bb.aa
  br label %bb.y

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %bb.h, %bb.j, %bb.f, %bb.ac, %bb.ae, %bb.e, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.ab, %bb.e ], [ %.sroa.8.0, %.loopexit ], [ %i.cu, %bb.ac ], [ %i.cy, %bb.ae ], [ 0, %bb.f ], [ 163208757251, %bb.j ], [ 163208757251, %bb.h ]
  %.sroa.07.1 = phi i64 [ 1, %bb.e ], [ %.sroa.07.0, %.loopexit ], [ 1, %bb.ac ], [ 0, %bb.ae ], [ 0, %bb.f ], [ 1, %bb.j ], [ 1, %bb.h ]
  %i.cr = inttoptr i64 %.sroa.8.1 to ptr
  %i.cs = insertvalue { i64, ptr } poison, i64 %.sroa.07.1, 0
  %i.ct = insertvalue { i64, ptr } %i.cs, ptr %i.cr, 1
  ret { i64, ptr } %i.ct

bb.ac:                                            ; preds = %.lr.ph
  %i.cu = ptrtoint ptr %i.af to i64
  br label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.ad:                                            ; preds = %.lr.ph
  %i.cv = icmp eq ptr %i.af, null
  %i.cw = load i64, ptr %i.d, align 8, !noundef !5 ; 5 uses
  %i.cx = icmp sgt i64 %i.cw, -1
  call void @llvm.assume(i1 %i.cx)
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cy = sub nsw i64 %i.cw, %i.e
  br label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs31YAwBA1AlL_19xet_core_structures.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.cz = load i64, ptr %1, align 8, !range !6, !noundef !5 ; 3 uses
  %i.da = sub nsw i64 %i.cz, %i.cw
  %i.db = icmp ult i64 %i.da, 32                  ; 2 uses
  %i.dc = icmp eq i64 %i.cz, %i.g
  %or.cond63 = and i1 %i.dc, %i.db
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
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.cw, %bb.af ]
  %.lcssa93 = phi i64 [ %i.cj, %.outer ], [ %i.cw, %bb.af ] ; 4 uses
  %.lcssa90 = phi i64 [ %i.ck, %.outer ], [ %i.cz, %bb.af ] ; 3 uses
  %.lcssa = phi i1 [ %i.cm, %.outer ], [ %i.db, %bb.af ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.af
  %i.ad = call fastcc { i64, ptr } @_RINvNvNtNtCsexYYUdYSQU6_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB1i_6cursor6CursorRShEEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %i.ag = trunc nuw i64 %i.ae to i1
  br i1 %i.ag, label %bb.ac, label %bb.ad

bb.g:                                             ; preds = %bb.k, %._crit_edge
  %i.ah = phi i64 [ %..i.i.i, %bb.k ], [ %.lcssa90, %._crit_edge ] ; 2 uses
  %i.ai = phi i64 [ %i.aw, %bb.k ], [ %.lcssa93, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.aw, %bb.k ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
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
  %.pre12.i = sub i64 %..i.i.i, %.lcssa93
  %i.av = icmp ugt i64 %.pre12.i, 31
  call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  call void @llvm.assume(i1 %i.ax)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.ay = sub nsw i64 %i.ah, %i.ai
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 %.sroa.053.3.ph)
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.az = sub nuw i64 %.sroa.027.3, %i.ai         ; 3 uses
  %.pre162 = sub nsw i64 %i.ah, %i.ai             ; 2 uses
  %.not60 = icmp ugt i64 %i.az, %.pre162
  br i1 %.not60, label %bb.n, label %bb.m, !prof !17

bb.m:                                             ; preds = %.thread, %bb.l
  %.sroa.034.0170 = phi i64 [ %..i, %.thread ], [ %i.az, %bb.l ] ; 3 uses
  %i.ba = add i64 %.sroa.034.0170, %i.ai
  %.not59 = icmp uge i64 %.sroa.027.3, %i.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.an, ptr %i.c, align 8
  store i64 %.sroa.034.0170, ptr %i.t, align 8
  store i64 0, ptr %i.u, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.v, align 8
  %i.bb = call noundef ptr @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc2io4utilINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtBG_6cursor6CursorRShEENtNtB7_4read4Read8read_bufCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.c) ; 2 uses
  %.not61124 = icmp eq ptr %i.bb, null
  br i1 %.not61124, label %.split84._crit_edge, label %.lr.ph127

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.az, i64 noundef %.pre162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29
  unreachable

.lr.ph127:                                        ; preds = %bb.m, %bb.r
  %i.bc = phi ptr [ %i.cf, %bb.r ], [ %i.bb, %bb.m ] ; 10 uses
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = and i64 %i.bd, 3
  switch i64 %i.be, label %default.unreachable [
    i64 2, label %bb.o
    i64 3, label %.split83
    i64 0, label %.split84
    i64 1, label %.split
  ], !prof !12

default.unreachable:                              ; preds = %.lr.ph127
  unreachable

bb.o:                                             ; preds = %.lr.ph127
  %i.bf = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.o
  %i.bg = lshr i64 %i.bd, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !5, !noundef !5
  %i.bk = invoke noundef zeroext i1 %i.bj(i32 noundef %i.bh)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.t, !inline_history !0

.split83:                                         ; preds = %.lr.ph127
  %i.bl = lshr i64 %i.bd, 32
  %i.bm = icmp ult ptr %i.bc, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bl to i8
  %spec.select.i.i.i = select i1 %i.bm, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bn = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bo, label %bb.p, label %.split84._crit_edge.loopexit

.split84:                                         ; preds = %.lr.ph127
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !range !15, !noundef !5
  %i.br = icmp eq i8 %i.bq, 35
  br i1 %i.br, label %.thread86, label %.split84._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph127
  %i.bs = getelementptr i8, ptr %i.bc, i64 31
  %i.bt = load i8, ptr %i.bs, align 8, !range !15, !noundef !5
  %i.bu = icmp eq i8 %i.bt, 35
  br i1 %i.bu, label %bb.q, label %.split84._crit_edge.loopexit

.split84._crit_edge.loopexit:                     ; preds = %.split84, %.split83, %.split, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.r
  %.lcssa105.ph = phi ptr [ null, %bb.r ], [ %i.bc, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.bc, %.split ], [ %i.bc, %.split83 ], [ %i.bc, %.split84 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.r ], [ false, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split83 ], [ false, %.split84 ]
  %i.bv = ptrtoint ptr %.lcssa105.ph to i64
  br label %.split84._crit_edge

.split84._crit_edge:                              ; preds = %.split84._crit_edge.loopexit, %bb.m
  %.lcssa105 = phi i64 [ 0, %bb.m ], [ %i.bv, %.split84._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.m ], [ %.not61.lcssa.ph, %.split84._crit_edge.loopexit ]
  %i.bw = load i64, ptr %i.u, align 8, !noundef !5 ; 3 uses
  %i.bx = load i8, ptr %i.v, align 8, !range !18, !noundef !5
  %i.by = trunc nuw i8 %i.bx to i1                ; 2 uses
  %.pre160 = load i64, ptr %i.d, align 8          ; 3 uses
  %i.bz = add i64 %.pre160, %.sroa.034.0170
  %spec.select184 = select i1 %i.by, i64 %i.bz, i64 %.sroa.027.3
  %i.ca = icmp sgt i64 %.pre160, -1
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add i64 %.pre160, %i.bw                 ; 3 uses
  store i64 %i.cb, ptr %i.d, align 8
  br i1 %.not61.lcssa, label %bb.v, label %.loopexit

end_hunk_0
