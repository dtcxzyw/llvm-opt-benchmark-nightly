Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/hmat?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@build_hmat:bb.a
  %indvars.iv.next93.i = or disjoint i64 %indvars.iv92.i, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [152 x i8], ptr %i.j, i64 %indvars.iv.next93.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 17
  %i.ay = load i8, ptr %i.ax, align 1, !range !19, !noundef !20
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %i.bb = load i8, ptr %i.ba, align 2, !range !19, !noundef !20
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bd = add nuw i32 %.161.i, 1
  %i.be = zext i32 %.161.i to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.be
  %i.bg = trunc nuw nsw i64 %indvars.iv.next93.i to i32
  store i32 %i.bg, ptr %i.bf, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.161.i.1 = phi i32 [ %i.bd, %bb.l ], [ %.161.i, %bb.k ] ; 3 uses
  %indvars.iv.next93.i.1 = add nuw nsw i64 %indvars.iv92.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader74.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !8

.preheader73.i:                                   ; preds = %bb.u, %.preheader74.i
  %indvars.iv100.i = phi i64 [ 0, %.preheader74.i ], [ %indvars.iv.next101.i, %bb.u ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %indvars.iv100.i
  br label %bb.n

.preheader72.i:                                   ; preds = %bb.u
  %i.bi = load i32, ptr %2, align 8
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.preheader71.lr.ph.i, label %hmat_build_table_structs.exit

.preheader71.lr.ph.i:                             ; preds = %.preheader72.i
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 19656
  br label %.lr.ph87.i

bb.n:                                             ; preds = %bb.t, %.preheader73.i
  %indvars.iv96.i = phi i64 [ 0, %.preheader73.i ], [ %indvars.iv.next97.i, %bb.t ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv96.i
  %i.bm = load ptr, ptr %i.bl, align 8            ; 5 uses
  %.not67.i = icmp eq ptr %i.bm, null
  br i1 %.not67.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %.not68.i = icmp eq i32 %i.bq, 0
  br i1 %.not68.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load i32, ptr %2, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.bs = add i32 %i.br, %.060.lcssa.i
  %i.bt = shl i32 %i.bs, 2
  %i.bu = mul i32 %i.aj, %i.br
  %i.bv = add i32 %i.bu, 32
  %i.bw = add i32 %i.bv, %i.bt
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef 1, i32 noundef 2) #7
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef 0, i32 noundef 2) #7
  %i.bx = zext i32 %i.bw to i64
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.bx, i32 noundef 4) #7
  %i.by = load i8, ptr %i.bm, align 8             ; 2 uses
  %.not.i.i = icmp ult i8 %i.by, 16
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 99, ptr noundef nonnull @__PRETTY_FUNCTION__.build_hmat_lb) #8
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bz = zext nneg i8 %i.by to i64
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.bz, i32 noundef 1) #7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i64
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.cc, i32 noundef 1) #7
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef 0, i32 noundef 2) #7
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.ak, i32 noundef 4) #7
  %i.cd = zext i32 %i.br to i64
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.cd, i32 noundef 4) #7
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef 0, i32 noundef 4) #7
  %i.ce = load i8, ptr %i.ca, align 1
  %i.cf = icmp ult i8 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.ci = mul i64 %i.ch, 1000
  %i.cj = lshr i64 %i.ch, 20
  %.072.i.i = select i1 %i.cf, i64 %i.ci, i64 %i.cj
  %i.ck = and i64 %.072.i.i, 4294967295
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.ck, i32 noundef 8) #7
  br i1 %.not85.i.i, label %.preheader75.i.i, label %.lr.ph.i.i

.preheader75.i.i:                                 ; preds = %.lr.ph.i.i, %bb.r
  %.not86.i.i = icmp eq i32 %i.br, 0
  br i1 %.not86.i.i, label %._crit_edge.i.i, label %.lr.ph78.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.i.i
  %.076.i.i = phi i32 [ %i.cq, %.lr.ph.i.i ], [ 0, %bb.r ] ; 3 uses
  %i.cl = sext i32 %.076.i.i to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.co, i32 noundef 4) #7
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.co
  store i32 %.076.i.i, ptr %i.cp, align 4
  %i.cq = add nuw i32 %.076.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cq, %.060.lcssa.i
  br i1 %exitcond.not.i.i, label %.preheader75.i.i, label %.lr.ph.i.i, !llvm.loop !9

.lr.ph78.i.i:                                     ; preds = %.preheader75.i.i, %.lr.ph78.i.i
  %.177.i.i = phi i32 [ %i.cs, %.lr.ph78.i.i ], [ 0, %.preheader75.i.i ] ; 2 uses
  %i.cr = sext i32 %.177.i.i to i64
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.cr, i32 noundef 4) #7
  %i.cs = add nuw i32 %.177.i.i, 1                ; 2 uses
  %exitcond89.not.i.i = icmp eq i32 %i.cs, %i.br
  br i1 %exitcond89.not.i.i, label %._crit_edge.i.i, label %.lr.ph78.i.i, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %.lr.ph78.i.i, %.preheader75.i.i
  %i.ct = mul i32 %i.br, %.060.lcssa.i            ; 3 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = call noalias ptr @g_malloc0_n(i64 noundef %i.cu, i64 noundef 2) #9 ; 3 uses
  %i.cw = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i32, ptr %i.cx, align 8            ; 2 uses
  %.not87.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not87.i.i, label %.preheader.i.i, label %.lr.ph81.i.i

.lr.ph81.i.i:                                     ; preds = %._crit_edge.i.i
  %i.cz = load i64, ptr %i.cg, align 8
  %.pre.i.i = load ptr, ptr %i.cw, align 8
  br label %bb.s

.preheader.i.i:                                   ; preds = %bb.s, %._crit_edge.i.i
  %.not88.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not88.i.i, label %build_hmat_lb.exit.i, label %.lr.ph83.i.i

bb.s:                                             ; preds = %bb.s, %.lr.ph81.i.i
  %.279.i.i = phi i32 [ 0, %.lr.ph81.i.i ], [ %i.dr, %bb.s ] ; 2 uses
  %i.da = sext i32 %.279.i.i to i64
  %i.db = getelementptr inbounds [16 x i8], ptr %.pre.i.i, i64 %i.da ; 3 uses
  %i.dc = load i8, ptr %i.db, align 8
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = mul i32 %i.df, %i.br
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.di to i32
  %i.dk = add i32 %i.dg, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = udiv i64 %i.dm, %i.cz
  %i.do = trunc i64 %i.dn to i16
  %i.dp = sext i32 %i.dk to i64
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.cv, i64 %i.dp
  store i16 %i.do, ptr %i.dq, align 2
  %i.dr = add nuw i32 %.279.i.i, 1                ; 2 uses
  %exitcond95.not.i = icmp eq i32 %i.dr, %i.cy
  br i1 %exitcond95.not.i, label %.preheader.i.i, label %bb.s, !llvm.loop !11

.lr.ph83.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph83.i.i
  %.382.i.i = phi i32 [ %i.dw, %.lr.ph83.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.ds = sext i32 %.382.i.i to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.cv, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2
  %i.dv = zext i16 %i.du to i64
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.dv, i32 noundef 2) #7
  %i.dw = add nuw i32 %.382.i.i, 1                ; 2 uses
  %exitcond90.not.i.i = icmp eq i32 %i.dw, %i.ct
  br i1 %exitcond90.not.i.i, label %build_hmat_lb.exit.i, label %.lr.ph83.i.i, !llvm.loop !12

build_hmat_lb.exit.i:                             ; preds = %.lr.ph83.i.i, %.preheader.i.i
  call void @g_free(ptr noundef %i.cv) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.t

bb.t:                                             ; preds = %build_hmat_lb.exit.i, %bb.o, %bb.n
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %exitcond99.not.i = icmp eq i64 %indvars.iv.next97.i, 6
  br i1 %exitcond99.not.i, label %bb.u, label %bb.n, !llvm.loop !13

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next101.i, 4
  br i1 %exitcond103.not.i, label %.preheader72.i, label %.preheader73.i, !llvm.loop !14

.lr.ph87.i:                                       ; preds = %._crit_edge.i, %.preheader71.lr.ph.i
  %indvars.iv113.i = phi i64 [ 0, %.preheader71.lr.ph.i ], [ %indvars.iv.next114.i, %._crit_edge.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %indvars.iv113.i ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  %.not66.i = icmp ne ptr %i.dz, null             ; 2 uses
  %i.ea = zext i1 %.not66.i to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  %.not66.1.i = icmp ne ptr %i.ec, null
  %i.ed = zext i1 %.not66.1.i to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  %.not66.2.i = icmp ne ptr %i.ef, null
  %i.eg = zext i1 %.not66.2.i to i32
  %spec.select70.1.i = add nuw nsw i32 %i.eg, %i.ed ; 2 uses
  %spec.select70.2.i = add nuw nsw i32 %spec.select70.1.i, %i.ea
  %i.eh = select i1 %.not66.i, i32 2, i32 1
  %i.ei = add nuw nsw i32 %spec.select70.1.i, %i.eh
  %wide.trip.count111.i = zext nneg i32 %i.ei to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %.lr.ph87.i
  %indvars.iv108.i = phi i64 [ 0, %.lr.ph87.i ], [ %indvars.iv.next109.i, %bb.x ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv108.i
  %i.ek = load ptr, ptr %i.ej, align 8            ; 7 uses
  %.not65.i = icmp eq ptr %i.ek, null
  br i1 %.not65.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load i8, ptr %i.el, align 8
  %i.en = zext i8 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 4
  %i.ep = or disjoint i32 %i.eo, %spec.select70.2.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = shl i32 %i.er, 8
  %i.et = or i32 %i.ep, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = shl i32 %i.ev, 12
  %i.ex = or i32 %i.et, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  %i.ez = load i16, ptr %i.ey, align 4
  %i.fa = zext i16 %i.ez to i32
  %i.fb = shl nuw i32 %i.fa, 16
  %i.fc = or i32 %i.ex, %i.fb
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef 2, i32 noundef 2) #7
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef 0, i32 noundef 2) #7
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef 32, i32 noundef 4) #7
  %i.fd = load i32, ptr %i.ek, align 8
  %i.fe = zext i32 %i.fd to i64
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.fe, i32 noundef 4) #7
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef 0, i32 noundef 4) #7
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.fg = load i64, ptr %i.ff, align 8
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.fg, i32 noundef 8) #7
  %i.fh = zext i32 %i.fc to i64
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef %i.fh, i32 noundef 4) #7
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef 0, i32 noundef 2) #7
  call void @build_append_int_noprefix(ptr noundef %0, i64 noundef 0, i32 noundef 2) #7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 2 uses
  %exitcond112.i = icmp eq i64 %indvars.iv.next109.i, %wide.trip.count111.i
  br i1 %exitcond112.i, label %._crit_edge.i, label %bb.v, !llvm.loop !15

._crit_edge.i:                                    ; preds = %bb.x
  %.pre116.i = load i32, ptr %2, align 8
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1 ; 2 uses
  %i.fi = sext i32 %.pre116.i to i64
  %i.fj = icmp slt i64 %indvars.iv.next114.i, %i.fi
  br i1 %i.fj, label %.lr.ph87.i, label %hmat_build_table_structs.exit, !llvm.loop !16

hmat_build_table_structs.exit:                    ; preds = %._crit_edge.i, %.preheader72.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @acpi_table_end(ptr noundef %1, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @acpi_table_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @acpi_table_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @build_append_int_noprefix(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !18}
!8 = distinct !{!8, !18}
!9 = distinct !{!9, !18}
!10 = distinct !{!10, !18}
!11 = distinct !{!11, !18}
!12 = distinct !{!12, !18}
!13 = distinct !{!13, !18}
!14 = distinct !{!14, !18}
!15 = distinct !{!15, !18}
!16 = distinct !{!16, !18}
!17 = !{!"auto-init"}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{i8 0, i8 2}
!20 = !{}
end_hunk_0
