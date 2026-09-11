Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ipmi_bmc_extern?download=true
inline.NumInlined: 29
inline.NumDeleted: 12
begin_hunk_0_@llvm.lifetime.end.p0
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @continue_send(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1148 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.j
  %i.d = phi i32 [ %i.b, %._crit_edge ], [ 2, %bb.j ]
  %i.e = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.j ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.i = zext i32 %i.e to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = sub i32 %i.d, %i.e
  %i.l = tail call i32 @qemu_chr_fe_write(ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, i32 noundef %i.k) #7 ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %.pre26 = load i32, ptr %i.h, align 8           ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %.pre26, %i.l                    ; 2 uses
  store i32 %i.n, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %i.n, %bb.c ], [ %.pre26, %bb.b ]
  %i.p = load i32, ptr %i.a, align 4
  %i.q = icmp ult i32 %i.o, %i.p
  br i1 %i.q, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.a, align 4
  store i32 0, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 535 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !range !7, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 534
  store i8 1, ptr %i.u, align 2
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.r, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = load i8, ptr %i.v, align 8, !range !7, !noundef !8
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !7, !noundef !8
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i8 4, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 537
  store i8 -95, ptr %i.ac, align 1
  store i32 2, ptr %i.a, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store i32 0, ptr %i.ad, align 8
  store i8 0, ptr %i.y, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 535
  store i8 1, ptr %i.ae, align 1
  br label %bb.b

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 534
  %i.ag = load i8, ptr %i.af, align 2, !range !7, !noundef !8
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.sink.split, label %bb.l

.sink.split:                                      ; preds = %bb.k, %bb.d
  %.sink30 = phi i64 [ 10000000, %bb.d ], [ 4000000000, %bb.k ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #7
  %i.al = add i64 %i.ak, %.sink30
  tail call void @timer_mod_ns(ptr noundef %i.aj, i64 noundef %i.al) #7
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #1

declare i32 @qemu_chr_fe_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @timer_mod_ns(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #1

declare void @timer_del(ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @ipmi_bmc_extern_handle_command(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 66, ptr noundef nonnull @__func__.IPMI_BMC_EXTERN) #7 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1148 ; 14 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.8) #7
  tail call void @abort() #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %2, 2
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %2, %3
  %i.i = icmp ugt i32 %2, 300
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.k = load i8, ptr %i.j, align 8, !range !7, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %.03154 = phi i8 [ -46, %bb.e ], [ -57, %bb.c ], [ -58, %bb.d ]
  %i.m = tail call ptr @object_get_class(ptr noundef %i.d) #7
  %i.n = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.m, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 132, ptr noundef nonnull @__func__.IPMI_INTERFACE_GET_CLASS) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.o = load i8, ptr %1, align 1
  %i.p = or i8 %i.o, 4
  store i8 %i.p, ptr %i.a, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.r, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %.03154, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 534
  store i8 0, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef %i.d, i8 noundef zeroext %4, ptr noundef nonnull %i.a, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  switch i8 %4, label %addchar.exit [
    i8 -96, label %bb.g
    i8 -95, label %bb.g
    i8 -86, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  store i8 -86, ptr %i.x, align 8
  store i32 1, ptr %i.e, align 4
  %i.y = or i8 %4, 16
  br label %addchar.exit

addchar.exit:                                     ; preds = %bb.f, %bb.g
  %i.z = phi i64 [ 1, %bb.g ], [ 0, %bb.f ]
  %.0.i = phi i8 [ %i.y, %bb.g ], [ %4, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 536 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %.0.i, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.e, align 4
  %i.ad = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.ad, ptr %i.e, align 4
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.h

bb.h:                                             ; preds = %addchar.exit, %addchar.exit39
  %.pre.i38 = phi i32 [ %i.ad, %addchar.exit ], [ %i.ap, %addchar.exit39 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %addchar.exit ], [ %indvars.iv.next, %addchar.exit39 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  switch i8 %i.af, label %addchar.exit39 [
    i8 -96, label %bb.i
    i8 -95, label %bb.i
    i8 -86, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ag = zext i32 %.pre.i38 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ag
  store i8 -86, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.e, align 4
  %i.aj = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.aj, ptr %i.e, align 4
  %i.ak = or i8 %i.af, 16
  br label %addchar.exit39

addchar.exit39:                                   ; preds = %bb.h, %bb.i
  %i.al = phi i32 [ %i.aj, %bb.i ], [ %.pre.i38, %bb.h ]
  %.0.i35 = phi i8 [ %i.ak, %bb.i ], [ %i.af, %bb.h ]
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.am
  store i8 %.0.i35, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.e, align 4
  %i.ap = add i32 %i.ao, 1                        ; 4 uses
  store i32 %i.ap, ptr %i.e, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %iter.check, label %bb.h, !llvm.loop !13

iter.check:                                       ; preds = %addchar.exit39
  %5 = zext nneg i32 %2 to i64                    ; 5 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i42.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check60 = icmp ult i32 %2, 32
  br i1 %min.iters.check60, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %5, 28
  %n.vec = and i64 %5, 480                        ; 5 uses
  %i.ar = getelementptr i8, ptr %1, i64 %n.vec
  %i.as = trunc nuw nsw i64 %n.vec to i32
  %i.at = sub nsw i32 %2, %i.as
  %i.au = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %4, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.au, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi61 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load62 = load <16 x i8>, ptr %i.av, align 1
  %i.aw = add <16 x i8> %wide.load, %vec.phi      ; 2 uses
  %i.ax = add <16 x i8> %wide.load62, %vec.phi61  ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.ax, %i.aw
  %i.az = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %5
  br i1 %cmp.n, label %ipmb_checksum.exit46, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i42.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.az, %vec.epilog.iter.check ], [ %4, %vector.main.loop.iter.check ]
  %n.vec64 = and i64 %5, 508                      ; 4 uses
  %i.ba = getelementptr i8, ptr %1, i64 %n.vec64
  %i.bb = trunc nuw nsw i64 %n.vec64 to i32
  %i.bc = sub nsw i32 %2, %i.bb
  %i.bd = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index65 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next69, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi66 = phi <4 x i8> [ %i.bd, %vec.epilog.ph ], [ %i.be, %vec.epilog.vector.body ]
  %next.gep67 = getelementptr i8, ptr %1, i64 %index65
  %wide.load68 = load <4 x i8>, ptr %next.gep67, align 1
  %i.be = add <4 x i8> %wide.load68, %vec.phi66   ; 2 uses
  %index.next69 = add nuw i64 %index65, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next69, %n.vec64
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bg = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.be) ; 2 uses
  %cmp.n70 = icmp eq i64 %n.vec64, %5
  br i1 %cmp.n70, label %ipmb_checksum.exit46, label %.lr.ph.i42.preheader

.lr.ph.i42.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010.i43.ph = phi i8 [ %4, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %.069.i44.ph = phi ptr [ %1, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  %.078.i45.ph = phi i32 [ %2, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.preheader, %.lr.ph.i42
  %.010.i43 = phi i8 [ %i.bi, %.lr.ph.i42 ], [ %.010.i43.ph, %.lr.ph.i42.preheader ]
  %.069.i44 = phi ptr [ %i.bk, %.lr.ph.i42 ], [ %.069.i44.ph, %.lr.ph.i42.preheader ] ; 2 uses
  %.078.i45 = phi i32 [ %i.bj, %.lr.ph.i42 ], [ %.078.i45.ph, %.lr.ph.i42.preheader ] ; 2 uses
  %i.bh = load i8, ptr %.069.i44, align 1
  %i.bi = add i8 %i.bh, %.010.i43                 ; 2 uses
  %i.bj = add nsw i32 %.078.i45, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %.069.i44, i64 1
  %i.bl = icmp samesign ugt i32 %.078.i45, 1
  br i1 %i.bl, label %.lr.ph.i42, label %ipmb_checksum.exit46, !llvm.loop !16

ipmb_checksum.exit46:                             ; preds = %.lr.ph.i42, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i8 [ %i.bg, %vec.epilog.middle.block ], [ %i.az, %middle.block ], [ %i.bi, %.lr.ph.i42 ]
  %i.bm = sub i8 0, %.lcssa                       ; 3 uses
  switch i8 %i.bm, label %addchar.exit51 [
    i8 -96, label %bb.j
    i8 -95, label %bb.j
    i8 -86, label %bb.j
  ]

bb.j:                                             ; preds = %ipmb_checksum.exit46, %ipmb_checksum.exit46, %ipmb_checksum.exit46
  %i.bn = zext i32 %i.ap to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bn
  store i8 -86, ptr %i.bo, align 1
  %i.bp = load i32, ptr %i.e, align 4
  %i.bq = add i32 %i.bp, 1                        ; 2 uses
  store i32 %i.bq, ptr %i.e, align 4
  %i.br = or i8 %i.bm, 16
  br label %addchar.exit51

addchar.exit51:                                   ; preds = %ipmb_checksum.exit46, %bb.j
  %i.bs = phi i32 [ %i.bq, %bb.j ], [ %i.ap, %ipmb_checksum.exit46 ]
  %.0.i47 = phi i8 [ %i.br, %bb.j ], [ %i.bm, %ipmb_checksum.exit46 ]
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bt
  store i8 %.0.i47, ptr %i.bu, align 1
  %i.bv = load i32, ptr %i.e, align 4
  %i.bw = add i32 %i.bv, 1                        ; 2 uses
  store i32 %i.bw, ptr %i.e, align 4
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bx
  store i8 -96, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.e, align 4
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.e, align 4
  tail call fastcc void @continue_send(ptr noundef nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %addchar.exit51, %.thread
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ipmi_bmc_extern_handle_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 66, ptr noundef nonnull @__func__.IPMI_BMC_EXTERN) #7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1160
  store i8 1, ptr %i.b, align 8
  tail call fastcc void @continue_send(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ipmi_bmc_extern_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 66, ptr noundef nonnull @__func__.IPMI_BMC_EXTERN) #7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.c = tail call zeroext i1 @qemu_chr_fe_backend_connected(ptr noundef nonnull %i.b) #7
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 490, ptr noundef nonnull @__func__.ipmi_bmc_extern_realize, ptr noundef nonnull @.str.9) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @qemu_chr_fe_set_handlers(ptr noundef nonnull %i.b, ptr noundef nonnull @can_receive, ptr noundef nonnull @receive, ptr noundef nonnull @chr_event, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext true) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare zeroext i1 @qemu_chr_fe_backend_connected(ptr noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @qemu_chr_fe_set_handlers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @can_receive(ptr nofree readnone captures(none) %0) #5 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @receive(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %handle_hw_op.exit

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 533 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 11 uses
  %i.e = getelementptr i8, ptr %0, i64 160        ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 225 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 534
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 226
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1               ; 3 uses
  switch i8 %i.l, label %bb.r [
    i8 -96, label %bb.c
    i8 -95, label %bb.l
    i8 -86, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.e, align 8
  %i.n = tail call ptr @object_get_class(ptr noundef %i.m) #7
  %i.o = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.n, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 132, ptr noundef nonnull @__func__.IPMI_INTERFACE_GET_CLASS) #7
  %i.p = load i8, ptr %i.b, align 4, !range !7, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.r, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.handle_msg) #7 ; 0 uses
  br label %handle_msg.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.d, align 8              ; 6 uses
  %i.u = icmp ult i32 %i.t, 5
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @stderr, align 8
  %i.w = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.v, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.handle_msg) #7 ; 0 uses
  br label %handle_msg.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 -58, ptr %i.g, align 4
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.z = icmp sgt i32 %i.t, 0
  br i1 %i.z, label %iter.check, label %ipmb_checksum.exit.thread.i

iter.check:                                       ; preds = %bb.i
  %i.aa = zext nneg i32 %i.t to i64               ; 5 uses
  %min.iters.check46 = icmp ult i32 %i.t, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %i.ab = and i64 %i.aa, 28
  %n.vec = and i64 %i.aa, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi47 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.f, i64 %index ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load48 = load <16 x i8>, ptr %i.ac, align 1
  %i.ad = add <16 x i8> %wide.load, %vec.phi      ; 2 uses
  %i.ae = add <16 x i8> %wide.load48, %vec.phi47  ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.ae, %i.ad
end_hunk_0
