Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/expfs?download=true
inline.NumInlined: 24
inline.NumDeleted: 17
begin_hunk_0_@find_acceptable_alias:bb.a

bb.c:                                             ; preds = %.lr.ph
  tail call void @lockref_get(ptr noundef %i.j) #7
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  tail call void @_raw_spin_lock(ptr noundef %i.j) #7
  %i.k = getelementptr i8, ptr %.03452, i64 132   ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %dget_alias_ilocked.exit

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %i.k, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i.j) #7
  br label %bb.f

dget_alias_ilocked.exit:                          ; preds = %bb.d
  tail call void @_raw_spin_unlock(ptr noundef %i.j) #7
  br label %select.unfold

bb.f:                                             ; preds = %bb.c, %bb.e
  tail call void @_raw_spin_unlock(ptr noundef %i.d) #7
  tail call void @dput(ptr noundef %.03551) #7
  %.not41 = icmp eq ptr %.03452, %0
  br i1 %.not41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 %1(ptr noundef %2, ptr noundef nonnull %.03452) #7
  %.not42 = icmp eq i32 %i.o, 0
  br i1 %.not42, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_raw_spin_lock(ptr noundef %i.d) #7
  br label %select.unfold

select.unfold:                                    ; preds = %dget_alias_ilocked.exit, %bb.h
  %.1 = phi ptr [ %.03452, %bb.h ], [ %.03551, %dget_alias_ilocked.exit ] ; 2 uses
  %i.p = getelementptr i8, ptr %.03452, i64 176
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not43 = icmp eq ptr %i.q, null
  %i.r = getelementptr i8, ptr %i.q, i64 -176     ; 2 uses
  %.not4059 = icmp eq ptr %i.r, null
  %.not40 = or i1 %.not43, %.not4059
  br i1 %.not40, label %select.unfold._crit_edge, label %.lr.ph

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.b
  %.035.lcssa = phi ptr [ null, %bb.b ], [ %.1, %select.unfold ]
  tail call void @_raw_spin_unlock(ptr noundef %i.d) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %select.unfold._crit_edge
  %.035.lcssa.sink = phi ptr [ %.035.lcssa, %select.unfold._crit_edge ], [ %0, %bb.g ]
  %.0.ph = phi ptr [ null, %select.unfold._crit_edge ], [ %.03452, %bb.g ]
  tail call void @dput(ptr noundef %.035.lcssa.sink) #7
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @exportfs_get_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.kstat, align 8              ; 5 uses
  %5 = alloca %struct.path, align 8               ; 5 uses
  %6 = alloca %struct.getdents_callback, align 8  ; 11 uses
  %7 = alloca %struct.path, align 8               ; 5 uses
  %i.a = getelementptr i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store ptr %0, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 %i.g(ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #11, !srcloc !29
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr i8, ptr %i.j, i64 1992
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %0, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr @filldir_one, ptr %6, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 2147483647, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  store i64 0, ptr %i.u, align 8
  br i1 %.not.i, label %get_name.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %4, i8 0, i64 192, i1 false), !annotation !11
  %i.w = load i16, ptr %i.n, align 8
  %i.x = and i16 %i.w, -4096
  %i.y = icmp eq i16 %i.x, 16384
  br i1 %i.y, label %bb.e, label %get_name.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.n, i64 328
  %i.aa = load ptr, ptr %i.z, align 8
  %.not26.i = icmp eq ptr %i.aa, null
  br i1 %.not26.i, label %get_name.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = call i32 @vfs_getattr_nosec(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 256, i32 noundef 0) #7 ; 2 uses
  %.not27.i = icmp eq i32 %i.ab, 0
  br i1 %.not27.i, label %bb.g, label %get_name.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.t, align 8
  %i.ae = call ptr @dentry_open(ptr noundef nonnull %7, i32 noundef 0, ptr noundef %i.l) #7 ; 5 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp ugt ptr %i.ae, inttoptr (i64 -4096 to ptr)
  br i1 %i.ah, label %get_name.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  %.not28.i = icmp eq ptr %i.al, null
  br i1 %.not28.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.am = phi i32 [ %i.aq, %bb.l ], [ 0, %bb.i ]
  %i.an = call i32 @iterate_dir(ptr noundef %i.ae, ptr noundef nonnull %6) #7 ; 2 uses
  %i.ao = load i32, ptr %i.u, align 8
  %.not29.i = icmp eq i32 %i.ao, 0
  br i1 %.not29.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp slt i32 %i.an, 0
  br i1 %i.ap, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.v, align 4             ; 2 uses
  %i.ar = icmp eq i32 %i.am, %i.aq
  br i1 %i.ar, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.1.i = phi i32 [ -22, %bb.h ], [ %i.an, %bb.k ], [ 0, %bb.j ], [ -2, %bb.l ]
  call void @fput(ptr noundef %i.ae) #7
  br label %get_name.exit

get_name.exit:                                    ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %.thread.i
  %.022.i = phi i32 [ %i.ab, %bb.f ], [ %i.ag, %bb.g ], [ %.1.i, %.thread.i ], [ -22, %bb.e ], [ -20, %bb.d ], [ -20, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.m

bb.m:                                             ; preds = %get_name.exit, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %.022.i, %get_name.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @lookup_one_unlocked(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @exportfs_decode_fh(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @exportfs_decode_fh_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %4, ptr noundef %5) #10 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  %6 = icmp ugt ptr %i.a, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %6
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -12 to ptr)
  %spec.select = select i1 %i.b, ptr inttoptr (i64 -12 to ptr), ptr inttoptr (i64 -116 to ptr)
  %.0 = select i1 %spec.select.i, ptr %spec.select, ptr %i.a
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef zeroext i1 @filldir_one(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i64 %3, i64 noundef %4, i32 %5) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 44         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, %4
  %i.g = icmp slt i32 %2, 256
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %name_is_dot_dotdot.exit.thread17

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %2 to i64                       ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %name_is_dot_dotdot.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %1, align 1
  %i.j = icmp eq i8 %i.i, 46
  br i1 %i.j, label %bb.d, label %name_is_dot_dotdot.exit.thread, !prof !12

bb.d:                                             ; preds = %bb.c
  switch i32 %2, label %name_is_dot_dotdot.exit.thread [
    i32 1, label %name_is_dot_dotdot.exit.thread17
    i32 2, label %name_is_dot_dotdot.exit
  ]

name_is_dot_dotdot.exit:                          ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 46
  br i1 %i.m, label %name_is_dot_dotdot.exit.thread17, label %name_is_dot_dotdot.exit.thread

name_is_dot_dotdot.exit.thread:                   ; preds = %bb.d, %bb.b, %bb.c, %name_is_dot_dotdot.exit
  %i.n = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %1, i64 %i.h, i1 false)
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 %i.h
  store i8 0, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %0, i64 40
  store i32 1, ptr %i.r, align 8
  br label %name_is_dot_dotdot.exit.thread17

name_is_dot_dotdot.exit.thread17:                 ; preds = %bb.d, %bb.a, %name_is_dot_dotdot.exit, %name_is_dot_dotdot.exit.thread
  %.0 = phi i1 [ false, %name_is_dot_dotdot.exit.thread ], [ true, %name_is_dot_dotdot.exit ], [ true, %bb.a ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vfs_getattr_nosec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @iterate_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { nounwind }
attributes #10 = { noredzone "no-builtin-wcslen" }
attributes #11 = { nounwind memory(none) }

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
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{ptr @exportfs_encode_inode_fh}
!14 = !{i64 12759}
!15 = !{i64 13482}
!16 = !{i64 14133}
!17 = !{i64 14415}
!18 = !{i64 15078}
!19 = distinct !{null}
!20 = distinct !{!20, !25}
!21 = distinct !{!21, !25}
!22 = !{i64 2155015311, i64 2155015186}
!23 = !{i64 2155015834, i64 2155016310, i64 2155016343, i64 2155016378, i64 2155016394, i64 2155017235, i64 2155017293, i64 2155017342, i64 2155017152, i64 2155016453, i64 2155016485}
!24 = !{i64 3397}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i64 2155009513, i64 2155009388}
!27 = !{i64 2155010036, i64 2155011089, i64 2155011122, i64 2155011157, i64 2155011173, i64 2155012100, i64 2155012158, i64 2155012207, i64 2155012017, i64 2155011232, i64 2155011264, i64 2155011347}
!28 = !{i64 2155012505, i64 2155012381}
!29 = !{i64 2148349187}
end_hunk_0
