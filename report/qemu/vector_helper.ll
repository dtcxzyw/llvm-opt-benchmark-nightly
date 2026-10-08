Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vector_helper?download=true
inline.NumInlined: 5693
inline.NumDeleted: 634
loop-unroll.NumRuntimeUnrolled: 372
loop-unroll.NumUnrolled: 373
begin_hunk_0_@helper_vmadc_vxm_w:bb.a
bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.critedge:                                        ; preds = %.preheader37, %vext_set_elem_mask.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %vext_set_elem_mask.exit ], [ %i.l, %.preheader37 ] ; 3 uses
  %i.aj = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ak = srem i32 %i.aj, 64                      ; 2 uses
  %i.al = sdiv i32 %i.aj, 64
  %i.am = icmp slt i32 %i.ak, 0
  br i1 %i.am, label %.split.us, label %vext_set_elem_mask.exit

.split.us:                                        ; preds = %.critedge, %.preheader37.split.us
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit:                          ; preds = %.critedge
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = xor i32 %i.ao, -1
  %i.aq = icmp ult i32 %i.ap, %i.j
  %i.ar = zext i1 %i.aq to i64
  %i.as = sext i32 %i.al to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = xor i64 %i.aw, -1
  %i.ay = and i64 %i.au, %i.ax
  %i.az = shl nuw i64 %i.ar, %i.av
  %i.ba = or i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.at, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count50
  br i1 %exitcond.not, label %.split41.us, label %.critedge, !llvm.loop !210

.split41.us:                                      ; preds = %vext_set_elem_mask.exit, %vext_set_elem_mask.exit.us
  store i32 0, ptr %i.g, align 4
  %i.bb = and i32 %5, 32768
  %.not33 = icmp ne i32 %i.bb, 0
  %i.bc = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not33, i1 %i.bc, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit35, label %.loopexit

vext_set_elem_mask.exit35:                        ; preds = %.split41.us, %vext_set_elem_mask.exit35
  %.142 = phi i32 [ %i.bl, %vext_set_elem_mask.exit35 ], [ %i.b, %.split41.us ] ; 3 uses
  %i.bd = srem i32 %.142, 64
  %i.be = sdiv i32 %.142, 64
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = zext nneg i32 %i.bd to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %i.bg, align 8
  %i.bl = add nuw nsw i32 %.142, 1                ; 2 uses
  %exitcond52.not = icmp eq i32 %i.bl, %i.f
  br i1 %exitcond52.not, label %.loopexit, label %vext_set_elem_mask.exit35, !llvm.loop !211

.loopexit:                                        ; preds = %vext_set_elem_mask.exit35, %.split41.us, %bb.b
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmadc_vxm_d(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader37, label %bb.b

.preheader37:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not34 = icmp eq i32 %i.i, 0
  %i.j = add i64 %2, 1
  %i.k = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count50 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not34, label %.preheader37.split.us, label %.critedge

.preheader37.split.us:                            ; preds = %.preheader37, %vext_set_elem_mask.exit.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %vext_set_elem_mask.exit.us ], [ %i.k, %.preheader37 ] ; 3 uses
  %i.l = trunc nuw i64 %indvars.iv47 to i32       ; 2 uses
  %i.m = srem i32 %i.l, 64                        ; 2 uses
  %i.n = sdiv i32 %i.l, 64
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %.split.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %.preheader37.split.us
  %i.p = sext i32 %i.n to i64                     ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = zext nneg i32 %i.m to i64                ; 2 uses
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %i.u = and i64 %i.r, %i.t
  %.not36.us = icmp eq i64 %i.u, 0
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv47
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = xor i64 %i.w, -1
  %i.y = icmp ugt i64 %2, %i.x
  %i.z = add i64 %i.j, %i.w
  %i.aa = icmp ule i64 %i.z, %i.w
  %.in.us = select i1 %.not36.us, i1 %i.y, i1 %i.aa
  %i.ab = zext i1 %.in.us to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = xor i64 %i.t, -1
  %i.af = and i64 %i.ad, %i.ae
  %i.ag = shl nuw i64 %i.ab, %i.s
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.ac, align 8
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %.split41.us, label %.preheader37.split.us, !llvm.loop !212

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.critedge:                                        ; preds = %.preheader37, %vext_set_elem_mask.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %vext_set_elem_mask.exit ], [ %i.k, %.preheader37 ] ; 3 uses
  %i.ai = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.aj = srem i32 %i.ai, 64                      ; 2 uses
  %i.ak = sdiv i32 %i.ai, 64
  %i.al = icmp slt i32 %i.aj, 0
  br i1 %i.al, label %.split.us, label %vext_set_elem_mask.exit

.split.us:                                        ; preds = %.critedge, %.preheader37.split.us
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit:                          ; preds = %.critedge
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = xor i64 %i.an, -1
  %i.ap = icmp ugt i64 %2, %i.ao
  %i.aq = zext i1 %i.ap to i64
  %i.ar = sext i32 %i.ak to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.av = shl nuw i64 1, %i.au
  %i.aw = xor i64 %i.av, -1
  %i.ax = and i64 %i.at, %i.aw
  %i.ay = shl nuw i64 %i.aq, %i.au
  %i.az = or i64 %i.ax, %i.ay
  store i64 %i.az, ptr %i.as, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count50
  br i1 %exitcond.not, label %.split41.us, label %.critedge, !llvm.loop !212

.split41.us:                                      ; preds = %vext_set_elem_mask.exit, %vext_set_elem_mask.exit.us
  store i32 0, ptr %i.g, align 4
  %i.ba = and i32 %5, 32768
  %.not33 = icmp ne i32 %i.ba, 0
  %i.bb = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not33, i1 %i.bb, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit35, label %.loopexit

vext_set_elem_mask.exit35:                        ; preds = %.split41.us, %vext_set_elem_mask.exit35
  %.142 = phi i32 [ %i.bk, %vext_set_elem_mask.exit35 ], [ %i.b, %.split41.us ] ; 3 uses
  %i.bc = srem i32 %.142, 64
  %i.bd = sdiv i32 %.142, 64
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = zext nneg i32 %i.bc to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = or i64 %i.bg, %i.bi
  store i64 %i.bj, ptr %i.bf, align 8
  %i.bk = add nuw nsw i32 %.142, 1                ; 2 uses
  %exitcond52.not = icmp eq i32 %i.bk, %i.f
  br i1 %exitcond52.not, label %.loopexit, label %vext_set_elem_mask.exit35, !llvm.loop !213

.loopexit:                                        ; preds = %vext_set_elem_mask.exit35, %.split41.us, %bb.b
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsbc_vxm_b(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader35, label %bb.b

.preheader35:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not32 = icmp eq i32 %i.i, 0
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, 255                            ; 3 uses
  %i.j = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count48 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not32, label %.preheader35.split.us, label %.critedge

.preheader35.split.us:                            ; preds = %.preheader35, %vext_set_elem_mask.exit.us
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %vext_set_elem_mask.exit.us ], [ %i.j, %.preheader35 ] ; 3 uses
  %i.k = trunc nuw i64 %indvars.iv45 to i32       ; 2 uses
  %i.l = srem i32 %i.k, 64                        ; 2 uses
  %i.m = sdiv i32 %i.k, 64
  %i.n = icmp slt i32 %i.l, 0
  br i1 %i.n, label %.split.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %.preheader35.split.us
  %i.o = sext i32 %i.m to i64                     ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %1, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = zext nneg i32 %i.l to i64                ; 2 uses
  %i.s = shl nuw i64 1, %i.r                      ; 2 uses
  %i.t = and i64 %i.q, %i.s
  %i.u = icmp eq i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv45
  %i.w = load i8, ptr %i.v, align 1
  %8 = zext i8 %i.w to i32                        ; 2 uses
  %9 = icmp samesign ugt i32 %7, %8
  %10 = icmp samesign uge i32 %7, %8
  %.in.us = select i1 %i.u, i1 %9, i1 %10
  %i.x = zext i1 %.in.us to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = xor i64 %i.s, -1
  %i.ab = and i64 %i.z, %i.aa
  %i.ac = shl nuw i64 %i.x, %i.r
  %i.ad = or i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.y, align 8
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %.split39.us, label %.preheader35.split.us, !llvm.loop !214

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.critedge:                                        ; preds = %.preheader35, %vext_set_elem_mask.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %vext_set_elem_mask.exit ], [ %i.j, %.preheader35 ] ; 3 uses
  %i.ae = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.af = srem i32 %i.ae, 64                      ; 2 uses
  %i.ag = sdiv i32 %i.ae, 64
  %i.ah = icmp slt i32 %i.af, 0
  br i1 %i.ah, label %.split.us, label %vext_set_elem_mask.exit

.split.us:                                        ; preds = %.critedge, %.preheader35.split.us
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit:                          ; preds = %.critedge
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1
  %11 = zext i8 %i.aj to i32
  %12 = icmp samesign ugt i32 %7, %11
  %i.ak = zext i1 %12 to i64
  %i.al = sext i32 %i.ag to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = xor i64 %i.ap, -1
  %i.ar = and i64 %i.an, %i.aq
  %i.as = shl nuw i64 %i.ak, %i.ao
  %i.at = or i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.am, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count48
  br i1 %exitcond.not, label %.split39.us, label %.critedge, !llvm.loop !214

.split39.us:                                      ; preds = %vext_set_elem_mask.exit, %vext_set_elem_mask.exit.us
  store i32 0, ptr %i.g, align 4
  %i.au = and i32 %5, 32768
  %.not31 = icmp ne i32 %i.au, 0
  %i.av = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not31, i1 %i.av, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit34, label %.loopexit

vext_set_elem_mask.exit34:                        ; preds = %.split39.us, %vext_set_elem_mask.exit34
  %.140 = phi i32 [ %i.be, %vext_set_elem_mask.exit34 ], [ %i.b, %.split39.us ] ; 3 uses
  %i.aw = srem i32 %.140, 64
  %i.ax = sdiv i32 %.140, 64
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = zext nneg i32 %i.aw to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = or i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.az, align 8
  %i.be = add nuw nsw i32 %.140, 1                ; 2 uses
  %exitcond50.not = icmp eq i32 %i.be, %i.f
  br i1 %exitcond50.not, label %.loopexit, label %vext_set_elem_mask.exit34, !llvm.loop !215

.loopexit:                                        ; preds = %vext_set_elem_mask.exit34, %.split39.us, %bb.b
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsbc_vxm_h(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader35, label %bb.b

.preheader35:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not32 = icmp eq i32 %i.i, 0
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, 65535                          ; 3 uses
  %i.j = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count48 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not32, label %.preheader35.split.us, label %.critedge

.preheader35.split.us:                            ; preds = %.preheader35, %vext_set_elem_mask.exit.us
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %vext_set_elem_mask.exit.us ], [ %i.j, %.preheader35 ] ; 3 uses
  %i.k = trunc nuw i64 %indvars.iv45 to i32       ; 2 uses
  %i.l = srem i32 %i.k, 64                        ; 2 uses
  %i.m = sdiv i32 %i.k, 64
  %i.n = icmp slt i32 %i.l, 0
  br i1 %i.n, label %.split.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %.preheader35.split.us
  %i.o = sext i32 %i.m to i64                     ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %1, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = zext nneg i32 %i.l to i64                ; 2 uses
  %i.s = shl nuw i64 1, %i.r                      ; 2 uses
  %i.t = and i64 %i.q, %i.s
  %i.u = icmp eq i64 %i.t, 0
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45
  %i.w = load i16, ptr %i.v, align 2
  %8 = zext i16 %i.w to i32                       ; 2 uses
  %9 = icmp samesign ugt i32 %7, %8
  %10 = icmp samesign uge i32 %7, %8
  %.in.us = select i1 %i.u, i1 %9, i1 %10
  %i.x = zext i1 %.in.us to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = xor i64 %i.s, -1
  %i.ab = and i64 %i.z, %i.aa
  %i.ac = shl nuw i64 %i.x, %i.r
  %i.ad = or i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.y, align 8
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %.split39.us, label %.preheader35.split.us, !llvm.loop !216

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.critedge:                                        ; preds = %.preheader35, %vext_set_elem_mask.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %vext_set_elem_mask.exit ], [ %i.j, %.preheader35 ] ; 3 uses
  %i.ae = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.af = srem i32 %i.ae, 64                      ; 2 uses
  %i.ag = sdiv i32 %i.ae, 64
  %i.ah = icmp slt i32 %i.af, 0
  br i1 %i.ah, label %.split.us, label %vext_set_elem_mask.exit

.split.us:                                        ; preds = %.critedge, %.preheader35.split.us
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit:                          ; preds = %.critedge
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2
  %11 = zext i16 %i.aj to i32
  %12 = icmp samesign ugt i32 %7, %11
  %i.ak = zext i1 %12 to i64
  %i.al = sext i32 %i.ag to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = xor i64 %i.ap, -1
  %i.ar = and i64 %i.an, %i.aq
  %i.as = shl nuw i64 %i.ak, %i.ao
  %i.at = or i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.am, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count48
  br i1 %exitcond.not, label %.split39.us, label %.critedge, !llvm.loop !216

.split39.us:                                      ; preds = %vext_set_elem_mask.exit, %vext_set_elem_mask.exit.us
  store i32 0, ptr %i.g, align 4
  %i.au = and i32 %5, 32768
  %.not31 = icmp ne i32 %i.au, 0
  %i.av = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not31, i1 %i.av, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit34, label %.loopexit

vext_set_elem_mask.exit34:                        ; preds = %.split39.us, %vext_set_elem_mask.exit34
  %.140 = phi i32 [ %i.be, %vext_set_elem_mask.exit34 ], [ %i.b, %.split39.us ] ; 3 uses
  %i.aw = srem i32 %.140, 64
  %i.ax = sdiv i32 %.140, 64
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = zext nneg i32 %i.aw to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = or i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.az, align 8
  %i.be = add nuw nsw i32 %.140, 1                ; 2 uses
  %exitcond50.not = icmp eq i32 %i.be, %i.f
  br i1 %exitcond50.not, label %.loopexit, label %vext_set_elem_mask.exit34, !llvm.loop !217

.loopexit:                                        ; preds = %vext_set_elem_mask.exit34, %.split39.us, %bb.b
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsbc_vxm_w(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader35, label %bb.b

.preheader35:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not32 = icmp eq i32 %i.i, 0
  %i.j = trunc i64 %2 to i32                      ; 3 uses
  %i.k = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count48 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not32, label %.preheader35.split.us, label %.critedge

.preheader35.split.us:                            ; preds = %.preheader35, %vext_set_elem_mask.exit.us
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %vext_set_elem_mask.exit.us ], [ %i.k, %.preheader35 ] ; 3 uses
  %i.l = trunc nuw i64 %indvars.iv45 to i32       ; 2 uses
  %i.m = srem i32 %i.l, 64                        ; 2 uses
  %i.n = sdiv i32 %i.l, 64
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %.split.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %.preheader35.split.us
  %i.p = sext i32 %i.n to i64                     ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = zext nneg i32 %i.m to i64                ; 2 uses
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %i.u = and i64 %i.r, %i.t
  %.not34.us = icmp eq i64 %i.u, 0
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv45
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp ult i32 %i.w, %i.j
  %i.y = icmp ule i32 %i.w, %i.j
  %.in.us = select i1 %.not34.us, i1 %i.x, i1 %i.y
  %i.z = zext i1 %.in.us to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = xor i64 %i.t, -1
  %i.ad = and i64 %i.ab, %i.ac
  %i.ae = shl nuw i64 %i.z, %i.s
  %i.af = or i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.aa, align 8
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %.split39.us, label %.preheader35.split.us, !llvm.loop !218

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.critedge:                                        ; preds = %.preheader35, %vext_set_elem_mask.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %vext_set_elem_mask.exit ], [ %i.k, %.preheader35 ] ; 3 uses
  %i.ag = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ah = srem i32 %i.ag, 64                      ; 2 uses
  %i.ai = sdiv i32 %i.ag, 64
  %i.aj = icmp slt i32 %i.ah, 0
  br i1 %i.aj, label %.split.us, label %vext_set_elem_mask.exit

.split.us:                                        ; preds = %.critedge, %.preheader35.split.us
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit:                          ; preds = %.critedge
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp ult i32 %i.al, %i.j
  %i.an = zext i1 %i.am to i64
  %i.ao = sext i32 %i.ai to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.as = shl nuw i64 1, %i.ar
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.aq, %i.at
  %i.av = shl nuw i64 %i.an, %i.ar
  %i.aw = or i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.ap, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count48
  br i1 %exitcond.not, label %.split39.us, label %.critedge, !llvm.loop !218

.split39.us:                                      ; preds = %vext_set_elem_mask.exit, %vext_set_elem_mask.exit.us
  store i32 0, ptr %i.g, align 4
  %i.ax = and i32 %5, 32768
  %.not31 = icmp ne i32 %i.ax, 0
  %i.ay = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not31, i1 %i.ay, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit33, label %.loopexit

vext_set_elem_mask.exit33:                        ; preds = %.split39.us, %vext_set_elem_mask.exit33
  %.140 = phi i32 [ %i.bh, %vext_set_elem_mask.exit33 ], [ %i.b, %.split39.us ] ; 3 uses
  %i.az = srem i32 %.140, 64
  %i.ba = sdiv i32 %.140, 64
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = zext nneg i32 %i.az to i64
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = or i64 %i.bd, %i.bf
  store i64 %i.bg, ptr %i.bc, align 8
  %i.bh = add nuw nsw i32 %.140, 1                ; 2 uses
  %exitcond50.not = icmp eq i32 %i.bh, %i.f
  br i1 %exitcond50.not, label %.loopexit, label %vext_set_elem_mask.exit33, !llvm.loop !219

.loopexit:                                        ; preds = %vext_set_elem_mask.exit33, %.split39.us, %bb.b
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsbc_vxm_d(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader35, label %bb.b

.preheader35:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not32 = icmp eq i32 %i.i, 0
  %i.j = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count48 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not32, label %.preheader35.split.us, label %.critedge

.preheader35.split.us:                            ; preds = %.preheader35, %vext_set_elem_mask.exit.us
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %vext_set_elem_mask.exit.us ], [ %i.j, %.preheader35 ] ; 3 uses
  %i.k = trunc nuw i64 %indvars.iv45 to i32       ; 2 uses
  %i.l = srem i32 %i.k, 64                        ; 2 uses
  %i.m = sdiv i32 %i.k, 64
  %i.n = icmp slt i32 %i.l, 0
  br i1 %i.n, label %.split.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %.preheader35.split.us
  %i.o = sext i32 %i.m to i64                     ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %1, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  %i.r = zext nneg i32 %i.l to i64                ; 2 uses
  %i.s = shl nuw i64 1, %i.r                      ; 2 uses
  %i.t = and i64 %i.q, %i.s
  %.not34.us = icmp eq i64 %i.t, 0
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv45
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp ult i64 %i.v, %2
  %i.x = icmp ule i64 %i.v, %2
  %.in.us = select i1 %.not34.us, i1 %i.w, i1 %i.x
end_hunk_0
begin_hunk_1_@helper_vmsne_vx_w:bb.a
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsne_vx_d(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.j = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.k = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.k, 0
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv60
  %i.n = load i64, ptr %i.m, align 8
  %i.o = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.p = sdiv i32 %i.o, 64
  %i.q = srem i32 %i.o, 64                        ; 2 uses
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.q to i64                ; 2 uses
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = and i64 %i.t, %i.v
  %.not34.us.us = icmp eq i64 %i.w, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.x = icmp slt i32 %i.q, 0
  br i1 %i.x, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %i.y = icmp ne i64 %i.n, %2
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = xor i64 %i.v, -1
  %i.ad = and i64 %i.ab, %i.ac
  %i.ae = shl nuw i64 %i.z, %i.u
  %i.af = or i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.aa, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !478

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv55
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.aj = sdiv i32 %i.ai, 64
  %i.ak = srem i32 %i.ai, 64                      ; 2 uses
  %i.al = sext i32 %i.aj to i64                   ; 3 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.ap = shl nuw i64 1, %i.ao                    ; 3 uses
  %i.aq = and i64 %i.an, %i.ap
  %.not34.us = icmp eq i64 %i.aq, 0
  %i.ar = icmp slt i32 %i.ak, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.ar, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %i.as = icmp ne i64 %i.ah, %2
  %i.at = zext i1 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = xor i64 %i.ap, -1
  %i.ax = and i64 %i.av, %i.aw
  %i.ay = shl nuw i64 %i.at, %i.ao
  %i.az = or i64 %i.ax, %i.ay
  store i64 %i.az, ptr %i.au, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.ar, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = or i64 %i.bb, %i.ap
  store i64 %i.bc, ptr %i.ba, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !478

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.j, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.bd = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.be = srem i32 %i.bd, 64                      ; 2 uses
  %i.bf = sdiv i32 %i.bd, 64
  %i.bg = icmp slt i32 %i.be, 0
  br i1 %i.bg, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp ne i64 %i.bi, %2
  %i.bk = zext i1 %i.bj to i64
  %i.bl = sext i32 %i.bf to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = xor i64 %i.bp, -1
  %i.br = and i64 %i.bn, %i.bq
  %i.bs = shl nuw i64 %i.bk, %i.bo
  %i.bt = or i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.bm, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !478

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.bu = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.bu, 0
  %i.bv = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not32, i1 %i.bv, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit37, label %.loopexit

vext_set_elem_mask.exit37:                        ; preds = %.split45.us, %vext_set_elem_mask.exit37
  %.147 = phi i32 [ %i.ce, %vext_set_elem_mask.exit37 ], [ %i.b, %.split45.us ] ; 3 uses
  %i.bw = srem i32 %.147, 64
  %i.bx = sdiv i32 %.147, 64
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.by ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = zext nneg i32 %i.bw to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = or i64 %i.ca, %i.cc
  store i64 %i.cd, ptr %i.bz, align 8
  %i.ce = add nuw nsw i32 %.147, 1                ; 2 uses
  %exitcond65.not = icmp eq i32 %i.ce, %i.f
  br i1 %exitcond65.not, label %.loopexit, label %vext_set_elem_mask.exit37, !llvm.loop !479

.loopexit:                                        ; preds = %vext_set_elem_mask.exit37, %.split45.us, %bb.g
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsltu_vx_b(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, 255                            ; 3 uses
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.j = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.k = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.k, 0
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv60
  %i.n = load i8, ptr %i.m, align 1
  %i.o = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.p = sdiv i32 %i.o, 64
  %i.q = srem i32 %i.o, 64                        ; 2 uses
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.q to i64                ; 2 uses
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = and i64 %i.t, %i.v
  %.not34.us.us = icmp eq i64 %i.w, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.x = icmp slt i32 %i.q, 0
  br i1 %i.x, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %8 = zext i8 %i.n to i32
  %9 = icmp samesign ugt i32 %7, %8
  %i.y = zext i1 %9 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = xor i64 %i.v, -1
  %i.ac = and i64 %i.aa, %i.ab
  %i.ad = shl nuw i64 %i.y, %i.u
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !480

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv55
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.ai = sdiv i32 %i.ah, 64
  %i.aj = srem i32 %i.ah, 64                      ; 2 uses
  %i.ak = sext i32 %i.ai to i64                   ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.ao = shl nuw i64 1, %i.an                    ; 3 uses
  %i.ap = and i64 %i.am, %i.ao
  %.not34.us = icmp eq i64 %i.ap, 0
  %i.aq = icmp slt i32 %i.aj, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %10 = zext i8 %i.ag to i32
  %11 = icmp samesign ugt i32 %7, %10
  %i.ar = zext i1 %11 to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = xor i64 %i.ao, -1
  %i.av = and i64 %i.at, %i.au
  %i.aw = shl nuw i64 %i.ar, %i.an
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = or i64 %i.az, %i.ao
  store i64 %i.ba, ptr %i.ay, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !480

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.j, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.bb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bc = srem i32 %i.bb, 64                      ; 2 uses
  %i.bd = sdiv i32 %i.bb, 64
  %i.be = icmp slt i32 %i.bc, 0
  br i1 %i.be, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.bg = load i8, ptr %i.bf, align 1
  %12 = zext i8 %i.bg to i32
  %13 = icmp samesign ugt i32 %7, %12
  %i.bh = zext i1 %13 to i64
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, -1
  %i.bo = and i64 %i.bk, %i.bn
  %i.bp = shl nuw i64 %i.bh, %i.bl
  %i.bq = or i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bj, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !480

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.br = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.br, 0
  %i.bs = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not32, i1 %i.bs, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit37, label %.loopexit

vext_set_elem_mask.exit37:                        ; preds = %.split45.us, %vext_set_elem_mask.exit37
  %.147 = phi i32 [ %i.cb, %vext_set_elem_mask.exit37 ], [ %i.b, %.split45.us ] ; 3 uses
  %i.bt = srem i32 %.147, 64
  %i.bu = sdiv i32 %.147, 64
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = zext nneg i32 %i.bt to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %i.bx, %i.bz
  store i64 %i.ca, ptr %i.bw, align 8
  %i.cb = add nuw nsw i32 %.147, 1                ; 2 uses
  %exitcond65.not = icmp eq i32 %i.cb, %i.f
  br i1 %exitcond65.not, label %.loopexit, label %vext_set_elem_mask.exit37, !llvm.loop !481

.loopexit:                                        ; preds = %vext_set_elem_mask.exit37, %.split45.us, %bb.g
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsltu_vx_h(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, 65535                          ; 3 uses
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.j = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.k = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.k, 0
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv60
  %i.n = load i16, ptr %i.m, align 2
  %i.o = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.p = sdiv i32 %i.o, 64
  %i.q = srem i32 %i.o, 64                        ; 2 uses
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.q to i64                ; 2 uses
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = and i64 %i.t, %i.v
  %.not34.us.us = icmp eq i64 %i.w, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.x = icmp slt i32 %i.q, 0
  br i1 %i.x, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %8 = zext i16 %i.n to i32
  %9 = icmp samesign ugt i32 %7, %8
  %i.y = zext i1 %9 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = xor i64 %i.v, -1
  %i.ac = and i64 %i.aa, %i.ab
  %i.ad = shl nuw i64 %i.y, %i.u
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !482

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv55
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.ai = sdiv i32 %i.ah, 64
  %i.aj = srem i32 %i.ah, 64                      ; 2 uses
  %i.ak = sext i32 %i.ai to i64                   ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.ao = shl nuw i64 1, %i.an                    ; 3 uses
  %i.ap = and i64 %i.am, %i.ao
  %.not34.us = icmp eq i64 %i.ap, 0
  %i.aq = icmp slt i32 %i.aj, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %10 = zext i16 %i.ag to i32
  %11 = icmp samesign ugt i32 %7, %10
  %i.ar = zext i1 %11 to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = xor i64 %i.ao, -1
  %i.av = and i64 %i.at, %i.au
  %i.aw = shl nuw i64 %i.ar, %i.an
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = or i64 %i.az, %i.ao
  store i64 %i.ba, ptr %i.ay, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !482

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.j, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.bb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bc = srem i32 %i.bb, 64                      ; 2 uses
  %i.bd = sdiv i32 %i.bb, 64
  %i.be = icmp slt i32 %i.bc, 0
  br i1 %i.be, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.bg = load i16, ptr %i.bf, align 2
  %12 = zext i16 %i.bg to i32
  %13 = icmp samesign ugt i32 %7, %12
  %i.bh = zext i1 %13 to i64
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, -1
  %i.bo = and i64 %i.bk, %i.bn
  %i.bp = shl nuw i64 %i.bh, %i.bl
  %i.bq = or i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bj, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !482

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.br = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.br, 0
  %i.bs = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not32, i1 %i.bs, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit37, label %.loopexit

vext_set_elem_mask.exit37:                        ; preds = %.split45.us, %vext_set_elem_mask.exit37
  %.147 = phi i32 [ %i.cb, %vext_set_elem_mask.exit37 ], [ %i.b, %.split45.us ] ; 3 uses
  %i.bt = srem i32 %.147, 64
  %i.bu = sdiv i32 %.147, 64
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = zext nneg i32 %i.bt to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %i.bx, %i.bz
  store i64 %i.ca, ptr %i.bw, align 8
  %i.cb = add nuw nsw i32 %.147, 1                ; 2 uses
  %exitcond65.not = icmp eq i32 %i.cb, %i.f
  br i1 %exitcond65.not, label %.loopexit, label %vext_set_elem_mask.exit37, !llvm.loop !483

.loopexit:                                        ; preds = %vext_set_elem_mask.exit37, %.split45.us, %bb.g
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsltu_vx_w(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  %i.j = trunc i64 %2 to i32                      ; 3 uses
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.k = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.l = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.l, 0
  %i.m = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.m, %.preheader38.split.us ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv60
  %i.o = load i32, ptr %i.n, align 4
  %i.p = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.q = sdiv i32 %i.p, 64
  %i.r = srem i32 %i.p, 64                        ; 2 uses
  %i.s = sext i32 %i.q to i64                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = zext nneg i32 %i.r to i64                ; 2 uses
  %i.w = shl nuw i64 1, %i.v                      ; 2 uses
  %i.x = and i64 %i.u, %i.w
  %.not34.us.us = icmp eq i64 %i.x, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.y = icmp slt i32 %i.r, 0
  br i1 %i.y, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %i.z = icmp ult i32 %i.o, %i.j
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = xor i64 %i.w, -1
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = shl nuw i64 %i.aa, %i.v
  %i.ag = or i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.ab, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !484

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.m, %.preheader38.split.us ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv55
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.ak = sdiv i32 %i.aj, 64
  %i.al = srem i32 %i.aj, 64                      ; 2 uses
  %i.am = sext i32 %i.ak to i64                   ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = zext nneg i32 %i.al to i64              ; 2 uses
  %i.aq = shl nuw i64 1, %i.ap                    ; 3 uses
  %i.ar = and i64 %i.ao, %i.aq
  %.not34.us = icmp eq i64 %i.ar, 0
  %i.as = icmp slt i32 %i.al, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.as, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %i.at = icmp ult i32 %i.ai, %i.j
  %i.au = zext i1 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = xor i64 %i.aq, -1
  %i.ay = and i64 %i.aw, %i.ax
  %i.az = shl nuw i64 %i.au, %i.ap
  %i.ba = or i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.av, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.as, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = or i64 %i.bc, %i.aq
  store i64 %i.bd, ptr %i.bb, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !484

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.k, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.be = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bf = srem i32 %i.be, 64                      ; 2 uses
  %i.bg = sdiv i32 %i.be, 64
  %i.bh = icmp slt i32 %i.bf, 0
  br i1 %i.bh, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = icmp ult i32 %i.bj, %i.j
  %i.bl = zext i1 %i.bk to i64
  %i.bm = sext i32 %i.bg to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = xor i64 %i.bq, -1
  %i.bs = and i64 %i.bo, %i.br
  %i.bt = shl nuw i64 %i.bl, %i.bp
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bn, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !484

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.bv = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.bv, 0
end_hunk_1
begin_hunk_2_@helper_vmslt_vx_w:bb.a
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmslt_vx_d(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.j = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.k = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.k, 0
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv60
  %i.n = load i64, ptr %i.m, align 8
  %i.o = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.p = sdiv i32 %i.o, 64
  %i.q = srem i32 %i.o, 64                        ; 2 uses
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.q to i64                ; 2 uses
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = and i64 %i.t, %i.v
  %.not34.us.us = icmp eq i64 %i.w, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.x = icmp slt i32 %i.q, 0
  br i1 %i.x, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %i.y = icmp slt i64 %i.n, %2
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = xor i64 %i.v, -1
  %i.ad = and i64 %i.ab, %i.ac
  %i.ae = shl nuw i64 %i.z, %i.u
  %i.af = or i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.aa, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !494

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv55
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.aj = sdiv i32 %i.ai, 64
  %i.ak = srem i32 %i.ai, 64                      ; 2 uses
  %i.al = sext i32 %i.aj to i64                   ; 3 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.ap = shl nuw i64 1, %i.ao                    ; 3 uses
  %i.aq = and i64 %i.an, %i.ap
  %.not34.us = icmp eq i64 %i.aq, 0
  %i.ar = icmp slt i32 %i.ak, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.ar, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %i.as = icmp slt i64 %i.ah, %2
  %i.at = zext i1 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = xor i64 %i.ap, -1
  %i.ax = and i64 %i.av, %i.aw
  %i.ay = shl nuw i64 %i.at, %i.ao
  %i.az = or i64 %i.ax, %i.ay
  store i64 %i.az, ptr %i.au, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.ar, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = or i64 %i.bb, %i.ap
  store i64 %i.bc, ptr %i.ba, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !494

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.j, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.bd = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.be = srem i32 %i.bd, 64                      ; 2 uses
  %i.bf = sdiv i32 %i.bd, 64
  %i.bg = icmp slt i32 %i.be, 0
  br i1 %i.bg, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp slt i64 %i.bi, %2
  %i.bk = zext i1 %i.bj to i64
  %i.bl = sext i32 %i.bf to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = xor i64 %i.bp, -1
  %i.br = and i64 %i.bn, %i.bq
  %i.bs = shl nuw i64 %i.bk, %i.bo
  %i.bt = or i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.bm, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !494

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.bu = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.bu, 0
  %i.bv = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not32, i1 %i.bv, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit37, label %.loopexit

vext_set_elem_mask.exit37:                        ; preds = %.split45.us, %vext_set_elem_mask.exit37
  %.147 = phi i32 [ %i.ce, %vext_set_elem_mask.exit37 ], [ %i.b, %.split45.us ] ; 3 uses
  %i.bw = srem i32 %.147, 64
  %i.bx = sdiv i32 %.147, 64
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.by ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = zext nneg i32 %i.bw to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = or i64 %i.ca, %i.cc
  store i64 %i.cd, ptr %i.bz, align 8
  %i.ce = add nuw nsw i32 %.147, 1                ; 2 uses
  %exitcond65.not = icmp eq i32 %i.ce, %i.f
  br i1 %exitcond65.not, label %.loopexit, label %vext_set_elem_mask.exit37, !llvm.loop !495

.loopexit:                                        ; preds = %vext_set_elem_mask.exit37, %.split45.us, %bb.g
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsleu_vx_b(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, 255                            ; 3 uses
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.j = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.k = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.k, 0
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv60
  %i.n = load i8, ptr %i.m, align 1
  %i.o = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.p = sdiv i32 %i.o, 64
  %i.q = srem i32 %i.o, 64                        ; 2 uses
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.q to i64                ; 2 uses
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = and i64 %i.t, %i.v
  %.not34.us.us = icmp eq i64 %i.w, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.x = icmp slt i32 %i.q, 0
  br i1 %i.x, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %8 = zext i8 %i.n to i32
  %9 = icmp samesign uge i32 %7, %8
  %i.y = zext i1 %9 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = xor i64 %i.v, -1
  %i.ac = and i64 %i.aa, %i.ab
  %i.ad = shl nuw i64 %i.y, %i.u
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !496

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv55
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.ai = sdiv i32 %i.ah, 64
  %i.aj = srem i32 %i.ah, 64                      ; 2 uses
  %i.ak = sext i32 %i.ai to i64                   ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.ao = shl nuw i64 1, %i.an                    ; 3 uses
  %i.ap = and i64 %i.am, %i.ao
  %.not34.us = icmp eq i64 %i.ap, 0
  %i.aq = icmp slt i32 %i.aj, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %10 = zext i8 %i.ag to i32
  %11 = icmp samesign uge i32 %7, %10
  %i.ar = zext i1 %11 to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = xor i64 %i.ao, -1
  %i.av = and i64 %i.at, %i.au
  %i.aw = shl nuw i64 %i.ar, %i.an
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = or i64 %i.az, %i.ao
  store i64 %i.ba, ptr %i.ay, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !496

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.j, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.bb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bc = srem i32 %i.bb, 64                      ; 2 uses
  %i.bd = sdiv i32 %i.bb, 64
  %i.be = icmp slt i32 %i.bc, 0
  br i1 %i.be, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.bg = load i8, ptr %i.bf, align 1
  %12 = zext i8 %i.bg to i32
  %13 = icmp samesign uge i32 %7, %12
  %i.bh = zext i1 %13 to i64
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, -1
  %i.bo = and i64 %i.bk, %i.bn
  %i.bp = shl nuw i64 %i.bh, %i.bl
  %i.bq = or i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bj, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !496

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.br = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.br, 0
  %i.bs = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not32, i1 %i.bs, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit37, label %.loopexit

vext_set_elem_mask.exit37:                        ; preds = %.split45.us, %vext_set_elem_mask.exit37
  %.147 = phi i32 [ %i.cb, %vext_set_elem_mask.exit37 ], [ %i.b, %.split45.us ] ; 3 uses
  %i.bt = srem i32 %.147, 64
  %i.bu = sdiv i32 %.147, 64
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = zext nneg i32 %i.bt to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %i.bx, %i.bz
  store i64 %i.ca, ptr %i.bw, align 8
  %i.cb = add nuw nsw i32 %.147, 1                ; 2 uses
  %exitcond65.not = icmp eq i32 %i.cb, %i.f
  br i1 %exitcond65.not, label %.loopexit, label %vext_set_elem_mask.exit37, !llvm.loop !497

.loopexit:                                        ; preds = %vext_set_elem_mask.exit37, %.split45.us, %bb.g
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsleu_vx_h(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, 65535                          ; 3 uses
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.j = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.k = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.k, 0
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv60
  %i.n = load i16, ptr %i.m, align 2
  %i.o = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.p = sdiv i32 %i.o, 64
  %i.q = srem i32 %i.o, 64                        ; 2 uses
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.q to i64                ; 2 uses
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = and i64 %i.t, %i.v
  %.not34.us.us = icmp eq i64 %i.w, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.x = icmp slt i32 %i.q, 0
  br i1 %i.x, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %8 = zext i16 %i.n to i32
  %9 = icmp samesign uge i32 %7, %8
  %i.y = zext i1 %9 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = xor i64 %i.v, -1
  %i.ac = and i64 %i.aa, %i.ab
  %i.ad = shl nuw i64 %i.y, %i.u
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !498

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv55
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.ai = sdiv i32 %i.ah, 64
  %i.aj = srem i32 %i.ah, 64                      ; 2 uses
  %i.ak = sext i32 %i.ai to i64                   ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.ao = shl nuw i64 1, %i.an                    ; 3 uses
  %i.ap = and i64 %i.am, %i.ao
  %.not34.us = icmp eq i64 %i.ap, 0
  %i.aq = icmp slt i32 %i.aj, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %10 = zext i16 %i.ag to i32
  %11 = icmp samesign uge i32 %7, %10
  %i.ar = zext i1 %11 to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = xor i64 %i.ao, -1
  %i.av = and i64 %i.at, %i.au
  %i.aw = shl nuw i64 %i.ar, %i.an
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = or i64 %i.az, %i.ao
  store i64 %i.ba, ptr %i.ay, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !498

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.j, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.bb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bc = srem i32 %i.bb, 64                      ; 2 uses
  %i.bd = sdiv i32 %i.bb, 64
  %i.be = icmp slt i32 %i.bc, 0
  br i1 %i.be, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.bg = load i16, ptr %i.bf, align 2
  %12 = zext i16 %i.bg to i32
  %13 = icmp samesign uge i32 %7, %12
  %i.bh = zext i1 %13 to i64
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, -1
  %i.bo = and i64 %i.bk, %i.bn
  %i.bp = shl nuw i64 %i.bh, %i.bl
  %i.bq = or i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bj, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !498

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.br = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.br, 0
  %i.bs = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not32, i1 %i.bs, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit37, label %.loopexit

vext_set_elem_mask.exit37:                        ; preds = %.split45.us, %vext_set_elem_mask.exit37
  %.147 = phi i32 [ %i.cb, %vext_set_elem_mask.exit37 ], [ %i.b, %.split45.us ] ; 3 uses
  %i.bt = srem i32 %.147, 64
  %i.bu = sdiv i32 %.147, 64
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = zext nneg i32 %i.bt to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %i.bx, %i.bz
  store i64 %i.ca, ptr %i.bw, align 8
  %i.cb = add nuw nsw i32 %.147, 1                ; 2 uses
  %exitcond65.not = icmp eq i32 %i.cb, %i.f
  br i1 %exitcond65.not, label %.loopexit, label %vext_set_elem_mask.exit37, !llvm.loop !499

.loopexit:                                        ; preds = %vext_set_elem_mask.exit37, %.split45.us, %bb.g
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsleu_vx_w(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  %i.j = trunc i64 %2 to i32                      ; 3 uses
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.k = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.l = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.l, 0
  %i.m = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.m, %.preheader38.split.us ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv60
  %i.o = load i32, ptr %i.n, align 4
  %i.p = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.q = sdiv i32 %i.p, 64
  %i.r = srem i32 %i.p, 64                        ; 2 uses
  %i.s = sext i32 %i.q to i64                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = zext nneg i32 %i.r to i64                ; 2 uses
  %i.w = shl nuw i64 1, %i.v                      ; 2 uses
  %i.x = and i64 %i.u, %i.w
  %.not34.us.us = icmp eq i64 %i.x, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.y = icmp slt i32 %i.r, 0
  br i1 %i.y, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %i.z = icmp ule i32 %i.o, %i.j
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = xor i64 %i.w, -1
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = shl nuw i64 %i.aa, %i.v
  %i.ag = or i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.ab, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !500

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.m, %.preheader38.split.us ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv55
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.ak = sdiv i32 %i.aj, 64
  %i.al = srem i32 %i.aj, 64                      ; 2 uses
  %i.am = sext i32 %i.ak to i64                   ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = zext nneg i32 %i.al to i64              ; 2 uses
  %i.aq = shl nuw i64 1, %i.ap                    ; 3 uses
  %i.ar = and i64 %i.ao, %i.aq
  %.not34.us = icmp eq i64 %i.ar, 0
  %i.as = icmp slt i32 %i.al, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.as, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %i.at = icmp ule i32 %i.ai, %i.j
  %i.au = zext i1 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = xor i64 %i.aq, -1
  %i.ay = and i64 %i.aw, %i.ax
  %i.az = shl nuw i64 %i.au, %i.ap
  %i.ba = or i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.av, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.as, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = or i64 %i.bc, %i.aq
  store i64 %i.bd, ptr %i.bb, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !500

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.k, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.be = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bf = srem i32 %i.be, 64                      ; 2 uses
  %i.bg = sdiv i32 %i.be, 64
  %i.bh = icmp slt i32 %i.bf, 0
  br i1 %i.bh, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = icmp ule i32 %i.bj, %i.j
  %i.bl = zext i1 %i.bk to i64
  %i.bm = sext i32 %i.bg to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = xor i64 %i.bq, -1
  %i.bs = and i64 %i.bo, %i.br
  %i.bt = shl nuw i64 %i.bl, %i.bp
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bn, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !500

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.bv = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.bv, 0
end_hunk_2
begin_hunk_3_@helper_vmsle_vx_w:bb.a
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsle_vx_d(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.j = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.k = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.k, 0
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv60
  %i.n = load i64, ptr %i.m, align 8
  %i.o = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.p = sdiv i32 %i.o, 64
  %i.q = srem i32 %i.o, 64                        ; 2 uses
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.q to i64                ; 2 uses
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = and i64 %i.t, %i.v
  %.not34.us.us = icmp eq i64 %i.w, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.x = icmp slt i32 %i.q, 0
  br i1 %i.x, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %i.y = icmp sle i64 %i.n, %2
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = xor i64 %i.v, -1
  %i.ad = and i64 %i.ab, %i.ac
  %i.ae = shl nuw i64 %i.z, %i.u
  %i.af = or i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.aa, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !510

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv55
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.aj = sdiv i32 %i.ai, 64
  %i.ak = srem i32 %i.ai, 64                      ; 2 uses
  %i.al = sext i32 %i.aj to i64                   ; 3 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.ap = shl nuw i64 1, %i.ao                    ; 3 uses
  %i.aq = and i64 %i.an, %i.ap
  %.not34.us = icmp eq i64 %i.aq, 0
  %i.ar = icmp slt i32 %i.ak, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.ar, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %i.as = icmp sle i64 %i.ah, %2
  %i.at = zext i1 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = xor i64 %i.ap, -1
  %i.ax = and i64 %i.av, %i.aw
  %i.ay = shl nuw i64 %i.at, %i.ao
  %i.az = or i64 %i.ax, %i.ay
  store i64 %i.az, ptr %i.au, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.ar, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = or i64 %i.bb, %i.ap
  store i64 %i.bc, ptr %i.ba, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !510

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.j, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.bd = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.be = srem i32 %i.bd, 64                      ; 2 uses
  %i.bf = sdiv i32 %i.bd, 64
  %i.bg = icmp slt i32 %i.be, 0
  br i1 %i.bg, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp sle i64 %i.bi, %2
  %i.bk = zext i1 %i.bj to i64
  %i.bl = sext i32 %i.bf to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = xor i64 %i.bp, -1
  %i.br = and i64 %i.bn, %i.bq
  %i.bs = shl nuw i64 %i.bk, %i.bo
  %i.bt = or i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.bm, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !510

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.bu = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.bu, 0
  %i.bv = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not32, i1 %i.bv, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit37, label %.loopexit

vext_set_elem_mask.exit37:                        ; preds = %.split45.us, %vext_set_elem_mask.exit37
  %.147 = phi i32 [ %i.ce, %vext_set_elem_mask.exit37 ], [ %i.b, %.split45.us ] ; 3 uses
  %i.bw = srem i32 %.147, 64
  %i.bx = sdiv i32 %.147, 64
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.by ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = zext nneg i32 %i.bw to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = or i64 %i.ca, %i.cc
  store i64 %i.cd, ptr %i.bz, align 8
  %i.ce = add nuw nsw i32 %.147, 1                ; 2 uses
  %exitcond65.not = icmp eq i32 %i.ce, %i.f
  br i1 %exitcond65.not, label %.loopexit, label %vext_set_elem_mask.exit37, !llvm.loop !511

.loopexit:                                        ; preds = %vext_set_elem_mask.exit37, %.split45.us, %bb.g
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsgtu_vx_b(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, 255                            ; 3 uses
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.j = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.k = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.k, 0
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv60
  %i.n = load i8, ptr %i.m, align 1
  %i.o = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.p = sdiv i32 %i.o, 64
  %i.q = srem i32 %i.o, 64                        ; 2 uses
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.q to i64                ; 2 uses
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = and i64 %i.t, %i.v
  %.not34.us.us = icmp eq i64 %i.w, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.x = icmp slt i32 %i.q, 0
  br i1 %i.x, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %8 = zext i8 %i.n to i32
  %9 = icmp samesign ult i32 %7, %8
  %i.y = zext i1 %9 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = xor i64 %i.v, -1
  %i.ac = and i64 %i.aa, %i.ab
  %i.ad = shl nuw i64 %i.y, %i.u
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !512

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv55
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.ai = sdiv i32 %i.ah, 64
  %i.aj = srem i32 %i.ah, 64                      ; 2 uses
  %i.ak = sext i32 %i.ai to i64                   ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.ao = shl nuw i64 1, %i.an                    ; 3 uses
  %i.ap = and i64 %i.am, %i.ao
  %.not34.us = icmp eq i64 %i.ap, 0
  %i.aq = icmp slt i32 %i.aj, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %10 = zext i8 %i.ag to i32
  %11 = icmp samesign ult i32 %7, %10
  %i.ar = zext i1 %11 to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = xor i64 %i.ao, -1
  %i.av = and i64 %i.at, %i.au
  %i.aw = shl nuw i64 %i.ar, %i.an
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = or i64 %i.az, %i.ao
  store i64 %i.ba, ptr %i.ay, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !512

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.j, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.bb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bc = srem i32 %i.bb, 64                      ; 2 uses
  %i.bd = sdiv i32 %i.bb, 64
  %i.be = icmp slt i32 %i.bc, 0
  br i1 %i.be, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.bg = load i8, ptr %i.bf, align 1
  %12 = zext i8 %i.bg to i32
  %13 = icmp samesign ult i32 %7, %12
  %i.bh = zext i1 %13 to i64
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, -1
  %i.bo = and i64 %i.bk, %i.bn
  %i.bp = shl nuw i64 %i.bh, %i.bl
  %i.bq = or i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bj, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !512

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.br = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.br, 0
  %i.bs = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not32, i1 %i.bs, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit37, label %.loopexit

vext_set_elem_mask.exit37:                        ; preds = %.split45.us, %vext_set_elem_mask.exit37
  %.147 = phi i32 [ %i.cb, %vext_set_elem_mask.exit37 ], [ %i.b, %.split45.us ] ; 3 uses
  %i.bt = srem i32 %.147, 64
  %i.bu = sdiv i32 %.147, 64
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = zext nneg i32 %i.bt to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %i.bx, %i.bz
  store i64 %i.ca, ptr %i.bw, align 8
  %i.cb = add nuw nsw i32 %.147, 1                ; 2 uses
  %exitcond65.not = icmp eq i32 %i.cb, %i.f
  br i1 %exitcond65.not, label %.loopexit, label %vext_set_elem_mask.exit37, !llvm.loop !513

.loopexit:                                        ; preds = %vext_set_elem_mask.exit37, %.split45.us, %bb.g
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsgtu_vx_h(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, 65535                          ; 3 uses
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.j = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.k = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.k, 0
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv60
  %i.n = load i16, ptr %i.m, align 2
  %i.o = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.p = sdiv i32 %i.o, 64
  %i.q = srem i32 %i.o, 64                        ; 2 uses
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.q to i64                ; 2 uses
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = and i64 %i.t, %i.v
  %.not34.us.us = icmp eq i64 %i.w, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.x = icmp slt i32 %i.q, 0
  br i1 %i.x, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %8 = zext i16 %i.n to i32
  %9 = icmp samesign ult i32 %7, %8
  %i.y = zext i1 %9 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = xor i64 %i.v, -1
  %i.ac = and i64 %i.aa, %i.ab
  %i.ad = shl nuw i64 %i.y, %i.u
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.z, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !514

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.l, %.preheader38.split.us ] ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv55
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.ai = sdiv i32 %i.ah, 64
  %i.aj = srem i32 %i.ah, 64                      ; 2 uses
  %i.ak = sext i32 %i.ai to i64                   ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.ao = shl nuw i64 1, %i.an                    ; 3 uses
  %i.ap = and i64 %i.am, %i.ao
  %.not34.us = icmp eq i64 %i.ap, 0
  %i.aq = icmp slt i32 %i.aj, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %10 = zext i16 %i.ag to i32
  %11 = icmp samesign ult i32 %7, %10
  %i.ar = zext i1 %11 to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = xor i64 %i.ao, -1
  %i.av = and i64 %i.at, %i.au
  %i.aw = shl nuw i64 %i.ar, %i.an
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.aq, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = or i64 %i.az, %i.ao
  store i64 %i.ba, ptr %i.ay, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !514

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.j, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.bb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bc = srem i32 %i.bb, 64                      ; 2 uses
  %i.bd = sdiv i32 %i.bb, 64
  %i.be = icmp slt i32 %i.bc, 0
  br i1 %i.be, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.bg = load i16, ptr %i.bf, align 2
  %12 = zext i16 %i.bg to i32
  %13 = icmp samesign ult i32 %7, %12
  %i.bh = zext i1 %13 to i64
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = xor i64 %i.bm, -1
  %i.bo = and i64 %i.bk, %i.bn
  %i.bp = shl nuw i64 %i.bh, %i.bl
  %i.bq = or i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bj, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !514

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.br = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.br, 0
  %i.bs = icmp ult i32 %i.b, %i.f
  %or.cond = select i1 %.not32, i1 %i.bs, i1 false
  br i1 %or.cond, label %vext_set_elem_mask.exit37, label %.loopexit

vext_set_elem_mask.exit37:                        ; preds = %.split45.us, %vext_set_elem_mask.exit37
  %.147 = phi i32 [ %i.cb, %vext_set_elem_mask.exit37 ], [ %i.b, %.split45.us ] ; 3 uses
  %i.bt = srem i32 %.147, 64
  %i.bu = sdiv i32 %.147, 64
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = zext nneg i32 %i.bt to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %i.bx, %i.bz
  store i64 %i.ca, ptr %i.bw, align 8
  %i.cb = add nuw nsw i32 %.147, 1                ; 2 uses
  %exitcond65.not = icmp eq i32 %i.cb, %i.f
  br i1 %exitcond65.not, label %.loopexit, label %vext_set_elem_mask.exit37, !llvm.loop !515

.loopexit:                                        ; preds = %vext_set_elem_mask.exit37, %.split45.us, %bb.g
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vmsgtu_vx_w(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4616
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 5340
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 3                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4620 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %.not = icmp ult i32 %i.h, %i.b
  br i1 %.not, label %.preheader38, label %bb.g

.preheader38:                                     ; preds = %bb.a
  %i.i = and i32 %5, 1024
  %.not33 = icmp eq i32 %i.i, 0
  %i.j = trunc i64 %2 to i32                      ; 3 uses
  br i1 %.not33, label %.preheader38.split.us, label %.preheader38.split.preheader

.preheader38.split.preheader:                     ; preds = %.preheader38
  %i.k = zext i32 %i.h to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader38.split

.preheader38.split.us:                            ; preds = %.preheader38
  %i.l = and i32 %5, 65536
  %.not35 = icmp eq i32 %i.l, 0
  %i.m = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count63 = zext i32 %i.b to i64       ; 2 uses
  br i1 %.not35, label %.preheader38.split.us.split.us, label %.preheader38.split.us.split

.preheader38.split.us.split.us:                   ; preds = %.preheader38.split.us, %bb.c
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.c ], [ %i.m, %.preheader38.split.us ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv60
  %i.o = load i32, ptr %i.n, align 4
  %i.p = trunc nuw i64 %indvars.iv60 to i32       ; 2 uses
  %i.q = sdiv i32 %i.p, 64
  %i.r = srem i32 %i.p, 64                        ; 2 uses
  %i.s = sext i32 %i.q to i64                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = zext nneg i32 %i.r to i64                ; 2 uses
  %i.w = shl nuw i64 1, %i.v                      ; 2 uses
  %i.x = and i64 %i.u, %i.w
  %.not34.us.us = icmp eq i64 %i.x, 0
  br i1 %.not34.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader38.split.us.split.us
  %i.y = icmp slt i32 %i.r, 0
  br i1 %i.y, label %.split.us, label %vext_set_elem_mask.exit36.us.us

vext_set_elem_mask.exit36.us.us:                  ; preds = %bb.b
  %i.z = icmp ugt i32 %i.o, %i.j
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = xor i64 %i.w, -1
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = shl nuw i64 %i.aa, %i.v
  %i.ag = or i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.ab, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader38.split.us.split.us, %vext_set_elem_mask.exit36.us.us
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.split45.us, label %.preheader38.split.us.split.us, !llvm.loop !516

.preheader38.split.us.split:                      ; preds = %.preheader38.split.us, %bb.f
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.f ], [ %i.m, %.preheader38.split.us ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv55
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.ak = sdiv i32 %i.aj, 64
  %i.al = srem i32 %i.aj, 64                      ; 2 uses
  %i.am = sext i32 %i.ak to i64                   ; 3 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = zext nneg i32 %i.al to i64              ; 2 uses
  %i.aq = shl nuw i64 1, %i.ap                    ; 3 uses
  %i.ar = and i64 %i.ao, %i.aq
  %.not34.us = icmp eq i64 %i.ar, 0
  %i.as = icmp slt i32 %i.al, 0                   ; 2 uses
  br i1 %.not34.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.as, label %.split.us, label %vext_set_elem_mask.exit36.us

vext_set_elem_mask.exit36.us:                     ; preds = %bb.d
  %i.at = icmp ugt i32 %i.ai, %i.j
  %i.au = zext i1 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = xor i64 %i.aq, -1
  %i.ay = and i64 %i.aw, %i.ax
  %i.az = shl nuw i64 %i.au, %i.ap
  %i.ba = or i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.av, align 8
  br label %bb.f

bb.e:                                             ; preds = %.preheader38.split.us.split
  br i1 %i.as, label %.split43.us, label %vext_set_elem_mask.exit.us

vext_set_elem_mask.exit.us:                       ; preds = %bb.e
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = or i64 %i.bc, %i.aq
  store i64 %i.bd, ptr %i.bb, align 8
  br label %bb.f

bb.f:                                             ; preds = %vext_set_elem_mask.exit.us, %vext_set_elem_mask.exit36.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count63
  br i1 %exitcond59.not, label %.split45.us, label %.preheader38.split.us.split, !llvm.loop !516

bb.g:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4
  br label %.loopexit

.preheader38.split:                               ; preds = %.preheader38.split.preheader, %vext_set_elem_mask.exit36
  %indvars.iv = phi i64 [ %i.k, %.preheader38.split.preheader ], [ %indvars.iv.next, %vext_set_elem_mask.exit36 ] ; 3 uses
  %i.be = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bf = srem i32 %i.be, 64                      ; 2 uses
  %i.bg = sdiv i32 %i.be, 64
  %i.bh = icmp slt i32 %i.bf, 0
  br i1 %i.bh, label %.split.us, label %vext_set_elem_mask.exit36

.split43.us:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

.split.us:                                        ; preds = %.preheader38.split, %bb.d, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__PRETTY_FUNCTION__.deposit64) #18
  unreachable

vext_set_elem_mask.exit36:                        ; preds = %.preheader38.split
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = icmp ugt i32 %i.bj, %i.j
  %i.bl = zext i1 %i.bk to i64
  %i.bm = sext i32 %i.bg to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = xor i64 %i.bq, -1
  %i.bs = and i64 %i.bo, %i.br
  %i.bt = shl nuw i64 %i.bl, %i.bp
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bn, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split45.us, label %.preheader38.split, !llvm.loop !516

.split45.us:                                      ; preds = %vext_set_elem_mask.exit36, %bb.f, %bb.c
  store i32 0, ptr %i.g, align 4
  %i.bv = and i32 %5, 32768
  %.not32 = icmp ne i32 %i.bv, 0
end_hunk_3
