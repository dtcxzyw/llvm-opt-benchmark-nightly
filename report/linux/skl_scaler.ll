Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/skl_scaler?download=true
inline.NumInlined: 156
inline.NumDeleted: 53
begin_hunk_0_@skl_scaler_max_hscale:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 2136
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_skl_scaler_max_scale.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__drm_to_display(ptr noundef nonnull %i.e) #11
  br label %_skl_scaler_max_scale.exit

_skl_scaler_max_scale.exit:                       ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.h = getelementptr i8, ptr %i.g, i64 684
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %0, i64 524
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.n, -1
  %i.p = add nsw i64 %i.o, %i.k
  %i.q = zext i32 %i.m to i64
  %i.r = udiv i64 %i.p, %i.q
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 196608)
  %i.t = trunc nuw nsw i64 %i.s to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_skl_scaler_max_scale.exit
  %.0 = phi i32 [ %i.t, %_skl_scaler_max_scale.exit ], [ 65536, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 589825) i32 @skl_scaler_max_scale(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 2136
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_skl_scaler_max_scale.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__drm_to_display(ptr noundef nonnull %i.e) #11
  br label %_skl_scaler_max_scale.exit

_skl_scaler_max_scale.exit:                       ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.h = getelementptr i8, ptr %i.g, i64 684
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %0, i64 524
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.n, -1
  %i.p = add nsw i64 %i.o, %i.k
  %i.q = zext i32 %i.m to i64
  %i.r = udiv i64 %i.p, %i.q
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 589824)
  %i.t = trunc nuw nsw i64 %i.s to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_skl_scaler_max_scale.exit
  %.0 = phi i32 [ %i.t, %_skl_scaler_max_scale.exit ], [ 65536, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 589825) i32 @skl_scaler_1st_prefill_adjustment_worst(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 2136
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %skl_scaler_max_scale.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__drm_to_display(ptr noundef nonnull %i.e) #11
  br label %skl_scaler_max_scale.exit

skl_scaler_max_scale.exit:                        ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.h = getelementptr i8, ptr %i.g, i64 684
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %0, i64 524
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.n, -1
  %i.p = add nsw i64 %i.o, %i.k
  %i.q = zext i32 %i.m to i64
  %i.r = udiv i64 %i.p, %i.q
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 589824)
  %i.t = trunc nuw nsw i64 %i.s to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %skl_scaler_max_scale.exit
  %.0 = phi i32 [ %i.t, %skl_scaler_max_scale.exit ], [ 65536, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 589825) i32 @skl_scaler_2nd_prefill_adjustment_worst(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 2136
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %skl_scaler_max_scale.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__drm_to_display(ptr noundef nonnull %i.e) #11
  br label %skl_scaler_max_scale.exit

skl_scaler_max_scale.exit:                        ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.h = getelementptr i8, ptr %i.g, i64 684
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %0, i64 524
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.n, -1
  %i.p = add nsw i64 %i.o, %i.k
  %i.q = zext i32 %i.m to i64
  %i.r = udiv i64 %i.p, %i.q
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 589824)
  %i.t = trunc nuw nsw i64 %i.s to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %skl_scaler_max_scale.exit
  %.0 = phi i32 [ %i.t, %skl_scaler_max_scale.exit ], [ 65536, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 262145) i32 @skl_scaler_1st_prefill_lines_worst(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 2136
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  %. = select i1 %i.d, i32 262144, i32 0
  ret i32 %.
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 262145) i32 @skl_scaler_2nd_prefill_lines_worst(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 2136
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 1
  %. = select i1 %i.d, i32 262144, i32 0
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @intel_atomic_setup_scaler(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, i1 noundef zeroext %7) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %8 = alloca %struct.drm_rect, align 4           ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 9 uses
  %i.d = getelementptr i8, ptr %0, i64 1440       ; 6 uses
  %i.e = load i32, ptr %6, align 4                ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__drm_to_display(ptr noundef nonnull %i.g) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ]
  %i.j = getelementptr i8, ptr %2, i64 2136
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %bb.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.i, i64 1168
  %wide.trip.count18.i = zext nneg i32 %i.k to i64
  br i1 %7, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %exitcond19.peel.not.i = icmp eq i32 %i.k, 1
  br i1 %exitcond19.peel.not.i, label %bb.i, label %.lr.ph.split.us.peel.next.i

.lr.ph.split.us.peel.next.i:                      ; preds = %.lr.ph.split.us.preheader.i
  %i.n = getelementptr i8, ptr %0, i64 1460
  %i.o = load i8, ptr %i.n, align 4, !range !12, !noundef !13
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.peel.next.i
  %.val.us.peel22.i = load i16, ptr %i.m, align 8
  %i.q = icmp ugt i16 %.val.us.peel22.i, 19
  br i1 %i.q, label %.thread161, label %bb.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.r = getelementptr [16 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %i.t = load i8, ptr %i.s, align 4, !range !12, !noundef !13
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %.split.us.loopexit7.i

.split.us.loopexit7.i:                            ; preds = %.lr.ph.split.i
  %9 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread161

bb.h:                                             ; preds = %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count18.i
  br i1 %exitcond.not.i, label %bb.i, label %.lr.ph.split.i, !llvm.loop !53

.thread161:                                       ; preds = %bb.g, %.split.us.loopexit7.i
  %10 = phi i64 [ %indvars.iv.i, %.split.us.loopexit7.i ], [ 1, %bb.g ]
  %.us-phi4.i = phi i32 [ %9, %.split.us.loopexit7.i ], [ 1, %bb.g ] ; 2 uses
  %11 = getelementptr [16 x i8], ptr %i.d, i64 %10
  %12 = getelementptr i8, ptr %11, i64 4
  store i8 1, ptr %12, align 4
  store i32 %.us-phi4.i, ptr %6, align 4
  br label %.critedge

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.us.peel.next.i, %bb.g, %bb.f, %.lr.ph.split.us.preheader.i
  store i32 -1, ptr %6, align 4
  %13 = load ptr, ptr %i.c, align 8               ; 2 uses
  %.not.i132 = icmp eq ptr %13, null
  br i1 %.not.i132, label %__drm_to_dev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %13, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.i, %bb.j
  %i.x = phi ptr [ %i.w, %bb.j ], [ null, %bb.i ]
  %i.y = tail call ptr @dev_driver_string(ptr noundef %i.x) #11 ; 0 uses
  %i.z = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.11, ptr nonnull @.str.3, i32 412, i32 2321, i64 16) #14, !srcloc !54
  %i.aa = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i136 = icmp eq ptr %i.aa, null
  br i1 %.not.i136, label %__drm_to_dev.exit137, label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %__drm_to_dev.exit137

__drm_to_dev.exit137:                             ; preds = %__drm_to_dev.exit, %bb.k
  %i.ad = phi ptr [ %i.ac, %bb.k ], [ null, %__drm_to_dev.exit ]
  %i.ae = tail call ptr @dev_driver_string(ptr noundef %i.ad) #11
  %i.af = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i138 = icmp eq ptr %i.af, null
  br i1 %.not.i138, label %__drm_to_dev.exit139, label %bb.l

bb.l:                                             ; preds = %__drm_to_dev.exit137
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  br label %__drm_to_dev.exit139

__drm_to_dev.exit139:                             ; preds = %__drm_to_dev.exit137, %bb.l
  %i.ai = phi ptr [ %i.ah, %bb.l ], [ null, %__drm_to_dev.exit137 ] ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not.i140 = icmp eq ptr %i.ak, null
  br i1 %.not.i140, label %bb.m, label %dev_name.exit143

bb.m:                                             ; preds = %__drm_to_dev.exit139
  %.val.i142 = load ptr, ptr %i.ai, align 8
  br label %dev_name.exit143

dev_name.exit143:                                 ; preds = %__drm_to_dev.exit139, %bb.m
  %.0.i141 = phi ptr [ %.val.i142, %bb.m ], [ %i.ak, %__drm_to_dev.exit139 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.z, ptr noundef %i.ae, ptr noundef %.0.i141, ptr noundef %3, i32 noundef %4) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !55
  br label %bb.al

.critedge:                                        ; preds = %bb.c, %.thread161
  %i.al = phi i32 [ %.us-phi4.i, %.thread161 ], [ %i.e, %bb.c ]
  %.not115 = icmp eq ptr %5, null                 ; 2 uses
  br i1 %.not115, label %bb.u, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.am = getelementptr i8, ptr %5, i64 192
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not116 = icmp eq ptr %i.an, null
  br i1 %.not116, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 21
  %i.ar = load i8, ptr %i.aq, align 1, !range !12, !noundef !13
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %i.ap, i64 5
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp ugt i8 %i.au, 1
  br i1 %i.av, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr i8, ptr %i.c, i64 1168
  %i.ax = load i16, ptr %i.aw, align 8
  %i.ay = icmp eq i16 %i.ax, 9
  br i1 %i.ay, label %.thread166, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %5, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 1356
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = tail call zeroext i1 @icl_is_hdr_plane(ptr noundef %i.c, i32 noundef %i.bb) #11
  br i1 %i.bc, label %.thread166, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr i8, ptr %5, i64 512
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not117 = icmp eq ptr %i.be, null
  br i1 %.not117, label %.thread166, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr i8, ptr %i.be, i64 1356
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = shl i32 %i.bg, 5
  %i.bi = add i32 %i.bh, 32
  %i.bj = and i32 %i.bi, 224
  %i.bk = or disjoint i32 %i.bj, 536870912
  br label %.thread166

bb.u:                                             ; preds = %bb.p, %bb.o, %bb.n, %.critedge
  %i.bl = getelementptr i8, ptr %i.c, i64 1168
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = icmp ult i16 %i.bm, 10
  %i.bo = icmp eq i32 %1, 1
  %or.cond = and i1 %i.bo, %i.bn
  br i1 %or.cond, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr i8, ptr %2, i64 2136
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %14 = sext i32 %i.al to i64
  %i.bs = getelementptr [16 x i8], ptr %i.d, i64 %14
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  store i8 0, ptr %i.bt, align 4
  store i32 0, ptr %6, align 4
  %i.bu = getelementptr i8, ptr %0, i64 1444
  store i8 1, ptr %i.bu, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.w
  %.2106 = phi i32 [ 0, %bb.u ], [ 0, %bb.v ], [ 268435456, %bb.w ] ; 2 uses
  br i1 %.not115, label %.critedge124, label %.thread166

.thread166:                                       ; preds = %bb.s, %bb.t, %bb.r, %bb.q, %bb.x
  %.2106168 = phi i32 [ %.2106, %bb.x ], [ %i.bk, %bb.t ], [ 536870912, %bb.q ], [ 0, %bb.r ], [ 536870912, %bb.s ] ; 2 uses
  %i.bv = getelementptr i8, ptr %5, i64 192
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %.not118 = icmp eq ptr %i.bw, null
  br i1 %.not118, label %.critedge124, label %bb.y

bb.y:                                             ; preds = %.thread166
  %i.bx = getelementptr i8, ptr %5, i64 108       ; 3 uses
  %i.by = getelementptr i8, ptr %5, i64 124       ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bw, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %i.bw, i64 120
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = tail call zeroext i1 @intel_format_info_is_yuv_semiplanar(ptr noundef %i.ca, i64 noundef %i.cc) #11
  %i.ce = load i32, ptr %6, align 4
  %.val131 = load ptr, ptr %2, align 8            ; 2 uses
  %.not.i144 = icmp eq ptr %.val131, null
  br i1 %.not.i144, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = tail call ptr @__drm_to_display(ptr noundef nonnull %.val131) #11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cg = phi ptr [ %i.cf, %bb.z ], [ null, %bb.y ]
  %i.ch = getelementptr i8, ptr %i.cg, i64 1168
  %i.ci = load i16, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp ugt i16 %i.ci, 13
  br i1 %i.cj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ck = icmp eq i32 %i.ce, 0
  %..i = select i1 %i.ck, i32 196607, i32 65536
  br label %calculate_max_scale.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cl = icmp samesign ult i16 %i.ci, 10
  %or.cond.i = and i1 %i.cd, %i.cl
  %spec.select = select i1 %or.cond.i, i32 131071, i32 196607 ; 2 uses
  br label %calculate_max_scale.exit

calculate_max_scale.exit:                         ; preds = %bb.ac, %bb.ab
  %.0160 = phi i32 [ 196607, %bb.ab ], [ %spec.select, %bb.ac ]
  %.sink.i = phi i32 [ %..i, %bb.ab ], [ %spec.select, %bb.ac ]
  %i.cm = tail call i32 @drm_rect_calc_hscale(ptr noundef %i.bx, ptr noundef %i.by, i32 noundef 1, i32 noundef %.0160) #11 ; 2 uses
  %i.cn = tail call i32 @drm_rect_calc_vscale(ptr noundef %i.bx, ptr noundef %i.by, i32 noundef 1, i32 noundef %.sink.i) #11 ; 2 uses
  %i.co = icmp sgt i32 %i.cm, -1
  %i.cp = icmp sgt i32 %i.cn, -1
  %or.cond.not = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.not, label %.critedge124, label %bb.ad

bb.ad:                                            ; preds = %calculate_max_scale.exit
  %i.cq = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i145 = icmp eq ptr %i.cq, null
  br i1 %.not.i145, label %__drm_to_dev.exit146, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  br label %__drm_to_dev.exit146

__drm_to_dev.exit146:                             ; preds = %bb.ad, %bb.ae
  %i.ct = phi ptr [ %i.cs, %bb.ae ], [ null, %bb.ad ]
  %i.cu = getelementptr i8, ptr %2, i64 88
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = getelementptr i8, ptr %2, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = load i32, ptr %6, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ct, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %i.cv, ptr noundef %i.cx, i32 noundef %i.cy) #11
  tail call void @drm_rect_debug_print(ptr noundef nonnull @.str.13, ptr noundef %i.bx, i1 noundef zeroext true) #11
  tail call void @drm_rect_debug_print(ptr noundef nonnull @.str.14, ptr noundef %i.by, i1 noundef zeroext false) #11
  br label %bb.al

.critedge124:                                     ; preds = %calculate_max_scale.exit, %.thread166, %bb.x
  %.2106169 = phi i32 [ %.2106, %bb.x ], [ %.2106168, %.thread166 ], [ %.2106168, %calculate_max_scale.exit ]
  %.0109 = phi i32 [ 0, %bb.x ], [ 0, %.thread166 ], [ %i.cn, %calculate_max_scale.exit ]
  %.0107 = phi i32 [ 0, %bb.x ], [ 0, %.thread166 ], [ %i.cm, %calculate_max_scale.exit ]
  %i.cz = getelementptr i8, ptr %0, i64 1408
  %i.da = load i8, ptr %i.cz, align 8, !range !12, !noundef !13
  %i.db = trunc nuw i8 %i.da to i1
  %.pre175 = load i32, ptr %6, align 4            ; 2 uses
  br i1 %i.db, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %.critedge124
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.dc = getelementptr i8, ptr %0, i64 856
  %.val = load i32, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %0, i64 864
  %.val127 = load i32, ptr %i.dd, align 8
  %i.de = sub i32 %.val127, %.val
  %i.df = shl i32 %i.de, 16
  %i.dg = getelementptr i8, ptr %0, i64 860
  %.val128 = load i32, ptr %i.dg, align 4
  %i.dh = getelementptr i8, ptr %0, i64 868
  %.val129 = load i32, ptr %i.dh, align 4
  %i.di = sub i32 %.val129, %.val128
  %i.dj = shl i32 %i.di, 16
  store i32 0, ptr %8, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.df, ptr %i.dl, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.dj, ptr %i.dm, align 4
  %.val130 = load ptr, ptr %2, align 8            ; 2 uses
  %.not.i147 = icmp eq ptr %.val130, null
  br i1 %.not.i147, label %calculate_max_scale.exit151, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = tail call ptr @__drm_to_display(ptr noundef nonnull %.val130) #11
  br label %calculate_max_scale.exit151

calculate_max_scale.exit151:                      ; preds = %bb.ag, %bb.af
  %i.do = phi ptr [ %i.dn, %bb.ag ], [ null, %bb.af ]
  %i.dp = getelementptr i8, ptr %i.do, i64 1168
  %i.dq = load i16, ptr %i.dp, align 8
  %i.dr = icmp ugt i16 %i.dq, 13
  %i.ds = icmp ne i32 %.pre175, 0
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  %i.du = getelementptr i8, ptr %0, i64 4392
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = icmp eq i32 %i.dv, 1                    ; 2 uses
  %.0159 = select i1 %i.dw, i32 98303, i32 196607
  %i.dx = select i1 %i.dw, i1 true, i1 %i.dt
  %.0 = select i1 %i.dx, i32 65536, i32 196607
  %i.dy = getelementptr i8, ptr %0, i64 1392      ; 3 uses
  %i.dz = call i32 @drm_rect_calc_hscale(ptr noundef nonnull %8, ptr noundef %i.dy, i32 noundef 0, i32 noundef %.0159) #11 ; 2 uses
  %i.ea = call i32 @drm_rect_calc_vscale(ptr noundef nonnull %8, ptr noundef %i.dy, i32 noundef 0, i32 noundef %.0) #11 ; 2 uses
  %i.eb = icmp sgt i32 %i.dz, -1
  %i.ec = icmp sgt i32 %i.ea, -1
  %or.cond4.not = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond4.not, label %.critedge126, label %bb.ah

bb.ah:                                            ; preds = %calculate_max_scale.exit151
  %i.ed = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i152 = icmp eq ptr %i.ed, null
  br i1 %.not.i152, label %__drm_to_dev.exit153, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  br label %__drm_to_dev.exit153

__drm_to_dev.exit153:                             ; preds = %bb.ah, %bb.ai
  %i.eg = phi ptr [ %i.ef, %bb.ai ], [ null, %bb.ah ]
  %i.eh = load i32, ptr %6, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.eg, i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %i.eh) #11
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.13, ptr noundef nonnull %8, i1 noundef zeroext true) #11
  call void @drm_rect_debug_print(ptr noundef nonnull @.str.14, ptr noundef %i.dy, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.al

.critedge126:                                     ; preds = %calculate_max_scale.exit151
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %.pre = load i32, ptr %6, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge126, %.critedge124
  %i.ei = phi i32 [ %.pre, %.critedge126 ], [ %.pre175, %.critedge124 ]
  %.1110 = phi i32 [ %i.ea, %.critedge126 ], [ %.0109, %.critedge124 ]
  %.1108 = phi i32 [ %i.dz, %.critedge126 ], [ %.0107, %.critedge124 ]
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr [16 x i8], ptr %i.d, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  store i32 %.1108, ptr %i.el, align 4
  %i.em = load i32, ptr %6, align 4
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr [16 x i8], ptr %i.d, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 12
  store i32 %.1110, ptr %i.ep, align 4
  %i.eq = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i154 = icmp eq ptr %i.eq, null
  br i1 %.not.i154, label %__drm_to_dev.exit155, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  br label %__drm_to_dev.exit155

__drm_to_dev.exit155:                             ; preds = %bb.aj, %bb.ak
  %i.et = phi ptr [ %i.es, %bb.ak ], [ null, %bb.aj ]
  %i.eu = getelementptr i8, ptr %2, i64 88
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = getelementptr i8, ptr %2, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr i8, ptr %2, i64 1664
  %i.ez = load i32, ptr %i.ey, align 8
  %i.fa = load i32, ptr %6, align 4
end_hunk_0
