Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/topology_common?download=true
inline.NumInlined: 25
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@parse_topology:bb.a
  %i.ah = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 255) %i.ag, i32 -1) #13, !srcloc !16
  %i.ai = add i32 %i.ah, 1
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ -1, %bb.d ], [ %i.ai, %bb.e ]
  %i.aj = getelementptr i8, ptr %0, i64 64        ; 3 uses
  store i32 %.0.i, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %i.a, i64 2
  %i.al = load i8, ptr %i.ak, align 2
  switch i8 %i.al, label %bb.v [
    i8 2, label %bb.f
    i8 9, label %bb.f
    i8 5, label %bb.g
    i8 10, label %bb.g
    i8 0, label %bb.m
  ]

bb.f:                                             ; preds = %get_count_order.exit, %get_count_order.exit
  tail call void @cpu_parse_topology_amd(ptr noundef %0) #12
  br label %bb.v

bb.g:                                             ; preds = %get_count_order.exit, %get_count_order.exit
  %i.am = load ptr, ptr %0, align 8               ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 40
  %.val.i = load i32, ptr %i.an, align 8
  %i.ao = icmp slt i32 %.val.i, 4
  br i1 %i.ao, label %parse_num_cores_legacy.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 5) 4, i32 0) #9, !srcloc !15
  %i.aq = extractvalue { i32, i32, i32, i32 } %i.ap, 0 ; 2 uses
  %i.ar = and i32 %i.aq, 31
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %parse_num_cores_legacy.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = lshr i32 %i.aq, 26
  %i.at = add nuw nsw i32 %i.as, 1
  br label %parse_num_cores_legacy.exit.i

parse_num_cores_legacy.exit.i:                    ; preds = %bb.g, %bb.h, %bb.i
  %.0.i.i = phi i32 [ 1, %bb.g ], [ %i.at, %bb.i ], [ 1, %bb.h ] ; 3 uses
  %i.au = add nsw i32 %.0.i.i, -1
  %i.av = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 255) %i.au, i32 -1) #13, !srcloc !16
  %i.aw = add i32 %i.av, 1                        ; 4 uses
  %i.ax = getelementptr i8, ptr %i.am, i64 48
  %i.ay = load volatile i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, 268435456
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %parse_legacy.exit, label %bb.j

bb.j:                                             ; preds = %parse_num_cores_legacy.exit.i
  %i.ba = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.bb = icmp ult i32 %i.ba, %i.aw
  br i1 %i.bb, label %bb.k, label %.critedge.i, !prof !17

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "467: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 467b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 467) #9, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.8, i32 92, i32 2307, i64 16) #9, !srcloc !19
  tail call void asm sideeffect "468: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 468b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 468) #9, !srcloc !20
  br label %bb.l

.critedge.i:                                      ; preds = %bb.j
  %i.bc = sub nuw i32 %i.ba, %i.aw
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i, %bb.k
  %.022.i = phi i32 [ 0, %bb.k ], [ %i.bc, %.critedge.i ] ; 3 uses
  %i.bd = add i32 %.022.i, %i.aw
  %i.be = shl i32 %.0.i.i, %.022.i
  br label %parse_legacy.exit

parse_legacy.exit:                                ; preds = %parse_num_cores_legacy.exit.i, %bb.l
  %.1.i = phi i32 [ %.022.i, %bb.l ], [ 0, %parse_num_cores_legacy.exit.i ] ; 2 uses
  %.021.i = phi i32 [ %i.bd, %bb.l ], [ %i.aw, %parse_num_cores_legacy.exit.i ] ; 6 uses
  %.0.i16 = phi i32 [ %i.be, %bb.l ], [ %.0.i.i, %parse_num_cores_legacy.exit.i ] ; 6 uses
  %i.bf = shl nuw i32 1, %.1.i
  store i32 %.1.i, ptr %i.c, align 8
  store i32 %i.bf, ptr %i.d, align 4
  store i32 %.021.i, ptr %i.o, align 4
  store i32 %.0.i16, ptr %i.p, align 8
  store i32 %.021.i, ptr %i.e, align 8
  store i32 %.0.i16, ptr %i.f, align 4
  store i32 %.021.i, ptr %i.g, align 4
  store i32 %.0.i16, ptr %i.h, align 8
  store i32 %.021.i, ptr %i.i, align 8
  store i32 %.0.i16, ptr %i.j, align 4
  store i32 %.021.i, ptr %i.k, align 4
  store i32 %.0.i16, ptr %i.l, align 8
  store i32 %.021.i, ptr %i.m, align 8
  store i32 %.0.i16, ptr %i.n, align 4
  br label %bb.v

bb.m:                                             ; preds = %get_count_order.exit
  %i.bg = tail call zeroext i1 @cpu_parse_topology_ext(ptr noundef %0) #12
  br i1 %i.bg, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %0, align 8               ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 40
  %.val.i17 = load i32, ptr %i.bi, align 8
  %i.bj = icmp slt i32 %.val.i17, 4
  br i1 %i.bj, label %parse_num_cores_legacy.exit.i19, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 5) 4, i32 0) #9, !srcloc !15
  %i.bl = extractvalue { i32, i32, i32, i32 } %i.bk, 0 ; 2 uses
  %i.bm = and i32 %i.bl, 31
  %.not.i.i18 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i18, label %parse_num_cores_legacy.exit.i19, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = lshr i32 %i.bl, 26
  %i.bo = add nuw nsw i32 %i.bn, 1
  br label %parse_num_cores_legacy.exit.i19

parse_num_cores_legacy.exit.i19:                  ; preds = %bb.n, %bb.o, %bb.p
  %.0.i.i20 = phi i32 [ 1, %bb.n ], [ %i.bo, %bb.p ], [ 1, %bb.o ] ; 3 uses
  %i.bp = add nsw i32 %.0.i.i20, -1
  %i.bq = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 255) %i.bp, i32 -1) #13, !srcloc !16
  %i.br = add i32 %i.bq, 1                        ; 4 uses
  %i.bs = getelementptr i8, ptr %i.bh, i64 48
  %i.bt = load volatile i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 268435456
  %.not.i23 = icmp eq i64 %i.bu, 0
  br i1 %.not.i23, label %parse_legacy.exit29, label %bb.q

bb.q:                                             ; preds = %parse_num_cores_legacy.exit.i19
  %i.bv = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.bw = icmp ult i32 %i.bv, %i.br
  br i1 %i.bw, label %bb.r, label %.critedge.i24, !prof !17

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "467: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 467b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 467) #9, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.8, i32 92, i32 2307, i64 16) #9, !srcloc !19
  tail call void asm sideeffect "468: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 468b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 468) #9, !srcloc !20
  br label %bb.s

.critedge.i24:                                    ; preds = %bb.q
  %i.bx = sub nuw i32 %i.bv, %i.br
  br label %bb.s

bb.s:                                             ; preds = %.critedge.i24, %bb.r
  %.022.i25 = phi i32 [ 0, %bb.r ], [ %i.bx, %.critedge.i24 ] ; 3 uses
  %i.by = add i32 %.022.i25, %i.br
  %i.bz = shl i32 %.0.i.i20, %.022.i25
  br label %parse_legacy.exit29

parse_legacy.exit29:                              ; preds = %parse_num_cores_legacy.exit.i19, %bb.s
  %.1.i26 = phi i32 [ %.022.i25, %bb.s ], [ 0, %parse_num_cores_legacy.exit.i19 ] ; 2 uses
  %.021.i27 = phi i32 [ %i.by, %bb.s ], [ %i.br, %parse_num_cores_legacy.exit.i19 ] ; 6 uses
  %.0.i28 = phi i32 [ %i.bz, %bb.s ], [ %.0.i.i20, %parse_num_cores_legacy.exit.i19 ] ; 6 uses
  %i.ca = shl nuw i32 1, %.1.i26
  store i32 %.1.i26, ptr %i.c, align 8
  store i32 %i.ca, ptr %i.d, align 4
  store i32 %.021.i27, ptr %i.o, align 4
  store i32 %.0.i28, ptr %i.p, align 8
  store i32 %.021.i27, ptr %i.e, align 8
  store i32 %.0.i28, ptr %i.f, align 4
  store i32 %.021.i27, ptr %i.g, align 4
  store i32 %.0.i28, ptr %i.h, align 8
  store i32 %.021.i27, ptr %i.i, align 8
  store i32 %.0.i28, ptr %i.j, align 4
  store i32 %.021.i27, ptr %i.k, align 4
  store i32 %.0.i28, ptr %i.l, align 8
  store i32 %.021.i27, ptr %i.m, align 8
  store i32 %.0.i28, ptr %i.n, align 4
  br label %bb.t

bb.t:                                             ; preds = %parse_legacy.exit29, %bb.m
  %i.cb = getelementptr i8, ptr %i.a, i64 40
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = icmp sgt i32 %i.cc, 25
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ce = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 26, i32 0) #9, !srcloc !15
  %i.cf = extractvalue { i32, i32, i32, i32 } %i.ce, 0
  store i32 %i.cf, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %get_count_order.exit, %bb.f, %parse_legacy.exit, %bb.u, %bb.t, %bb.a
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @cpu_init_topology(ptr noundef %0) local_unnamed_addr #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.topo_scan, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store ptr %0, ptr %1, align 8
  call fastcc void @parse_topology(ptr noundef nonnull %1, i1 noundef zeroext true) #10, !srcloc !22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) @x86_topo_system, ptr noundef nonnull align 8 dereferenceable(28) %i.b, i64 28, i1 false)
  %i.c = load i32, ptr @x86_topo_system, align 4  ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 28), align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %2 = phi i32 [ %i.c, %bb.a ], [ %i.e, %bb.b ]
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %3 = getelementptr [4 x i8], ptr @x86_topo_system, i64 %indvars.iv
  %i.e = load i32, ptr %3, align 4                ; 2 uses
  %i.f = sub i32 %i.e, %2
  %i.g = shl nuw i32 1, %i.f
  %i.h = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 28), i64 %indvars.iv
  store i32 %i.g, ptr %i.h, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !21

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8                ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 224
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 20), align 4
  %i.m = lshr i32 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.i, i64 232
  store i32 %i.m, ptr %i.n, align 8
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 12), align 4
  %i.p = lshr i32 %i.k, %i.o
  %i.q = getelementptr i8, ptr %i.i, i64 236
  store i32 %i.p, ptr %i.q, align 4
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @x86_topo_system, i64 24), align 4
  %notmask.i.i = shl nsw i32 -1, %i.r
  %i.s = xor i32 %notmask.i.i, -1
  %i.t = and i32 %i.k, %i.s
  %i.u = load i32, ptr @x86_topo_system, align 4
  %i.v = lshr i32 %i.t, %i.u
  %i.w = getelementptr i8, ptr %i.i, i64 244
  store i32 %i.v, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 70
  %i.y = load i16, ptr %i.x, align 2
  %i.z = zext i16 %i.y to i32
  %i.aa = getelementptr i8, ptr %i.i, i64 260
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %i.i, i64 2
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = icmp eq i8 %i.ac, 2
  br i1 %i.ad, label %bb.d, label %topo_set_ids.exit

bb.d:                                             ; preds = %bb.c
  call void @cpu_topology_fixup_amd(ptr noundef nonnull %1) #12
  br label %topo_set_ids.exit

topo_set_ids.exit:                                ; preds = %bb.c, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.af = load i16, ptr %i.ae, align 4
  %i.ag = zext i16 %i.af to i32
  store i32 %i.ag, ptr @__amd_nodes_per_pkg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpu_parse_topology_amd(ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @cpu_parse_topology_ext(ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__apic_call_read(i32 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @topology_get_logical_id(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpu_topology_fixup_amd(ptr noundef) local_unnamed_addr #7

attributes #0 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(read) }
attributes #9 = { nounwind }
attributes #10 = { noredzone "no-builtin-wcslen" }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone nounwind "no-builtin-wcslen" }
attributes #13 = { nounwind memory(none) }

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
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{i64 2155603547}
!13 = !{i64 5194}
!14 = distinct !{null}
!15 = !{i64 8075075}
!16 = !{i64 983079}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{i64 2155591642, i64 2155591517}
!19 = !{i64 2155592165, i64 2155593239, i64 2155593272, i64 2155593307, i64 2155593323, i64 2155594250, i64 2155594308, i64 2155594357, i64 2155594167, i64 2155593382, i64 2155593414, i64 2155593497}
!20 = !{i64 2155594673, i64 2155594549}
!21 = distinct !{!21, !10}
!22 = !{i64 6075}
end_hunk_0
