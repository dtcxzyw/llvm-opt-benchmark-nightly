Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurm_protocol_defs?download=true
inline.NumInlined: 73
inline.NumDeleted: 9
begin_hunk_0_@job_state_string_compact:bb.a
  %.not18 = icmp eq i64 %i.h, 0
  br i1 %.not18, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.i = and i64 %i.a, 4096
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.j = and i64 %i.a, 65536
  %.not20 = icmp eq i64 %i.j, 0
  br i1 %.not20, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.k = and i64 %i.a, 524288
  %.not21 = icmp eq i64 %i.k, 0
  br i1 %.not21, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.l = and i64 %i.a, 2097152
  %.not22 = icmp eq i64 %i.l, 0
  br i1 %.not22, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.m = and i64 %i.a, 4194304
  %.not23 = icmp eq i64 %i.m, 0
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %trunc = trunc i32 %0 to i8
  %i.n = icmp ult i8 %trunc, 12
  br i1 %i.n, label %switch.lookup, label %bb.n

switch.lookup:                                    ; preds = %bb.m
  %trunc.mask = and i32 %0, 15
  %i.o = zext nneg i32 %trunc.mask to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._job_name_test.5, i64 %i.o
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %switch.lookup, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.91, %bb.a ], [ @.str.92, %bb.b ], [ @.str.93, %bb.c ], [ @.str.94, %bb.d ], [ @.str.95, %bb.e ], [ @.str.96, %bb.f ], [ @.str.97, %bb.g ], [ @.str.98, %bb.h ], [ @.str.99, %bb.i ], [ @.str.100, %bb.j ], [ @.str.101, %bb.k ], [ @.str.102, %bb.l ], [ @.str.90, %bb.m ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 16777217) i32 @job_state_num(ptr noundef %0) #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.044 = phi i32 [ 0, %bb.a ], [ %i.b, %bb.c ]   ; 3 uses
  %i.a = tail call fastcc zeroext i1 @_job_name_test(i32 noundef %.044, ptr noundef %0)
  br i1 %i.a, label %_job_name_test.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = add nuw nsw i32 %.044, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.b, 12
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !18

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @xstrcasecmp(ptr noundef %0, ptr noundef nonnull @.str.67) #23
  %.not19.i = icmp eq i32 %i.c, 0
  br i1 %.not19.i, label %_job_name_test.exit.thread, label %_job_name_test.exit

_job_name_test.exit:                              ; preds = %bb.d
  %i.d = tail call i32 @xstrcasecmp(ptr noundef %0, ptr noundef nonnull @.str.91) #23
  %.not4.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i, label %_job_name_test.exit.thread, label %bb.e

bb.e:                                             ; preds = %_job_name_test.exit
  %i.e = tail call i32 @xstrcasecmp(ptr noundef %0, ptr noundef nonnull @.str.69) #23
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_job_name_test.exit.thread, label %_job_name_test.exit22

_job_name_test.exit22:                            ; preds = %bb.e
  %i.f = tail call i32 @xstrcasecmp(ptr noundef %0, ptr noundef nonnull @.str.93) #23
  %.not4.i20 = icmp eq i32 %i.f, 0
  br i1 %.not4.i20, label %_job_name_test.exit.thread, label %bb.f

bb.f:                                             ; preds = %_job_name_test.exit22
  %i.g = tail call i32 @xstrcasecmp(ptr noundef %0, ptr noundef nonnull @.str.70) #23
  %.not.i23 = icmp eq i32 %i.g, 0
  br i1 %.not.i23, label %_job_name_test.exit.thread, label %_job_name_test.exit27

_job_name_test.exit27:                            ; preds = %bb.f
  %i.h = tail call i32 @xstrcasecmp(ptr noundef %0, ptr noundef nonnull @.str.103) #23
  %.not4.i25 = icmp eq i32 %i.h, 0
  br i1 %.not4.i25, label %_job_name_test.exit.thread, label %bb.g

bb.g:                                             ; preds = %_job_name_test.exit27
  %i.i = tail call i32 @xstrcasecmp(ptr noundef %0, ptr noundef nonnull @.str.71) #23
  %.not.i28 = icmp eq i32 %i.i, 0
  br i1 %.not.i28, label %_job_name_test.exit.thread, label %_job_name_test.exit32

_job_name_test.exit32:                            ; preds = %bb.g
  %i.j = tail call i32 @xstrcasecmp(ptr noundef %0, ptr noundef nonnull @.str.94) #23
  %.not4.i30 = icmp eq i32 %i.j, 0
  br i1 %.not4.i30, label %_job_name_test.exit.thread, label %bb.h

bb.h:                                             ; preds = %_job_name_test.exit32
  %i.k = tail call i32 @xstrcasecmp(ptr noundef %0, ptr noundef nonnull @.str.77) #23
  %.not.i33 = icmp eq i32 %i.k, 0
  br i1 %.not.i33, label %_job_name_test.exit.thread, label %_job_name_test.exit37

_job_name_test.exit37:                            ; preds = %bb.h
  %i.l = tail call i32 @xstrcasecmp(ptr noundef %0, ptr noundef nonnull @.str.101) #23
  %.not4.i35 = icmp eq i32 %i.l, 0
  br i1 %.not4.i35, label %_job_name_test.exit.thread, label %bb.i

bb.i:                                             ; preds = %_job_name_test.exit37
  %i.m = tail call fastcc zeroext i1 @_job_name_test(i32 noundef 1024, ptr noundef %0)
  br i1 %i.m, label %_job_name_test.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = tail call fastcc zeroext i1 @_job_name_test(i32 noundef 1048576, ptr noundef %0)
  br i1 %i.n, label %_job_name_test.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = tail call fastcc zeroext i1 @_job_name_test(i32 noundef 2048, ptr noundef %0)
  br i1 %i.o, label %_job_name_test.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = tail call fastcc zeroext i1 @_job_name_test(i32 noundef 524288, ptr noundef %0)
  br i1 %i.p, label %_job_name_test.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = tail call fastcc zeroext i1 @_job_name_test(i32 noundef 4194304, ptr noundef %0)
  br i1 %i.q, label %_job_name_test.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = tail call fastcc zeroext i1 @_job_name_test(i32 noundef 4096, ptr noundef %0)
  br i1 %i.r, label %_job_name_test.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = tail call fastcc zeroext i1 @_job_name_test(i32 noundef 8388608, ptr noundef %0)
  br i1 %i.s, label %_job_name_test.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = tail call fastcc zeroext i1 @_job_name_test(i32 noundef 65536, ptr noundef %0)
  %. = select i1 %i.t, i32 65536, i32 -2
  br label %_job_name_test.exit.thread

_job_name_test.exit.thread:                       ; preds = %bb.b, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %_job_name_test.exit37, %_job_name_test.exit32, %_job_name_test.exit27, %_job_name_test.exit22, %_job_name_test.exit
  %.018 = phi i32 [ 8388608, %bb.o ], [ 2097152, %bb.h ], [ 32768, %_job_name_test.exit ], [ 16384, %_job_name_test.exit22 ], [ 16777216, %_job_name_test.exit27 ], [ 8192, %_job_name_test.exit32 ], [ 2097152, %_job_name_test.exit37 ], [ 1024, %bb.i ], [ 1048576, %bb.j ], [ 2048, %bb.k ], [ 524288, %bb.l ], [ 4194304, %bb.m ], [ 4096, %bb.n ], [ %., %bb.p ], [ 8192, %bb.g ], [ 32768, %bb.d ], [ 16384, %bb.e ], [ 16777216, %bb.f ], [ %.044, %bb.b ]
  ret i32 %.018
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local zeroext i1 @valid_base_state(i32 noundef %0) #2 {
bb.a:
  %i.a = and i32 %0, 15
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @node_states, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 16
  %i.d = icmp eq i32 %i.c, %i.a                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  %or.cond = select i1 %i.d, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !19

bb.c:                                             ; preds = %bb.b
  ret i1 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local ptr @node_state_base_string(i32 noundef %0) #2 {
bb.a:
  %i.a = and i32 %0, 15
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @node_states, i64 %indvars.iv ; 2 uses
  %i.c = load i32, ptr %i.b, align 16
  %i.d = icmp eq i32 %i.c, %i.a
  br i1 %i.d, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.f, %bb.d ], [ @.str.12, %bb.b ]
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define dso_local ptr @node_state_flag_string(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = and i32 %0, -16                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8
  %.not.i13 = icmp eq i32 %i.b, 0
  br i1 %.not.i13, label %node_state_flag_string_single.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a, %bb.c
  %.014 = phi i32 [ %.18, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  br label %.preheader.i

bb.b:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 21
  br i1 %exitcond.i, label %node_state_flag_string_single.exit.thread4, label %.preheader.i, !llvm.loop !1

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @node_state_flags, i64 %indvars.iv.i ; 2 uses
  %i.d = load i32, ptr %i.c, align 16             ; 2 uses
  %i.e = and i32 %i.d, %.014
  %.not17.i = icmp eq i32 %i.e, 0
  br i1 %.not17.i, label %bb.b, label %node_state_flag_string_single.exit

node_state_flag_string_single.exit.thread4:       ; preds = %bb.b
  %i.f = add i32 %.014, -1
  br label %bb.c

node_state_flag_string_single.exit:               ; preds = %.preheader.i
  %i.g = xor i32 %i.d, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %node_state_flag_string_single.exit, %node_state_flag_string_single.exit.thread4
  %.1.i9 = phi ptr [ @.str.90, %node_state_flag_string_single.exit.thread4 ], [ %i.i, %node_state_flag_string_single.exit ]
  %.pn = phi i32 [ %i.f, %node_state_flag_string_single.exit.thread4 ], [ %i.g, %node_state_flag_string_single.exit ]
  %.18 = and i32 %.pn, %.014                      ; 2 uses
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.232, ptr noundef nonnull %.1.i9) #23
  %.not.i = icmp eq i32 %.18, 0
  br i1 %.not.i, label %node_state_flag_string_single.exit.thread.loopexit, label %.preheader.i.preheader, !llvm.loop !2

node_state_flag_string_single.exit.thread.loopexit: ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8
  br label %node_state_flag_string_single.exit.thread

node_state_flag_string_single.exit.thread:        ; preds = %node_state_flag_string_single.exit.thread.loopexit, %bb.a
  %i.j = phi ptr [ %.pre, %node_state_flag_string_single.exit.thread.loopexit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %i.j
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local ptr @node_state_flag_string_single(ptr nofree noundef captures(none) %0) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %i.b = and i32 %i.a, -16                        ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %.preheader

bb.b:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond, label %bb.d, label %.preheader, !llvm.loop !1

.preheader:                                       ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @node_state_flags, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 16             ; 2 uses
  %i.e = and i32 %i.d, %i.b
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.f = xor i32 %i.d, -1
  %i.g = and i32 %i.a, %i.f
  store i32 %i.g, ptr %0, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = add i32 %i.b, -1
  %i.k = and i32 %i.a, %i.j
  store i32 %i.k, ptr %0, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.1 = phi ptr [ @.str.90, %bb.d ], [ %i.i, %bb.c ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @node_state_string(i32 noundef %0) #0 {
bb.a:
  %i.a = and i32 %0, 15                           ; 7 uses
  %i.b = zext i32 %0 to i64                       ; 57 uses
  %i.c = and i64 %i.b, 134217728
  %.not = icmp eq i64 %i.c, 0
  %i.d = and i64 %i.b, 1024
  %.not259 = icmp eq i64 %i.d, 0                  ; 4 uses
  %i.e = and i64 %i.b, 512
  %i.f = icmp ne i64 %i.e, 0                      ; 2 uses
  %i.g = and i64 %i.b, 8192
  %.not148 = icmp eq i64 %i.g, 0
  %i.h = and i64 %i.b, 32768
  %.not149.not = icmp eq i64 %i.h, 0              ; 9 uses
  %i.i = and i64 %i.b, 1048576
  %.not160.not = icmp eq i64 %i.i, 0
  %i.j = and i64 %i.b, 256
  %.not151 = icmp eq i64 %i.j, 0
  %i.k = and i64 %i.b, 2048
  %.not152.not = icmp eq i64 %i.k, 0              ; 12 uses
  %i.l = and i64 %i.b, 2097152
  %.not153 = icmp eq i64 %i.l, 0                  ; 2 uses
  %i.m = and i64 %i.b, 8388608
  %.not157.not = icmp eq i64 %i.m, 0              ; 5 uses
  %i.n = and i64 %i.b, 4194304
  %.not158 = icmp eq i64 %i.n, 0
  br i1 %.not158, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  br i1 %.not149.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %0, 13
  %i.p = icmp eq i32 %i.o, 1
  %i.q = icmp eq i32 %i.a, 5
  %i.r = or i1 %i.p, %i.q
  %or.cond5 = or i1 %i.r, %i.f
  br i1 %or.cond5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.str.170..str.234 = select i1 %.not152.not, ptr @.str.170, ptr @.str.234
  br label %bb.aj

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.s = and i64 %i.b, 1114112
  %or.cond7.not = icmp eq i64 %i.s, 0
  br i1 %or.cond7.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.a, label %bb.g [
    i32 5, label %bb.h
    i32 3, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %.str.237..str.236 = select i1 %.not152.not, ptr @.str.237, ptr @.str.236
  %spec.select = select i1 %.not160.not, ptr %.str.237..str.236, ptr @.str.235
  br label %bb.aj

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.e
  br i1 %i.f, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  br i1 %.not259, label %switch.early.test, label %bb.j

switch.early.test:                                ; preds = %bb.i
  switch i32 %i.a, label %bb.l [
    i32 5, label %bb.j
    i32 3, label %bb.j
  ]

bb.j:                                             ; preds = %switch.early.test, %switch.early.test, %bb.i
  %i.t = and i64 %i.b, 1081344
  %brmerge.not = icmp eq i64 %i.t, 0
  %.str.238.mux = select i1 %.not149.not, ptr @.str.239, ptr @.str.238
  %i.u = and i64 %i.b, 1146880
  %brmerge162.not = icmp eq i64 %i.u, 0
  %.str.238.mux.mux = select i1 %brmerge.not, ptr @.str.240, ptr %.str.238.mux
  %i.v = and i64 %i.b, 1163264
  %brmerge163.not = icmp eq i64 %i.v, 0
  %.str.238.mux.mux.mux = select i1 %brmerge162.not, ptr @.str.241, ptr %.str.238.mux.mux
  %i.w = and i64 %i.b, 1425408
  %brmerge164.not = icmp eq i64 %i.w, 0
  %.str.238.mux.mux.mux.mux = select i1 %brmerge163.not, ptr @.str.242, ptr %.str.238.mux.mux.mux
  %i.x = and i64 %i.b, 1429504
  %brmerge165.not = icmp eq i64 %i.x, 0
  %.str.238.mux.mux.mux.mux.mux = select i1 %brmerge164.not, ptr @.str.243, ptr %.str.238.mux.mux.mux.mux
  br i1 %brmerge165.not, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %bb.j
  %.str.246..str.245 = select i1 %.not152.not, ptr @.str.246, ptr @.str.245
  %spec.select166 = select i1 %.not157.not, ptr %.str.246..str.245, ptr @.str.244
  br label %bb.aj

bb.l:                                             ; preds = %switch.early.test
  %i.y = and i64 %i.b, 1081344
  %brmerge169.not = icmp eq i64 %i.y, 0
  %.str.247.mux = select i1 %.not149.not, ptr @.str.248, ptr @.str.247
  %i.z = and i64 %i.b, 1146880
  %brmerge171.not = icmp eq i64 %i.z, 0
  %.str.247.mux.mux = select i1 %brmerge169.not, ptr @.str.249, ptr %.str.247.mux
  %i.aa = and i64 %i.b, 1163264
  %brmerge173.not = icmp eq i64 %i.aa, 0
  %.str.247.mux.mux.mux = select i1 %brmerge171.not, ptr @.str.250, ptr %.str.247.mux.mux
  %i.ab = and i64 %i.b, 1425408
  %brmerge175.not = icmp eq i64 %i.ab, 0
  %.str.247.mux.mux.mux.mux = select i1 %brmerge173.not, ptr @.str.251, ptr %.str.247.mux.mux.mux
  %i.ac = and i64 %i.b, 1429504
  %brmerge177.not = icmp eq i64 %i.ac, 0
  %.str.247.mux.mux.mux.mux.mux = select i1 %brmerge175.not, ptr @.str.252, ptr %.str.247.mux.mux.mux.mux
  br i1 %brmerge177.not, label %bb.m, label %bb.aj

bb.m:                                             ; preds = %bb.l
  %.str.255..str.254 = select i1 %.not152.not, ptr @.str.255, ptr @.str.254
  %spec.select178 = select i1 %.not157.not, ptr %.str.255..str.254, ptr @.str.253
  br label %bb.aj

bb.n:                                             ; preds = %bb.h
  br i1 %.not148, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not259, label %switch.early.test161, label %bb.p

switch.early.test161:                             ; preds = %bb.o
  switch i32 %i.a, label %bb.q [
    i32 5, label %bb.p
    i32 3, label %bb.p
  ]

bb.p:                                             ; preds = %switch.early.test161, %switch.early.test161, %bb.o
  %.str.257..str.256 = select i1 %.not152.not, ptr @.str.257, ptr @.str.256
  br label %bb.aj

bb.q:                                             ; preds = %switch.early.test161
  %.str.259..str.258 = select i1 %.not152.not, ptr @.str.259, ptr @.str.258
  br label %bb.aj

bb.r:                                             ; preds = %bb.n
  %i.ad = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %switch.tableidx = add nsw i32 %i.af, -4        ; 3 uses
  %i.ag = icmp ult i32 %switch.tableidx, 23
  %switch.shifted = lshr i32 5891341, %switch.tableidx
end_hunk_0
begin_hunk_1_@node_state_string_compact:bb.a
  %.str.272.mux.mux.mux = select i1 %brmerge179.not, ptr @.str.275, ptr %.str.272.mux.mux
  %i.ag = and i64 %i.a, 1425408
  %brmerge183.not = icmp eq i64 %i.ag, 0
  %.str.272.mux.mux.mux.mux = select i1 %brmerge181.not, ptr @.str.276, ptr %.str.272.mux.mux.mux
  %i.ah = and i64 %i.a, 1429504
  %brmerge185.not = icmp eq i64 %i.ah, 0
  %.str.272.mux.mux.mux.mux.mux = select i1 %brmerge183.not, ptr @.str.277, ptr %.str.272.mux.mux.mux.mux
  br i1 %brmerge185.not, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %bb.s
  %.str.280..str.279 = select i1 %.not148.not, ptr @.str.280, ptr @.str.279
  %spec.select186 = select i1 %.not153.not, ptr %.str.280..str.279, ptr @.str.278
  br label %bb.ai

bb.u:                                             ; preds = %bb.r
  %i.ai = and i64 %i.a, 1081344
  %brmerge189.not = icmp eq i64 %i.ai, 0
  %.str.359.mux = select i1 %.not145.not, ptr @.str.360, ptr @.str.359
  %i.aj = and i64 %i.a, 1146880
  %brmerge191.not = icmp eq i64 %i.aj, 0
  %.str.359.mux.mux = select i1 %brmerge189.not, ptr @.str.361, ptr %.str.359.mux
  %i.ak = and i64 %i.a, 1163264
  %brmerge193.not = icmp eq i64 %i.ak, 0
  %.str.359.mux.mux.mux = select i1 %brmerge191.not, ptr @.str.362, ptr %.str.359.mux.mux
  %i.al = and i64 %i.a, 1425408
  %brmerge195.not = icmp eq i64 %i.al, 0
  %.str.359.mux.mux.mux.mux = select i1 %brmerge193.not, ptr @.str.363, ptr %.str.359.mux.mux.mux
  %i.am = and i64 %i.a, 1429504
  %brmerge197.not = icmp eq i64 %i.am, 0
  %.str.359.mux.mux.mux.mux.mux = select i1 %brmerge195.not, ptr @.str.364, ptr %.str.359.mux.mux.mux.mux
  %i.an = and i64 %i.a, 9818112
  %brmerge198.not = icmp eq i64 %i.an, 0
  %.str.359.mux.mux.mux.mux.mux.mux = select i1 %brmerge197.not, ptr @.str.365, ptr %.str.359.mux.mux.mux.mux.mux
  br i1 %brmerge198.not, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %bb.u
  %.str.367..str.143 = select i1 %.not255, ptr @.str.143, ptr @.str.367
  %spec.select199 = select i1 %.not148.not, ptr %.str.367..str.143, ptr @.str.366
  br label %bb.ai

bb.w:                                             ; preds = %bb.r
  br i1 %.not255, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = and i64 %i.a, 1081344
  %brmerge202.not = icmp eq i64 %i.ao, 0
  %.str.368.mux = select i1 %.not145.not, ptr @.str.369, ptr @.str.368
  %i.ap = and i64 %i.a, 1146880
  %brmerge204.not = icmp eq i64 %i.ap, 0
  %.str.368.mux.mux = select i1 %brmerge202.not, ptr @.str.370, ptr %.str.368.mux
  %i.aq = and i64 %i.a, 1163264
  %brmerge206.not = icmp eq i64 %i.aq, 0
  %.str.368.mux.mux.mux = select i1 %brmerge204.not, ptr @.str.371, ptr %.str.368.mux.mux
  %i.ar = and i64 %i.a, 1425408
  %brmerge208.not = icmp eq i64 %i.ar, 0
  %.str.368.mux.mux.mux.mux = select i1 %brmerge206.not, ptr @.str.372, ptr %.str.368.mux.mux.mux
  %i.as = and i64 %i.a, 1429504
  %brmerge210.not = icmp eq i64 %i.as, 0
  %.str.368.mux.mux.mux.mux.mux = select i1 %brmerge208.not, ptr @.str.373, ptr %.str.368.mux.mux.mux.mux
  br i1 %brmerge210.not, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %.str.376..str.375 = select i1 %.not148.not, ptr @.str.376, ptr @.str.375
  %spec.select211 = select i1 %.not153.not, ptr %.str.376..str.375, ptr @.str.374
  br label %bb.ai

bb.z:                                             ; preds = %bb.w
  switch i32 %i.n, label %bb.ag [
    i32 2, label %bb.aa
    i32 5, label %bb.ac
    i32 6, label %bb.ae
  ]

bb.aa:                                            ; preds = %bb.z
  %i.at = and i64 %i.a, 1081344
  %brmerge214.not = icmp eq i64 %i.at, 0
  %.str.299.mux = select i1 %.not145.not, ptr @.str.300, ptr @.str.299
  %i.au = and i64 %i.a, 1146880
  %brmerge216.not = icmp eq i64 %i.au, 0
  %.str.299.mux.mux = select i1 %brmerge214.not, ptr @.str.301, ptr %.str.299.mux
  %i.av = and i64 %i.a, 1163264
  %brmerge218.not = icmp eq i64 %i.av, 0
  %.str.299.mux.mux.mux = select i1 %brmerge216.not, ptr @.str.302, ptr %.str.299.mux.mux
  %i.aw = and i64 %i.a, 1425408
  %brmerge220.not = icmp eq i64 %i.aw, 0
  %.str.299.mux.mux.mux.mux = select i1 %brmerge218.not, ptr @.str.303, ptr %.str.299.mux.mux.mux
  %i.ax = and i64 %i.a, 1429504
  %brmerge222.not = icmp eq i64 %i.ax, 0
  %.str.299.mux.mux.mux.mux.mux = select i1 %brmerge220.not, ptr @.str.304, ptr %.str.299.mux.mux.mux.mux
  %i.ay = and i64 %i.a, 9818112
  %brmerge224.not = icmp eq i64 %i.ay, 0
  %.str.299.mux.mux.mux.mux.mux.mux = select i1 %brmerge222.not, ptr @.str.305, ptr %.str.299.mux.mux.mux.mux.mux
  %i.az = and i64 %i.a, 9820160
  %brmerge225.not = icmp eq i64 %i.az, 0
  %.str.299.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge224.not, ptr @.str.306, ptr %.str.299.mux.mux.mux.mux.mux.mux
  %i.ba = and i64 %i.a, 9820192
  %brmerge226.not = icmp eq i64 %i.ba, 0
  %.str.299.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge225.not, ptr @.str.377, ptr %.str.299.mux.mux.mux.mux.mux.mux.mux
  br i1 %brmerge226.not, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %.str.142..str.379 = select i1 %.not149, ptr @.str.142, ptr @.str.379
  %spec.select227 = select i1 %.not, ptr %.str.142..str.379, ptr @.str.378
  br label %bb.ai

bb.ac:                                            ; preds = %bb.z
  %i.bb = and i64 %i.a, 1081344
  %brmerge230.not = icmp eq i64 %i.bb, 0
  %.str.380.mux = select i1 %.not145.not, ptr @.str.381, ptr @.str.380
  %i.bc = and i64 %i.a, 1146880
  %brmerge232.not = icmp eq i64 %i.bc, 0
  %.str.380.mux.mux = select i1 %brmerge230.not, ptr @.str.382, ptr %.str.380.mux
  %i.bd = and i64 %i.a, 1163264
  %brmerge234.not = icmp eq i64 %i.bd, 0
  %.str.380.mux.mux.mux = select i1 %brmerge232.not, ptr @.str.383, ptr %.str.380.mux.mux
  %i.be = and i64 %i.a, 1425408
  %brmerge236.not = icmp eq i64 %i.be, 0
  %.str.380.mux.mux.mux.mux = select i1 %brmerge234.not, ptr @.str.384, ptr %.str.380.mux.mux.mux
  %i.bf = and i64 %i.a, 1429504
  %brmerge238.not = icmp eq i64 %i.bf, 0
  %.str.380.mux.mux.mux.mux.mux = select i1 %brmerge236.not, ptr @.str.385, ptr %.str.380.mux.mux.mux.mux
  %i.bg = and i64 %i.a, 9818112
  %brmerge240.not = icmp eq i64 %i.bg, 0
  %.str.380.mux.mux.mux.mux.mux.mux = select i1 %brmerge238.not, ptr @.str.386, ptr %.str.380.mux.mux.mux.mux.mux
  br i1 %brmerge240.not, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %.str.389..str.388 = select i1 %.not149, ptr @.str.389, ptr @.str.388
  %spec.select241 = select i1 %.not148.not, ptr %.str.389..str.388, ptr @.str.387
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  %i.bh = and i64 %i.a, 1081344
  %brmerge244.not = icmp eq i64 %i.bh, 0
  %.str.390.mux = select i1 %.not145.not, ptr @.str.391, ptr @.str.390
  %i.bi = and i64 %i.a, 1146880
  %brmerge246.not = icmp eq i64 %i.bi, 0
  %.str.390.mux.mux = select i1 %brmerge244.not, ptr @.str.392, ptr %.str.390.mux
  %i.bj = and i64 %i.a, 1163264
  %brmerge248.not = icmp eq i64 %i.bj, 0
  %.str.390.mux.mux.mux = select i1 %brmerge246.not, ptr @.str.393, ptr %.str.390.mux.mux
  %i.bk = and i64 %i.a, 1425408
  %brmerge250.not = icmp eq i64 %i.bk, 0
  %.str.390.mux.mux.mux.mux = select i1 %brmerge248.not, ptr @.str.394, ptr %.str.390.mux.mux.mux
  %i.bl = and i64 %i.a, 1429504
  %brmerge252.not = icmp eq i64 %i.bl, 0
  %.str.390.mux.mux.mux.mux.mux = select i1 %brmerge250.not, ptr @.str.395, ptr %.str.390.mux.mux.mux.mux
  br i1 %brmerge252.not, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.str.398..str.397 = select i1 %.not148.not, ptr @.str.398, ptr @.str.397
  %spec.select253 = select i1 %.not153.not, ptr %.str.398..str.397, ptr @.str.396
  br label %bb.ai

bb.ag:                                            ; preds = %bb.z
  br i1 %.not147, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bm = icmp eq i32 %i.n, 0
  %.str.401..str.400 = select i1 %.not148.not, ptr @.str.401, ptr @.str.400
  %spec.select254 = select i1 %i.bm, ptr %.str.401..str.400, ptr @.str.90
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.y, %bb.v, %bb.t, %bb.m, %bb.k, %bb.g, %bb.ae, %bb.ac, %bb.aa, %bb.x, %bb.u, %bb.s, %bb.l, %bb.j, %bb.ag, %bb.q, %bb.p, %bb.d, %bb.a
  %.0 = phi ptr [ %.str.170..str.234, %bb.d ], [ %.str.272.mux.mux.mux.mux.mux, %bb.s ], [ %.str.333.mux.mux.mux.mux.mux, %bb.j ], [ @.str.233, %bb.a ], [ %.str.390.mux.mux.mux.mux.mux, %bb.ae ], [ %.str.359.mux.mux.mux.mux.mux.mux, %bb.u ], [ %spec.select254, %bb.ah ], [ %.str.380.mux.mux.mux.mux.mux.mux, %bb.ac ], [ %spec.select186, %bb.t ], [ %spec.select, %bb.g ], [ %spec.select253, %bb.af ], [ %.str.342.mux.mux.mux.mux.mux, %bb.l ], [ %spec.select162, %bb.k ], [ %spec.select227, %bb.ab ], [ @.str.399, %bb.ag ], [ %.str.299.mux.mux.mux.mux.mux.mux.mux.mux, %bb.aa ], [ %spec.select241, %bb.ad ], [ %spec.select211, %bb.y ], [ %spec.select174, %bb.m ], [ %.str.352..str.351, %bb.p ], [ %spec.select199, %bb.v ], [ %.str.259..str.258, %bb.q ], [ %.str.368.mux.mux.mux.mux.mux, %bb.x ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @node_state_string_complete(i32 noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.d = and i32 %0, 15
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 7
  br i1 %exitcond.not.i, label %node_state_base_string.exit, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr @node_states, i64 %indvars.iv.i ; 2 uses
  %i.f = load i32, ptr %i.e, align 16
  %i.g = icmp eq i32 %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %node_state_base_string.exit

node_state_base_string.exit:                      ; preds = %bb.b, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ @.str.12, %bb.b ]
  %i.k = tail call ptr @xstrdup(ptr noundef %i.j) #23 ; 3 uses
  store ptr %i.k, ptr %i.b, align 8
  %i.l = and i32 %0, -16                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8
  %.not.i13.i = icmp eq i32 %i.l, 0
  br i1 %.not.i13.i, label %node_state_flag_string.exit.thread, label %.preheader.i.preheader.i

node_state_flag_string.exit.thread:               ; preds = %node_state_base_string.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.h

.preheader.i.preheader.i:                         ; preds = %node_state_base_string.exit, %bb.f
  %.014.i = phi i32 [ %.18.i, %bb.f ], [ %i.l, %node_state_base_string.exit ] ; 3 uses
  br label %.preheader.i.i

bb.e:                                             ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 21
  br i1 %exitcond.i.i, label %node_state_flag_string_single.exit.thread4.i, label %.preheader.i.i, !llvm.loop !1

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.preheader.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.e ], [ 0, %.preheader.i.preheader.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @node_state_flags, i64 %indvars.iv.i.i ; 2 uses
  %i.n = load i32, ptr %i.m, align 16             ; 2 uses
  %i.o = and i32 %i.n, %.014.i
  %.not17.i.i = icmp eq i32 %i.o, 0
  br i1 %.not17.i.i, label %bb.e, label %node_state_flag_string_single.exit.i

node_state_flag_string_single.exit.thread4.i:     ; preds = %bb.e
  %i.p = add i32 %.014.i, -1
  br label %bb.f

node_state_flag_string_single.exit.i:             ; preds = %.preheader.i.i
  %i.q = xor i32 %i.n, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %node_state_flag_string_single.exit.i, %node_state_flag_string_single.exit.thread4.i
  %.1.i9.i = phi ptr [ @.str.90, %node_state_flag_string_single.exit.thread4.i ], [ %i.s, %node_state_flag_string_single.exit.i ]
  %.pn.i = phi i32 [ %i.p, %node_state_flag_string_single.exit.thread4.i ], [ %i.q, %node_state_flag_string_single.exit.i ]
  %.18.i = and i32 %.pn.i, %.014.i                ; 2 uses
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.232, ptr noundef nonnull %.1.i9.i) #23
  %.not.i.i = icmp eq i32 %.18.i, 0
  br i1 %.not.i.i, label %node_state_flag_string.exit, label %.preheader.i.preheader.i, !llvm.loop !2

node_state_flag_string.exit:                      ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.a, align 8           ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  store ptr %.pre.i, ptr %i.c, align 8
  %.not = icmp eq ptr %.pre.i, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %node_state_flag_string.exit
  call void @_xstrcat(ptr noundef nonnull %i.b, ptr noundef nonnull %.pre.i) #23
  call void @slurm_xfree(ptr noundef nonnull %i.c) #23
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %node_state_flag_string.exit.thread, %bb.g, %node_state_flag_string.exit
  %i.t = phi ptr [ %i.k, %node_state_flag_string.exit.thread ], [ %.pre, %bb.g ], [ %i.k, %node_state_flag_string.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret ptr %i.t
}

; Function Attrs: nounwind uwtable
define dso_local void @private_data_string(i16 noundef zeroext %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  %i.b = icmp samesign ult i32 %2, 69
  br i1 %i.b, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %i.c = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.402) #23 ; 0 uses
  br label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.d = zext i16 %0 to i64                       ; 15 uses
  %i.e = and i64 %i.d, 32
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread97, label %bb.d

bb.d:                                             ; preds = %bb.c
  %strlen37 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr38 = getelementptr inbounds i8, ptr %1, i64 %strlen37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %endptr38, ptr noundef nonnull align 1 dereferenceable(9) @.str.403, i64 9, i1 false)
  %.pre83.pre84.pre86.pre88.pre90.pre92.pre94.pre = load i8, ptr %1, align 1 ; 2 uses
  %i.f = and i64 %i.d, 256
  %.not39 = icmp eq i64 %i.f, 0
  br i1 %.not39, label %bb.g, label %bb.e

.thread97:                                        ; preds = %bb.c
  %i.g = and i64 %i.d, 256
  %.not3999 = icmp eq i64 %i.g, 0
  br i1 %.not3999, label %.thread104, label %.thread101

bb.e:                                             ; preds = %bb.d
  %.not40 = icmp eq i8 %.pre83.pre84.pre86.pre88.pre90.pre92.pre94.pre, 0
  br i1 %.not40, label %.thread101, label %bb.f

bb.f:                                             ; preds = %bb.e
  %strlen41 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr42 = getelementptr inbounds i8, ptr %1, i64 %strlen41
  store i16 44, ptr %endptr42, align 1
  br label %.thread101

.thread101:                                       ; preds = %.thread97, %bb.f, %bb.e
  %strlen43 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr44 = getelementptr inbounds i8, ptr %1, i64 %strlen43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %endptr44, ptr noundef nonnull align 1 dereferenceable(7) @.str.404, i64 7, i1 false)
  %.pre83.pre84.pre86.pre88.pre90.pre92.pre = load i8, ptr %1, align 1
  br label %bb.g

bb.g:                                             ; preds = %.thread101, %bb.d
  %.pre83.pre84.pre86.pre88.pre90.pre92 = phi i8 [ %.pre83.pre84.pre86.pre88.pre90.pre92.pre, %.thread101 ], [ %.pre83.pre84.pre86.pre88.pre90.pre92.pre94.pre, %bb.d ] ; 2 uses
  %i.h = and i64 %i.d, 1
  %.not45 = icmp eq i64 %i.h, 0
  br i1 %.not45, label %bb.j, label %bb.h

.thread104:                                       ; preds = %.thread97
  %i.i = and i64 %i.d, 1
  %.not45106 = icmp eq i64 %i.i, 0
  br i1 %.not45106, label %.thread111, label %.thread108

bb.h:                                             ; preds = %bb.g
  %.not46 = icmp eq i8 %.pre83.pre84.pre86.pre88.pre90.pre92, 0
  br i1 %.not46, label %.thread108, label %bb.i

bb.i:                                             ; preds = %bb.h
  %strlen47 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr48 = getelementptr inbounds i8, ptr %1, i64 %strlen47
  store i16 44, ptr %endptr48, align 1
  br label %.thread108

.thread108:                                       ; preds = %.thread104, %bb.i, %bb.h
  %strlen49 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr50 = getelementptr inbounds i8, ptr %1, i64 %strlen49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr50, ptr noundef nonnull align 1 dereferenceable(5) @.str.405, i64 5, i1 false)
  %.pre83.pre84.pre86.pre88.pre90.pre = load i8, ptr %1, align 1
  br label %bb.j

bb.j:                                             ; preds = %.thread108, %bb.g
  %.pre83.pre84.pre86.pre88.pre90 = phi i8 [ %.pre83.pre84.pre86.pre88.pre90.pre, %.thread108 ], [ %.pre83.pre84.pre86.pre88.pre90.pre92, %bb.g ] ; 2 uses
  %i.j = and i64 %i.d, 2
  %.not51 = icmp eq i64 %i.j, 0
  br i1 %.not51, label %bb.m, label %bb.k

.thread111:                                       ; preds = %.thread104
  %i.k = and i64 %i.d, 2
  %.not51113 = icmp eq i64 %i.k, 0
  br i1 %.not51113, label %.thread118, label %.thread115

bb.k:                                             ; preds = %bb.j
  %.not52 = icmp eq i8 %.pre83.pre84.pre86.pre88.pre90, 0
  br i1 %.not52, label %.thread115, label %bb.l

bb.l:                                             ; preds = %bb.k
  %strlen53 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr54 = getelementptr inbounds i8, ptr %1, i64 %strlen53
  store i16 44, ptr %endptr54, align 1
  br label %.thread115

.thread115:                                       ; preds = %.thread111, %bb.l, %bb.k
  %strlen55 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr56 = getelementptr inbounds i8, ptr %1, i64 %strlen55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr56, ptr noundef nonnull align 1 dereferenceable(6) @.str.406, i64 6, i1 false)
  %.pre83.pre84.pre86.pre88.pre = load i8, ptr %1, align 1
  br label %bb.m

bb.m:                                             ; preds = %.thread115, %bb.j
  %.pre83.pre84.pre86.pre88 = phi i8 [ %.pre83.pre84.pre86.pre88.pre, %.thread115 ], [ %.pre83.pre84.pre86.pre88.pre90, %bb.j ] ; 2 uses
  %i.l = and i64 %i.d, 4
  %.not57 = icmp eq i64 %i.l, 0
  br i1 %.not57, label %bb.p, label %bb.n

.thread118:                                       ; preds = %.thread111
  %i.m = and i64 %i.d, 4
  %.not57120 = icmp eq i64 %i.m, 0
  br i1 %.not57120, label %.thread125, label %.thread122

bb.n:                                             ; preds = %bb.m
  %.not58 = icmp eq i8 %.pre83.pre84.pre86.pre88, 0
  br i1 %.not58, label %.thread122, label %bb.o

bb.o:                                             ; preds = %bb.n
  %strlen59 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr60 = getelementptr inbounds i8, ptr %1, i64 %strlen59
  store i16 44, ptr %endptr60, align 1
  br label %.thread122

.thread122:                                       ; preds = %.thread118, %bb.o, %bb.n
  %strlen61 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr62 = getelementptr inbounds i8, ptr %1, i64 %strlen61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %endptr62, ptr noundef nonnull align 1 dereferenceable(11) @.str.407, i64 11, i1 false)
  %.pre83.pre84.pre86.pre = load i8, ptr %1, align 1
  br label %bb.p

bb.p:                                             ; preds = %.thread122, %bb.m
  %.pre83.pre84.pre86 = phi i8 [ %.pre83.pre84.pre86.pre, %.thread122 ], [ %.pre83.pre84.pre86.pre88, %bb.m ] ; 2 uses
  %i.n = and i64 %i.d, 64
  %.not63 = icmp eq i64 %i.n, 0
  br i1 %.not63, label %bb.s, label %bb.q

.thread125:                                       ; preds = %.thread118
  %i.o = and i64 %i.d, 64
  %.not63127 = icmp eq i64 %i.o, 0
  br i1 %.not63127, label %.thread132, label %.thread129

bb.q:                                             ; preds = %bb.p
  %.not64 = icmp eq i8 %.pre83.pre84.pre86, 0
  br i1 %.not64, label %.thread129, label %bb.r

bb.r:                                             ; preds = %bb.q
  %strlen65 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr66 = getelementptr inbounds i8, ptr %1, i64 %strlen65
  store i16 44, ptr %endptr66, align 1
  br label %.thread129

.thread129:                                       ; preds = %.thread125, %bb.r, %bb.q
  %strlen67 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr68 = getelementptr inbounds i8, ptr %1, i64 %strlen67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %endptr68, ptr noundef nonnull align 1 dereferenceable(13) @.str.408, i64 13, i1 false)
  %.pre83.pre84.pre = load i8, ptr %1, align 1
  br label %bb.s

bb.s:                                             ; preds = %.thread129, %bb.p
  %.pre83.pre84 = phi i8 [ %.pre83.pre84.pre, %.thread129 ], [ %.pre83.pre84.pre86, %bb.p ] ; 2 uses
  %i.p = and i64 %i.d, 8
  %.not69 = icmp eq i64 %i.p, 0
  br i1 %.not69, label %bb.v, label %bb.t

.thread132:                                       ; preds = %.thread125
  %i.q = and i64 %i.d, 8
  %.not69134 = icmp eq i64 %i.q, 0
  br i1 %.not69134, label %.thread139, label %.thread136

bb.t:                                             ; preds = %bb.s
  %.not70 = icmp eq i8 %.pre83.pre84, 0
  br i1 %.not70, label %.thread136, label %bb.u
end_hunk_1
