Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_dd-289641d59659d41f.uu_dd.8952a91ac67bbfe3-cgu.0?download=true
inline.NumInlined: 1600
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtCs7tKScEop1B6_5alloc3vec3VechEEECsbMXVmEvvZJf_5uu_dd:bb.a
; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockEECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !8 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !712
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i
    i64 1, label %bb.d
  ], !prof !16

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !713, !noalias !712
  store i8 3, ptr %i.a, align 8, !alias.scope !713, !noalias !712
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #27, !noalias !712
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !712
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCNvMCsbMXVmEvvZJf_5uu_ddNtB1F_5Alarm13with_interval0uEs_0EB1F_(ptr noalias nofree noundef align 8 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = icmp eq ptr %.val, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3mem14maybe_dangling13MaybeDanglingNCNvMCsbMXVmEvvZJf_5uu_ddNtB1p_5Alarm13with_interval0EEB1p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3mem14maybe_dangling13MaybeDanglingNCNvMCsbMXVmEvvZJf_5uu_ddNtB1p_5Alarm13with_interval0EEB1p_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 24, i64 noundef 8) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3mem14maybe_dangling13MaybeDanglingNCNvMCsbMXVmEvvZJf_5uu_ddNtB1p_5Alarm13with_interval0EEB1p_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3mem14maybe_dangling13MaybeDanglingNCNvMCsbMXVmEvvZJf_5uu_ddNtB1p_5Alarm13with_interval0EEB1p_.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !720, !nonnull !8, !noundef !8
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !720
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketuEEECsbMXVmEvvZJf_5uu_dd.exit

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3mem14maybe_dangling13MaybeDanglingNCNvMCsbMXVmEvvZJf_5uu_ddNtB1p_5Alarm13with_interval0EEB1p_.exit
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketuEE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #31
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketuEEECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketuEEECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3mem14maybe_dangling13MaybeDanglingNCNvMCsbMXVmEvvZJf_5uu_ddNtB1p_5Alarm13with_interval0EEB1p_.exit, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0uEs_0EB1G_(ptr noalias nofree noundef align 8 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !15, !noundef !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0EBH_(i64 %.val, ptr %.val1) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !727, !nonnull !8, !noundef !8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !727
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketuEEECsbMXVmEvvZJf_5uu_dd.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketuEE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #31
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketuEEECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketuEEECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0EBH_(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %default.unreachable.i.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.n
    i64 2, label %bb.ab
  ]

default.unreachable.i.i.i:                        ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 520
  %i.b = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEB1n_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.e = load i64, ptr %i.d, align 16, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.g = atomicrmw or ptr %i.f, i64 %i.e seq_cst, align 8 ; 2 uses
  %i.h = load i64, ptr %i.d, align 16, !noundef !8 ; 2 uses
  %i.i = and i64 %i.h, %i.g
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.k) #33
  %.pre.i.i.i.i.i.i = load i64, ptr %i.d, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.h, %bb.c ], [ %.pre.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = load atomic i64, ptr %.8.val monotonic, align 16
  %i.n = xor i64 %i.l, -1
  %i.o = and i64 %i.g, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.8.val, i64 408 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 416 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.t = phi i64 [ %i.l, %bb.e ], [ %.pre.i.i.i.i.i.i.i, %bb.k ]
  %.sroa.0.07.i.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i.i, %bb.k ] ; 8 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i.i, %bb.k ] ; 5 uses
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.u   ; 3 uses
  %i.w = load i64, ptr %i.p, align 8, !noundef !8
  %i.x = sub i64 0, %i.w
  %i.y = and i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.x
  %i.z = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8
  %i.aa = load i64, ptr %i.r, align 16, !noundef !8
  %i.ab = icmp ult i64 %i.v, %i.aa
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.z, i64 %i.v
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = add i64 %.sroa.0.0.i.i.i.i.i.i.i, 1
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq i64 %i.o, %.sroa.0.0.i.i.i.i.i.i.i
  br i1 %i.ah, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add nuw i64 %i.v, 1
  %i.aj = load i64, ptr %i.s, align 128, !noundef !8
  %i.ak = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.al = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i.i, 7
  br i1 %i.al, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.07.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.am = mul nuw nsw i32 %.sroa.0.07.i.i.i.i.i.i.i, %.sroa.0.07.i.i.i.i.i.i.i ; 2 uses
  %xtraiter43 = and i32 %i.am, 7                  ; 3 uses
  %i.an = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i.i, 3
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter47 = and i32 %i.am, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter48 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter48.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter48.next.7 = add i32 %niter48, 8           ; 2 uses
  %niter48.ncmp.7 = icmp eq i32 %niter48.next.7, %unroll_iter47
  br i1 %niter48.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod45.not = icmp eq i32 %xtraiter43, 0
  br i1 %lcmp.mod45.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod46 = icmp ne i32 %xtraiter43, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter44 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter44.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter44.next = add i32 %epil.iter44, 1     ; 2 uses
  %epil.iter44.cmp.not = icmp eq i32 %epil.iter44.next, %xtraiter43
  br i1 %epil.iter44.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !728

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.j
  %i.ao = add i32 %.sroa.0.07.i.i.i.i.i.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, %bb.h
  %.sroa.0.18.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.07.i.i.i.i.i.i.i, %bb.h ], [ %.sroa.0.07.i.i.i.i.i.i.i, %bb.l ], [ %i.ao, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.h ], [ %i.aq, %bb.l ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.d, align 16
  br label %bb.f

bb.l:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.p, align 8, !noundef !8
  %i.aq = add i64 %i.ap, %i.y
  br label %bb.k

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i.i: ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.as = atomicrmw xchg ptr %i.ar, i8 1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEB1n_.exit, label %bb.m

bb.m:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.r, align 16, !alias.scope !747, !noundef !8 ; 2 uses
  %i.at = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.at, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2s_.exit.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !747, !nonnull !8, !noundef !8
  %i.au = mul nuw nsw i64 %.val1.i.i.i.i.i.i.i, 112
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.au, i64 noundef 16) #27, !noalias !747
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2s_.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2s_.exit.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.av) #27
  %i.aw = getelementptr inbounds nuw i8, ptr %.8.val, i64 328
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.aw) #27
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEB1n_.exit

bb.n:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 acq_rel, align 8
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEB1n_.exit

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.bb = atomicrmw or ptr %i.ba, i64 1 seq_cst, align 8
  %i.bc = and i64 %i.bb, 1
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.be = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bf = and i64 %i.be, 62
  %i.bg = icmp eq i64 %i.bf, 62
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.p, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i
  %.sroa.0.04951.i.i.i.i.i.i.i = phi i32 [ %i.bk, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i ], [ 0, %bb.p ] ; 6 uses
  %i.bh = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i.i, 7
  br i1 %i.bh, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i8.i.i.i = icmp eq i32 %.sroa.0.04951.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i8.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i, label %.lr.ph.i.i.i.i.i11.i.i.i.preheader

.lr.ph.i.i.i.i.i11.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i.i
  %i.bi = mul nuw nsw i32 %.sroa.0.04951.i.i.i.i.i.i.i, %.sroa.0.04951.i.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.bi, 7                    ; 3 uses
  %i.bj = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i.i, 3
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i11.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i11.i.i.i.preheader.new

.lr.ph.i.i.i.i.i11.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i11.i.i.i.preheader
  %unroll_iter = and i32 %i.bi, 56
  br label %.lr.ph.i.i.i.i.i11.i.i.i

.lr.ph.i.i.i.i.i11.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i11.i.i.i, %.lr.ph.i.i.i.i.i11.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i11.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i11.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i11.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i11.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i, label %.lr.ph.i.i.i.i.i11.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i11.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i11.i.i.i.preheader
  %lcmp.mod24 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.i.i.i.i.i11.i.i.i.epil

.lr.ph.i.i.i.i.i11.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i11.i.i.i.epil, %.lr.ph.i.i.i.i.i11.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i11.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i11.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i, label %.lr.ph.i.i.i.i.i11.i.i.i.epil, !llvm.loop !733

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i11.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i.i, %bb.q
  %i.bk = add i32 %.sroa.0.04951.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bl = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bm = and i64 %i.bl, 62
  %i.bn = icmp eq i64 %i.bm, 62
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i, %bb.p
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.be, %bb.p ], [ %i.bl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i ]
  %.sroa.0.049.lcssa.i.i.i.i.i.i.i = phi i32 [ 0, %bb.p ], [ %i.bk, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.i ]
  %i.bo = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bp = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.br = atomicrmw xchg ptr %i.bq, ptr null acq_rel, align 8 ; 2 uses
  %i.bs = lshr i64 %i.bp, 1                       ; 2 uses
  %i.bt = icmp ne i64 %i.bs, %i.bo                ; 2 uses
  %i.bu = icmp eq ptr %i.br, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i.i = phi ptr [ %i.br, %._crit_edge.i.i.i.i.i.i.i ], [ %i.bz, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.bt, label %.lr.ph57.i.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i4.i.i.i = phi i32 [ %i.by, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i ], [ %.sroa.0.049.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 6 uses
  %i.bv = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i.i, 7
  br i1 %i.bv, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i4.i.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i
  %i.bw = mul nuw nsw i32 %.sroa.0.1.i.i.i.i4.i.i.i, %.sroa.0.1.i.i.i.i4.i.i.i ; 2 uses
  %xtraiter25 = and i32 %i.bw, 7                  ; 3 uses
  %i.bx = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i.i, 3
  br i1 %i.bx, label %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i26.i.i.i.i.i.i.i.preheader
  %unroll_iter29 = and i32 %i.bw, 56
  br label %.lr.ph.i26.i.i.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i26.i.i.i.i.i.i.i, %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new
  %niter30 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new ], [ %niter30.next.7, %.lr.ph.i26.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter30.next.7 = add i32 %niter30, 8           ; 2 uses
  %niter30.ncmp.7 = icmp eq i32 %niter30.next.7, %unroll_iter29
  br i1 %niter30.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i.i.i.i
  %lcmp.mod27.not = icmp eq i32 %xtraiter25, 0
  br i1 %lcmp.mod27.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.i.preheader
  %lcmp.mod28 = icmp ne i32 %xtraiter25, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %.lr.ph.i26.i.i.i.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i26.i.i.i.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader
  %epil.iter26 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter26.next, %.lr.ph.i26.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter26.next = add i32 %epil.iter26, 1     ; 2 uses
  %epil.iter26.cmp.not = icmp eq i32 %epil.iter26.next, %xtraiter25
  br i1 %epil.iter26.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.epil, !llvm.loop !734

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i, %bb.r
  %i.by = add i32 %.sroa.0.1.i.i.i.i4.i.i.i, 1
  %i.bz = atomicrmw xchg ptr %i.bq, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.old2.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

._crit_edge58.i.i.i.i.i.i.i:                      ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.bp, %.loopexit.i.i.i.i.i.i.i ], [ %i.cz, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i.i.i ]
  %i.ca = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i.i, null
  br i1 %i.ca, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE20discard_all_messagesB10_.exit.i.i.i.i.i.i, label %bb.s

.lr.ph57.i.i.i.i.i.i.i:                           ; preds = %.loopexit.i.i.i.i.i.i.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i.i.i
  %i.cb = phi i64 [ %i.da, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i.i.i ], [ %i.bs, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.05.055.i.i.i.i.i.i.i = phi i64 [ %i.cz, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i.i.i ], [ %i.bp, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.011.154.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i.i.i ], [ %.sroa.011.0.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 6 uses
  %i.cc = and i64 %i.cb, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.cc, 31
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.s:                                             ; preds = %._crit_edge58.i.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i.i, i64 noundef 3488, i64 noundef 16) #27
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE20discard_all_messagesB10_.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %.lr.ph57.i.i.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.011.154.i.i.i.i.i.i.i, i64 3472 ; 3 uses
  %i.ce = load atomic ptr, ptr %i.cd acquire, align 8
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.lr.ph.i31.i.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE9wait_nextBX_.exit.i.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i.i:                         ; preds = %bb.t, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.t ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 7
  br i1 %i.cg, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i31.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i
  %i.ch = mul nuw nsw i32 %.sroa.0.02.i.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter37 = and i32 %i.ch, 7                  ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter41 = and i32 %i.ch, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new
  %niter42 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter42.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter42.next.7 = add i32 %niter42, 8           ; 2 uses
  %niter42.ncmp.7 = icmp eq i32 %niter42.next.7, %unroll_iter41
  br i1 %niter42.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lcmp.mod39.not = icmp eq i32 %xtraiter37, 0
  br i1 %lcmp.mod39.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod40 = icmp ne i32 %xtraiter37, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter38 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter38.next, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter38.next = add i32 %epil.iter38, 1     ; 2 uses
  %epil.iter38.cmp.not = icmp eq i32 %epil.iter38.next, %xtraiter37
  br i1 %epil.iter38.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !735

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i, %bb.u
  %i.cj = add i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 1
  %i.ck = load atomic ptr, ptr %i.cd acquire, align 8
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.lr.ph.i31.i.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE9wait_nextBX_.exit.i.i.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE9wait_nextBX_.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, %bb.t
  %i.cm = load atomic ptr, ptr %i.cd acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.154.i.i.i.i.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.154.i.i.i.i.i.i.i, i64 noundef 3488, i64 noundef 16) #27
  br label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph57.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw [112 x i8], ptr %.sroa.011.154.i.i.i.i.i.i.i, i64 %i.cc
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 96 ; 2 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8
  %i.cq = and i64 %i.cp, 1
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.i32.i.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i.i:                         ; preds = %bb.v, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i
  %.sroa.0.02.i33.i.i.i.i.i.i.i = phi i32 [ %i.cv, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i ], [ 0, %bb.v ] ; 6 uses
  %i.cs = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 7
  br i1 %i.cs, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i32.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.i.preheader:             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i
  %i.ct = mul nuw nsw i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, %.sroa.0.02.i33.i.i.i.i.i.i.i ; 2 uses
  %xtraiter31 = and i32 %i.ct, 7                  ; 3 uses
  %i.cu = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 3
  br i1 %i.cu, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader
  %unroll_iter35 = and i32 %i.ct, 56
  br label %.lr.ph.i.i40.i.i.i.i.i.i.i

.lr.ph.i.i40.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new
  %niter36 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new ], [ %niter36.next.7, %.lr.ph.i.i40.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter36.next.7 = add i32 %niter36, 8           ; 2 uses
  %niter36.ncmp.7 = icmp eq i32 %niter36.next.7, %unroll_iter35
  br i1 %niter36.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i
  %lcmp.mod33.not = icmp eq i32 %xtraiter31, 0
  br i1 %lcmp.mod33.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader
  %lcmp.mod34 = icmp ne i32 %xtraiter31, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil

.lr.ph.i.i40.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader
  %epil.iter32 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter32.next, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter32.next = add i32 %epil.iter32, 1     ; 2 uses
  %epil.iter32.cmp.not = icmp eq i32 %epil.iter32.next, %xtraiter31
  br i1 %epil.iter32.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, !llvm.loop !736

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i, %bb.w
  %i.cv = add i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 1
  %i.cw = load atomic i64, ptr %i.co acquire, align 8
  %i.cx = and i64 %i.cw, 1
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i32.i.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, %bb.v, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE9wait_nextBX_.exit.i.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i.i = phi ptr [ %i.cm, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE9wait_nextBX_.exit.i.i.i.i.i.i.i ], [ %.sroa.011.154.i.i.i.i.i.i.i, %bb.v ], [ %.sroa.011.154.i.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i ] ; 2 uses
  %i.cz = add i64 %.sroa.05.055.i.i.i.i.i.i.i, 2  ; 3 uses
  %i.da = lshr i64 %i.cz, 1                       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.da, %i.bo
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i.i, label %.lr.ph57.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE20discard_all_messagesB10_.exit.i.i.i.i.i.i: ; preds = %bb.s, %._crit_edge58.i.i.i.i.i.i.i
  %i.db = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i, -2
  store atomic i64 %i.db, ptr %.8.val release, align 8
  br label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE20discard_all_messagesB10_.exit.i.i.i.i.i.i, %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.dd = atomicrmw xchg ptr %i.dc, i8 1 acq_rel, align 1
  %.not.i3.i.i.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i3.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEB1n_.exit, label %bb.x

bb.x:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  %i.de = load atomic i64, ptr %.8.val monotonic, align 8, !alias.scope !751, !noalias !752
  %i.df = load atomic i64, ptr %i.ba monotonic, align 8, !alias.scope !751, !noalias !752
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.dh = load atomic ptr, ptr %i.dg monotonic, align 8, !alias.scope !751, !noalias !752 ; 2 uses
  %i.di = and i64 %i.de, -2                       ; 2 uses
  %i.dj = and i64 %i.df, -2                       ; 2 uses
  %.not14.i.i.i.i.i.i.i.i = icmp eq i64 %i.di, %i.dj
  br i1 %.not14.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i1.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.aa, %bb.x
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.x ], [ %.sroa.06.1.i.i.i.i.i.i.i.i, %bb.aa ] ; 2 uses
  %i.dk = icmp eq ptr %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i, null
  br i1 %i.dk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2r_.exit.i.i.i.i, label %bb.y

.lr.ph.i.i.i.i1.i.i.i.i:                          ; preds = %bb.x, %bb.aa
  %.sroa.0.016.i.i.i.i.i.i.i.i = phi i64 [ %i.do, %bb.aa ], [ %i.di, %bb.x ] ; 2 uses
  %.sroa.06.015.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.1.i.i.i.i.i.i.i.i, %bb.aa ], [ %i.dh, %bb.x ] ; 4 uses
  %i.dl = and i64 %.sroa.0.016.i.i.i.i.i.i.i.i, 62
  %.not11.i.i.i.i.i.i.i.i = icmp eq i64 %i.dl, 62
  br i1 %.not11.i.i.i.i.i.i.i.i, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa.i.i.i.i.i.i.i.i, i64 noundef 3488, i64 noundef 16) #27, !noalias !753
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2r_.exit.i.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i.i1.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.06.015.i.i.i.i.i.i.i.i, i64 3472
  %i.dn = load atomic ptr, ptr %i.dm monotonic, align 8, !noalias !753
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.015.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015.i.i.i.i.i.i.i.i, i64 noundef 3488, i64 noundef 16) #27, !noalias !753
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i.i.i.i1.i.i.i.i
  %.sroa.06.1.i.i.i.i.i.i.i.i = phi ptr [ %i.dn, %bb.z ], [ %.sroa.06.015.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i1.i.i.i.i ] ; 2 uses
  %i.do = add i64 %.sroa.0.016.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %.not.i.i.i.i2.i.i.i.i = icmp eq i64 %i.do, %i.dj
  br i1 %.not.i.i.i.i2.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i1.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2r_.exit.i.i.i.i: ; preds = %bb.y, %._crit_edge.i.i.i.i.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.dp) #27, !noalias !752
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 512, i64 noundef 128) #27, !noalias !752
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEB1n_.exit

bb.ab:                                            ; preds = %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 acq_rel, align 8
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ac, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEB1n_.exit

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10disconnectB10_(ptr noundef nonnull align 8 %.8.val) #27
  %i.dt = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.du = atomicrmw xchg ptr %i.dt, i8 1 acq_rel, align 1
  %.not.i15.i.i.i = icmp eq i8 %i.du, 0
  br i1 %.not.i15.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEB1n_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.dv) #27
  %i.dw = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.dw) #27
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEB1n_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEB1n_.exit: ; preds = %bb.b, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2s_.exit.i.i.i.i, %bb.n, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2r_.exit.i.i.i.i, %bb.ab, %bb.ac, %bb.ad
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !18, !noundef !8 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbMXVmEvvZJf_5uu_dd.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbMXVmEvvZJf_5uu_dd.exit
    i64 1, label %bb.c
  ], !prof !16

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbMXVmEvvZJf_5uu_dd.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !756
  store i8 3, ptr %i.a, align 8, !alias.scope !756
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsbMXVmEvvZJf_5uu_dd(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !8
end_hunk_0
begin_hunk_1_@_RINvNtNtCs2vKOLqTMYjT_3std3sys9backtrace28___rust_begin_short_backtraceNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0uEB1d_:bb.a
  %.val.i1.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !range !18, !alias.scope !1064, !noalias !1042, !noundef !8 ; 2 uses
  %i.bh = icmp eq i64 %.val.i1.i.i.i.i.i.i, 0
  br i1 %i.bh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.sink.split.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.val.i4.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !range !18, !alias.scope !1065, !noalias !1042, !noundef !8 ; 2 uses
  %i.bj = icmp eq i64 %.val.i4.i.i.i.i.i.i, 0
  br i1 %i.bj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.sink.split.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.val.i7.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !range !18, !alias.scope !1066, !noalias !1042, !noundef !8 ; 2 uses
  %i.bl = icmp eq i64 %.val.i7.i.i.i.i.i.i, 0
  br i1 %i.bl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.sink.split.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.val.i10.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !range !18, !alias.scope !1067, !noalias !1042, !noundef !8 ; 2 uses
  %i.bn = icmp eq i64 %.val.i10.i.i.i.i.i.i, 0
  br i1 %i.bn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.sink.split.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.val.i13.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !range !18, !alias.scope !1068, !noalias !1042, !noundef !8 ; 2 uses
  %i.bp = icmp eq i64 %.val.i13.i.i.i.i.i.i, 0
  br i1 %i.bp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.sink.split.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbMXVmEvvZJf_5uu_dd.exit.sink.split.i.i.i.i.i.i, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  %.val.i6.i.i.i.i = load i64, ptr %i.bq, align 8, !range !18, !alias.scope !1070, !noalias !1042, !noundef !8 ; 2 uses
  %i.br = icmp eq i64 %.val.i6.i.i.i.i, 0
  br i1 %i.br, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorEECsbMXVmEvvZJf_5uu_dd.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %.val1.i7.i.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !1070, !noalias !1042, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i7.i.i.i.i, i64 noundef %.val.i6.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1071
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorEECsbMXVmEvvZJf_5uu_dd.exit.i.i

bb.s:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %.val.i9.i.i.i.i = load i64, ptr %i.bt, align 8, !range !18, !alias.scope !1073, !noalias !1042, !noundef !8 ; 2 uses
  %i.bu = icmp eq i64 %.val.i9.i.i.i.i, 0
  br i1 %i.bu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorEECsbMXVmEvvZJf_5uu_dd.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val1.i10.i.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !1073, !noalias !1042, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i10.i.i.i.i, i64 noundef %.val.i9.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1074
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorEECsbMXVmEvvZJf_5uu_dd.exit.i.i

bb.u:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %.val.i12.i.i.i.i = load i64, ptr %i.bw, align 8, !range !18, !alias.scope !1076, !noalias !1042, !noundef !8 ; 2 uses
  %i.bx = icmp eq i64 %.val.i12.i.i.i.i, 0
  br i1 %i.bx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorEECsbMXVmEvvZJf_5uu_dd.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val1.i13.i.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !1076, !noalias !1042, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i13.i.i.i.i, i64 noundef %.val.i12.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !1077
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorEECsbMXVmEvvZJf_5uu_dd.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorEECsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsdN2gEBvY5o8_13fluent_syntax6parser6errors11ParserErrorECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, %bb.j, %bb.i, %bb.h, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1042
  %.val.i.i = load i64, ptr %0, align 8, !range !15, !alias.scope !1042, !noundef !8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !1042 ; 34 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 4 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 24 ; 2 uses
  %i.ce = call nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %.sroa.822.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.447.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 5 uses
  %.sroa.548.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 104
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.629.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.734.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.839.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.944.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 4 uses
  %i.ck = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %.sroa.629.0..sroa_idx30.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.734.0..sroa_idx35.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.410.0..sroa_idx11.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.629.0..sroa_idx32.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.734.0..sroa_idx37.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.4.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 128 ; 2 uses
  %.sroa.424.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.7.0..sroa_idx.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.59.0..sroa_idx10.i.i.i.i2.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i3.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i4.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 400 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 392 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 408
  %i.cw = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 416
  %i.cx = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 384
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.59.0..sroa_idx10.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 256
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load i8, ptr %i.da, align 8, !range !25, !alias.scope !1042 ; 2 uses
  %i.dc = icmp eq i8 %i.db, 0
  %i.dd = insertelement <2 x ptr> poison, ptr %.val5.i.i, i64 0
  %i.de = shufflevector <2 x ptr> %i.dd, <2 x ptr> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.eg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorEECsbMXVmEvvZJf_5uu_dd.exit.i.i
  %.sroa.0.0.i.i = phi i8 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCsh036I4OHgIr_6uucore4mods6locale17LocalizationErrorEECsbMXVmEvvZJf_5uu_dd.exit.i.i ], [ %.sroa.0.1.i.i, %bb.eg ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1078
  switch i64 %.val.i.i, label %default.unreachable [
    i64 0, label %bb.x
    i64 1, label %bb.au
    i64 2, label %bb.cb
  ]

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1078
  store i32 -1, ptr %i.cr, align 8, !noalias !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1080
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false), !noalias !1080
  br label %bb.y

bb.y:                                             ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEB1C_.exit.i.i.i.i, %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.df = load atomic i64, ptr %.val5.i.i monotonic, align 8, !noalias !1082
  br label %bb.z

bb.z:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i, %bb.y
  %.sroa.0.038.i.i.i.i.i = phi i32 [ 0, %bb.y ], [ %.sroa.0.1.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i ] ; 12 uses
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.df, %bb.y ], [ %i.el, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i ] ; 7 uses
  %umin243 = call i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i.i.i, i32 6) ; 2 uses
  %i.dg = mul nuw nsw i32 %umin243, %umin243      ; 2 uses
  %i.dh = load i64, ptr %i.ct, align 16, !noalias !1082, !noundef !8
  %i.di = add i64 %i.dh, -1
  %i.dj = and i64 %i.di, %.sroa.02.0.i.i.i.i.i    ; 3 uses
  %i.dk = load i64, ptr %i.cu, align 8, !noalias !1082, !noundef !8
  %i.dl = sub i64 0, %i.dk
  %i.dm = and i64 %.sroa.02.0.i.i.i.i.i, %i.dl
  %i.dn = load ptr, ptr %i.cv, align 8, !noalias !1082, !nonnull !8, !noundef !8
  %i.do = load i64, ptr %i.cw, align 16, !noalias !1082, !noundef !8
  %i.dp = icmp ult i64 %i.dj, %i.do
  call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw [112 x i8], ptr %i.dn, i64 %i.dj ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8, !noalias !1082 ; 3 uses
  %i.dt = add i64 %.sroa.02.0.i.i.i.i.i, 1
  %i.du = icmp eq i64 %i.dt, %i.ds
  br i1 %i.du, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = icmp eq i64 %i.ds, %.sroa.02.0.i.i.i.i.i
  br i1 %i.dv, label %bb.ae, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dw = add nuw i64 %i.dj, 1
  %i.dx = load i64, ptr %i.cx, align 128, !noalias !1082, !noundef !8
  %i.dy = icmp ult i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.ah, label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.dz = icmp ult i32 %.sroa.0.038.i.i.i.i.i, 7
  br i1 %i.dz, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27, !noalias !1082
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i: ; preds = %bb.ac
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i
  %i.ea = mul nuw nsw i32 %.sroa.0.038.i.i.i.i.i, %.sroa.0.038.i.i.i.i.i ; 2 uses
  %xtraiter237 = and i32 %i.ea, 7                 ; 3 uses
  %i.eb = icmp ult i32 %.sroa.0.038.i.i.i.i.i, 3
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter241 = and i32 %i.ea, 56
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %niter242 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter242.next.7, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  %niter242.next.7 = add i32 %niter242, 8         ; 2 uses
  %niter242.ncmp.7 = icmp eq i32 %niter242.next.7, %unroll_iter241
  br i1 %niter242.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit173.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.aa
  fence seq_cst
  %i.ec = load atomic i64, ptr %i.cq monotonic, align 16, !noalias !1082 ; 2 uses
  %i.ed = load i64, ptr %i.ct, align 16, !noalias !1082, !noundef !8 ; 2 uses
  %i.ee = xor i64 %i.ed, -1
  %i.ef = and i64 %i.ec, %i.ee
  %i.eg = icmp eq i64 %i.ef, %.sroa.02.0.i.i.i.i.i
  br i1 %i.eg, label %bb.af, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i.i.i: ; preds = %bb.ae
  %..i.i.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i.i.i, i32 6) ; 2 uses
  %i.eh = mul nuw nsw i32 %..i.i.i.i.i.i.i, %..i.i.i.i.i.i.i ; 2 uses
  %.not.i13.i.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i.i.i, 0
  br i1 %.not.i13.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i, label %.lr.ph.i16.i.i.i.i.i.preheader

.lr.ph.i16.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i.i.i
  %xtraiter244 = and i32 %i.eh, 5                 ; 3 uses
  %i.ei = icmp ult i32 %.sroa.0.038.i.i.i.i.i, 3
  br i1 %i.ei, label %.lr.ph.i16.i.i.i.i.i.epil.preheader, label %.lr.ph.i16.i.i.i.i.i.preheader.new

.lr.ph.i16.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i16.i.i.i.i.i.preheader
  %unroll_iter248 = and i32 %i.eh, 56
  br label %.lr.ph.i16.i.i.i.i.i

.lr.ph.i16.i.i.i.i.i:                             ; preds = %.lr.ph.i16.i.i.i.i.i, %.lr.ph.i16.i.i.i.i.i.preheader.new
  %niter249 = phi i32 [ 0, %.lr.ph.i16.i.i.i.i.i.preheader.new ], [ %niter249.next.7, %.lr.ph.i16.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  %niter249.next.7 = add i32 %niter249, 8         ; 2 uses
  %niter249.ncmp.7 = icmp eq i32 %niter249.next.7, %unroll_iter248
  br i1 %niter249.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit172.unr-lcssa, label %.lr.ph.i16.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ej = and i64 %i.ed, %i.ec
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_recvB10_.exit.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.thread.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i.i
  %lcmp.mod252.not = icmp eq i32 %xtraiter250, 0
  br i1 %lcmp.mod252.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.preheader
  %lcmp.mod253 = icmp ne i32 %xtraiter250, 0
  call void @llvm.assume(i1 %lcmp.mod253)
  br label %.lr.ph.i26.i.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i26.i.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.i.epil.preheader
  %epil.iter251 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.epil.preheader ], [ %epil.iter251.next, %.lr.ph.i26.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1082
  %epil.iter251.next = add i32 %epil.iter251, 1   ; 2 uses
  %epil.iter251.cmp.not = icmp eq i32 %epil.iter251.next, %xtraiter250
  br i1 %epil.iter251.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.epil, !llvm.loop !909

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit172.unr-lcssa: ; preds = %.lr.ph.i16.i.i.i.i.i
  %lcmp.mod246.not = icmp eq i32 %xtraiter244, 0
  br i1 %lcmp.mod246.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i, label %.lr.ph.i16.i.i.i.i.i.epil.preheader

.lr.ph.i16.i.i.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit172.unr-lcssa, %.lr.ph.i16.i.i.i.i.i.preheader
  %lcmp.mod247 = icmp ne i32 %xtraiter244, 0
  call void @llvm.assume(i1 %lcmp.mod247)
  br label %.lr.ph.i16.i.i.i.i.i.epil

.lr.ph.i16.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i16.i.i.i.i.i.epil, %.lr.ph.i16.i.i.i.i.i.epil.preheader
  %epil.iter245 = phi i32 [ 0, %.lr.ph.i16.i.i.i.i.i.epil.preheader ], [ %epil.iter245.next, %.lr.ph.i16.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1082
  %epil.iter245.next = add i32 %epil.iter245, 1   ; 2 uses
  %epil.iter245.cmp.not = icmp eq i32 %epil.iter245.next, %xtraiter244
  br i1 %epil.iter245.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i, label %.lr.ph.i16.i.i.i.i.i.epil, !llvm.loop !910

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit173.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod239.not = icmp eq i32 %xtraiter237, 0
  br i1 %lcmp.mod239.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit173.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %lcmp.mod240 = icmp ne i32 %xtraiter237, 0
  call void @llvm.assume(i1 %lcmp.mod240)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %epil.iter238 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ], [ %epil.iter238.next, %.lr.ph.i.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1082
  %epil.iter238.next = add i32 %epil.iter238, 1   ; 2 uses
  %epil.iter238.cmp.not = icmp eq i32 %epil.iter238.next, %xtraiter237
  br i1 %epil.iter238.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !911

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit173.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit172.unr-lcssa, %.lr.ph.i16.i.i.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i, %bb.ad
  %i.el = load atomic i64, ptr %.val5.i.i monotonic, align 16, !noalias !1082
  %.sroa.0.1.i.i.i.i.i = add i32 %.sroa.0.038.i.i.i.i.i, 1
  br label %bb.z

bb.ag:                                            ; preds = %bb.ab
  %i.em = load i64, ptr %i.cu, align 8, !noalias !1082, !noundef !8
  %i.en = add i64 %i.em, %i.dm
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ab
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.en, %bb.ag ], [ %i.ds, %bb.ab ]
  %i.eo = cmpxchg weak ptr %.val5.i.i, i64 %.sroa.02.0.i.i.i.i.i, i64 %.sroa.01.0.i.i.i.i.i seq_cst monotonic, align 8, !noalias !1082
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.eo, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i: ; preds = %bb.ah
  %.not.i23.i.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i.i.i, 0
  br i1 %.not.i23.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i
  %xtraiter250 = and i32 %i.dg, 7                 ; 3 uses
  %i.ep = icmp ult i32 %.sroa.0.038.i.i.i.i.i, 3
  br i1 %i.ep, label %.lr.ph.i26.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i26.i.i.i.i.i.preheader
  %unroll_iter254 = and i32 %i.dg, 56
  br label %.lr.ph.i26.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i:                             ; preds = %.lr.ph.i26.i.i.i.i.i, %.lr.ph.i26.i.i.i.i.i.preheader.new
  %niter255 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.preheader.new ], [ %niter255.next.7, %.lr.ph.i26.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  call void @llvm.x86.sse2.pause(), !noalias !1082
  %niter255.next.7 = add i32 %niter255, 8         ; 2 uses
  %niter255.ncmp.7 = icmp eq i32 %niter255.next.7, %unroll_iter254
  br i1 %niter255.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_recvB10_.exit.i.i.i.i: ; preds = %bb.af
  %i.eq = load i32, ptr %i.cr, align 8, !range !26, !noalias !1080, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.eq, -1
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ai

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.thread.i.i.i.i: ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %bb.ar

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i: ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  store ptr %i.dq, ptr %i.z, align 8, !alias.scope !1081, !noalias !1080
  %i.es = load i64, ptr %i.cu, align 8, !noalias !1082, !noundef !8
  %i.et = add i64 %i.es, %.sroa.02.0.i.i.i.i.i    ; 2 uses
  store i64 %i.et, ptr %i.cs, align 8, !alias.scope !1081, !noalias !1080
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %.sroa.0.0.copyload4.i.i.i.i = load i64, ptr %i.dq, align 16, !noalias !1080
  %.sroa.4.0..val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.4.0.copyload5.i.i.i.i = load i32, ptr %.sroa.4.0..val.sroa_idx.i.i.i.i, align 8, !noalias !1080 ; 2 uses
  %.sroa.6.0..val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.6.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.6.0..val.sroa_idx.i.i.i.i, i64 84, i1 false), !noalias !1080
  store atomic i64 %i.et, ptr %i.er release, align 16, !noalias !1083
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.cy) #33, !noalias !1083
  %i.eu = icmp eq i32 %.sroa.4.0.copyload5.i.i.i.i, -1
  br i1 %i.eu, label %bb.ar, label %bb.as

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_recvB10_.exit.i.i.i.i
  %i.ev = load i64, ptr %i.aa, align 8, !noalias !1080, !noundef !8 ; 2 uses
  %i.ew = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #27, !noalias !1080 ; 2 uses
  %i.ex = extractvalue { i64, i32 } %i.ew, 0      ; 2 uses
  %i.ey = icmp eq i64 %i.ex, %i.ev
  br i1 %i.ey, label %.split.i.i.i.i, label %bb.ap

bb.aj:                                            ; preds = %bb.ap, %.split.i.i.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_recvB10_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1084
  store ptr %i.z, ptr %i.y, align 8, !noalias !1080
  store ptr %.val5.i.i, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !1080
  store ptr %i.aa, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !1080
  %i.ez = load i8, ptr %i.cl, align 8, !range !21, !noalias !1085, !noundef !8
  %i.fa = icmp eq i8 %i.ez, 1
  br i1 %i.fa, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i, !prof !14

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i: ; preds = %bb.aj
  %i.fb = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsbMXVmEvvZJf_5uu_dd(ptr noundef nonnull align 8 %i.ck, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #27, !noalias !1084 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEs_0uEB3w_.exit.i.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i, %bb.aj
  %.sroa.0.0.i.i.i2.i.i.i.i.i.i = phi ptr [ %i.fb, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i ], [ %i.ck, %bb.aj ] ; 4 uses
  %i.fd = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i.i, align 8, !noalias !1084, !noundef !8 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i.i, align 8, !noalias !1084
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %bb.am, !prof !10

bb.ak:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1084
  %i.fe = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #27, !noalias !1084 ; 3 uses
  store ptr %i.fe, ptr %i.x, align 8, !noalias !1084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1084
  store ptr %i.z, ptr %i.w, align 8, !noalias !1084
  store ptr %.val5.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !noalias !1080
  store ptr %i.aa, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i.i.i, align 8, !noalias !1080
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w, ptr nonnull %i.fe) #33, !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1084
  %i.ff = atomicrmw sub ptr %i.fe, i64 1 release, align 8, !noalias !1086
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.al, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.x) #31, !noalias !1084
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1084
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEB1C_.exit.i.i.i.i

bb.am:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store atomic i64 0, ptr %i.fh release, align 8, !noalias !1084
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store atomic ptr null, ptr %i.fi release, align 8, !noalias !1084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1084
  store ptr %i.z, ptr %i.v, align 8, !noalias !1084
  store ptr %.val5.i.i, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i.i.i, align 8, !noalias !1080
  store ptr %i.aa, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i.i.i, align 8, !noalias !1080
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v, ptr nonnull %i.fd) #33, !noalias !1084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1084
  %i.fj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i.i, align 8, !noalias !1084, !noundef !8 ; 3 uses
  store ptr %i.fj, ptr %i.u, align 8, !noalias !1084
  store ptr %i.fd, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i.i, align 8, !noalias !1084
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fl = atomicrmw sub ptr %i.fj, i64 1 release, align 8, !noalias !1087
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.ao, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.u) #31, !noalias !1084
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1084
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEB1C_.exit.i.i.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEs_0uEB3w_.exit.i.i.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEs0_0B1E_(ptr nonnull %i.y) #33, !noalias !1084
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEB1C_.exit.i.i.i.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEB1C_.exit.i.i.i.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEs_0uEB3w_.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1084
  br label %bb.y

.split.i.i.i.i:                                   ; preds = %bb.ai
  %i.fn = extractvalue { i64, i32 } %i.ew, 1      ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 1000000000
  call void @llvm.assume(i1 %i.fo)
  %.not20.i.i.i.i = icmp samesign ult i32 %i.fn, %i.eq
  br i1 %.not20.i.i.i.i, label %bb.aj, label %bb.aq

bb.ap:                                            ; preds = %bb.ai
  %.not19.i.i.i.i = icmp slt i64 %i.ex, %i.ev
  br i1 %.not19.i.i.i.i, label %bb.aj, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.split.i.i.i.i
  store i8 0, ptr %i.ab, align 16, !alias.scope !1079, !noalias !1078
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i

bb.ar:                                            ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.thread.i.i.i.i
  store i8 1, ptr %i.ab, align 16, !alias.scope !1079, !noalias !1078
  br label %bb.at

bb.as:                                            ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.548.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.6.i.i.i.i, i64 84, i1 false), !noalias !1078
  store i64 %.sroa.0.0.copyload4.i.i.i.i, ptr %i.ab, align 16, !alias.scope !1079, !noalias !1078
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.4.0.copyload5.i.sink.i.i.i = phi i32 [ %.sroa.4.0.copyload5.i.i.i.i, %bb.as ], [ -1, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i: ; preds = %bb.at, %bb.aq
  %i.fp = phi i32 [ -1, %bb.aq ], [ %.sroa.4.0.copyload5.i.sink.i.i.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1078
  br label %bb.ds

bb.au:                                            ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1078
  store i32 -1, ptr %i.cm, align 8, !noalias !1089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1089
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 40, i1 false), !noalias !1089
  br label %bb.av

bb.av:                                            ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEB1C_.exit.i.i.i.i, %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.fq = load atomic i64, ptr %.val5.i.i acquire, align 8, !noalias !1091
  %i.fr = load atomic ptr, ptr %i.cp acquire, align 8, !noalias !1091
  br label %bb.aw

bb.aw:                                            ; preds = %.backedge.i.i.i.i.i, %bb.av
  %.sroa.0.043.i.i.i.i.i = phi i32 [ 0, %bb.av ], [ %.sroa.0.043.be.i.i.i.i.i, %.backedge.i.i.i.i.i ] ; 14 uses
  %.sroa.012.0.i.i.i.i.i = phi ptr [ %i.fr, %bb.av ], [ %i.gc, %.backedge.i.i.i.i.i ] ; 8 uses
  %.sroa.07.0.i.i.i.i.i = phi i64 [ %i.fq, %bb.av ], [ %i.gb, %.backedge.i.i.i.i.i ] ; 5 uses
  %i.fs = lshr i64 %.sroa.07.0.i.i.i.i.i, 1       ; 2 uses
  %i.ft = and i64 %i.fs, 31                       ; 6 uses
  %i.fu = icmp eq i64 %i.ft, 31
  br i1 %i.fu, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fv = icmp ult i32 %.sroa.0.043.i.i.i.i.i, 7
  br i1 %i.fv, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i.i.i, label %.backedge.sink.split.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i.i.i: ; preds = %bb.ax
  %.not.i.i.i20.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i.i, 0
  br i1 %.not.i.i.i20.i.i.i, label %.backedge.i.i.i.i.i, label %.lr.ph.i.i.i23.i.i.i.preheader

.lr.ph.i.i.i23.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i.i.i
  %i.fw = mul nuw nsw i32 %.sroa.0.043.i.i.i.i.i, %.sroa.0.043.i.i.i.i.i ; 2 uses
  %xtraiter219 = and i32 %i.fw, 7                 ; 3 uses
  %i.fx = icmp ult i32 %.sroa.0.043.i.i.i.i.i, 3
  br i1 %i.fx, label %.lr.ph.i.i.i23.i.i.i.epil.preheader, label %.lr.ph.i.i.i23.i.i.i.preheader.new

.lr.ph.i.i.i23.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i23.i.i.i.preheader
  %unroll_iter223 = and i32 %i.fw, 56
  br label %.lr.ph.i.i.i23.i.i.i

.lr.ph.i.i.i23.i.i.i:                             ; preds = %.lr.ph.i.i.i23.i.i.i, %.lr.ph.i.i.i23.i.i.i.preheader.new
  %niter224 = phi i32 [ 0, %.lr.ph.i.i.i23.i.i.i.preheader.new ], [ %niter224.next.7, %.lr.ph.i.i.i23.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  %niter224.next.7 = add i32 %niter224, 8         ; 2 uses
  %niter224.ncmp.7 = icmp eq i32 %niter224.next.7, %unroll_iter223
  br i1 %niter224.ncmp.7, label %.backedge.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i23.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.fy = add i64 %.sroa.07.0.i.i.i.i.i, 2        ; 2 uses
  %i.fz = and i64 %.sroa.07.0.i.i.i.i.i, 1
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.az, label %bb.bc

.backedge.sink.split.i.i.i.i.i:                   ; preds = %bb.be, %bb.ax
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27, !noalias !1091
  br label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i23.i.i.i
  %lcmp.mod221.not = icmp eq i32 %xtraiter219, 0
  br i1 %lcmp.mod221.not, label %.backedge.i.i.i.i.i, label %.lr.ph.i.i.i23.i.i.i.epil.preheader

.lr.ph.i.i.i23.i.i.i.epil.preheader:              ; preds = %.backedge.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.i.i.preheader
  %lcmp.mod222 = icmp ne i32 %xtraiter219, 0
  call void @llvm.assume(i1 %lcmp.mod222)
  br label %.lr.ph.i.i.i23.i.i.i.epil

.lr.ph.i.i.i23.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i23.i.i.i.epil, %.lr.ph.i.i.i23.i.i.i.epil.preheader
  %epil.iter220 = phi i32 [ 0, %.lr.ph.i.i.i23.i.i.i.epil.preheader ], [ %epil.iter220.next, %.lr.ph.i.i.i23.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1091
  %epil.iter220.next = add i32 %epil.iter220, 1   ; 2 uses
  %epil.iter220.cmp.not = icmp eq i32 %epil.iter220.next, %xtraiter219
  br i1 %epil.iter220.cmp.not, label %.backedge.i.i.i.i.i, label %.lr.ph.i.i.i23.i.i.i.epil, !llvm.loop !940

.backedge.i.i.i.i.i.loopexit174.unr-lcssa:        ; preds = %.lr.ph.i23.i.i.i.i.i
  %lcmp.mod215.not = icmp eq i32 %xtraiter213, 0
  br i1 %lcmp.mod215.not, label %.backedge.i.i.i.i.i, label %.lr.ph.i23.i.i.i.i.i.epil.preheader

.lr.ph.i23.i.i.i.i.i.epil.preheader:              ; preds = %.backedge.i.i.i.i.i.loopexit174.unr-lcssa, %.lr.ph.i23.i.i.i.i.i.preheader
  %lcmp.mod216 = icmp ne i32 %xtraiter213, 0
  call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.i23.i.i.i.i.i.epil

.lr.ph.i23.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i23.i.i.i.i.i.epil, %.lr.ph.i23.i.i.i.i.i.epil.preheader
  %epil.iter214 = phi i32 [ 0, %.lr.ph.i23.i.i.i.i.i.epil.preheader ], [ %epil.iter214.next, %.lr.ph.i23.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1091
  %epil.iter214.next = add i32 %epil.iter214, 1   ; 2 uses
  %epil.iter214.cmp.not = icmp eq i32 %epil.iter214.next, %xtraiter213
  br i1 %epil.iter214.cmp.not, label %.backedge.i.i.i.i.i, label %.lr.ph.i23.i.i.i.i.i.epil, !llvm.loop !941

.backedge.i.i.i.i.i.loopexit175.unr-lcssa:        ; preds = %.lr.ph.i33.i.i.i.i.i
  %lcmp.mod209.not = icmp eq i32 %xtraiter207, 0
  br i1 %lcmp.mod209.not, label %.backedge.i.i.i.i.i, label %.lr.ph.i33.i.i.i.i.i.epil.preheader

.lr.ph.i33.i.i.i.i.i.epil.preheader:              ; preds = %.backedge.i.i.i.i.i.loopexit175.unr-lcssa, %.lr.ph.i33.i.i.i.i.i.preheader
  %lcmp.mod210 = icmp ne i32 %xtraiter207, 0
  call void @llvm.assume(i1 %lcmp.mod210)
  br label %.lr.ph.i33.i.i.i.i.i.epil

.lr.ph.i33.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i33.i.i.i.i.i.epil, %.lr.ph.i33.i.i.i.i.i.epil.preheader
  %epil.iter208 = phi i32 [ 0, %.lr.ph.i33.i.i.i.i.i.epil.preheader ], [ %epil.iter208.next, %.lr.ph.i33.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1091
  %epil.iter208.next = add i32 %epil.iter208, 1   ; 2 uses
  %epil.iter208.cmp.not = icmp eq i32 %epil.iter208.next, %xtraiter207
  br i1 %epil.iter208.cmp.not, label %.backedge.i.i.i.i.i, label %.lr.ph.i33.i.i.i.i.i.epil, !llvm.loop !942

.backedge.i.i.i.i.i:                              ; preds = %.backedge.i.i.i.i.i.loopexit175.unr-lcssa, %.lr.ph.i33.i.i.i.i.i.epil, %.backedge.i.i.i.i.i.loopexit174.unr-lcssa, %.lr.ph.i23.i.i.i.i.i.epil, %.backedge.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i.i.i, %.backedge.sink.split.i.i.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i.i.i
  %i.gb = load atomic i64, ptr %.val5.i.i acquire, align 8, !noalias !1091
  %i.gc = load atomic ptr, ptr %i.cp acquire, align 8, !noalias !1091
  %.sroa.0.043.be.i.i.i.i.i = add i32 %.sroa.0.043.i.i.i.i.i, 1
  br label %bb.aw

bb.az:                                            ; preds = %bb.ay
  fence seq_cst
  %i.gd = load atomic i64, ptr %i.cq monotonic, align 8, !noalias !1091 ; 3 uses
  %i.ge = lshr i64 %i.gd, 1
  %i.gf = icmp eq i64 %i.fs, %i.ge
  br i1 %i.gf, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.unshifted.i.i.i.i.i = xor i64 %i.gd, %.sroa.07.0.i.i.i.i.i
  %.not.i.i.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i.i.i, 63
  %i.gg = zext i1 %.not.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i = or disjoint i64 %i.fy, %i.gg
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gh = and i64 %i.gd, 1
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_recvB10_.exit.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.thread.i.i.i.i

bb.bc:                                            ; preds = %bb.ba, %bb.ay
  %.sroa.01.0.i.i6.i.i.i = phi i64 [ %i.fy, %bb.ay ], [ %spec.select.i.i.i.i.i, %bb.ba ] ; 2 uses
  %i.gj = icmp eq ptr %.sroa.012.0.i.i.i.i.i, null
  br i1 %i.gj, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gk = cmpxchg weak ptr %.val5.i.i, i64 %.sroa.07.0.i.i.i.i.i, i64 %.sroa.01.0.i.i6.i.i.i seq_cst acquire, align 8, !noalias !1091
  %.sroa.18.0.in.i.i.i7.i.i.i = extractvalue { i64, i1 } %i.gk, 1
  br i1 %.sroa.18.0.in.i.i.i7.i.i.i, label %bb.bf, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.gl = icmp ult i32 %.sroa.0.043.i.i.i.i.i, 7
  br i1 %i.gl, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i.i.i, label %.backedge.sink.split.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i.i.i: ; preds = %bb.be
  %.not.i20.i.i.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i.i, 0
  br i1 %.not.i20.i.i.i.i.i, label %.backedge.i.i.i.i.i, label %.lr.ph.i23.i.i.i.i.i.preheader

.lr.ph.i23.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i.i.i
  %i.gm = mul nuw nsw i32 %.sroa.0.043.i.i.i.i.i, %.sroa.0.043.i.i.i.i.i ; 2 uses
  %xtraiter213 = and i32 %i.gm, 7                 ; 3 uses
  %i.gn = icmp ult i32 %.sroa.0.043.i.i.i.i.i, 3
  br i1 %i.gn, label %.lr.ph.i23.i.i.i.i.i.epil.preheader, label %.lr.ph.i23.i.i.i.i.i.preheader.new

.lr.ph.i23.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i23.i.i.i.i.i.preheader
  %unroll_iter217 = and i32 %i.gm, 56
  br label %.lr.ph.i23.i.i.i.i.i

.lr.ph.i23.i.i.i.i.i:                             ; preds = %.lr.ph.i23.i.i.i.i.i, %.lr.ph.i23.i.i.i.i.i.preheader.new
  %niter218 = phi i32 [ 0, %.lr.ph.i23.i.i.i.i.i.preheader.new ], [ %niter218.next.7, %.lr.ph.i23.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  %niter218.next.7 = add i32 %niter218, 8         ; 2 uses
  %niter218.ncmp.7 = icmp eq i32 %niter218.next.7, %unroll_iter217
  br i1 %niter218.ncmp.7, label %.backedge.i.i.i.i.i.loopexit174.unr-lcssa, label %.lr.ph.i23.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i.i.i: ; preds = %bb.bd
  %..i.i.i.i8.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i.i.i.i.i, i32 6) ; 2 uses
  %i.go = mul nuw nsw i32 %..i.i.i.i8.i.i.i, %..i.i.i.i8.i.i.i ; 2 uses
  %.not.i30.i.i.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i.i, 0
  br i1 %.not.i30.i.i.i.i.i, label %.backedge.i.i.i.i.i, label %.lr.ph.i33.i.i.i.i.i.preheader

.lr.ph.i33.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i.i.i
  %xtraiter207 = and i32 %i.go, 5                 ; 3 uses
  %i.gp = icmp ult i32 %.sroa.0.043.i.i.i.i.i, 3
  br i1 %i.gp, label %.lr.ph.i33.i.i.i.i.i.epil.preheader, label %.lr.ph.i33.i.i.i.i.i.preheader.new

.lr.ph.i33.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i33.i.i.i.i.i.preheader
  %unroll_iter211 = and i32 %i.go, 56
  br label %.lr.ph.i33.i.i.i.i.i

.lr.ph.i33.i.i.i.i.i:                             ; preds = %.lr.ph.i33.i.i.i.i.i, %.lr.ph.i33.i.i.i.i.i.preheader.new
  %niter212 = phi i32 [ 0, %.lr.ph.i33.i.i.i.i.i.preheader.new ], [ %niter212.next.7, %.lr.ph.i33.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  %niter212.next.7 = add i32 %niter212, 8         ; 2 uses
  %niter212.ncmp.7 = icmp eq i32 %niter212.next.7, %unroll_iter211
  br i1 %niter212.ncmp.7, label %.backedge.i.i.i.i.i.loopexit175.unr-lcssa, label %.lr.ph.i33.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.gq = icmp eq i64 %i.ft, 30
  br i1 %i.gq, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i, i64 3472 ; 2 uses
  %i.gs = load atomic ptr, ptr %i.gr acquire, align 8, !noalias !1091 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %.lr.ph.i37.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE9wait_nextBX_.exit.i.i.i.i.i

.lr.ph.i37.i.i.i.i.i:                             ; preds = %bb.bg, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i = phi i32 [ %i.gx, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ], [ 0, %bb.bg ] ; 6 uses
  %i.gu = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i, 7
  br i1 %i.gu, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i37.i.i.i.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27, !noalias !1091
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i37.i.i.i.i.i
  %.not.i.i.i.i10.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i10.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i
  %i.gv = mul nuw nsw i32 %.sroa.0.02.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i ; 2 uses
  %xtraiter225 = and i32 %i.gv, 7                 ; 3 uses
  %i.gw = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i, 3
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter229 = and i32 %i.gv, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %niter230 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter230.next.7, %.lr.ph.i.i.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  call void @llvm.x86.sse2.pause(), !noalias !1091
  %niter230.next.7 = add i32 %niter230, 8         ; 2 uses
  %niter230.ncmp.7 = icmp eq i32 %niter230.next.7, %unroll_iter229
  br i1 %niter230.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod227.not = icmp eq i32 %xtraiter225, 0
  br i1 %lcmp.mod227.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %lcmp.mod228 = icmp ne i32 %xtraiter225, 0
  call void @llvm.assume(i1 %lcmp.mod228)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %epil.iter226 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter226.next, %.lr.ph.i.i.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1091
  %epil.iter226.next = add i32 %epil.iter226, 1   ; 2 uses
  %epil.iter226.cmp.not = icmp eq i32 %epil.iter226.next, %xtraiter225
  br i1 %epil.iter226.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !943

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, %bb.bh
  %i.gx = add i32 %.sroa.0.02.i.i.i.i.i.i, 1
  %i.gy = load atomic ptr, ptr %i.gr acquire, align 8, !noalias !1091 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %.lr.ph.i37.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE9wait_nextBX_.exit.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE9wait_nextBX_.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, %bb.bg
  %.lcssa.i.i.i.i.i.i = phi ptr [ %i.gs, %bb.bg ], [ %i.gy, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ha = and i64 %.sroa.01.0.i.i6.i.i.i, -2
  %i.hb = add i64 %i.ha, 2
  %i.hc = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i.i.i, i64 3472
  %i.hd = load atomic ptr, ptr %i.hc monotonic, align 8, !noalias !1091
  %i.he = icmp ne ptr %i.hd, null
  %i.hf = zext i1 %i.he to i64
  %spec.select17.i.i.i.i.i = or disjoint i64 %i.hb, %i.hf
  store atomic ptr %.lcssa.i.i.i.i.i.i, ptr %i.cp release, align 8, !noalias !1091
  store atomic i64 %spec.select17.i.i.i.i.i, ptr %.val5.i.i release, align 8, !noalias !1091
  br label %bb.bi

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_recvB10_.exit.i.i.i.i: ; preds = %bb.bb
  %i.hg = load i32, ptr %i.cm, align 8, !range !26, !noalias !1089, !noundef !8 ; 2 uses
  %.not.i11.i.i.i = icmp eq i32 %i.hg, -1
  br i1 %.not.i11.i.i.i, label %bb.bs, label %bb.br

bb.bi:                                            ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE9wait_nextBX_.exit.i.i.i.i.i, %bb.bf
  store ptr %.sroa.012.0.i.i.i.i.i, ptr %i.cn, align 8, !alias.scope !1090, !noalias !1089
  store i64 %i.ft, ptr %i.co, align 8, !alias.scope !1090, !noalias !1089
  %i.hh = getelementptr inbounds nuw [112 x i8], ptr %.sroa.012.0.i.i.i.i.i, i64 %i.ft ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 96 ; 3 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8, !noalias !1092
  %i.hk = and i64 %i.hj, 1
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %.lr.ph.i.i6.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i

.lr.ph.i.i6.i.i.i.i:                              ; preds = %bb.bi, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i
  %.sroa.0.02.i.i7.i.i.i.i = phi i32 [ %i.hp, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i ], [ 0, %bb.bi ] ; 6 uses
  %i.hm = icmp ult i32 %.sroa.0.02.i.i7.i.i.i.i, 7
  br i1 %i.hm, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i6.i.i.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27, !noalias !1092
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i.i: ; preds = %.lr.ph.i.i6.i.i.i.i
  %.not.i.i.i11.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i7.i.i.i.i, 0
  br i1 %.not.i.i.i11.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i, label %.lr.ph.i.i.i14.i.i.i.i.preheader

.lr.ph.i.i.i14.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i.i
  %i.hn = mul nuw nsw i32 %.sroa.0.02.i.i7.i.i.i.i, %.sroa.0.02.i.i7.i.i.i.i ; 2 uses
  %xtraiter231 = and i32 %i.hn, 7                 ; 3 uses
  %i.ho = icmp ult i32 %.sroa.0.02.i.i7.i.i.i.i, 3
  br i1 %i.ho, label %.lr.ph.i.i.i14.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i14.i.i.i.i.preheader.new

.lr.ph.i.i.i14.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i14.i.i.i.i.preheader
  %unroll_iter235 = and i32 %i.hn, 56
  br label %.lr.ph.i.i.i14.i.i.i.i

.lr.ph.i.i.i14.i.i.i.i:                           ; preds = %.lr.ph.i.i.i14.i.i.i.i, %.lr.ph.i.i.i14.i.i.i.i.preheader.new
  %niter236 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.i.i.preheader.new ], [ %niter236.next.7, %.lr.ph.i.i.i14.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1092
  call void @llvm.x86.sse2.pause(), !noalias !1092
  call void @llvm.x86.sse2.pause(), !noalias !1092
  call void @llvm.x86.sse2.pause(), !noalias !1092
  call void @llvm.x86.sse2.pause(), !noalias !1092
  call void @llvm.x86.sse2.pause(), !noalias !1092
  call void @llvm.x86.sse2.pause(), !noalias !1092
  call void @llvm.x86.sse2.pause(), !noalias !1092
  %niter236.next.7 = add i32 %niter236, 8         ; 2 uses
  %niter236.ncmp.7 = icmp eq i32 %niter236.next.7, %unroll_iter235
  br i1 %niter236.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i.i.i.i
  %lcmp.mod233.not = icmp eq i32 %xtraiter231, 0
  br i1 %lcmp.mod233.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i, label %.lr.ph.i.i.i14.i.i.i.i.epil.preheader

.lr.ph.i.i.i14.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.i.i.preheader
  %lcmp.mod234 = icmp ne i32 %xtraiter231, 0
  call void @llvm.assume(i1 %lcmp.mod234)
  br label %.lr.ph.i.i.i14.i.i.i.i.epil

.lr.ph.i.i.i14.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i14.i.i.i.i.epil, %.lr.ph.i.i.i14.i.i.i.i.epil.preheader
  %epil.iter232 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.i.i.epil.preheader ], [ %epil.iter232.next, %.lr.ph.i.i.i14.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1092
  %epil.iter232.next = add i32 %epil.iter232, 1   ; 2 uses
  %epil.iter232.cmp.not = icmp eq i32 %epil.iter232.next, %xtraiter231
  br i1 %epil.iter232.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i, label %.lr.ph.i.i.i14.i.i.i.i.epil, !llvm.loop !946

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i.i, %bb.bj
  %i.hp = add i32 %.sroa.0.02.i.i7.i.i.i.i, 1
  %i.hq = load atomic i64, ptr %i.hi acquire, align 8, !noalias !1092
  %i.hr = and i64 %i.hq, 1
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %.lr.ph.i.i6.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i, %bb.bi
  %.sroa.029.0.copyload.i.i.i.i = load i64, ptr %i.hh, align 16, !noalias !1092
  %.sroa.430.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.sroa.430.0.copyload.i.i.i.i = load i32, ptr %.sroa.430.0..sroa_idx.i.i.i.i, align 8, !noalias !1092 ; 2 uses
  %.sroa.531.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.531.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.531.0..sroa_idx.i.i.i.i, i64 84, i1 false), !noalias !1089
  %i.ht = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 31
  br i1 %i.hu, label %.lr.ph.i1.i.i.i.i.i, label %bb.bn

.lr.ph.i1.i.i.i.i.i:                              ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i, %bb.bm
  %.sroa.0.03.i.i4.i.i.i.i = phi i64 [ %i.id, %bb.bm ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [112 x i8], ptr %.sroa.012.0.i.i.i.i.i, i64 %.sroa.0.03.i.i4.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 96 ; 2 uses
  %i.hx = load atomic i64, ptr %i.hw acquire, align 8, !noalias !1092
  %i.hy = and i64 %i.hx, 2
  %i.hz = icmp eq i64 %i.hy, 0
  br i1 %i.hz, label %bb.bk, label %.lr.ph.i1.i.i.i.i.i.1

bb.bk:                                            ; preds = %.lr.ph.i1.i.i.i.i.i
  %i.ia = atomicrmw or ptr %i.hw, i64 4 acq_rel, align 8, !noalias !1092
  %i.ib = and i64 %i.ia, 2
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i, label %.lr.ph.i1.i.i.i.i.i.1

.lr.ph.i1.i.i.i.i.i.1:                            ; preds = %bb.bk, %.lr.ph.i1.i.i.i.i.i
  %i.id = add nuw nsw i64 %.sroa.0.03.i.i4.i.i.i.i, 2 ; 2 uses
  %i.ie = getelementptr inbounds nuw [112 x i8], ptr %.sroa.012.0.i.i.i.i.i, i64 %.sroa.0.03.i.i4.i.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 208 ; 2 uses
  %i.ig = load atomic i64, ptr %i.if acquire, align 8, !noalias !1092
  %i.ih = and i64 %i.ig, 2
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i1.i.i.i.i.i.1
  %i.ij = atomicrmw or ptr %i.if, i64 4 acq_rel, align 8, !noalias !1092
  %i.ik = and i64 %i.ij, 2
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph.i1.i.i.i.i.i.1
  %exitcond.not.i.i5.i.i.i.i.1 = icmp eq i64 %i.id, 30
  br i1 %exitcond.not.i.i5.i.i.i.i.1, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE7destroyBX_.exit.sink.split.i.i.i.i.i, label %.lr.ph.i1.i.i.i.i.i

bb.bn:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_writeBU_.exit.i.i.i.i.i
  %i.im = atomicrmw or ptr %i.hi, i64 2 acq_rel, align 8, !noalias !1092
  %i.in = and i64 %i.im, 4
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i, label %bb.bo

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE7destroyBX_.exit.sink.split.i.i.i.i.i: ; preds = %bb.bq, %bb.bm, %bb.bo
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i.i.i.i, i64 noundef 3488, i64 noundef 16) #27, !noalias !1092
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.ip = icmp samesign ult i64 %i.ft, 29
  br i1 %i.ip, label %.lr.ph.i3.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE7destroyBX_.exit.sink.split.i.i.i.i.i

.lr.ph.i3.i.i.i.i.i:                              ; preds = %bb.bo, %bb.bq
  %.sroa.0.03.i4.i.i.i.i.i = phi i64 [ %i.iq, %bb.bq ], [ %i.ht, %bb.bo ] ; 2 uses
  %i.iq = add nuw nsw i64 %.sroa.0.03.i4.i.i.i.i.i, 1 ; 2 uses
  %i.ir = getelementptr inbounds nuw [112 x i8], ptr %.sroa.012.0.i.i.i.i.i, i64 %.sroa.0.03.i4.i.i.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 96 ; 2 uses
  %i.it = load atomic i64, ptr %i.is acquire, align 8, !noalias !1092
  %i.iu = and i64 %i.it, 2
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i3.i.i.i.i.i
  %i.iw = atomicrmw or ptr %i.is, i64 4 acq_rel, align 8, !noalias !1092
  %i.ix = and i64 %i.iw, 2
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph.i3.i.i.i.i.i
  %exitcond.not.i5.i.i.i.i.i = icmp eq i64 %i.iq, 30
  br i1 %exitcond.not.i5.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE7destroyBX_.exit.sink.split.i.i.i.i.i, label %.lr.ph.i3.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i: ; preds = %bb.bp, %bb.bk, %bb.bl, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE7destroyBX_.exit.sink.split.i.i.i.i.i, %bb.bn
  %i.iz = icmp eq i32 %.sroa.430.0.copyload.i.i.i.i, -1
  br i1 %i.iz, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.thread.i.i.i.i, label %bb.ca

bb.br:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_recvB10_.exit.i.i.i.i
  %i.ja = load i64, ptr %i.t, align 8, !noalias !1089, !noundef !8 ; 2 uses
  %i.jb = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #27, !noalias !1089 ; 2 uses
  %i.jc = extractvalue { i64, i32 } %i.jb, 0      ; 2 uses
  %i.jd = icmp eq i64 %i.jc, %i.ja
  br i1 %i.jd, label %.split.i17.i.i.i, label %bb.by

bb.bs:                                            ; preds = %bb.by, %.split.i17.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_recvB10_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1093
  store ptr %i.s, ptr %i.r, align 8, !noalias !1089
  store ptr %.val5.i.i, ptr %.sroa.424.0..sroa_idx.i.i.i.i, align 8, !noalias !1089
  store ptr %i.t, ptr %.sroa.7.0..sroa_idx.i1.i.i.i, align 8, !noalias !1089
  %i.je = load i8, ptr %i.cl, align 8, !range !21, !noalias !1094, !noundef !8
  %i.jf = icmp eq i8 %i.je, 1
  br i1 %i.jf, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i13.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i12.i.i.i, !prof !14

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i12.i.i.i: ; preds = %bb.bs
  %i.jg = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsbMXVmEvvZJf_5uu_dd(ptr noundef nonnull align 8 %i.ck, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #27, !noalias !1093 ; 2 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEs_0uEB3w_.exit.i.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i13.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i13.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i12.i.i.i, %bb.bs
  %.sroa.0.0.i.i.i2.i.i.i14.i.i.i = phi ptr [ %i.jg, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i12.i.i.i ], [ %i.ck, %bb.bs ] ; 4 uses
  %i.ji = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i.i, align 8, !noalias !1093, !noundef !8 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i.i, align 8, !noalias !1093
  %.not.i.i.i18.i.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i18.i.i.i.i, label %bb.bt, label %bb.bv, !prof !10

bb.bt:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i13.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1093
  %i.jj = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #27, !noalias !1093 ; 3 uses
  store ptr %i.jj, ptr %i.q, align 8, !noalias !1093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1093
  store ptr %i.s, ptr %i.p, align 8, !noalias !1093
  store ptr %.val5.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i4.i.i.i, align 8, !noalias !1089
  store ptr %i.t, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i5.i.i.i, align 8, !noalias !1089
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB7_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, ptr nonnull %i.jj) #33, !noalias !1093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1093
  %i.jk = atomicrmw sub ptr %i.jj, i64 1 release, align 8, !noalias !1095
  %i.jl = icmp eq i64 %i.jk, 1
  br i1 %i.jl, label %bb.bu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i16.i.i.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.q) #31, !noalias !1093
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i16.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i16.i.i.i: ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1093
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0uEB1C_.exit.i.i.i.i

bb.bv:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i13.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store atomic i64 0, ptr %i.jm release, align 8, !noalias !1093
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  store atomic ptr null, ptr %i.jn release, align 8, !noalias !1093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1093
  store ptr %i.s, ptr %i.o, align 8, !noalias !1093
  store ptr %.val5.i.i, ptr %.sroa.59.0..sroa_idx10.i.i.i.i2.i.i.i, align 8, !noalias !1089
  store ptr %i.t, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i3.i.i.i, align 8, !noalias !1089
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB7_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o, ptr nonnull %i.ji) #33, !noalias !1093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1093
  %i.jo = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i.i, align 8, !noalias !1093, !noundef !8 ; 3 uses
  store ptr %i.jo, ptr %i.n, align 8, !noalias !1093
  store ptr %i.ji, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i.i, align 8, !noalias !1093
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i15.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jq = atomicrmw sub ptr %i.jo, i64 1 release, align 8, !noalias !1096
  %i.jr = icmp eq i64 %i.jq, 1
  br i1 %i.jr, label %bb.bx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i15.i.i.i
end_hunk_1
begin_hunk_2_@_RINvNtNtCs2vKOLqTMYjT_3std3sys9backtrace28___rust_begin_short_backtraceNCNvNtCsbMXVmEvvZJf_5uu_dd8progress16gen_prog_updater0uEB1d_:bb.a
  store i64 %.sroa.029.0.copyload.i.i.i.i, ptr %i.ab, align 16, !alias.scope !1088, !noalias !1078
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i: ; preds = %bb.ca, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.thread.i.i.i.i, %bb.bz
  %.sink.i.i.i = phi i32 [ -1, %bb.bz ], [ -1, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.thread.i.i.i.i ], [ %.sroa.430.0.copyload.i.i.i.i, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1089
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.531.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1078
  br label %bb.ds

bb.cb:                                            ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1078
  store i32 -1, ptr %i.ca, align 8, !noalias !1098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1098
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false), !noalias !1098
  %i.ju = cmpxchg ptr %.val5.i.i, i32 0, i32 1 acquire monotonic, align 4, !noalias !1099
  %i.jv = extractvalue { i32, i1 } %i.ju, 1
  br i1 %i.jv, label %bb.cd, label %bb.cc, !prof !14

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.val5.i.i) #27, !noalias !1099
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.jw = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1099
  %i.jx = and i64 %i.jw, 9223372036854775807
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, label %bb.ce, !prof !14

bb.ce:                                            ; preds = %bb.cd
  %i.jz = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !1099
  %i.ka = xor i1 %i.jz, true
  %i.kb = zext i1 %i.ka to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i: ; preds = %bb.ce, %bb.cd
  %.sroa.01.0.i.i.i.i.i.i = phi i8 [ %i.kb, %bb.ce ], [ 0, %bb.cd ] ; 5 uses
  %i.kc = load atomic i8, ptr %i.cc monotonic, align 1, !noalias !1099
  %.not.i.i.not.i.i.i.i = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i.not.i.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, label %bb.cf, !prof !14

bb.cf:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1100
  store ptr %.val5.i.i, ptr %i.j, align 8, !noalias !1100
  %i.kd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i.i, ptr %i.kd, align 8, !noalias !1100
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #30, !noalias !1101
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  %i.ke = trunc nuw i8 %.sroa.01.0.i.i.i.i.i.i to i1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.kf = load i64, ptr %i.cd, align 8, !alias.scope !1102, !noalias !1103, !noundef !8 ; 6 uses
  %i.kg = icmp ult i64 %i.kf, 384307168202282326
  call void @llvm.assume(i1 %i.kg)
  %i.kh = icmp eq i64 %i.kf, 0
  br i1 %i.kh, label %.loopexit.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  %i.ki = load ptr, ptr %i.cg, align 8, !alias.scope !1102, !noalias !1103, !nonnull !8, !noundef !8 ; 3 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.kf, 24
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx.i.i.i.i.i
  br label %.lr.ph.i.i.i27.i.i.i

.lr.ph.i.i.i27.i.i.i:                             ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i, %bb.cg
  %.sroa.02.010.i.i.i.i.i.i = phi i64 [ %i.ld, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i ], [ 0, %bb.cg ] ; 5 uses
  %i.kk = phi ptr [ %i.kl, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i ], [ %i.ki, %bb.cg ] ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %i.km = load ptr, ptr %i.kk, align 8, !alias.scope !1104, !noalias !1105, !nonnull !8, !noundef !8 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !1106, !noundef !8
  %.not.i.i.i.i28.i.i.i = icmp eq i64 %i.ko, %i.cf
  br i1 %.not.i.i.i.i28.i.i.i, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i.i.i27.i.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !alias.scope !1104, !noalias !1105, !noundef !8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ks = cmpxchg ptr %i.kr, i64 0, i64 %i.kq acq_rel acquire, align 8, !noalias !1106
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ks, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i, label %bb.ci, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !alias.scope !1104, !noalias !1105, !noundef !8 ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kw = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  store atomic ptr %i.ku, ptr %i.kw release, align 8, !noalias !1106
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.kx = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !1106, !nonnull !8, !noundef !8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 40 ; 2 uses
  %i.la = atomicrmw xchg ptr %i.kz, i32 1 release, align 4, !noalias !1106
  %i.lb = icmp eq i32 %i.la, -1
  br i1 %i.lb, label %bb.cl, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.lc = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.kz) #27, !noalias !1106 ; 0 uses
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i

_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i: ; preds = %bb.ch, %.lr.ph.i.i.i27.i.i.i
  %i.ld = add nuw nsw i64 %.sroa.02.010.i.i.i.i.i.i, 1
  %i.le = icmp eq ptr %i.kl, %i.kj
  br i1 %i.le, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i27.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i: ; preds = %bb.cl, %bb.ck
  %i.lf = icmp samesign ult i64 %.sroa.02.010.i.i.i.i.i.i, %i.kf
  call void @llvm.assume(i1 %i.lf)
  call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.ki, i64 %.sroa.02.010.i.i.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load ptr, ptr %i.lg, align 8, !noalias !1109 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !1109
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = xor i64 %.sroa.02.010.i.i.i.i.i.i, -1
  %i.lj = add nsw i64 %i.kf, %i.li
  %i.lk = mul nuw nsw i64 %i.lj, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lg, ptr nonnull align 8 %i.lh, i64 %i.lk, i1 false), !noalias !1110
  %i.ll = add nsw i64 %i.kf, -1                   ; 2 uses
  store i64 %i.ll, ptr %i.cd, align 8, !alias.scope !1111, !noalias !1112
  %.not.i.i5.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, null
  br i1 %.not.i.i5.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i.i.i.i, label %bb.cm, !prof !27

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.010.i.i.i.i.i.i, i64 noundef %i.ll, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #30, !noalias !1113
  unreachable

bb.cm:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.822.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i, i64 16, i1 false), !noalias !1098
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !1098
  %i.lm = load ptr, ptr %i.ch, align 8, !noalias !1098, !noundef !8
  store ptr %i.lm, ptr %i.cb, align 8, !noalias !1098
  br i1 %i.ke, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ln = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1098
  %i.lo = and i64 %i.ln, 9223372036854775807
  %i.lp = icmp eq i64 %i.lo, 0
  br i1 %i.lp, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.co, !prof !14

bb.co:                                            ; preds = %bb.cn
  %i.lq = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !1098
  br i1 %i.lq, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store atomic i8 1, ptr %i.cc monotonic, align 4, !noalias !1098
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm
  %i.lr = atomicrmw xchg ptr %.val5.i.i, i32 0 release, align 4, !noalias !1098
  %i.ls = icmp eq i32 %i.lr, 2
  br i1 %i.ls, label %bb.cq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, !prof !10

bb.cq:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.val5.i.i) #27, !noalias !1098
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i: ; preds = %bb.cq, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  %.val4.i.i.i.i = load ptr, ptr %i.cb, align 8, !noalias !1098, !noundef !8 ; 11 uses
  %i.lt = icmp eq ptr %.val4.i.i.i.i, null
  br i1 %i.lt, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 97
  %i.lv = load i8, ptr %i.lu, align 1, !range !11, !noalias !1114, !noundef !8
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lx = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 96 ; 2 uses
  %i.ly = load atomic i8, ptr %i.lx acquire, align 1, !noalias !1114
  %.not2.i.i.i.i.i.i = icmp eq i8 %i.ly, 0
  br i1 %.not2.i.i.i.i.i.i, label %.lr.ph.i.i6.i35.i.i.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit.i.i.i.i.i

.lr.ph.i.i6.i35.i.i.i:                            ; preds = %bb.cs, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i
  %.sroa.0.03.i.i.i36.i.i.i = phi i32 [ %i.mc, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i ], [ 0, %bb.cs ] ; 6 uses
  %i.lz = icmp ult i32 %.sroa.0.03.i.i.i36.i.i.i, 7
  br i1 %i.lz, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i6.i35.i.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27, !noalias !1114
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i.i: ; preds = %.lr.ph.i.i6.i35.i.i.i
  %.not.i.i.i8.i.i.i.i = icmp eq i32 %.sroa.0.03.i.i.i36.i.i.i, 0
  br i1 %.not.i.i.i8.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i, label %.lr.ph.i.i.i.i42.i.i.i.preheader

.lr.ph.i.i.i.i42.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i.i
  %i.ma = mul nuw nsw i32 %.sroa.0.03.i.i.i36.i.i.i, %.sroa.0.03.i.i.i36.i.i.i ; 2 uses
  %xtraiter = and i32 %i.ma, 7                    ; 3 uses
  %i.mb = icmp ult i32 %.sroa.0.03.i.i.i36.i.i.i, 3
  br i1 %i.mb, label %.lr.ph.i.i.i.i42.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i42.i.i.i.preheader.new

.lr.ph.i.i.i.i42.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i42.i.i.i.preheader
  %unroll_iter = and i32 %i.ma, 56
  br label %.lr.ph.i.i.i.i42.i.i.i

.lr.ph.i.i.i.i42.i.i.i:                           ; preds = %.lr.ph.i.i.i.i42.i.i.i, %.lr.ph.i.i.i.i42.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i42.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1114
  call void @llvm.x86.sse2.pause(), !noalias !1114
  call void @llvm.x86.sse2.pause(), !noalias !1114
  call void @llvm.x86.sse2.pause(), !noalias !1114
  call void @llvm.x86.sse2.pause(), !noalias !1114
  call void @llvm.x86.sse2.pause(), !noalias !1114
  call void @llvm.x86.sse2.pause(), !noalias !1114
  call void @llvm.x86.sse2.pause(), !noalias !1114
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i42.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i42.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i, label %.lr.ph.i.i.i.i42.i.i.i.epil.preheader

.lr.ph.i.i.i.i42.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.i.i.preheader
  %lcmp.mod206 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod206)
  br label %.lr.ph.i.i.i.i42.i.i.i.epil

.lr.ph.i.i.i.i42.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i42.i.i.i.epil, %.lr.ph.i.i.i.i42.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i42.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1114
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i, label %.lr.ph.i.i.i.i42.i.i.i.epil, !llvm.loop !993

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i.i, %bb.ct
  %i.mc = add i32 %.sroa.0.03.i.i.i36.i.i.i, 1
  %i.md = load atomic i8, ptr %i.lx acquire, align 1, !noalias !1114
  %.not.i.i7.i.i.i.i = icmp eq i8 %i.md, 0
  br i1 %.not.i.i7.i.i.i.i, label %.lr.ph.i.i6.i35.i.i.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit.i.i.i.i.i

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i, %bb.cs
  %.sroa.013.0.copyload.i.i.i.i.i = load i64, ptr %.val4.i.i.i.i, align 16, !noalias !1114
  %.sroa.415.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 8 ; 2 uses
  %.sroa.415.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.415.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1114 ; 2 uses
  store i32 -1, ptr %.sroa.415.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1114
  %.not.i.i34.i.i.i = icmp eq i32 %.sroa.415.0.copyload.i.i.i.i.i, -1
  br i1 %.not.i.i34.i.i.i, label %bb.cw, label %bb.cv, !prof !10

bb.cu:                                            ; preds = %bb.cr
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.val4.i.i.i.i, align 16, !noalias !1114
  %.sroa.4.0..sroa_idx.i9.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i9.i.i.i.i, align 8, !noalias !1114 ; 2 uses
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i9.i.i.i.i, align 8, !noalias !1114
  %.not29.i.i.i.i.i = icmp eq i32 %.sroa.4.0.copyload.i.i.i.i.i, -1
  br i1 %.not29.i.i.i.i.i, label %bb.cy, label %bb.cx, !prof !10

bb.cv:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit.i.i.i.i.i
  %.sroa.518.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.9.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.518.0..sroa_idx.i.i.i.i.i, i64 84, i1 false), !noalias !1098
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i, i64 noundef 112, i64 noundef 16) #27, !noalias !1114
  br label %bb.cz

bb.cw:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #30, !noalias !1114
  unreachable

bb.cx:                                            ; preds = %bb.cu
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.9.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 84, i1 false), !noalias !1098
  %i.me = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 96
  store atomic i8 1, ptr %i.me release, align 16, !noalias !1114
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cu
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #30, !noalias !1114
  unreachable

.loopexit.i.i.i.i:                                ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  %i.mf = load i8, ptr %i.ci, align 8, !range !11, !noalias !1098, !noundef !8
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %bb.dn, label %bb.dc

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  store i8 1, ptr %i.ab, align 16, !alias.scope !1097, !noalias !1078
  store i32 -1, ptr %.sroa.447.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1097, !noalias !1078
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx, %bb.cv
  %.sroa.5.0.ph.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i, %bb.cx ], [ %.sroa.415.0.copyload.i.i.i.i.i, %bb.cv ] ; 2 uses
  %.sroa.025.0.ph.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.cx ], [ %.sroa.013.0.copyload.i.i.i.i.i, %bb.cv ]
  store i64 %.sroa.025.0.ph.i.i.i.i, ptr %i.ab, align 16, !alias.scope !1097, !noalias !1078
  store i32 %.sroa.5.0.ph.i.i.i.i, ptr %.sroa.447.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1097, !noalias !1078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.548.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.9.i.i.i.i, i64 84, i1 false), !noalias !1078
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i
  %.pre45.i.i.i = phi i32 [ %.sroa.5.0.ph.i.i.i.i, %bb.cz ], [ -1, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4readB10_.exit.i.i.i.i ]
  %i.mh = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 1 release, align 8, !noalias !1115
  %i.mi = icmp eq i64 %i.mh, 1
  br i1 %i.mi, label %bb.db, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

bb.db:                                            ; preds = %bb.da
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.k) #31, !noalias !1098
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i: ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1098
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvB10_.exit.i.i.i

bb.dc:                                            ; preds = %.loopexit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1117
  store ptr %i.l, ptr %i.i, align 8, !noalias !1118
  store ptr %i.m, ptr %.sroa.629.0..sroa_idx.i.i.i.i, align 8, !noalias !1118
  store <2 x ptr> %i.de, ptr %.sroa.734.0..sroa_idx.i.i.i.i, align 8, !noalias !1118
  store i8 %.sroa.01.0.i.i.i.i.i.i, ptr %.sroa.944.0..sroa_idx.i.i.i.i, align 8, !noalias !1118
  %i.mj = load i8, ptr %i.cl, align 8, !range !21, !noalias !1119, !noundef !8
  %i.mk = icmp eq i8 %i.mj, 1
  br i1 %i.mk, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i30.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i29.i.i.i, !prof !14

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i29.i.i.i: ; preds = %bb.dc
  %i.ml = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsbMXVmEvvZJf_5uu_dd(ptr noundef nonnull align 8 %i.ck, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #27, !noalias !1120 ; 2 uses
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4k_EB3w_.exit.thread.i.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i30.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i30.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i29.i.i.i, %bb.dc
  %.sroa.0.0.i.i.i2.i.i.i31.i.i.i = phi ptr [ %i.ml, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i29.i.i.i ], [ %i.ck, %bb.dc ] ; 4 uses
  %i.mn = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i31.i.i.i, align 8, !noalias !1121, !noundef !8 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i31.i.i.i, align 8, !noalias !1121
  %.not.i.i.i10.i.i.i.i = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i10.i.i.i.i, label %bb.dd, label %bb.df, !prof !10

bb.dd:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i30.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1121
  %i.mo = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #27, !noalias !1121 ; 3 uses
  store ptr %i.mo, ptr %i.h, align 8, !noalias !1121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1121
  store i8 2, ptr %.sroa.944.0..sroa_idx.i.i.i.i, align 8, !noalias !1121
  store ptr %i.l, ptr %i.f, align 8, !noalias !1118
  store ptr %i.m, ptr %.sroa.629.0..sroa_idx32.i.i.i.i, align 8, !noalias !1118
  store <2 x ptr> %i.de, ptr %.sroa.734.0..sroa_idx37.i.i.i.i, align 8, !noalias !1118
  store i8 %.sroa.01.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i, align 8, !noalias !1121
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0B12_(ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.f, ptr nonnull %i.mo) #33, !noalias !1117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1121
  %i.mp = atomicrmw sub ptr %i.mo, i64 1 release, align 8, !noalias !1122
  %i.mq = icmp eq i64 %i.mp, 1
  br i1 %i.mq, label %bb.de, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i33.i.i.i

bb.de:                                            ; preds = %bb.dd
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.h) #31, !noalias !1121
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i33.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i33.i.i.i: ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1121
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4k_EB3w_.exit.i.i.i.i.i

bb.df:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i30.i.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  store atomic i64 0, ptr %i.mr release, align 8, !noalias !1121
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  store atomic ptr null, ptr %i.ms release, align 8, !noalias !1121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1121
  store i8 2, ptr %.sroa.944.0..sroa_idx.i.i.i.i, align 8, !noalias !1121
  store ptr %i.l, ptr %i.e, align 8, !noalias !1118
  store ptr %i.m, ptr %.sroa.629.0..sroa_idx30.i.i.i.i, align 8, !noalias !1118
  store <2 x ptr> %i.de, ptr %.sroa.734.0..sroa_idx35.i.i.i.i, align 8, !noalias !1118
  store i8 %.sroa.01.0.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx11.i.i.i.i.i.i.i, align 8, !noalias !1121
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0B12_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(96) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.e, ptr nonnull %i.mn) #33, !noalias !1117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1121
  %i.mt = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i31.i.i.i, align 8, !noalias !1121, !noundef !8 ; 3 uses
  store ptr %i.mt, ptr %i.d, align 8, !noalias !1121
  store ptr %i.mn, ptr %.sroa.0.0.i.i.i2.i.i.i31.i.i.i, align 8, !noalias !1121
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i32.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mv = atomicrmw sub ptr %i.mt, i64 1 release, align 8, !noalias !1123
  %i.mw = icmp eq i64 %i.mv, 1
  br i1 %i.mw, label %bb.dh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i32.i.i.i

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #31, !noalias !1121
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i32.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i32.i.i.i: ; preds = %bb.dh, %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1121
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4k_EB3w_.exit.i.i.i.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4k_EB3w_.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i32.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i33.i.i.i
  %.sroa.4.0.copyload7.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx6.i.i.i.i.i, align 8, !noalias !1117 ; 2 uses
  %i.mx = icmp eq i32 %.sroa.4.0.copyload7.i.i.i.i.i, -2
end_hunk_2
begin_hunk_3_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0B12_:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread26
  %i.bz = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1498
  %i.ca = and i64 %i.bz, 9223372036854775807
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit, label %bb.v, !prof !14

bb.v:                                             ; preds = %bb.u
  %i.cc = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !1498
  %i.cd = xor i1 %i.cc, true
  %i.ce = zext i1 %i.cd to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.ce, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.cg = load atomic i8, ptr %i.cf monotonic, align 4, !noalias !1498
  %.not.i.i.not = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit20, label %bb.w, !prof !14

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1499
  store ptr %i.bw, ptr %i.b, align 8, !noalias !1499
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ch, align 8, !noalias !1499
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #30, !noalias !1500
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit20: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit
  %i.ci = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !1501, !noalias !1502, !nonnull !8, !noundef !8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 72 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !1501, !noalias !1502, !noundef !8 ; 7 uses
  %.idx71 = mul nuw nsw i64 %i.cm, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx71
  %i.co = icmp eq i64 %i.cm, 0
  br i1 %i.co, label %._crit_edge70, label %.lr.ph69

bb.x:                                             ; preds = %.lr.ph69
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.cq = add nuw nsw i64 %i.ct, 1
  %i.cr = icmp eq ptr %i.cp, %i.cn
  br i1 %i.cr, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit20, %bb.x
  %i.cs = phi ptr [ %i.cp, %bb.x ], [ %i.ck, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit20 ] ; 2 uses
  %i.ct = phi i64 [ %i.cq, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit20 ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !1503, !noalias !1504, !noundef !8
  %.not.i.i29 = icmp eq i64 %i.cv, %i.h
  br i1 %.not.i.i29, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph69
  call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.cw = icmp ult i64 %i.cm, 384307168202282326
  call void @llvm.assume(i1 %i.cw)
  %.not.i.i.i = icmp samesign ult i64 %i.ct, %i.cm
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ct ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.cx, align 8, !noalias !1507 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !1507
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = xor i64 %i.ct, -1
  %i.da = add nsw i64 %i.cm, %i.cz
  %i.db = mul nuw nsw i64 %i.da, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr nonnull align 8 %i.cy, i64 %i.db, i1 false), !noalias !1508
  %i.dc = add nsw i64 %i.cm, -1                   ; 2 uses
  store i64 %i.dc, ptr %i.cl, align 8, !alias.scope !1509, !noalias !1510
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i, label %bb.ah, !prof !27

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i, %bb.y
  %i.dd = phi i64 [ %i.cm, %bb.y ], [ %i.dc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 2 uses
  %i.de = icmp samesign ult i64 %i.dd, 384307168202282326
  call void @llvm.assume(i1 %i.de)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ct, i64 noundef %i.dd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #30, !noalias !1511
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !8, !align !13, !noundef !8 ; 8 uses
  %i.dh = cmpxchg ptr %i.dg, i32 0, i32 1 acquire monotonic, align 4, !noalias !1512
  %i.di = extractvalue { i32, i1 } %i.dh, 1
  br i1 %i.di, label %bb.ab, label %bb.aa, !prof !14

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dg) #27, !noalias !1512
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dj = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1512
  %i.dk = and i64 %i.dj, 9223372036854775807
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit33, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %i.dm = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !1512
  %i.dn = xor i1 %i.dm, true
  %i.do = zext i1 %i.dn to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit33

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit33: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i30 = phi i8 [ %i.do, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.dq = load atomic i8, ptr %i.dp monotonic, align 4, !noalias !1512
  %.not.i.i31.not = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i31.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1513
  store ptr %i.dg, ptr %i.c, align 8, !noalias !1513
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i30, ptr %i.dr, align 8, !noalias !1513
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #30, !noalias !1514
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit33
  %i.ds = trunc nuw i8 %.sroa.01.0.i.i30 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !1515, !noalias !1516, !nonnull !8, !noundef !8 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 72 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !1515, !noalias !1516, !noundef !8 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dw, 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ea = add nuw nsw i64 %i.ed, 1
  %i.eb = icmp eq ptr %i.dz, %i.dx
  br i1 %i.eb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit, %bb.ae
  %i.ec = phi ptr [ %i.dz, %bb.ae ], [ %i.du, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit ] ; 2 uses
  %i.ed = phi i64 [ %i.ea, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit ] ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !1517, !noalias !1518, !noundef !8
  %.not.i.i35 = icmp eq i64 %i.ef, %i.h
  br i1 %.not.i.i35, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i34)
  call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  %i.eg = icmp ult i64 %i.dw, 384307168202282326
  call void @llvm.assume(i1 %i.eg)
  %.not.i.i.i36 = icmp samesign ult i64 %i.ed, %i.dw
  br i1 %.not.i.i.i36, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i38, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i37

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i38: ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.ed ; 4 uses
  %.sroa.0.0.copyload1.i.i39 = load ptr, ptr %i.eh, align 8, !noalias !1521 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i40 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i40, i64 16, i1 false), !noalias !1521
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = xor i64 %i.ed, -1
  %i.ek = add nsw i64 %i.dw, %i.ej
  %i.el = mul nuw nsw i64 %i.ek, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 8 %i.ei, i64 %i.el, i1 false), !noalias !1522
  %i.em = add nsw i64 %i.dw, -1                   ; 2 uses
  store i64 %i.em, ptr %i.dv, align 8, !alias.scope !1523, !noalias !1524
  %.not.i4.i41 = icmp eq ptr %.sroa.0.0.copyload1.i.i39, null
  br i1 %.not.i4.i41, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i37, label %bb.an, !prof !27

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i37: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i38, %bb.af
  %i.en = phi i64 [ %i.dw, %bb.af ], [ %i.em, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i38 ] ; 2 uses
  %i.eo = icmp samesign ult i64 %i.en, 384307168202282326
  call void @llvm.assume(i1 %i.eo)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ed, i64 noundef %i.en, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #30, !noalias !1525
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.ep = load atomic i8, ptr %i.j acquire, align 16
  %.not2.i = icmp eq i8 %i.ep, 0
  br i1 %.not2.i, label %.lr.ph.i46, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit

.lr.ph.i46:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.et, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.eq = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.eq, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i46
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i46
  %.not.i.i48 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i48, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.er = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.er, 7                    ; 3 uses
  %i.es = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.es, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.er, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod83 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1475

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.et = add i32 %.sroa.0.03.i, 1
  %i.eu = load atomic i8, ptr %i.j acquire, align 16
  %.not.i47 = icmp eq i8 %i.eu, 0
  br i1 %.not.i47, label %.lr.ph.i46, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 16
  %.sroa.4.0.copyload = load i32, ptr %.sroa.416.0..sroa_idx, align 8 ; 2 uses
  store i32 -1, ptr %.sroa.416.0..sroa_idx, align 8
  %.not = icmp eq i32 %.sroa.4.0.copyload, -1
  br i1 %.not, label %bb.au, label %bb.at, !prof !10

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.52.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ev = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !1526
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #31
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.ci, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit
  %i.ex = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ey = and i64 %i.ex, 9223372036854775807
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49, label %bb.ak, !prof !14

bb.ak:                                            ; preds = %bb.aj
  %i.fa = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.fa, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.cf monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit
  %i.fb = atomicrmw xchg ptr %i.bw, i32 0 release, align 4
  %i.fc = icmp eq i32 %i.fb, 2
  br i1 %i.fc, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit50, !prof !10

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bw) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit50

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit50: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 0, ptr %0, align 16
  br label %bb.av

._crit_edge70:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit20
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #30
  unreachable

bb.an:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i38
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i34, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i34)
  store ptr %.sroa.0.0.copyload1.i.i39, ptr %i.d, align 8
  %i.fd = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i39, i64 1 release, align 8, !noalias !1527
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.ao, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit51

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #31
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit51

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit51: ; preds = %bb.an, %bb.ao
  br i1 %i.ds, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit51
  %i.ff = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fg = and i64 %i.ff, 9223372036854775807
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52, label %bb.aq, !prof !14

bb.aq:                                            ; preds = %bb.ap
  %i.fi = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.fi, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store atomic i8 1, ptr %i.dp monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52: ; preds = %bb.ar, %bb.aq, %bb.ap, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit51
  %i.fj = atomicrmw xchg ptr %i.dg, i32 0 release, align 4
  %i.fk = icmp eq i32 %i.fj, 2
  br i1 %i.fk, label %bb.as, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit53, !prof !10

bb.as:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dg) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit53

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit53: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 1, ptr %0, align 16
  br label %bb.av

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #30
  unreachable

bb.at:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.517.0..sroa_idx, i64 84, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %0, align 16
  br label %bb.av

bb.au:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #30
  unreachable

bb.av:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit50, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit53, %bb.at
  %.sink = phi i32 [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit50 ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit53 ], [ %.sroa.4.0.copyload, %bb.at ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.fl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0B12_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(144) %1, ptr %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i50 = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [112 x i8], align 16              ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = load ptr, ptr %i.g, align 16, !nonnull !8, !align !13, !noundef !8
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 97
  store i8 1, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 3 uses
  store i8 0, ptr %i.k, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.f, ptr noundef nonnull align 16 dereferenceable(96) %1, i64 96, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load ptr, ptr %i.l, align 16, !nonnull !8, !align !13, !noundef !8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1607, !noalias !1608, !noundef !8 ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !range !18, !alias.scope !1607, !noalias !1608, !noundef !8
end_hunk_3
begin_hunk_4_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0B12_:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread28
  %i.ca = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1613
  %i.cb = and i64 %i.ca, 9223372036854775807
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit, label %bb.v, !prof !14

bb.v:                                             ; preds = %bb.u
  %i.cd = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !1613
  %i.ce = xor i1 %i.cd, true
  %i.cf = zext i1 %i.ce to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.cf, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.ch = load atomic i8, ptr %i.cg monotonic, align 4, !noalias !1613
  %.not.i.i.not = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit36, label %bb.w, !prof !14

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1614
  store ptr %i.bx, ptr %i.b, align 8, !noalias !1614
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ci, align 8, !noalias !1614
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #30, !noalias !1615
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit36: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit
  %i.cj = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !1616, !noalias !1617, !nonnull !8, !noundef !8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !1616, !noalias !1617, !noundef !8 ; 7 uses
  %.idx73 = mul nuw nsw i64 %i.cn, 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx73
  %i.cp = icmp eq i64 %i.cn, 0
  br i1 %i.cp, label %._crit_edge72, label %.lr.ph71

bb.x:                                             ; preds = %.lr.ph71
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %i.cr = add nuw nsw i64 %i.cu, 1
  %i.cs = icmp eq ptr %i.cq, %i.co
  br i1 %i.cs, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit36, %bb.x
  %i.ct = phi ptr [ %i.cq, %bb.x ], [ %i.cl, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit36 ] ; 2 uses
  %i.cu = phi i64 [ %i.cr, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit36 ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !1618, !noalias !1619, !noundef !8
  %.not.i.i45 = icmp eq i64 %i.cw, %i.i
  br i1 %.not.i.i45, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph71
  call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  %i.cx = icmp ult i64 %i.cn, 384307168202282326
  call void @llvm.assume(i1 %i.cx)
  %.not.i.i.i = icmp samesign ult i64 %i.cu, %i.cn
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i: ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cu ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.cy, align 8, !noalias !1622 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !1622
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = xor i64 %i.cu, -1
  %i.db = add nsw i64 %i.cn, %i.da
  %i.dc = mul nuw nsw i64 %i.db, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr nonnull align 8 %i.cz, i64 %i.dc, i1 false), !noalias !1623
  %i.dd = add nsw i64 %i.cn, -1                   ; 2 uses
  store i64 %i.dd, ptr %i.cm, align 8, !alias.scope !1624, !noalias !1625
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i, label %bb.ah, !prof !27

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i, %bb.y
  %i.de = phi i64 [ %i.cn, %bb.y ], [ %i.dd, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i ] ; 2 uses
  %i.df = icmp samesign ult i64 %i.de, 384307168202282326
  call void @llvm.assume(i1 %i.df)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cu, i64 noundef %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #30, !noalias !1626
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dh = load ptr, ptr %i.dg, align 16, !nonnull !8, !align !13, !noundef !8 ; 8 uses
  %i.di = cmpxchg ptr %i.dh, i32 0, i32 1 acquire monotonic, align 4, !noalias !1627
  %i.dj = extractvalue { i32, i1 } %i.di, 1
  br i1 %i.dj, label %bb.ab, label %bb.aa, !prof !14

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dh) #27, !noalias !1627
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dk = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1627
  %i.dl = and i64 %i.dk, 9223372036854775807
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit49, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %i.dn = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !1627
  %i.do = xor i1 %i.dn, true
  %i.dp = zext i1 %i.do to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit49

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit49: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i46 = phi i8 [ %i.dp, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dr = load atomic i8, ptr %i.dq monotonic, align 4, !noalias !1627
  %.not.i.i47.not = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i47.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1628
  store ptr %i.dh, ptr %i.c, align 8, !noalias !1628
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i46, ptr %i.ds, align 8, !noalias !1628
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #30, !noalias !1629
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsbMXVmEvvZJf_5uu_dd.exit49
  %i.dt = trunc nuw i8 %.sroa.01.0.i.i46 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !1630, !noalias !1631, !nonnull !8, !noundef !8 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !1630, !noalias !1631, !noundef !8 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dx, 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx
  %i.dz = icmp eq i64 %i.dx, 0
  br i1 %i.dz, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 2 uses
  %i.eb = add nuw nsw i64 %i.ee, 1
  %i.ec = icmp eq ptr %i.ea, %i.dy
  br i1 %i.ec, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit, %bb.ae
  %i.ed = phi ptr [ %i.ea, %bb.ae ], [ %i.dv, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit ] ; 2 uses
  %i.ee = phi i64 [ %i.eb, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit ] ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !1632, !noalias !1633, !noundef !8
  %.not.i.i51 = icmp eq i64 %i.eg, %i.i
  br i1 %.not.i.i51, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i50)
  call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %i.eh = icmp ult i64 %i.dx, 384307168202282326
  call void @llvm.assume(i1 %i.eh)
  %.not.i.i.i52 = icmp samesign ult i64 %i.ee, %i.dx
  br i1 %.not.i.i.i52, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i54, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i53

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i54: ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.ee ; 4 uses
  %.sroa.0.0.copyload1.i.i55 = load ptr, ptr %i.ei, align 8, !noalias !1636 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i56 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i50, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i56, i64 16, i1 false), !noalias !1636
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = xor i64 %i.ee, -1
  %i.el = add nsw i64 %i.dx, %i.ek
  %i.em = mul nuw nsw i64 %i.el, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.ej, i64 %i.em, i1 false), !noalias !1637
  %i.en = add nsw i64 %i.dx, -1                   ; 2 uses
  store i64 %i.en, ptr %i.dw, align 8, !alias.scope !1638, !noalias !1639
  %.not.i4.i57 = icmp eq ptr %.sroa.0.0.copyload1.i.i55, null
  br i1 %.not.i4.i57, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i53, label %bb.ap, !prof !27

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i53: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i54, %bb.af
  %i.eo = phi i64 [ %i.dx, %bb.af ], [ %i.en, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i54 ] ; 2 uses
  %i.ep = icmp samesign ult i64 %i.eo, 384307168202282326
  call void @llvm.assume(i1 %i.ep)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ee, i64 noundef %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #30, !noalias !1640
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.eq = load atomic i8, ptr %i.k acquire, align 16
  %.not2.i = icmp eq i8 %i.eq, 0
  br i1 %.not2.i, label %.lr.ph.i62, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit

.lr.ph.i62:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.eu, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.er = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.er, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i62
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i62
  %.not.i.i64 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i64, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.es = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.es, 7                    ; 3 uses
  %i.et = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.et, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.es, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod84 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1590

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.eu = add i32 %.sroa.0.03.i, 1
  %i.ev = load atomic i8, ptr %i.k acquire, align 16
  %.not.i63 = icmp eq i8 %i.ev, 0
  br i1 %.not.i63, label %.lr.ph.i62, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  store i128 2, ptr %0, align 16
  br label %bb.ax

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ew = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !1641
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #31
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.cj, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit
  %i.ey = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ez = and i64 %i.ey, 9223372036854775807
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65, label %bb.ak, !prof !14

bb.ak:                                            ; preds = %bb.aj
  %i.fb = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.fb, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.cg monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit
  %i.fc = atomicrmw xchg ptr %i.bx, i32 0 release, align 4
  %i.fd = icmp eq i32 %i.fc, 2
  br i1 %i.fd, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit66, !prof !10

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bx) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit66

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit66: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  store i32 -1, ptr %.sroa.4.0..sroa_idx, align 8
  %.not35 = icmp eq i32 %.sroa.4.0.copyload, -1
  br i1 %.not35, label %bb.ao, label %bb.an, !prof !10

._crit_edge72:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit36
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #30
  unreachable

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit66
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.5.0..sroa_idx, i64 84, i1 false)
  store i128 0, ptr %0, align 16
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.411.0..sroa_idx, align 16
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.4.0.copyload, ptr %.sroa.512.0..sroa_idx, align 8
  br label %bb.ax

bb.ao:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit66
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #30
  unreachable

bb.ap:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsbMXVmEvvZJf_5uu_dd.exit.i.i54
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i50, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i50)
  store ptr %.sroa.0.0.copyload1.i.i55, ptr %i.d, align 8
  %i.fe = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i55, i64 1 release, align 8, !noalias !1642
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.aq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit67

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #31
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit67

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit67: ; preds = %bb.ap, %bb.aq
  br i1 %i.dt, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit67
  %i.fg = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fh = and i64 %i.fg, 9223372036854775807
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, label %bb.as, !prof !14

bb.as:                                            ; preds = %bb.ar
  %i.fj = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.fj, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, label %bb.at

bb.at:                                            ; preds = %bb.as
  store atomic i8 1, ptr %i.dq monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68: ; preds = %bb.at, %bb.as, %bb.ar, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit67
  %i.fk = atomicrmw xchg ptr %i.dh, i32 0 release, align 4
  %i.fl = icmp eq i32 %i.fk, 2
  br i1 %i.fl, label %bb.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit69, !prof !10

bb.au:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dh) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit69

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit69: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.013.0.copyload = load i64, ptr %i.f, align 16
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.415.0.copyload = load i32, ptr %.sroa.415.0..sroa_idx, align 8 ; 2 uses
  store i32 -1, ptr %.sroa.415.0..sroa_idx, align 8
  %.not33 = icmp eq i32 %.sroa.415.0.copyload, -1
  br i1 %.not33, label %bb.aw, label %bb.av, !prof !10

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #30
  unreachable

bb.av:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit69
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.629.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(84) %.sroa.518.0..sroa_idx, i64 84, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.013.0.copyload, ptr %.sroa.427.0..sroa_idx, align 16
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.415.0.copyload, ptr %.sroa.528.0..sroa_idx, align 8
  br label %bb.ax

bb.aw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit69
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #30
  unreachable

bb.ax:                                            ; preds = %bb.an, %bb.av, %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10wait_readyBZ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4recvs_0B12_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !13, !noundef !8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !31, !noundef !8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #33
end_hunk_4
begin_hunk_5_@_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10disconnectB10_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.06.i.i10, i64 24, i1 false), !noalias !3124
  %i.bw = load i64, ptr %i.bu, align 8, !noalias !3124, !noundef !8
  %.val.i.i11 = load ptr, ptr %i.a, align 8, !noalias !3124, !nonnull !8, !noundef !8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i11, i64 24
  %i.by = cmpxchg ptr %i.bx, i64 0, i64 %i.bw acq_rel acquire, align 8, !noalias !3124
  %.sroa.18.0.in.i.i.i.i12 = extractvalue { i64, i1 } %i.by, 1
  br i1 %.sroa.18.0.in.i.i.i.i12, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i11, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !3124, !nonnull !8, !noundef !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 2 uses
  %i.cc = atomicrmw xchg ptr %i.cb, i32 1 release, align 4, !noalias !3124
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p, %bb.o
  %i.ce = atomicrmw sub ptr %.val.i.i11, i64 1 release, align 8, !noalias !3125
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit.i.i13

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #31, !noalias !3124
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit.i.i13

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit.i.i13: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3124
  %i.cg = icmp eq ptr %i.bv, %i.bs
  br i1 %i.cg, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14, label %bb.o

bb.s:                                             ; preds = %bb.p
  %i.ch = tail call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.cb) #27, !noalias !3124 ; 0 uses
  br label %bb.q

bb.t:                                             ; preds = %.lr.ph.i3
  %i.ci = load ptr, ptr %.sroa.0.02.i4, align 8, !noalias !3120, !nonnull !8, !noundef !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !3120, !nonnull !8, !noundef !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  %i.cm = atomicrmw xchg ptr %i.cl, i32 1 release, align 4, !noalias !3120
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t, %.lr.ph.i3
  %i.co = icmp eq ptr %i.bk, %i.bi
  br i1 %i.co, label %._crit_edge.i7, label %.lr.ph.i3

bb.v:                                             ; preds = %bb.t
  %i.cp = tail call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.cl) #27, !noalias !3120 ; 0 uses
  br label %bb.u

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsbMXVmEvvZJf_5uu_dd.exit.i.i13, %._crit_edge.i7, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsbMXVmEvvZJf_5uu_dd.exit
  br i1 %i.o, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14
  %i.cq = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cr = and i64 %i.cq, 9223372036854775807
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.x, !prof !14

bb.x:                                             ; preds = %bb.w
  %i.ct = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.ct, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store atomic i8 1, ptr %i.l monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14
  %i.cu = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.cv = icmp eq i32 %i.cu, 2
  br i1 %i.cv, label %bb.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit, !prof !10

bb.z:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0) #27
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsbMXVmEvvZJf_5uu_dd.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.z
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4sendBS_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [144 x i8], align 16              ; 11 uses
  %i.c = alloca [144 x i8], align 16              ; 11 uses
  %i.d = alloca [112 x i8], align 16              ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [144 x i8], align 16              ; 14 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca [96 x i8], align 16           ; 6 uses
  %i.r = alloca [112 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.v
    i64 2, label %bb.am
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i32 -1, ptr %i.s, align 8, !noalias !3239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3239
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false), !noalias !3239
  %i.w = load atomic i64, ptr %i.u monotonic, align 8, !noalias !3240 ; 2 uses
  %i.x = load i64, ptr %i.v, align 16, !noalias !3240, !noundef !8 ; 2 uses
  %i.y = and i64 %i.x, %i.w
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEB1C_.exit.i, %.lr.ph.i.lr.ph.i
  %i.ag = phi i64 [ %i.x, %.lr.ph.i.lr.ph.i ], [ %i.cs, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEB1C_.exit.i ]
  %i.ah = phi i64 [ %i.w, %.lr.ph.i.lr.ph.i ], [ %i.cr, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEB1C_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3241)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %i.ai = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.bn, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ]
  %.sroa.02.043.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %i.bm, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 8 uses
  %.sroa.0.03842.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 12 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.aj = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.ak = add i64 %i.ai, -1
  %i.al = and i64 %i.ak, %.sroa.02.043.i.i        ; 3 uses
  %i.am = load i64, ptr %i.aa, align 8, !noalias !3242, !noundef !8
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %.sroa.02.043.i.i, %i.an
  %i.ap = load ptr, ptr %i.ab, align 8, !noalias !3242, !nonnull !8, !noundef !8
  %i.aq = load i64, ptr %i.ac, align 16, !noalias !3242, !noundef !8
  %i.ar = icmp ult i64 %i.al, %i.aq
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [112 x i8], ptr %i.ap, i64 %i.al ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !3242 ; 2 uses
  %i.av = icmp eq i64 %.sroa.02.043.i.i, %i.au
  br i1 %i.av, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i64, ptr %i.aa, align 8, !noalias !3242, !noundef !8
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %.sroa.02.043.i.i, 1
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ba = add nuw i64 %i.al, 1
  %i.bb = load i64, ptr %i.ad, align 128, !noalias !3242, !noundef !8
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bd = icmp ult i32 %.sroa.0.03842.i.i, 7
  br i1 %i.bd, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27, !noalias !3242
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i
  %i.be = mul nuw nsw i32 %.sroa.0.03842.i.i, %.sroa.0.03842.i.i ; 2 uses
  %xtraiter130 = and i32 %i.be, 7                 ; 3 uses
  %i.bf = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bf, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter134 = and i32 %i.be, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter135 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter135.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  %niter135.next.7 = add i32 %niter135, 8         ; 2 uses
  %niter135.ncmp.7 = icmp eq i32 %niter135.next.7, %unroll_iter134
  br i1 %niter135.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit106.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.bg = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !3242
  %i.bh = load i64, ptr %i.aa, align 8, !noalias !3242, !noundef !8
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = icmp eq i64 %i.bi, %.sroa.02.043.i.i
  br i1 %i.bj, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %..i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.bk = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i  ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter136 = and i32 %i.bk, 5                 ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bl, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter140 = and i32 %i.bk, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter141 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter141.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  %niter141.next.7 = add i32 %niter141, 8         ; 2 uses
  %niter141.ncmp.7 = icmp eq i32 %niter141.next.7, %unroll_iter140
  br i1 %niter141.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit105.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod144.not = icmp eq i32 %xtraiter142, 0
  br i1 %lcmp.mod144.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod145 = icmp ne i32 %xtraiter142, 0
  call void @llvm.assume(i1 %lcmp.mod145)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter143 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter143.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3242
  %epil.iter143.next = add i32 %epil.iter143, 1   ; 2 uses
  %epil.iter143.cmp.not = icmp eq i32 %epil.iter143.next, %xtraiter142
  br i1 %epil.iter143.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !3132

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit105.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod138.not = icmp eq i32 %xtraiter136, 0
  br i1 %lcmp.mod138.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit105.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod139 = icmp ne i32 %xtraiter136, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter137 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter137.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3242
  %epil.iter137.next = add i32 %epil.iter137, 1   ; 2 uses
  %epil.iter137.cmp.not = icmp eq i32 %epil.iter137.next, %xtraiter136
  br i1 %epil.iter137.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !3133

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit106.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod132.not = icmp eq i32 %xtraiter130, 0
  br i1 %lcmp.mod132.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit106.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod133 = icmp ne i32 %xtraiter130, 0
  call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter131 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter131.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3242
  %epil.iter131.next = add i32 %epil.iter131, 1   ; 2 uses
  %epil.iter131.cmp.not = icmp eq i32 %epil.iter131.next, %xtraiter130
  br i1 %epil.iter131.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !3134

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit106.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit105.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bm = load atomic i64, ptr %i.u monotonic, align 16, !noalias !3242 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03842.i.i, 1
  %i.bn = load i64, ptr %i.v, align 16, !noalias !3242, !noundef !8 ; 2 uses
  %i.bo = and i64 %i.bn, %i.bm
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.c, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bq = load i64, ptr %i.aa, align 8, !noalias !3242, !noundef !8
  %i.br = add i64 %i.bq, %i.ao
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bs = add i64 %.sroa.02.043.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.bs, %bb.j ], [ %i.br, %bb.i ]
  %i.bt = cmpxchg weak ptr %i.u, i64 %.sroa.02.043.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !3242
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bt, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.thread.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter142 = and i32 %i.aj, 7                 ; 3 uses
  %i.bu = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bu, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter146 = and i32 %i.aj, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter147 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter147.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  call void @llvm.x86.sse2.pause(), !noalias !3242
  %niter147.next.7 = add i32 %niter147, 8         ; 2 uses
  %niter147.ncmp.7 = icmp eq i32 %niter147.next.7, %unroll_iter146
  br i1 %niter147.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.i: ; preds = %bb.h
  %i.bv = load i32, ptr %i.s, align 8, !range !26, !noalias !3239, !noundef !8 ; 2 uses
  %.not.i = icmp eq i32 %i.bv, -1
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.thread.i: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store ptr %i.as, ptr %i.p, align 8, !alias.scope !3241, !noalias !3239
  %i.bx = add i64 %.sroa.02.043.i.i, 1            ; 2 uses
  store i64 %i.bx, ptr %i.t, align 8, !alias.scope !3241, !noalias !3239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.as, ptr noundef nonnull readonly align 16 dereferenceable(96) %1, i64 96, i1 false), !noalias !3243
  store atomic i64 %i.bx, ptr %i.bw release, align 16, !noalias !3244
  %i.by = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.by) #33, !noalias !3244
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4sendB10_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.i: ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEB1C_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !3245)
  call void @llvm.experimental.noalias.scope.decl(metadata !3246)
  %.sroa.4.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload12.i = load i32, ptr %.sroa.4.0..sroa_idx11.i, align 8, !alias.scope !3247, !noalias !3237 ; 2 uses
  %.not7.i = icmp eq i32 %.sroa.4.0.copyload12.i, -1
  br i1 %.not7.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4sendB10_.exit, label %bb.u

bb.l:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.i
  %i.bz = load i64, ptr %i.q, align 8, !noalias !3239, !noundef !8 ; 2 uses
  %i.ca = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #27, !noalias !3239 ; 2 uses
  %i.cb = extractvalue { i64, i32 } %i.ca, 0      ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.bz
  br i1 %i.cc, label %.split.i, label %bb.s

bb.m:                                             ; preds = %bb.s, %.split.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3248
  store ptr %i.p, ptr %i.o, align 8, !noalias !3239
  store ptr %.8.val, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !3239
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3239
  %i.cd = load i8, ptr %i.af, align 8, !range !21, !noalias !3249, !noundef !8
  %i.ce = icmp eq i8 %i.cd, 1
  br i1 %i.ce, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i, !prof !14

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i: ; preds = %bb.m
  %i.cf = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsbMXVmEvvZJf_5uu_dd(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #27, !noalias !3248 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEs_0uEB3w_.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.cf, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i ], [ %i.ae, %bb.m ] ; 4 uses
  %i.ch = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3248, !noundef !8 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3248
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.p, !prof !10

bb.n:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3248
  %i.ci = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #27, !noalias !3248 ; 3 uses
  store ptr %i.ci, ptr %i.n, align 8, !noalias !3248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3248
  store ptr %i.p, ptr %i.m, align 8, !noalias !3248
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !3239
  store ptr %i.q, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !noalias !3239
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.ci) #33, !noalias !3248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3248
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !3250
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #31, !noalias !3248
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3248
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEB1C_.exit.i

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.thread.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store atomic i64 0, ptr %i.cl release, align 8, !noalias !3248
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store atomic ptr null, ptr %i.cm release, align 8, !noalias !3248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3248
  store ptr %i.p, ptr %i.l, align 8, !noalias !3248
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !3239
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !3239
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.ch) #33, !noalias !3248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3248
  %i.cn = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3248, !noundef !8 ; 3 uses
  store ptr %i.cn, ptr %i.k, align 8, !noalias !3248
  store ptr %i.ch, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3248
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !3251
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsbMXVmEvvZJf_5uu_dd(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #31, !noalias !3248
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3248
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEB1C_.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEs_0uEB3w_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsbMXVmEvvZJf_5uu_dd.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEs0_0B1E_(ptr nonnull %i.o) #33, !noalias !3248
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEB1C_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEB1C_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4send0uEs_0uEB3w_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsbMXVmEvvZJf_5uu_dd.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3248
  %i.cr = load atomic i64, ptr %i.u monotonic, align 16, !noalias !3252 ; 2 uses
  %i.cs = load i64, ptr %i.v, align 16, !noalias !3252, !noundef !8 ; 2 uses
  %i.ct = and i64 %i.cs, %i.cr
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.i

.split.i:                                         ; preds = %bb.l
  %i.cv = extractvalue { i64, i32 } %i.ca, 1      ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 1000000000
  call void @llvm.assume(i1 %i.cw)
  %.not29.i = icmp samesign ult i32 %i.cv, %i.bv
  br i1 %.not29.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not28.i = icmp slt i64 %i.cb, %i.bz
  br i1 %.not28.i, label %bb.m, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 16 dereferenceable(96) %1, i64 96, i1 false), !alias.scope !3239
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4sendB10_.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.i
  %.sroa.6.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload9.i = load i64, ptr %1, align 16, !alias.scope !3247, !noalias !3237
  %.sroa.43.sroa.5.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %.sroa.43.sroa.5.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(84) %.sroa.6.0..sroa_idx13.i, i64 84, i1 false), !alias.scope !3239
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.0.0.copyload9.i, ptr %.sroa.43.0..sroa_idx.i, align 16, !alias.scope !3237, !noalias !3238
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 %.sroa.4.0.copyload12.i, ptr %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3237, !noalias !3238
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4sendB10_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4sendB10_.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.i, %bb.u, %bb.t
  %.pr48 = phi i128 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4sendB10_.exit

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3254)
  %i.cx = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8, !noalias !3255 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.da = load atomic ptr, ptr %i.cz acquire, align 8, !noalias !3255
  %i.db = and i64 %i.cy, 1
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.cy, %.lr.ph.i.i3 ], [ %i.dm, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.da, %.lr.ph.i.i3 ], [ %i.dn, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.de = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.df = and i64 %i.de, 31                       ; 3 uses
  %i.dg = icmp eq i64 %i.df, 31
  br i1 %i.dg, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dh = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.dh, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i7, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #27, !noalias !3255
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i7: ; preds = %bb.x
  %.not.i.i.i8 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i8, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i11.preheader

.lr.ph.i.i.i11.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i7
  %i.di = mul nuw nsw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter124 = and i32 %i.di, 7                 ; 3 uses
  %i.dj = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dj, label %.lr.ph.i.i.i11.epil.preheader, label %.lr.ph.i.i.i11.preheader.new

.lr.ph.i.i.i11.preheader.new:                     ; preds = %.lr.ph.i.i.i11.preheader
  %unroll_iter128 = and i32 %i.di, 56
  br label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %.lr.ph.i.i.i11, %.lr.ph.i.i.i11.preheader.new
  %niter129 = phi i32 [ 0, %.lr.ph.i.i.i11.preheader.new ], [ %niter129.next.7, %.lr.ph.i.i.i11 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  %niter129.next.7 = add i32 %niter129, 8         ; 2 uses
  %niter129.ncmp.7 = icmp eq i32 %niter129.next.7, %unroll_iter128
  br i1 %niter129.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i11

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i11
  %lcmp.mod126.not = icmp eq i32 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i11.epil.preheader

.lr.ph.i.i.i11.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i11.preheader
  %lcmp.mod127 = icmp ne i32 %xtraiter124, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph.i.i.i11.epil

.lr.ph.i.i.i11.epil:                              ; preds = %.lr.ph.i.i.i11.epil, %.lr.ph.i.i.i11.epil.preheader
  %epil.iter125 = phi i32 [ 0, %.lr.ph.i.i.i11.epil.preheader ], [ %epil.iter125.next, %.lr.ph.i.i.i11.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  %epil.iter125.next = add i32 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i32 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i11.epil, !llvm.loop !3166

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i11.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i7, %bb.y
  %i.dk = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.z:                                             ; preds = %bb.w
  %i.dl = icmp eq i64 %i.df, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.dl, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2m_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ah, %bb.ag, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.dt, %bb.ag ], [ %i.dt, %bb.ah ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ec, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dk, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.ag ], [ %.sroa.0.047.i.i, %bb.ah ]
  %i.dm = load atomic i64, ptr %i.cx acquire, align 8, !noalias !3255 ; 2 uses
  %i.dn = load atomic ptr, ptr %i.cz acquire, align 8, !noalias !3255
  %i.do = and i64 %i.dm, 1
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.w, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2m_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.z ], [ %i.dr, %bb.aa ] ; 7 uses
  %i.dq = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.dq, label %bb.ac, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !3255
  %i.dr = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 0, -9223372036854775808) 3488, i64 noundef range(i64 1, 129) 16) #27, !noalias !3255 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2m_.exit.i.i, !prof !10

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #32, !noalias !3255
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2m_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !3255
  %i.dt = tail call noalias noundef align 16 dereferenceable_or_null(3488) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 0, -9223372036854775808) 3488, i64 noundef range(i64 1, 129) 16) #27, !noalias !3255 ; 6 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEE13new_zeroed_inB1w_.exit16.i.i, !prof !10

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3488) #32, !noalias !3255
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEE13new_zeroed_inB1w_.exit16.i.i: ; preds = %bb.ac
  %i.dv = cmpxchg ptr %i.cz, ptr null, ptr %i.dt release monotonic, align 8, !noalias !3255
  %i.dw = extractvalue { ptr, i1 } %i.dv, 1
  br i1 %i.dw, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2m_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.dt, %bb.af ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEEEEB2m_.exit.i.i ] ; 3 uses
  %i.dx = add i64 %.sroa.03.049.i.i, 2
  %i.dy = cmpxchg weak ptr %i.cx, i64 %.sroa.03.049.i.i, i64 %i.dx seq_cst acquire, align 8, !noalias !3255
  %.sroa.18.0.in.i.i.i4 = extractvalue { i64, i1 } %i.dy, 1
  br i1 %.sroa.18.0.in.i.i.i4, label %bb.ai, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEE13new_zeroed_inB1w_.exit16.i.i
  store atomic ptr %i.dt, ptr %i.dd release, align 8, !noalias !3255
  br label %bb.ae

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateEE13new_zeroed_inB1w_.exit16.i.i
  %i.dz = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.dz, label %.backedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 3488, i64 noundef 16) #27, !noalias !3255
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ae
  %..i.i.i.i5 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %i.ea = mul nuw nsw i32 %..i.i.i.i5, %..i.i.i.i5 ; 2 uses
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %xtraiter = and i32 %i.ea, 5                    ; 3 uses
  %i.eb = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.eb, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %i.ea, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod123 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3255
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !3167

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.ec = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.dl, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.ak, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.thread17.i, !prof !10

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.thread17.i: ; preds = %bb.aj
  store atomic ptr %.sroa.035.2.i.i, ptr %i.cz release, align 8, !noalias !3255
  %i.ed = atomicrmw add ptr %i.cx, i64 2 release, align 8, !noalias !3255 ; 0 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 3472
  store atomic ptr %.sroa.035.2.i.i, ptr %i.ee release, align 8, !noalias !3255
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #30, !noalias !3255
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ai
  %.sroa.9.0.i = phi i64 [ %i.df, %bb.ai ], [ 0, %.backedge.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.ai ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ai ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.ef = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.ef, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 3488, i64 noundef 16) #27, !noalias !3255
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.i: ; preds = %bb.al, %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3257)
  %i.eg = icmp eq ptr %.sroa.43.0.i, null
  br i1 %i.eg, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE5writeB10_.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.thread17.i
  %.sroa.43.121.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.thread17.i ], [ %.sroa.43.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.i ]
  %.sroa.9.120.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.thread17.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE10start_sendB10_.exit.i ]
  %i.eh = getelementptr inbounds nuw [112 x i8], ptr %.sroa.43.121.i, i64 %.sroa.9.120.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.eh, ptr noundef nonnull readonly align 16 dereferenceable(96) %1, i64 96, i1 false), !noalias !3258
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  %i.ej = atomicrmw or ptr %i.ei, i64 1 release, align 8, !noalias !3259 ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.ek) #33, !noalias !3259
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsbMXVmEvvZJf_5uu_dd8progress10ProgUpdateE4sendB10_.exit.thread
end_hunk_5
