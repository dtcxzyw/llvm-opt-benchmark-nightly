begin_hunk_0
.lr.ph55.i:                                       ; preds = %.preheader.i223
  %i.oh = ashr i64 %.sroa.0.0.copyload.i.i49.i, 32 ; 4 uses
  %i.oi = add nsw i64 %i.oh, -1
  %i.oj = sdiv i64 %i.oi, 8                       ; 3 uses
  %i.ok = icmp eq i64 %.sroa.520.0.extract.shift50.i, 0
  %.not1.i38.i = icmp slt i32 %.sroa.520.0.extract.trunc51.i, -6
  %or.cond2.i39.i = or i1 %i.ok, %.not1.i38.i
end_hunk_0
begin_hunk_1
.lr.ph.split.i40.preheader.preheader.i:           ; preds = %.lr.ph55.i
  %wide.trip.count62.i = zext nneg i32 %i.nz to i64
  %i.ol = getelementptr i8, ptr %2, i64 72
  %19 = call i64 @llvm.smax.i64(i64 %i.oj, i64 0)
  %i.om = call i64 @llvm.smax.i64(i64 %i.oj, i64 0)
  %smax450 = add nuw nsw i64 %i.om, 1             ; 2 uses
  %min.iters.check452 = icmp slt i64 %i.oh, 121
  %20 = and i64 %19, 4294967295
  %21 = icmp eq i64 %20, 4294967295
  %or.cond = select i1 %min.iters.check452, i1 true, i1 %21
  %n.vec455 = and i64 %smax450, 9223372036854775804 ; 4 uses
  %i.on = trunc i64 %n.vec455 to i32
  %cmp.n462 = icmp eq i64 %smax450, %n.vec455
end_hunk_1
begin_hunk_2

.lr.ph.split.i40.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", %.lr.ph.split.i40.preheader.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.split.i40.preheader.preheader.i ], [ %indvars.iv.next60.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i" ] ; 4 uses
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv59.i
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !239
  %i.rb = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
end_hunk_2
begin_hunk_3
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !86
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8            ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rb, i64 32
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !66
  %i.rk = zext i16 %i.ra to i64
end_hunk_3
begin_hunk_4
  %.val.val.val.i226 = load ptr, ptr %i.ol, align 8, !tbaa !159
  %i.ro = getelementptr inbounds nuw i8, ptr %.val.val.val.i226, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8            ; 2 uses
  %i.rq = trunc nuw nsw i64 %indvars.iv59.i to i32
  %i.rr = add nsw i32 %i.h, %i.rq
  %i.rs = sext i32 %i.rr to i64
  %i.rt = mul nsw i64 %i.oh, %i.rs
  %i.ru = getelementptr inbounds i8, ptr %i.rp, i64 %i.rt ; 2 uses
  br i1 %or.cond, label %.lr.ph.split.i40.i.preheader, label %vector.memcheck448

vector.memcheck448:                               ; preds = %.lr.ph.split.i40.preheader.i
  %22 = ptrtoaddr ptr %i.rp to i64
  %23 = ptrtoaddr ptr %i.rh to i64
  %24 = trunc i64 %indvars.iv59.i to i32
  %25 = add i32 %i.h, %24
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %i.oh, %26
  %i.rv = add i64 %27, %22
  %i.rw = add i64 %i.rm, %23
  %i.rx = sub i64 %i.rv, %i.rw
  %diff.check449 = icmp ult i64 %i.rx, 32
  br i1 %diff.check449, label %.lr.ph.split.i40.i.preheader, label %vector.body456
end_hunk_4
begin_hunk_5
middle.block461:                                  ; preds = %vector.body456
  br i1 %cmp.n462, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", label %.lr.ph.split.i40.i.preheader

.lr.ph.split.i40.i.preheader:                     ; preds = %vector.memcheck448, %.lr.ph.split.i40.preheader.i, %middle.block461
  %.ph = phi i64 [ 0, %vector.memcheck448 ], [ 0, %.lr.ph.split.i40.preheader.i ], [ %n.vec455, %middle.block461 ]
  %.03.i41.i.ph = phi i32 [ 0, %vector.memcheck448 ], [ 0, %.lr.ph.split.i40.preheader.i ], [ %i.on, %middle.block461 ]
  br label %.lr.ph.split.i40.i

.lr.ph.split.i40.i:                               ; preds = %.lr.ph.split.i40.i.preheader, %.lr.ph.split.i40.i
end_hunk_5
begin_hunk_6
.lr.ph52.i:                                       ; preds = %.preheader.i267
  %i.yg = ashr i64 %.sroa.0.0.copyload.i.i46.i, 32 ; 2 uses
  %i.yh = add nsw i64 %i.yg, -1
  %i.yi = sdiv i64 %i.yh, 8                       ; 3 uses
  %i.yj = icmp eq i64 %.sroa.520.0.extract.shift47.i, 0
  %.not10.i35.i = icmp slt i32 %.sroa.520.0.extract.trunc48.i, -6
  %or.cond11.i36.i = or i1 %i.yj, %.not10.i35.i
end_hunk_6
begin_hunk_7
.lr.ph.split.i37.preheader.preheader.i:           ; preds = %.lr.ph52.i
  %wide.trip.count59.i = zext nneg i32 %i.xy to i64
  %i.yk = getelementptr inbounds nuw i8, ptr %2, i64 88
  %28 = call i64 @llvm.smax.i64(i64 %i.yi, i64 0)
  %i.yl = call i64 @llvm.smax.i64(i64 %i.yi, i64 0)
  %smax412 = add nuw nsw i64 %i.yl, 1             ; 2 uses
  %min.iters.check414 = icmp slt i64 %i.yg, 121
  %29 = and i64 %28, 4294967295
  %30 = icmp eq i64 %29, 4294967295
  %or.cond467 = select i1 %min.iters.check414, i1 true, i1 %30
  %n.vec417 = and i64 %smax412, 9223372036854775804 ; 4 uses
  %i.ym = trunc i64 %n.vec417 to i32
  %cmp.n424 = icmp eq i64 %smax412, %n.vec417
end_hunk_7
begin_hunk_8
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !86
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 16
  %i.abj = load ptr, ptr %i.abi, align 8          ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abd, i64 32
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !66
  %i.abm = zext i16 %i.abc to i64
end_hunk_8
begin_hunk_9
  %i.abq = load ptr, ptr %i.yk, align 8, !tbaa !159
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %i.abs = load ptr, ptr %i.abr, align 8          ; 2 uses
  %i.abt = trunc nuw nsw i64 %indvars.iv56.i to i32
  %i.abu = add nsw i32 %i.h, %i.abt
  %i.abv = sext i32 %i.abu to i64
end_hunk_9
begin_hunk_10
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !3
  %i.aby = sext i32 %i.abx to i64                 ; 2 uses
  %i.abz = getelementptr inbounds i8, ptr %i.abs, i64 %i.aby ; 2 uses
  br i1 %or.cond467, label %.lr.ph.split.i37.i.preheader, label %vector.memcheck410

vector.memcheck410:                               ; preds = %.lr.ph.split.i37.preheader.i
  %31 = ptrtoaddr ptr %i.abs to i64
  %32 = ptrtoaddr ptr %i.abj to i64
  %i.aca = add i64 %31, %i.aby
  %i.acb = add i64 %i.abo, %32
  %i.acc = sub i64 %i.aca, %i.acb
  %diff.check411 = icmp ult i64 %i.acc, 32
  br i1 %diff.check411, label %.lr.ph.split.i37.i.preheader, label %vector.body418
end_hunk_10
begin_hunk_11
middle.block423:                                  ; preds = %vector.body418
  br i1 %cmp.n424, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", label %.lr.ph.split.i37.i.preheader

.lr.ph.split.i37.i.preheader:                     ; preds = %vector.memcheck410, %.lr.ph.split.i37.preheader.i, %middle.block423
  %.ph479 = phi i64 [ 0, %vector.memcheck410 ], [ 0, %.lr.ph.split.i37.preheader.i ], [ %n.vec417, %middle.block423 ]
  %.012.i38.i.ph = phi i32 [ 0, %vector.memcheck410 ], [ 0, %.lr.ph.split.i37.preheader.i ], [ %i.ym, %middle.block423 ]
  br label %.lr.ph.split.i37.i

.lr.ph.split.i37.i:                               ; preds = %.lr.ph.split.i37.i.preheader, %.lr.ph.split.i37.i
end_hunk_11
