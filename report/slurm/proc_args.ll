Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/proc_args?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@sig_num2name:bb.a
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
  %i.f = icmp slt i64 %i.b, %.v
  %or.cond18 = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond18, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.g = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.44, ptr noundef %1, ptr noundef %0) #18 ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %i.b, 2147483646
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.45, i64 noundef %i.b, ptr noundef %0) #18 ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = trunc nuw nsw i64 %i.b to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.j
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
  %.not245.not = icmp eq ptr %2, null             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128
  br label %bb.b

bb.b:                                             ; preds = %bb.ax, %bb.a
  %.0226 = phi i32 [ 0, %bb.a ], [ %.1227, %bb.ax ]
  %.0224 = phi i64 [ 0, %bb.a ], [ %i.bt, %bb.ax ] ; 3 uses
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
  %.1227 = phi i32 [ 1, %bb.c ], [ 2, %bb.d ], [ %.0226, %bb.b ] ; 4 uses
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
  %i.t = icmp ne i32 %.1227, 2                    ; 17 uses
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.ax, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.100, i64 noundef %i.q) #18
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.282.a = select i1 %i.t, i64 33554432, i64 67108864
  br label %bb.ax

bb.l:                                             ; preds = %bb.j
  %i.w = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.101, i64 noundef %i.q) #18
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.283.a = select i1 %i.t, i64 64, i64 128
  br label %bb.ax

bb.n:                                             ; preds = %bb.l
  %i.y = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.102, i64 noundef %i.q) #18
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.284.a = select i1 %i.t, i64 34359738368, i64 68719476736
  br label %bb.ax

bb.p:                                             ; preds = %bb.n
  %i.aa = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.103, i64 noundef %i.q) #18
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.285.a = select i1 %i.t, i64 4, i64 8
  br label %bb.ax

bb.r:                                             ; preds = %bb.p
  %i.ac = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.104, i64 noundef %i.q) #18
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.286.a = select i1 %i.t, i64 2097152, i64 4194304
  br label %bb.ax

bb.t:                                             ; preds = %bb.r
  %i.ae = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.105, i64 noundef %i.q) #18
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.287.a = select i1 %i.t, i64 8388608, i64 16777216
  br label %bb.ax

bb.v:                                             ; preds = %bb.t
  %i.ag = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.106, i64 noundef %i.q) #18
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.288.a = select i1 %i.t, i64 16, i64 32
  br label %bb.ax

bb.x:                                             ; preds = %bb.v
  %i.ai = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.107, i64 noundef %i.q) #18
  %.not238 = icmp eq i32 %i.ai, 0
  br i1 %.not238, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aj = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.108, i64 noundef %i.q) #18
  %.not239 = icmp eq i32 %i.aj, 0
  br i1 %.not239, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %.289.a = select i1 %i.t, i64 256, i64 512
  br label %bb.ax

bb.aa:                                            ; preds = %bb.y
  %i.ak = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.109, i64 noundef %i.q) #18
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.290.a = select i1 %i.t, i64 1024, i64 2048
  br label %bb.ax

bb.ac:                                            ; preds = %bb.aa
  %i.am = tail call i32 @llvm.umax.i32(i32 %i.j, i32 2)
  %i.an = zext nneg i32 %i.am to i64              ; 3 uses
  %i.ao = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.110, i64 noundef %i.an) #18
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.291.a = select i1 %i.t, i64 4096, i64 8192
  br label %bb.ax

bb.ae:                                            ; preds = %bb.ac
  %i.aq = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.111, i64 noundef %i.l) #18
  %.not240 = icmp eq i32 %i.aq, 0
  br i1 %.not240, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ar = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.112, i64 noundef %i.an) #18
  %.not241 = icmp eq i32 %i.ar, 0
  br i1 %.not241, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.292.a = select i1 %i.t, i64 4294967296, i64 8589934592
  br label %bb.ax

bb.ah:                                            ; preds = %bb.af
  %i.as = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.113, i64 noundef %i.an) #18
  %.not242 = icmp eq i32 %i.as, 0
  br i1 %.not242, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.at = load i8, ptr %i.i, align 1
  %i.au = icmp eq i8 %i.at, 61
  br i1 %i.au, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.av = add nuw i64 %indvars.iv, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %bb.al ], [ %indvars.iv257, %bb.aj ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1223, i64 %indvars.iv259
  %i.ax = load i8, ptr %i.aw, align 1
  switch i8 %i.ax, label %bb.al [
    i8 44, label %bb.am
    i8 0, label %.loopexit
  ]

bb.al:                                            ; preds = %bb.ak
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1
  br label %bb.ak, !llvm.loop !25

bb.am:                                            ; preds = %bb.ak
  %i.ay = getelementptr inbounds nuw i8, ptr %.1223, i64 %indvars.iv259
  store i8 0, ptr %i.ay, align 1
  %i.az = add i64 %indvars.iv259, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ak, %bb.am
  %.1 = phi i64 [ %i.az, %bb.am ], [ %indvars.iv259, %bb.ak ] ; 2 uses
  br i1 %.not245.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.loopexit
  %3 = and i64 %i.av, 4294967295
  %i.ba = getelementptr inbounds nuw i8, ptr %.1223, i64 %3
  %i.bb = tail call i32 @time_str2secs(ptr noundef nonnull %i.ba) #18
  store i32 %i.bb, ptr %i.c, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %bb.an, %bb.ai
  %.1221 = phi i64 [ %indvars.iv, %bb.ai ], [ %.1, %bb.an ], [ %.1, %.loopexit ]
  %sext = shl i64 %.1221, 32
  %i.bc = ashr exact i64 %sext, 32
  %i.bd = getelementptr inbounds i8, ptr %.1223, i64 %i.bc
  %.293 = select i1 %i.t, i64 1048576, i64 2147483648
  br label %bb.ax

bb.ap:                                            ; preds = %bb.ah
  %i.be = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.114, i64 noundef %i.q) #18
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = icmp eq i32 %.1227, 0                   ; 2 uses
  %or.cond5 = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond5, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bh = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.115, i64 noundef %i.q) #18
  %i.bi = icmp eq i32 %i.bh, 0
  %or.cond7 = select i1 %i.bi, i1 %i.t, i1 false
  br i1 %or.cond7, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bj = tail call i32 @llvm.umax.i32(i32 %i.j, i32 8)
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.116, i64 noundef %i.bk) #18
  %i.bm = icmp eq i32 %i.bl, 0
  %or.cond9 = select i1 %i.bm, i1 %i.t, i1 false
  br i1 %or.cond9, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bn = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.117, i64 noundef %i.q) #18
  %i.bo = icmp eq i32 %i.bn, 0
  %or.cond11 = select i1 %i.bo, i1 %i.t, i1 false
  br i1 %or.cond11, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bp = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.118, i64 noundef %i.q) #18
  %.not246 = icmp eq i32 %i.bp, 0
  br i1 %.not246, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.294 = select i1 %i.t, i64 549755813888, i64 1099511627776
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.bq = tail call i32 @xstrncasecmp(ptr noundef nonnull %.1223, ptr noundef nonnull @.str.119, i64 noundef %i.q) #18
  %i.br = icmp eq i32 %i.bq, 0
  %or.cond13 = select i1 %i.br, i1 %i.bg, i1 false
  br i1 %or.cond13, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bs = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.120, ptr noundef %0, ptr noundef %1) #18 ; 0 uses
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.ag, %bb.ad, %bb.ab, %bb.z, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.h
  %.sink = phi i64 [ %., %bb.h ], [ 16384, %bb.i ], [ %.283.a, %bb.m ], [ %.282.a, %bb.k ], [ %.285.a, %bb.q ], [ %.284.a, %bb.o ], [ %.287.a, %bb.u ], [ %.286.a, %bb.s ], [ %.289.a, %bb.z ], [ %.288.a, %bb.w ], [ %.291.a, %bb.ad ], [ %.290.a, %bb.ab ], [ %.293, %bb.ao ], [ 131072, %bb.ap ], [ 1073741824, %bb.ar ], [ %.294, %bb.au ], [ 536870912, %bb.as ], [ %.292.a, %bb.ag ], [ 262144, %bb.aq ], [ 4398046511104, %bb.av ]
  %.2 = phi ptr [ %i.i, %bb.h ], [ %i.i, %bb.i ], [ %i.i, %bb.m ], [ %i.i, %bb.k ], [ %i.i, %bb.q ], [ %i.i, %bb.o ], [ %i.i, %bb.u ], [ %i.i, %bb.s ], [ %i.i, %bb.z ], [ %i.i, %bb.w ], [ %i.i, %bb.ad ], [ %i.i, %bb.ab ], [ %i.bd, %bb.ao ], [ %i.i, %bb.ap ], [ %i.i, %bb.ar ], [ %i.i, %bb.au ], [ %i.i, %bb.as ], [ %i.i, %bb.ag ], [ %i.i, %bb.aq ], [ %i.i, %bb.av ] ; 2 uses
  %i.bt = or i64 %.0224, %.sink
  %i.bu = load i8, ptr %.2, align 1
  %i.bv = icmp eq i8 %i.bu, 44
  %spec.select.idx = zext i1 %i.bv to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.2, i64 %spec.select.idx
  br label %bb.b, !llvm.loop !26

bb.ay:                                            ; preds = %bb.b
  br i1 %.not245.not, label %bb.az, label %.sink.split

.sink.split:                                      ; preds = %bb.ay
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = icmp eq i64 %i.bx, -2
  %i.bz = select i1 %i.by, i64 0, i64 %i.bx
  %.0224.lcssa.sink = or i64 %.0224, %i.bz
  store i64 %.0224.lcssa.sink, ptr %i.bw, align 8
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.ay
  call void @slurm_xfree(ptr noundef nonnull %i.a) #18
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %.0228 = phi i64 [ -1, %bb.aw ], [ %.0224, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i64 %.0228
}

declare i32 @time_str2secs(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext range(i16 0, 3) i16 @parse_compress_type(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.121) #19
  %.not5 = icmp eq i32 %i.a, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.122) #19
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.123, ptr noundef nonnull %0) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i16 [ 0, %bb.d ], [ 2, %bb.b ], [ 2, %bb.a ], [ 0, %bb.c ]
  ret i16 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @parse_send_libs(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @xstrcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.124) #18
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @xstrcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.125) #18
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @xstrcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.126) #18
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @xstrcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.127) #18
  %.not9 = icmp ne i32 %i.d, 0
  %spec.select = sext i1 %.not9 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ], [ %spec.select, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @subpath(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not17 = icmp eq ptr %0, null
  br i1 %.not17, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @xstrdup(ptr noundef nonnull %0) #18 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = tail call ptr @xstrdup(ptr noundef nonnull %1) #18 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8
  %i.g = call ptr @strtok_r(ptr noundef %i.e, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.c) #18 ; 2 uses
  %i.h = call ptr @strtok_r(ptr noundef %i.f, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.d) #18 ; 3 uses
  %i.i = icmp ne ptr %i.g, null                   ; 2 uses
  %i.j = icmp ne ptr %i.h, null
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.021 = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %.01220 = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ]
  %i.l = call i32 @xstrcmp(ptr noundef nonnull %.01220, ptr noundef nonnull %.021) #18
  %.not18.not.not = icmp ne i32 %i.l, 0           ; 3 uses
  br i1 %.not18.not.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.m = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.c) #18 ; 2 uses
  %i.n = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.d) #18 ; 3 uses
  %i.o = icmp ne ptr %i.m, null                   ; 2 uses
  %i.p = icmp ne ptr %i.n, null
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !27

end_hunk_0
