Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/complex?download=true
inline.NumInlined: 549
inline.NumDeleted: 101
begin_hunk_0_@read_rat_nos:bb.a
.loopexit19.i.i33:                                ; preds = %bb.r
  %.not17.i.i34 = icmp eq i32 %.0.i.i17, 0
  br i1 %.not17.i.i34, label %read_den.exit, label %.preheader.i.i32.preheader

.preheader.i.i32.preheader:                       ; preds = %.loopexit19.i.i33, %bb.s
  br label %.preheader.i.i32

.preheader.i.i32:                                 ; preds = %.preheader.i.i32.preheader, %.preheader.i.i32
  %i.dc = phi ptr [ %i.dd, %.preheader.i.i32 ], [ %.promoted.i.i16, %.preheader.i.i32.preheader ]
  %i.dd = getelementptr i8, ptr %i.dc, i64 -1     ; 3 uses
  store ptr %i.dd, ptr %0, align 8, !tbaa !39
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !35
  %i.df = icmp eq i8 %i.de, 95
  br i1 %i.df, label %.preheader.i.i32, label %read_den.exit, !llvm.loop !68

read_den.exit.sink.split.sink.split:              ; preds = %bb.s, %bb.h, %bb.n
  %.pre = load ptr, ptr %2, align 8, !tbaa !39
  br label %read_den.exit.sink.split

read_den.exit.sink.split:                         ; preds = %read_den.exit.sink.split.sink.split, %bb.q, %read_digits.exit.thread.i, %read_sign.exit.i
  %.sink126.i.sink = phi ptr [ %i.ck, %bb.q ], [ %i.aa, %read_digits.exit.thread.i ], [ %i.bi, %read_sign.exit.i ], [ %.pre, %read_den.exit.sink.split.sink.split ]
  %i.dg = getelementptr i8, ptr %.sink126.i.sink, i64 -1
  store ptr %i.dg, ptr %2, align 8, !tbaa !39
  br label %read_den.exit

read_den.exit:                                    ; preds = %.preheader.i.i32, %read_den.exit.sink.split, %bb.b, %bb.d, %.loopexit19.i.i33, %read_num.exit
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %read_den.exit.sink.split ], [ 1, %read_num.exit ], [ 1, %.loopexit19.i.i33 ], [ 0, %bb.d ], [ 1, %.preheader.i.i32 ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @str2num(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #19
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_cstr_to_rat(ptr noundef nonnull %0, i32 noundef 0) #17
  br label %rb_float_new_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @strpbrk(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #19
  %.not5 = icmp eq ptr %i.c, null
  br i1 %.not5, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call double @rb_cstr_to_dbl(ptr noundef nonnull %0, i32 noundef 0) #17 ; 2 uses
  %i.e = bitcast double %i.d to i64               ; 5 uses
  %cond.i = icmp eq i64 %i.e, 3458764513820540928
  br i1 %cond.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = lshr i64 %i.e, 60
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 7
  %i.i = add nsw i32 %i.h, -5
  %i.j = icmp ult i32 %i.i, -2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.e, i64 range(i64 3458764513820540929, 3458764513820540928) %i.e, i64 3)
  %i.l = and i64 %i.k, -4
  %i.m = or disjoint i64 %i.l, 2
  br label %rb_float_new_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i64 %i.e, 0
  br i1 %i.n, label %rb_float_new_inline.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.o = tail call i64 @rb_float_new_in_heap(double noundef %i.d) #17
  br label %rb_float_new_inline.exit

bb.i:                                             ; preds = %bb.c
  %i.p = tail call i64 @rb_cstr_to_inum(ptr noundef nonnull %0, i32 noundef 10, i32 noundef 0) #17
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %bb.i, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.p, %bb.i ], [ %i.m, %bb.f ], [ %i.o, %bb.h ], [ -9223372036854775806, %bb.g ]
  ret i64 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

declare i64 @rb_cstr_to_rat(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #12

declare double @rb_cstr_to_dbl(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i64 @rb_cstr_to_inum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i64 @rb_convert_type(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @rb_opts_exception_p(i64 noundef, i32 noundef) local_unnamed_addr #7

declare ptr @rb_current_box() local_unnamed_addr #7

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i64 @rb_num_coerce_cmp(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #7

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #7

declare i64 @rb_float_numerator(i64 noundef) local_unnamed_addr #7

declare i64 @rb_float_denominator(i64 noundef) local_unnamed_addr #7

declare i64 @rb_lcm(i64 noundef, i64 noundef) local_unnamed_addr #7

declare i64 @rb_String(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @f_tpositive_p(i64 noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = and i64 %0, 3
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, 0                        ; 3 uses
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %RB_FLOAT_TYPE_P.exit.thread8.i, label %RB_FLOAT_TYPE_P.exit.i

RB_FLOAT_TYPE_P.exit.i:                           ; preds = %bb.b
  %i.g = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 4
  br i1 %i.j, label %bb.e, label %RB_FLOAT_TYPE_P.exit.thread8.i

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %0, -9223372036854775806
  br i1 %.not.i.i.i, label %rb_float_value_inline.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.neg.i.i.i = ashr i64 %0, 63
  %i.k = add nsw i64 %.neg.i.i.i, 2
  %i.l = and i64 %0, -4
  %i.m = or i64 %i.k, %i.l                        ; 2 uses
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.m, i64 range(i64 1, 0) %i.m, i64 61)
  %i.o = bitcast i64 %i.n to double
  br label %rb_float_value_inline.exit.i

bb.e:                                             ; preds = %RB_FLOAT_TYPE_P.exit.i
  %i.p = getelementptr i8, ptr %i.g, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !22
  br label %rb_float_value_inline.exit.i

rb_float_value_inline.exit.i:                     ; preds = %bb.e, %bb.d, %bb.c
  %.0.i5.i = phi double [ %i.q, %bb.e ], [ %i.o, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.r = fcmp uno double %.0.i5.i, 0.000000e+00
  %i.s = bitcast double %.0.i5.i to i64
  %i.t = icmp sgt i64 %i.s, -1
  %.not2 = or i1 %i.r, %i.t
  br label %f_signbit.exit

RB_FLOAT_TYPE_P.exit.thread8.i:                   ; preds = %RB_FLOAT_TYPE_P.exit.i, %bb.b
  %i.u = trunc i64 %0 to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread8.i
  %i.v = and i64 %0, 6
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.c, %i.w
  br i1 %i.x, label %rb_integer_type_p.exit.thread17.i.i, label %rb_integer_type_p.exit.i.i

rb_integer_type_p.exit.i.i:                       ; preds = %bb.f
  %i.y = inttoptr i64 %0 to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !18   ; 2 uses
  %i.aa = and i64 %i.z, 31
  %i.ab = icmp eq i64 %i.aa, 10
  br i1 %i.ab, label %bb.h, label %rb_integer_type_p.exit.thread17.i.i

bb.g:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread8.i
  %i.ac = icmp slt i64 %0, 0
  br label %INT_NEGATIVE_P.exit.i.i

bb.h:                                             ; preds = %rb_integer_type_p.exit.i.i
  %i.ad = and i64 %i.z, 8192
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  br label %INT_NEGATIVE_P.exit.i.i

INT_NEGATIVE_P.exit.i.i:                          ; preds = %bb.h, %bb.g
  %.0.i9.i.i = phi i1 [ %i.ac, %bb.g ], [ %.not.i.i.i.i, %bb.h ]
  %i.ae = xor i1 %.0.i9.i.i, true
  br label %f_signbit.exit

rb_integer_type_p.exit.thread17.i.i:              ; preds = %rb_integer_type_p.exit.i.i, %bb.f
  %i.af = and i64 %0, 2
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rb_integer_type_p.exit.thread17.i.i
  %i.ag = and i64 %0, 4
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = or i1 %i.c, %i.ah
  br i1 %i.ai, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %RB_FLOAT_TYPE_P.exit.i.i

RB_FLOAT_TYPE_P.exit.i.i:                         ; preds = %bb.i
  %i.aj = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18
  %i.al = and i64 %i.ak, 31
  switch i64 %i.al, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i [
    i64 4, label %bb.k
    i64 15, label %bb.l
  ]

bb.j:                                             ; preds = %rb_integer_type_p.exit.thread17.i.i
  %.neg.i.i.i.i = ashr i64 %0, 63
  %i.am = add nsw i64 %.neg.i.i.i.i, 2
  %i.an = and i64 %0, -4
  %i.ao = or i64 %i.am, %i.an                     ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.ao, i64 range(i64 1, 0) %i.ao, i64 61)
  %i.aq = bitcast i64 %i.ap to double
  br label %rb_float_value_inline.exit.i.i

bb.k:                                             ; preds = %RB_FLOAT_TYPE_P.exit.i.i
  %i.ar = getelementptr i8, ptr %i.aj, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !22
  br label %rb_float_value_inline.exit.i.i

rb_float_value_inline.exit.i.i:                   ; preds = %bb.k, %bb.j
  %.0.i11.i.i = phi double [ %i.as, %bb.k ], [ %i.aq, %bb.j ]
  %i.at = fcmp uge double %.0.i11.i.i, 0.000000e+00
  br label %f_signbit.exit

bb.l:                                             ; preds = %RB_FLOAT_TYPE_P.exit.i.i
  %i.au = getelementptr i8, ptr %i.aj, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !24 ; 3 uses
  %i.aw = trunc i64 %i.av to i1
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp slt i64 %i.av, 0
  br label %INT_NEGATIVE_P.exit15.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = inttoptr i64 %i.av to ptr
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !18
  %i.ba = and i64 %i.az, 8192
  %.not.i.i13.i.i = icmp eq i64 %i.ba, 0
  br label %INT_NEGATIVE_P.exit15.i.i

INT_NEGATIVE_P.exit15.i.i:                        ; preds = %bb.n, %bb.m
  %.0.i14.i.i = phi i1 [ %i.ax, %bb.m ], [ %.not.i.i13.i.i, %bb.n ]
  %i.bb = xor i1 %.0.i14.i.i, true
  br label %f_signbit.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %RB_FLOAT_TYPE_P.exit.i.i, %bb.i
  %i.bc = tail call i32 @rb_num_negative_p(i64 noundef %0) #17
  %i.bd = icmp eq i32 %i.bc, 0
  br label %f_signbit.exit

f_signbit.exit:                                   ; preds = %rb_float_value_inline.exit.i, %INT_NEGATIVE_P.exit.i.i, %rb_float_value_inline.exit.i.i, %INT_NEGATIVE_P.exit15.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.0.i = phi i1 [ %.not2, %rb_float_value_inline.exit.i ], [ %i.ae, %INT_NEGATIVE_P.exit.i.i ], [ %i.at, %rb_float_value_inline.exit.i.i ], [ %i.bb, %INT_NEGATIVE_P.exit15.i.i ], [ %i.bd, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ]
  %i.be = zext i1 %.0.i to i32
  ret i32 %i.be
}

declare i64 @rb_str_concat(i64 noundef, i64 noundef) local_unnamed_addr #7

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #7

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i64 @rb_usascii_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #7

declare i64 @rb_inspect(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

declare void @rb_copy_generic_ivar(i64 noundef, i64 noundef) local_unnamed_addr #7

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #16

declare i64 @rb_ivar_get(i64 noundef, i64 noundef) local_unnamed_addr #7

declare i64 @rb_str_to_inum(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i64 @rb_check_convert_type_with_id(i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @rb_str_fill_terminator(i64 noundef, i32 noundef) local_unnamed_addr #7

declare i64 @rb_const_get(i64 noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { "function-inline-cost-multiplier"="2" }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { cold nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { memory(none) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind allocsize(1,2) }
attributes #25 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"RBasic", !12, i64 0, !12, i64 8}
!15 = !{!"RComplex", !14, i64 0, !12, i64 16, !12, i64 24}
!16 = !{!15, !12, i64 16}
!17 = !{!15, !12, i64 24}
!18 = !{!14, !12, i64 0}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = !{!"double", !9, i64 0}
!21 = !{!"RFloat", !14, i64 0, !20, i64 16}
!22 = !{!21, !20, i64 16}
!23 = !{!"RRational", !14, i64 0, !12, i64 16, !12, i64 24}
!24 = !{!23, !12, i64 16}
!25 = !{!"branch_weights", i32 2000, i32 2002}
!26 = !{ptr @f_abs}
!27 = !{!"any pointer", !9, i64 0}
!28 = !{!"p1 _ZTS27rb_execution_context_struct", !27, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!23, !12, i64 24}
!31 = !{ptr @f_negate}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"short", !9, i64 0}
!34 = !{ptr @rb_String, ptr @rb_inspect}
!35 = !{!9, !9, i64 0}
!36 = !{!"RString", !14, i64 0, !12, i64 16, !9, i64 24}
!37 = !{!36, !12, i64 16}
!38 = !{!"p1 omnipotent char", !27, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 short", !27, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!33, !33, i64 0}
!43 = distinct !{null, ptr @f_quo}
!44 = distinct !{!44, !32}
!45 = distinct !{!45, !32}
!46 = !{!"RClass", !14, i64 0, !12, i64 16}
!47 = !{!"p1 _ZTS13rb_box_struct", !27, i64 0}
!48 = !{!"p1 _ZTS11rb_id_table", !27, i64 0}
!49 = !{!"p1 long", !27, i64 0}
!50 = !{!"p1 _ZTS18rb_subclass_anchor", !27, i64 0}
!51 = !{!"p1 _ZTS17rb_box_subclasses", !27, i64 0}
!52 = !{!"_Bool", !9, i64 0}
!53 = !{!"rb_classext_struct", !47, i64 0, !12, i64 8, !12, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !12, i64 48, !48, i64 56, !49, i64 64, !50, i64 72, !51, i64 80, !51, i64 88, !12, i64 96, !12, i64 104, !9, i64 112, !33, i64 120, !33, i64 122, !9, i64 124, !52, i64 125, !52, i64 125, !52, i64 125, !52, i64 125, !52, i64 125, !52, i64 125, !12, i64 128}
!54 = !{!"RClass_and_rb_classext_t", !46, i64 0, !53, i64 24}
!55 = !{!"p1 _ZTS8st_table", !27, i64 0}
!56 = !{!"RClass_boxable", !54, i64 0, !55, i64 160}
!57 = !{!56, !55, i64 160}
!58 = !{!"rb_box_struct", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !55, i64 88, !55, i64 96, !12, i64 104, !12, i64 112, !55, i64 120, !52, i64 128, !52, i64 129}
!59 = !{!58, !52, i64 128}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!58, !12, i64 0}
!63 = !{!53, !12, i64 96}
!64 = !{!"branch_weights", i32 1073205, i32 2146410443}
!65 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!66 = distinct !{!66, !32}
!67 = distinct !{!67, !32}
!68 = distinct !{!68, !32}
end_hunk_0
