Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/amd-pstate?download=true
inline.NumInlined: 141
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@amd_pstate_param
define internal range(i32 -22, 1) i32 @amd_pstate_param(ptr nofree noundef readonly captures(address_is_null) %0) #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %amd_pstate_set_driver.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18 ; 5 uses
  %i.b = tail call i32 @strncmp(ptr noundef nonnull readonly %0, ptr noundef @.str.2, i64 noundef %i.a) #18
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %amd_pstate_set_driver.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strncmp(ptr noundef nonnull readonly %0, ptr noundef @.str.3, i64 noundef %i.a) #18
  %.not.1.i = icmp eq i32 %i.c, 0
  br i1 %.not.1.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @strncmp(ptr noundef nonnull readonly %0, ptr noundef @.str.4, i64 noundef %i.a) #18
  %.not.2.i = icmp eq i32 %i.d, 0
  br i1 %.not.2.i, label %.thread13, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strncmp(ptr noundef nonnull readonly %0, ptr noundef @.str.5, i64 noundef %i.a) #18
  %.not.3.i = icmp eq i32 %i.e, 0
  br i1 %.not.3.i, label %.thread13, label %get_mode_idx_from_str.exit

get_mode_idx_from_str.exit:                       ; preds = %bb.e
  %i.f = tail call i32 @strncmp(ptr noundef nonnull readonly %0, ptr noundef @.str.6, i64 noundef %i.a) #18
  %.not.4.i = icmp eq i32 %i.f, 0
  %spec.select.i = select i1 %.not.4.i, i32 4, i32 -22 ; 2 uses
  %i.g = add nsw i32 %spec.select.i, -2
  %or.cond.i = icmp ult i32 %i.g, 4
  br i1 %or.cond.i, label %.thread16, label %amd_pstate_set_driver.exit

.thread16:                                        ; preds = %get_mode_idx_from_str.exit
  store i32 %spec.select.i, ptr @cppc_state, align 4
  br label %bb.h

.thread13:                                        ; preds = %bb.d, %bb.e
  %.06.i.ph.ph = phi i32 [ 3, %bb.e ], [ 2, %bb.d ] ; 2 uses
  store i32 %.06.i.ph.ph, ptr @cppc_state, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i32 1, ptr @cppc_state, align 4
  %i.h = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.17) #19 ; 0 uses
  %.pr.i = load i32, ptr @cppc_state, align 4
  br label %bb.g

bb.g:                                             ; preds = %.thread13, %bb.f
  %i.i = phi i32 [ %.pr.i, %bb.f ], [ %.06.i.ph.ph, %.thread13 ]
  switch i32 %i.i, label %amd_pstate_set_driver.exit [
    i32 3, label %.sink.split.i
    i32 4, label %bb.h
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %.thread16, %bb.g, %bb.g
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g
  %amd_pstate_epp_driver.sink.i = phi ptr [ @amd_pstate_driver, %bb.h ], [ @amd_pstate_epp_driver, %bb.g ]
  store ptr %amd_pstate_epp_driver.sink.i, ptr @current_pstate_driver, align 8
  br label %amd_pstate_set_driver.exit

amd_pstate_set_driver.exit:                       ; preds = %bb.b, %.sink.split.i, %bb.g, %get_mode_idx_from_str.exit, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ -22, %get_mode_idx_from_str.exit ], [ 0, %bb.g ], [ 0, %.sink.split.i ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @amd_prefcore_param(ptr nofree noundef readonly captures(none) %0) #9 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef %0, ptr noundef dereferenceable(8) @.str.3) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr @amd_pstate_prefcore, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: cold fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid optsize sspstrong willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @amd_dynamic_epp_param(ptr nofree noundef readonly captures(none) %0) #9 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef %0, ptr noundef dereferenceable(8) @.str.3) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr @dynamic_epp, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef %0, ptr noundef dereferenceable(7) @.str.73) #18
  %.not2 = icmp eq i32 %i.b, 0
  br i1 %.not2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr @dynamic_epp, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal range(i32 0, 2) i32 @dmi_matched_7k62_bios_bug(ptr nofree noundef readonly captures(none) %0) #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 380, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 95)) #17
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !20

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr @quirks, align 8
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.8, ptr noundef %i.d) #19 ; 0 uses
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rdmsrq_on_cpu(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @wrmsrq_on_cpu(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_amd_pstate_epp_perf(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @wrmsrq_safe_on_cpu(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rdmsrq_safe_on_cpu(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @amd_get_boost_ratio_numerator(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__amd_pstate_set_epp(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amd_pstate_register_driver(i32 noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond.i = icmp ult i32 %i.a, 4
  br i1 %or.cond.i, label %bb.b, label %amd_pstate_set_driver.exit

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr @cppc_state, align 4
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.17) #19 ; 0 uses
  %.pr.i = load i32, ptr @cppc_state, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i32 [ %.pr.i, %bb.c ], [ %0, %bb.b ]
  switch i32 %i.d, label %bb.f [
    i32 3, label %.sink.split.i
    i32 4, label %bb.e
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %amd_pstate_epp_driver.sink.i = phi ptr [ @amd_pstate_driver, %bb.e ], [ @amd_pstate_epp_driver, %bb.d ]
  store ptr %amd_pstate_epp_driver.sink.i, ptr @current_pstate_driver, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.sink.split.i
  store i32 %0, ptr @cppc_state, align 4
  %i.e = load i8, ptr @amd_pstate_prefcore, align 1, !range !12, !noundef !13 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %1 = shl nuw nsw i8 %i.e, 1
  %narrow.i = add nuw nsw i8 %1, 3
  %spec.select.4.i = zext nneg i8 %narrow.i to i64
  %i.g = icmp eq i32 %0, 3                        ; 2 uses
  %reass.add39.i = select i1 %i.g, i64 2, i64 0
  %spec.select.6.i = add nuw nsw i64 %reass.add39.i, %spec.select.4.i
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 546, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 116)) #17
          to label %floor_freq_visibility.exit.i [label %floor_freq_visibility.exit.i, label %bb.g], !srcloc !20

bb.g:                                             ; preds = %bb.f
  br label %floor_freq_visibility.exit.i

floor_freq_visibility.exit.i:                     ; preds = %bb.g, %bb.f, %bb.f
  %.0.i.i48.i = phi i1 [ false, %bb.g ], [ true, %bb.f ], [ true, %bb.f ] ; 2 uses
  %i.h = zext i1 %.0.i.i48.i to i64
  %spec.select.7.i = add nuw nsw i64 %spec.select.6.i, %i.h
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 546, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 116)) #17
          to label %_kmalloc_array_noprof.exit.i [label %_kmalloc_array_noprof.exit.i, label %bb.h], !srcloc !20

bb.h:                                             ; preds = %floor_freq_visibility.exit.i
  br label %_kmalloc_array_noprof.exit.i

_kmalloc_array_noprof.exit.i:                     ; preds = %floor_freq_visibility.exit.i, %floor_freq_visibility.exit.i, %bb.h
  %.0.i.i49.i = phi i1 [ false, %bb.h ], [ true, %floor_freq_visibility.exit.i ], [ true, %floor_freq_visibility.exit.i ] ; 2 uses
  %i.i = zext i1 %.0.i.i49.i to i64
  %spec.select.8.i = add nuw nsw i64 %spec.select.7.i, %i.i
  %i.j = shl nuw nsw i64 %spec.select.8.i, 3
  %i.k = add nuw nsw i64 %i.j, 8
  %i.l = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -17179869184, 17179869177) %i.k, i32 noundef 3520) #21 ; 12 uses
  %.not29.i = icmp eq ptr %i.l, null
  br i1 %.not29.i, label %get_freq_attrs.exit.thread, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %_kmalloc_array_noprof.exit.i
  store ptr @amd_pstate_max_freq, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 8
  store ptr @amd_pstate_lowest_nonlinear_freq, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.l, i64 16
  store ptr @amd_pstate_highest_perf, ptr %i.n, align 8
  br i1 %i.f, label %bb.i, label %.preheader.5.i

bb.i:                                             ; preds = %.preheader.3.i
  %i.o = getelementptr i8, ptr %i.l, i64 24
  store ptr @amd_pstate_prefcore_ranking, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.l, i64 32
  store ptr @amd_pstate_hw_prefcore, ptr %i.p, align 8
  br label %.preheader.5.i

.preheader.5.i:                                   ; preds = %bb.i, %.preheader.3.i
  %.126.4.i = phi i32 [ 5, %bb.i ], [ 3, %.preheader.3.i ] ; 3 uses
  br i1 %i.g, label %bb.j, label %.preheader.7.i

bb.j:                                             ; preds = %.preheader.5.i
  %i.q = zext nneg i32 %.126.4.i to i64
  %i.r = getelementptr [8 x i8], ptr %i.l, i64 %i.q ; 2 uses
  store ptr @energy_performance_preference, ptr %i.r, align 8
  %i.s = add nuw nsw i32 %.126.4.i, 2
  %i.t = getelementptr i8, ptr %i.r, i64 8
  store ptr @energy_performance_available_preferences, ptr %i.t, align 8
  br label %.preheader.7.i

.preheader.7.i:                                   ; preds = %bb.j, %.preheader.5.i
  %.126.6.i = phi i32 [ %i.s, %bb.j ], [ %.126.4.i, %.preheader.5.i ] ; 3 uses
  br i1 %.0.i.i48.i, label %bb.k, label %.preheader.8.i

bb.k:                                             ; preds = %.preheader.7.i
  %i.u = add nuw nsw i32 %.126.6.i, 1
  %i.v = zext nneg i32 %.126.6.i to i64
  %i.w = getelementptr [8 x i8], ptr %i.l, i64 %i.v
  store ptr @amd_pstate_floor_freq, ptr %i.w, align 8
  br label %.preheader.8.i

.preheader.8.i:                                   ; preds = %bb.k, %.preheader.7.i
  %.126.7.i = phi i32 [ %i.u, %bb.k ], [ %.126.6.i, %.preheader.7.i ]
  br i1 %.0.i.i49.i, label %bb.l, label %get_freq_attrs.exit

bb.l:                                             ; preds = %.preheader.8.i
  %i.x = zext nneg i32 %.126.7.i to i64
  %i.y = getelementptr [8 x i8], ptr %i.l, i64 %i.x
  store ptr @amd_pstate_floor_count, ptr %i.y, align 8
  br label %get_freq_attrs.exit

get_freq_attrs.exit:                              ; preds = %.preheader.8.i, %bb.l
  %i.z = icmp ugt ptr %i.l, inttoptr (i64 -4096 to ptr)
  br i1 %i.z, label %get_freq_attrs.exit.thread, label %bb.n

get_freq_attrs.exit.thread:                       ; preds = %_kmalloc_array_noprof.exit.i, %get_freq_attrs.exit
  %.0.i1520 = phi ptr [ %i.l, %get_freq_attrs.exit ], [ inttoptr (i64 -12 to ptr), %_kmalloc_array_noprof.exit.i ]
  %i.aa = ptrtoint ptr %.0.i1520 to i64
  %i.ab = trunc nsw i64 %i.aa to i32              ; 2 uses
  %i.ac = load i32, ptr @cppc_state, align 4      ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 4
  %spec.store.select.i = select i1 %i.ad, i32 0, i32 %i.ac
  %i.ae = zext nneg i32 %spec.store.select.i to i64
  %i.af = getelementptr [8 x i8], ptr @amd_pstate_mode_string, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.16, ptr noundef %i.ag, i32 noundef %i.ab) #19 ; 0 uses
  %i.ai = load i8, ptr @amd_pstate_prefcore, align 1, !range !12, !noundef !13
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.m, label %amd_pstate_driver_cleanup.exit

bb.m:                                             ; preds = %get_freq_attrs.exit.thread
  tail call void @sched_clear_itmt_support() #18
  br label %amd_pstate_driver_cleanup.exit

amd_pstate_driver_cleanup.exit:                   ; preds = %get_freq_attrs.exit.thread, %bb.m
  store i32 1, ptr @cppc_state, align 4
  %i.ak = load ptr, ptr @current_pstate_driver, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 176
  %i.am = load ptr, ptr %i.al, align 8
  tail call void @kfree(ptr noundef %i.am) #18
  %i.an = load ptr, ptr @current_pstate_driver, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 176
  store ptr null, ptr %i.ao, align 8
  store ptr null, ptr @current_pstate_driver, align 8
  br label %amd_pstate_set_driver.exit

bb.n:                                             ; preds = %get_freq_attrs.exit
  %i.ap = load ptr, ptr @current_pstate_driver, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 176
  store ptr %i.l, ptr %i.aq, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 226, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 76)) #17
          to label %_static_cpu_has.exit [label %_static_cpu_has.exit, label %bb.o], !srcloc !20

bb.o:                                             ; preds = %bb.n
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.n, %bb.n, %bb.o
  %.0.i = phi i8 [ 0, %bb.o ], [ 1, %bb.n ], [ 1, %bb.n ]
  %i.ar = load ptr, ptr @current_pstate_driver, align 8 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 184
  store i8 %.0.i, ptr %i.as, align 8
  %i.at = tail call i32 @cpufreq_register_driver(ptr noundef %i.ar) #18 ; 2 uses
  %.not13 = icmp eq i32 %i.at, 0
  %i.au = load i8, ptr @amd_pstate_prefcore, align 1, !range !12, !noundef !13
  %i.av = trunc nuw i8 %i.au to i1                ; 2 uses
  br i1 %.not13, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_static_cpu_has.exit
  br i1 %i.av, label %bb.q, label %amd_pstate_driver_cleanup.exit16

bb.q:                                             ; preds = %bb.p
  tail call void @sched_clear_itmt_support() #18
  br label %amd_pstate_driver_cleanup.exit16

amd_pstate_driver_cleanup.exit16:                 ; preds = %bb.p, %bb.q
  store i32 1, ptr @cppc_state, align 4
  %i.aw = load ptr, ptr @current_pstate_driver, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 176
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void @kfree(ptr noundef %i.ay) #18
  %i.az = load ptr, ptr @current_pstate_driver, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 176
  store ptr null, ptr %i.ba, align 8
  store ptr null, ptr @current_pstate_driver, align 8
  br label %amd_pstate_set_driver.exit

bb.r:                                             ; preds = %_static_cpu_has.exit
  br i1 %i.av, label %bb.s, label %amd_pstate_set_driver.exit

bb.s:                                             ; preds = %bb.r
  %i.bb = tail call i32 @sched_set_itmt_support() #18 ; 0 uses
  br label %amd_pstate_set_driver.exit

amd_pstate_set_driver.exit:                       ; preds = %bb.a, %bb.r, %bb.s, %amd_pstate_driver_cleanup.exit16, %amd_pstate_driver_cleanup.exit
  %.0 = phi i32 [ 0, %bb.r ], [ %i.ab, %amd_pstate_driver_cleanup.exit ], [ %i.at, %amd_pstate_driver_cleanup.exit16 ], [ 0, %bb.s ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @amd_pstate_unregister_driver(i32 %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @current_pstate_driver, align 8
  tail call void @cpufreq_unregister_driver(ptr noundef %i.a) #18
  %i.b = load i8, ptr @amd_pstate_prefcore, align 1, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %amd_pstate_driver_cleanup.exit

bb.b:                                             ; preds = %bb.a
  tail call void @sched_clear_itmt_support() #18
  br label %amd_pstate_driver_cleanup.exit

amd_pstate_driver_cleanup.exit:                   ; preds = %bb.a, %bb.b
  store i32 1, ptr @cppc_state, align 4
  %i.d = load ptr, ptr @current_pstate_driver, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @kfree(ptr noundef %i.f) #18
  %i.g = load ptr, ptr @current_pstate_driver, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 176
  store ptr null, ptr %i.h, align 8
  store ptr null, ptr @current_pstate_driver, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amd_pstate_change_driver_mode(i32 noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @current_pstate_driver, align 8
  tail call void @cpufreq_unregister_driver(ptr noundef %i.a) #18
  %i.b = load i8, ptr @amd_pstate_prefcore, align 1, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %amd_pstate_unregister_driver.exit

bb.b:                                             ; preds = %bb.a
  tail call void @sched_clear_itmt_support() #18
  br label %amd_pstate_unregister_driver.exit
end_hunk_0
