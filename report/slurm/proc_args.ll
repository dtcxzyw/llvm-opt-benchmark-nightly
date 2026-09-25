Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/proc_args?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@sig_name2num:bb.a
.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.b
  %.2 = phi i32 [ %spec.select, %bb.b ], [ %i.ac, %bb.h ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @signal_opts_to_cmdline(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = zext i16 %2 to i64                       ; 3 uses
  %i.d = and i64 %i.c, 256
  %.not.not = icmp eq i64 %i.d, 0
  br i1 %.not.not, label %bb.b, label %.thread14

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 1
  %.not7 = icmp eq i64 %i.e, 0
  br i1 %.not7, label %bb.c, label %.thread

.thread14:                                        ; preds = %bb.a
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.83) #18
  %i.f = and i64 %i.c, 1
  %.not715 = icmp eq i64 %i.f, 0
  br i1 %.not715, label %.thread16, label %.thread

.thread:                                          ; preds = %.thread14, %bb.b
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.84) #18
  br label %.thread16

.thread16:                                        ; preds = %.thread14, %.thread
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.85) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread16
  %i.g = zext i16 %0 to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, 18
  br i1 %.not.i, label %bb.g, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @signals_mapping, i64 %indvars.iv.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i16, ptr %i.i, align 8
  %i.k = icmp eq i16 %0, %i.j
  br i1 %i.k, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.h, align 16
  %i.m = call ptr @xstrdup(ptr noundef %i.l) #18
  br label %sig_num2name.exit

bb.g:                                             ; preds = %bb.d
  %i.n = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.88, i32 noundef %i.g) #18
  br label %sig_num2name.exit

sig_num2name.exit:                                ; preds = %bb.f, %bb.g
  %.1.i = phi ptr [ %i.n, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  store ptr %.1.i, ptr %i.b, align 8
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef %.1.i) #18
  call void @slurm_xfree(ptr noundef nonnull %i.b) #18
  %.not8 = icmp eq i16 %1, 60
  br i1 %.not8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %sig_num2name.exit
  %i.o = zext i16 %1 to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.86, i32 noundef %i.o) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %sig_num2name.exit
  %i.p = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %i.p
}

declare void @_xstrcat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @sig_num2name(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 18
  br i1 %.not, label %bb.e, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr @signals_mapping, i64 %indvars.iv ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i16, ptr %i.b, align 8
  %i.d = zext i16 %i.c to i32
  %i.e = icmp eq i32 %0, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 16
  %i.g = tail call ptr @xstrdup(ptr noundef %i.f) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.h = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.88, i32 noundef %0) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi ptr [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @parse_uint16(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call i64 @__isoc23_strtoll(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #18 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp ne i8 %i.d, 0
  %i.f = icmp ugt i64 %i.b, 65533
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc nuw i64 %i.b to i16
  store i16 %i.g, ptr %1, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @parse_uint32(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call i64 @__isoc23_strtoll(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #18 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp ne i8 %i.d, 0
  %i.f = icmp ugt i64 %i.b, 4294967293
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc nuw i64 %i.b to i32
  store i32 %i.g, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @parse_uint64(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call i64 @__isoc23_strtoll(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #18 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp ne i8 %i.d, 0
  %i.f = icmp ugt i64 %i.b, 9223372036854775806
  %or.cond5 = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2147483647) i32 @parse_int(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i64 @__isoc23_strtol(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 10) #18 ; 4 uses
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %.pr, null
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %.pr, align 1
  %i.e = icmp ne i8 %i.d, 0
  %.v = zext i1 %2 to i64
  %3 = icmp slt i64 %i.b, %.v
  %or.cond18 = select i1 %i.e, i1 true, i1 %3
  br i1 %or.cond18, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.f = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.44, ptr noundef %1, ptr noundef %0) #18 ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i64 %i.b, 2147483646
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.45, i64 noundef %i.b, ptr noundef %0) #18 ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = trunc nuw nsw i64 %i.b to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local void @print_db_notok(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @__errno_location() #20
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = select i1 %1, ptr @.str.91, ptr @.str.92
  %i.d = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.90, ptr noundef nonnull %i.c) #18 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @xstrcasecmp(ptr noundef nonnull @.str.93, ptr noundef %0) #18
  %.not3 = icmp eq i32 %i.e, 0
  br i1 %.not3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.94) #18 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = select i1 %1, ptr @.str.96, ptr @.str.97
  %i.h = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.95, ptr noundef %0, ptr noundef nonnull %i.g) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @parse_resv_flags(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @xstrdup(ptr noundef %0) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.b, ptr %i.a, align 8
  %.not245 = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128
  br label %bb.b

bb.b:                                             ; preds = %bb.ax, %bb.a
  %.0226 = phi i32 [ 0, %bb.a ], [ %.1227, %bb.ax ]
  %.0224 = phi i64 [ 0, %bb.a ], [ %i.ch, %bb.ax ] ; 4 uses
  %.0222 = phi ptr [ %i.b, %bb.a ], [ %spec.select, %bb.ax ] ; 4 uses
  %i.d = load i8, ptr %.0222, align 1
  switch i8 %i.d, label %bb.e [
    i8 0, label %bb.ay
    i8 43, label %bb.c
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.0222, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0222, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.1227 = phi i32 [ 1, %bb.c ], [ 2, %bb.d ], [ %.0226, %bb.b ] ; 17 uses
  %.1223 = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %.0222, %bb.b ] ; 28 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.e ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.1223, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %bb.g [
    i8 44, label %.critedge
    i8 0, label %.critedge
    i8 61, label %.critedge
  ]

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next258 = add nuw i64 %indvars.iv257, 1
  br label %bb.f, !llvm.loop !24

.critedge:                                        ; preds = %bb.f, %bb.f, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.1223, i64 %indvars.iv ; 20 uses
  %i.j = trunc nuw nsw i64 %indvars.iv to i32     ; 4 uses
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.j, i32 3)
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.98, i64 noundef %i.l) #18
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.o = icmp eq i32 %.1227, 2
  %. = select i1 %i.o, i64 2, i64 1
  br label %bb.ax

bb.i:                                             ; preds = %.critedge
  %i.p = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1)
  %i.q = zext nneg i32 %i.p to i64                ; 16 uses
  %i.r = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.99, i64 noundef %i.q) #18
  %i.s = icmp eq i32 %i.r, 0
  %i.t = icmp ne i32 %.1227, 2                    ; 4 uses
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.ax, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.100, i64 noundef %i.q) #18
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = icmp eq i32 %.1227, 2
  %.271 = select i1 %i.w, i64 67108864, i64 33554432
  br label %bb.ax

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.101, i64 noundef %i.q) #18
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = icmp eq i32 %.1227, 2
  %.272 = select i1 %i.z, i64 128, i64 64
  br label %bb.ax

bb.n:                                             ; preds = %bb.l
  %i.aa = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.102, i64 noundef %i.q) #18
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = icmp eq i32 %.1227, 2
  %.273 = select i1 %i.ac, i64 68719476736, i64 34359738368
  br label %bb.ax

bb.p:                                             ; preds = %bb.n
  %i.ad = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.103, i64 noundef %i.q) #18
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.af = icmp eq i32 %.1227, 2
  %.274 = select i1 %i.af, i64 8, i64 4
  br label %bb.ax

bb.r:                                             ; preds = %bb.p
  %i.ag = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.104, i64 noundef %i.q) #18
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ai = icmp eq i32 %.1227, 2
  %.275 = select i1 %i.ai, i64 4194304, i64 2097152
  br label %bb.ax

bb.t:                                             ; preds = %bb.r
  %i.aj = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.105, i64 noundef %i.q) #18
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.al = icmp eq i32 %.1227, 2
  %.276 = select i1 %i.al, i64 16777216, i64 8388608
  br label %bb.ax

bb.v:                                             ; preds = %bb.t
  %i.am = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.106, i64 noundef %i.q) #18
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ao = icmp eq i32 %.1227, 2
  %.277 = select i1 %i.ao, i64 32, i64 16
  br label %bb.ax

bb.x:                                             ; preds = %bb.v
  %i.ap = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.107, i64 noundef %i.q) #18
  %.not238 = icmp eq i32 %i.ap, 0
end_hunk_0
