inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_fclamp_s:bb.a
  %.02426 = phi i64 [ %i.o, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02426
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02426
  %i.n = load i32, ptr %i.m, align 4
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %.02426
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.o = add nuw nsw i64 %.02426, 1               ; 2 uses
  %exitcond28.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond28.not, label %.split27, label %.lr.ph, !llvm.loop !923

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.b ] ; 2 uses
  %.idx = shl i64 %.025, 8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 2 uses
  %i.p = load i32, ptr %gep, align 4
  %i.q = tail call i32 @float32_minmax(i32 noundef %i.l, i32 noundef %i.p, ptr noundef %3, i32 noundef 2) #15
  %i.r = tail call i32 @float32_minmax(i32 noundef %i.q, i32 noundef %i.n, ptr noundef %3, i32 noundef 3) #15
  store i32 %i.r, ptr %gep, align 4
  %i.s = add nuw i64 %.025, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !924
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sme2_fclamp_d(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %4, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %.v.i to i64
  %i.f = ashr i32 %4, 10                          ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.split27, label %.lr.ph

.split27:                                         ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %._crit_edge
  %.02426 = phi i64 [ %i.l, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02426
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.02426
  %i.k = load i64, ptr %i.j, align 8
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %.02426
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.l = add nuw nsw i64 %.02426, 1               ; 2 uses
  %exitcond28.not = icmp eq i64 %i.l, %i.e
  br i1 %exitcond28.not, label %.split27, label %.lr.ph, !llvm.loop !925

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %.idx = shl i64 %.025, 8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 2 uses
  %i.m = load i64, ptr %gep, align 8
  %i.n = tail call i64 @float64_minmax(i64 noundef %i.i, i64 noundef %i.m, ptr noundef %3, i32 noundef 2) #15
  %i.o = tail call i64 @float64_minmax(i64 noundef %i.n, i64 noundef %i.k, ptr noundef %3, i32 noundef 3) #15
  store i64 %i.o, ptr %gep, align 8
  %i.p = add nuw i64 %.025, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !926
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sme2_bfclamp(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = ashr i32 %4, 10                          ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.split27, label %.lr.ph

.split27:                                         ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %._crit_edge
  %.02426 = phi i64 [ %i.o, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02426
  %i.l = load i16, ptr %i.k, align 2
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.02426
  %i.n = load i16, ptr %i.m, align 2
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %.02426
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.o = add nuw nsw i64 %.02426, 1               ; 2 uses
  %exitcond28.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond28.not, label %.split27, label %.lr.ph, !llvm.loop !927

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.b ] ; 2 uses
  %.idx = shl i64 %.025, 8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 2 uses
  %i.p = load i16, ptr %gep, align 2
  %i.q = tail call zeroext i16 @bfloat16_minmax(i16 noundef zeroext %i.l, i16 noundef zeroext %i.p, ptr noundef %3, i32 noundef 2) #15
  %i.r = tail call zeroext i16 @bfloat16_minmax(i16 noundef zeroext %i.q, i16 noundef zeroext %i.n, ptr noundef %3, i32 noundef 3) #15
  store i16 %i.r, ptr %gep, align 2
  %i.s = add nuw i64 %.025, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !928
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sel_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 6 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %i.d = lshr i32 %4, 8
  %i.e = and i32 %i.d, 3                          ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 3
  %i.g = shl i32 %4, 3
  %i.h = and i32 %i.g, 2040
  %i.i = icmp eq i32 %i.e, 2
  %.v.v.i = select i1 %i.i, i32 %i.h, i32 %i.f    ; 11 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 27 uses
  %i.j = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.k = ashr i32 %4, 10                          ; 7 uses
  %i.l = and i32 %3, 15
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %.preheader201, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 4 uses
  %i.n = add nsw i64 %i.j, -1
  %i.o = tail call range(i64 53, 65) i64 @llvm.ctlz.i64(i64 range(i64 7, 2048) %i.n, i1 true)
  %i.p = add nuw nsw i64 %i.o, 4294967295
  %i.q = and i64 %i.p, 4294967295
  %i.r = lshr exact i64 -9223372036854775808, %i.q
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 3
  %i.u = add nsw i32 %i.t, -1
  %i.v = and i32 %i.u, %3
  %i.w = add nuw nsw i32 %i.m, 1
  %i.x = lshr i32 %i.v, %i.w                      ; 5 uses
  %i.y = and i32 %3, 32768
  %.not374 = icmp eq i32 %i.y, 0                  ; 2 uses
  %.not29.i = icmp eq i32 %i.m, 0
  br i1 %.not29.i, label %decode_counter.exit.thread349, label %decode_counter.exit, !prof !62

decode_counter.exit.thread349:                    ; preds = %bb.b
  br i1 %.not374, label %.preheader201, label %.preheader196

decode_counter.exit:                              ; preds = %bb.b
  %i.z = shl i32 %i.x, %i.m                       ; 6 uses
  %i.aa = shl nuw i32 1, %i.m
  %.fr244 = freeze i32 %i.aa                      ; 13 uses
  %i.ab = icmp sgt i32 %i.k, 0                    ; 2 uses
  br i1 %.not374, label %.preheader207, label %.preheader204

.preheader201:                                    ; preds = %bb.a, %decode_counter.exit.thread349
  %.sroa.0119.sroa.0.0.extract.trunc194354 = phi i32 [ %i.x, %decode_counter.exit.thread349 ], [ 0, %bb.a ] ; 3 uses
  %i.ac = icmp sgt i32 %i.k, 0
  br i1 %i.ac, label %.lr.ph237.preheader, label %.loopexit197

.lr.ph237.preheader:                              ; preds = %.preheader201
  %wide.trip.count320 = zext nneg i32 %i.k to i64
  %i.ad = or disjoint i32 %.v.v.i, 7
  %i.ae = sub i32 %i.ad, %.sroa.0119.sroa.0.0.extract.trunc194354
  %i.af = sub i64 %i.a, %i.c
  %diff.check623 = icmp ugt i64 %i.af, -32
  %i.ag = sub i64 %i.b, %i.c
  %diff.check594 = icmp ugt i64 %i.ag, -32
  %invariant.op701 = sub i32 -8, %.v.v.i
  br label %.lr.ph237

.preheader196:                                    ; preds = %decode_counter.exit.thread349
  %i.ah = icmp sgt i32 %i.k, 0
  br i1 %i.ah, label %.lr.ph243.preheader, label %.loopexit197

.lr.ph243.preheader:                              ; preds = %.preheader196
  %wide.trip.count339 = zext nneg i32 %i.k to i64
  %i.ai = or disjoint i32 %.v.v.i, 7
  %i.aj = sub nsw i32 %i.ai, %i.x
  %i.ak = sub i64 %i.b, %i.c
  %diff.check566 = icmp ugt i64 %i.ak, -32
  %i.al = sub i64 %i.a, %i.c
  %diff.check537 = icmp ugt i64 %i.al, -32
  %invariant.op700 = sub i32 -8, %.v.v.i
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %.loopexit
  %indvars.iv336 = phi i64 [ 0, %.lr.ph243.preheader ], [ %indvars.iv.next337, %.loopexit ] ; 4 uses
  %indvars.iv326 = phi i32 [ %i.x, %.lr.ph243.preheader ], [ %indvars.iv.next327.reass.reass, %.loopexit ] ; 6 uses
  %5 = zext i32 %indvars.iv326 to i64             ; 2 uses
  %6 = zext i32 %indvars.iv326 to i64             ; 5 uses
  %i.am = trunc i64 %indvars.iv336 to i32
  %i.an = mul i32 %.v.i, %i.am
  %i.ao = add i32 %i.an, %i.aj                    ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 5 uses
  %i.ar = zext i32 %indvars.iv326 to i64          ; 6 uses
  %i.as = shl nuw nsw i64 %indvars.iv336, 8       ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as ; 11 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.as ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %i.as ; 8 uses
  %i.aw = trunc i64 %indvars.iv336 to i32
  %i.ax = mul i32 %.v.i, %i.aw
  %i.ay = sub i32 %i.x, %i.ax                     ; 2 uses
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %.lr.ph243
  %.not186 = icmp slt i32 %i.ay, %.v.i
  br i1 %.not186, label %iter.check580, label %.loopexit.sink.split

iter.check580:                                    ; preds = %bb.c
  %min.iters.check567 = icmp ult i32 %indvars.iv326, 4
  %or.cond = or i1 %min.iters.check567, %diff.check566
  br i1 %or.cond, label %.lr.ph239.preheader, label %vector.main.loop.iter.check568

vector.main.loop.iter.check568:                   ; preds = %iter.check580
  %min.iters.check569 = icmp ult i32 %indvars.iv326, 32
  br i1 %min.iters.check569, label %vec.epilog.ph584, label %vector.ph570

vector.ph570:                                     ; preds = %vector.main.loop.iter.check568
  %i.ba = and i64 %6, 28
  %n.vec571 = and i64 %6, 4294967264              ; 4 uses
  br label %vector.body572

vector.body572:                                   ; preds = %vector.body572, %vector.ph570
  %index573 = phi i64 [ 0, %vector.ph570 ], [ %index.next576, %vector.body572 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %index573 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load574 = load <16 x i8>, ptr %i.bb, align 1
  %wide.load575 = load <16 x i8>, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 %index573 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <16 x i8> %wide.load574, ptr %i.bd, align 1
  store <16 x i8> %wide.load575, ptr %i.be, align 1
  %index.next576 = add nuw i64 %index573, 32      ; 2 uses
  %i.bf = icmp eq i64 %index.next576, %n.vec571
  br i1 %i.bf, label %middle.block577, label %vector.body572, !llvm.loop !929

middle.block577:                                  ; preds = %vector.body572
  %cmp.n578 = icmp eq i64 %n.vec571, %6
  br i1 %cmp.n578, label %iter.check552, label %vec.epilog.iter.check582

vec.epilog.iter.check582:                         ; preds = %middle.block577
  %min.epilog.iters.check583 = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check583, label %.lr.ph239.preheader, label %vec.epilog.ph584, !prof !930

vec.epilog.ph584:                                 ; preds = %vector.main.loop.iter.check568, %vec.epilog.iter.check582
  %vec.epilog.resume.val579 = phi i64 [ %n.vec571, %vec.epilog.iter.check582 ], [ 0, %vector.main.loop.iter.check568 ]
  %n.vec585 = and i64 %6, 4294967292              ; 3 uses
  br label %vec.epilog.vector.body586

vec.epilog.vector.body586:                        ; preds = %vec.epilog.vector.body586, %vec.epilog.ph584
  %index587 = phi i64 [ %vec.epilog.resume.val579, %vec.epilog.ph584 ], [ %index.next589, %vec.epilog.vector.body586 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 %index587
  %wide.load588 = load <4 x i8>, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 %index587
  store <4 x i8> %wide.load588, ptr %i.bh, align 1
  %index.next589 = add nuw i64 %index587, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next589, %n.vec585
  br i1 %i.bi, label %vec.epilog.middle.block590, label %vec.epilog.vector.body586, !llvm.loop !931

vec.epilog.middle.block590:                       ; preds = %vec.epilog.vector.body586
  %cmp.n591 = icmp eq i64 %n.vec585, %6
  br i1 %cmp.n591, label %iter.check552, label %.lr.ph239.preheader

.lr.ph239.preheader:                              ; preds = %iter.check580, %vec.epilog.iter.check582, %vec.epilog.middle.block590
  %indvars.iv323.ph = phi i64 [ 0, %iter.check580 ], [ %n.vec571, %vec.epilog.iter.check582 ], [ %n.vec585, %vec.epilog.middle.block590 ] ; 3 uses
  %xtraiter679 = and i64 %5, 3                    ; 2 uses
  %lcmp.mod680.not = icmp eq i64 %xtraiter679, 0
  br i1 %lcmp.mod680.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol

.lr.ph239.prol:                                   ; preds = %.lr.ph239.preheader, %.lr.ph239.prol
  %indvars.iv323.prol = phi i64 [ %indvars.iv.next324.prol, %.lr.ph239.prol ], [ %indvars.iv323.ph, %.lr.ph239.preheader ] ; 3 uses
  %prol.iter681 = phi i64 [ %prol.iter681.next, %.lr.ph239.prol ], [ 0, %.lr.ph239.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv323.prol
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv323.prol
  store i8 %i.bk, ptr %i.bl, align 1
  %indvars.iv.next324.prol = add nuw nsw i64 %indvars.iv323.prol, 1 ; 2 uses
  %prol.iter681.next = add i64 %prol.iter681, 1   ; 2 uses
  %prol.iter681.cmp.not = icmp eq i64 %prol.iter681.next, %xtraiter679
  br i1 %prol.iter681.cmp.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol, !llvm.loop !932

.lr.ph239.prol.loopexit:                          ; preds = %.lr.ph239.prol, %.lr.ph239.preheader
  %indvars.iv323.unr = phi i64 [ %indvars.iv323.ph, %.lr.ph239.preheader ], [ %indvars.iv.next324.prol, %.lr.ph239.prol ]
  %i.bm = sub nsw i64 %indvars.iv323.ph, %5
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %iter.check552, label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239
  %indvars.iv323 = phi i64 [ %indvars.iv.next324.3, %.lr.ph239 ], [ %indvars.iv323.unr, %.lr.ph239.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv323
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv323
  store i8 %i.bp, ptr %i.bq, align 1
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv.next324
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.next324
  store i8 %i.bs, ptr %i.bt, align 1
  %indvars.iv.next324.1 = add nuw nsw i64 %indvars.iv323, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv.next324.1
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.next324.1
  store i8 %i.bv, ptr %i.bw, align 1
  %indvars.iv.next324.2 = add nuw nsw i64 %indvars.iv323, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv.next324.2
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.next324.2
  store i8 %i.by, ptr %i.bz, align 1
  %indvars.iv.next324.3 = add nuw nsw i64 %indvars.iv323, 4 ; 2 uses
  %exitcond329.not.3 = icmp eq i64 %indvars.iv.next324.3, %i.ar
  br i1 %exitcond329.not.3, label %iter.check552, label %.lr.ph239, !llvm.loop !933

iter.check552:                                    ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239, %vec.epilog.middle.block590, %middle.block577
  %min.iters.check538 = icmp ult i32 %i.ao, 7
  %or.cond653.a = or i1 %min.iters.check538, %diff.check537
  br i1 %or.cond653.a, label %.lr.ph241.preheader, label %vector.main.loop.iter.check539

vector.main.loop.iter.check539:                   ; preds = %iter.check552
  %min.iters.check540 = icmp ult i32 %i.ao, 31
  br i1 %min.iters.check540, label %vec.epilog.ph556, label %vector.ph541

vector.ph541:                                     ; preds = %vector.main.loop.iter.check539
  %i.ca = and i64 %i.aq, 24
  %n.vec542 = and i64 %i.aq, 8589934560           ; 4 uses
  %i.cb = add nuw nsw i64 %n.vec542, %i.ar
  br label %vector.body543

vector.body543:                                   ; preds = %vector.body543, %vector.ph541
  %index544 = phi i64 [ 0, %vector.ph541 ], [ %index.next547, %vector.body543 ] ; 2 uses
  %i.cc = add nuw i64 %index544, %i.ar            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load545 = load <16 x i8>, ptr %i.cd, align 1
  %wide.load546 = load <16 x i8>, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cc ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <16 x i8> %wide.load545, ptr %i.cf, align 1
  store <16 x i8> %wide.load546, ptr %i.cg, align 1
  %index.next547 = add nuw i64 %index544, 32      ; 2 uses
  %i.ch = icmp eq i64 %index.next547, %n.vec542
  br i1 %i.ch, label %middle.block548, label %vector.body543, !llvm.loop !934

middle.block548:                                  ; preds = %vector.body543
  %cmp.n549 = icmp eq i64 %i.aq, %n.vec542
  br i1 %cmp.n549, label %.loopexit, label %vec.epilog.iter.check554

vec.epilog.iter.check554:                         ; preds = %middle.block548
  %min.epilog.iters.check555 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check555, label %.lr.ph241.preheader, label %vec.epilog.ph556, !prof !935

vec.epilog.ph556:                                 ; preds = %vector.main.loop.iter.check539, %vec.epilog.iter.check554
  %vec.epilog.resume.val550 = phi i64 [ %n.vec542, %vec.epilog.iter.check554 ], [ 0, %vector.main.loop.iter.check539 ]
  %n.vec557 = and i64 %i.aq, 8589934584           ; 3 uses
  %i.ci = add nuw nsw i64 %n.vec557, %i.ar
  br label %vec.epilog.vector.body558

vec.epilog.vector.body558:                        ; preds = %vec.epilog.vector.body558, %vec.epilog.ph556
  %index559 = phi i64 [ %vec.epilog.resume.val550, %vec.epilog.ph556 ], [ %index.next561, %vec.epilog.vector.body558 ] ; 2 uses
  %i.cj = add nuw i64 %index559, %i.ar            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.cj
  %wide.load560 = load <8 x i8>, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.cj
  store <8 x i8> %wide.load560, ptr %i.cl, align 1
  %index.next561 = add nuw i64 %index559, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next561, %n.vec557
  br i1 %i.cm, label %vec.epilog.middle.block562, label %vec.epilog.vector.body558, !llvm.loop !936

vec.epilog.middle.block562:                       ; preds = %vec.epilog.vector.body558
  %cmp.n563 = icmp eq i64 %i.aq, %n.vec557
  br i1 %cmp.n563, label %.loopexit, label %.lr.ph241.preheader

.lr.ph241.preheader:                              ; preds = %iter.check552, %vec.epilog.iter.check554, %vec.epilog.middle.block562
  %indvars.iv333.ph = phi i64 [ %i.ar, %iter.check552 ], [ %i.cb, %vec.epilog.iter.check554 ], [ %i.ci, %vec.epilog.middle.block562 ]
  br label %.lr.ph241

.lr.ph241:                                        ; preds = %.lr.ph241.preheader, %.lr.ph241
  %indvars.iv333 = phi i64 [ %indvars.iv.next334, %.lr.ph241 ], [ %indvars.iv333.ph, %.lr.ph241.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv333
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv333
  store i8 %i.co, ptr %i.cp, align 1
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.next334 to i32
  %i.cr = icmp sgt i32 %.v.i, %i.cq
  br i1 %i.cr, label %.lr.ph241, label %.loopexit, !llvm.loop !937

.loopexit.sink.split:                             ; preds = %bb.c, %.lr.ph243
  %.sink = phi ptr [ %i.au, %.lr.ph243 ], [ %i.av, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr noundef nonnull align 1 dereferenceable(1) %.sink, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph241, %middle.block548, %vec.epilog.middle.block562, %.loopexit.sink.split
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %indvars.iv.next327.reass.reass = add i32 %indvars.iv326, %invariant.op700
  %exitcond340.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count339
  br i1 %exitcond340.not, label %.loopexit197, label %.lr.ph243, !llvm.loop !938

.lr.ph237:                                        ; preds = %.lr.ph237.preheader, %.loopexit199
  %indvars.iv317 = phi i64 [ 0, %.lr.ph237.preheader ], [ %indvars.iv.next318, %.loopexit199 ] ; 4 uses
  %indvars.iv307.a = phi i32 [ %.sroa.0119.sroa.0.0.extract.trunc194354, %.lr.ph237.preheader ], [ %indvars.iv.next308.reass.reass, %.loopexit199 ] ; 6 uses
  %7 = zext i32 %indvars.iv307.a to i64           ; 2 uses
  %8 = zext i32 %indvars.iv307.a to i64           ; 5 uses
  %i.cs = trunc i64 %indvars.iv317 to i32
  %i.ct = mul i32 %.v.i, %i.cs
  %i.cu = add i32 %i.ct, %i.ae                    ; 3 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 5 uses
  %i.cx = zext i32 %indvars.iv307.a to i64        ; 6 uses
  %i.cy = shl nuw nsw i64 %indvars.iv317, 8       ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy ; 11 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.cy ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 4 uses
  %i.dc = trunc i64 %indvars.iv317 to i32
  %i.dd = mul i32 %.v.i, %i.dc
  %i.de = sub i32 %.sroa.0119.sroa.0.0.extract.trunc194354, %i.dd ; 2 uses
  %i.df = icmp slt i32 %i.de, 1
  br i1 %i.df, label %.loopexit199.sink.split, label %bb.d

bb.d:                                             ; preds = %.lr.ph237
  %.not = icmp slt i32 %i.de, %.v.i
  br i1 %.not, label %iter.check637, label %.loopexit199.sink.split

iter.check637:                                    ; preds = %bb.d
  %min.iters.check624 = icmp ult i32 %indvars.iv307.a, 4
  %or.cond654 = or i1 %min.iters.check624, %diff.check623
  br i1 %or.cond654, label %.lr.ph233.preheader, label %vector.main.loop.iter.check625

vector.main.loop.iter.check625:                   ; preds = %iter.check637
  %min.iters.check626 = icmp ult i32 %indvars.iv307.a, 32
  br i1 %min.iters.check626, label %vec.epilog.ph641, label %vector.ph627

vector.ph627:                                     ; preds = %vector.main.loop.iter.check625
  %i.dg = and i64 %8, 28
  %n.vec628 = and i64 %8, 4294967264              ; 4 uses
  br label %vector.body629

vector.body629:                                   ; preds = %vector.body629, %vector.ph627
  %index630 = phi i64 [ 0, %vector.ph627 ], [ %index.next633, %vector.body629 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 %index630 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load631 = load <16 x i8>, ptr %i.dh, align 1
  %wide.load632 = load <16 x i8>, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index630 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <16 x i8> %wide.load631, ptr %i.dj, align 1
  store <16 x i8> %wide.load632, ptr %i.dk, align 1
  %index.next633 = add nuw i64 %index630, 32      ; 2 uses
  %i.dl = icmp eq i64 %index.next633, %n.vec628
  br i1 %i.dl, label %middle.block634, label %vector.body629, !llvm.loop !939

middle.block634:                                  ; preds = %vector.body629
  %cmp.n635 = icmp eq i64 %n.vec628, %8
  br i1 %cmp.n635, label %iter.check609, label %vec.epilog.iter.check639

vec.epilog.iter.check639:                         ; preds = %middle.block634
  %min.epilog.iters.check640 = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check640, label %.lr.ph233.preheader, label %vec.epilog.ph641, !prof !930

vec.epilog.ph641:                                 ; preds = %vector.main.loop.iter.check625, %vec.epilog.iter.check639
  %vec.epilog.resume.val636 = phi i64 [ %n.vec628, %vec.epilog.iter.check639 ], [ 0, %vector.main.loop.iter.check625 ]
  %n.vec642 = and i64 %8, 4294967292              ; 3 uses
  br label %vec.epilog.vector.body643

vec.epilog.vector.body643:                        ; preds = %vec.epilog.vector.body643, %vec.epilog.ph641
  %index644 = phi i64 [ %vec.epilog.resume.val636, %vec.epilog.ph641 ], [ %index.next646, %vec.epilog.vector.body643 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 %index644
  %wide.load645 = load <4 x i8>, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index644
  store <4 x i8> %wide.load645, ptr %i.dn, align 1
  %index.next646 = add nuw i64 %index644, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next646, %n.vec642
  br i1 %i.do, label %vec.epilog.middle.block647, label %vec.epilog.vector.body643, !llvm.loop !940

vec.epilog.middle.block647:                       ; preds = %vec.epilog.vector.body643
  %cmp.n648 = icmp eq i64 %n.vec642, %8
  br i1 %cmp.n648, label %iter.check609, label %.lr.ph233.preheader

.lr.ph233.preheader:                              ; preds = %iter.check637, %vec.epilog.iter.check639, %vec.epilog.middle.block647
  %indvars.iv304.ph = phi i64 [ 0, %iter.check637 ], [ %n.vec628, %vec.epilog.iter.check639 ], [ %n.vec642, %vec.epilog.middle.block647 ] ; 3 uses
  %xtraiter682 = and i64 %7, 3                    ; 2 uses
  %lcmp.mod683.not = icmp eq i64 %xtraiter682, 0
  br i1 %lcmp.mod683.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol

.lr.ph233.prol:                                   ; preds = %.lr.ph233.preheader, %.lr.ph233.prol
  %indvars.iv304.prol = phi i64 [ %indvars.iv.next305.prol, %.lr.ph233.prol ], [ %indvars.iv304.ph, %.lr.ph233.preheader ] ; 3 uses
  %prol.iter684 = phi i64 [ %prol.iter684.next, %.lr.ph233.prol ], [ 0, %.lr.ph233.preheader ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv304.prol
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv304.prol
  store i8 %i.dq, ptr %i.dr, align 1
  %indvars.iv.next305.prol = add nuw nsw i64 %indvars.iv304.prol, 1 ; 2 uses
  %prol.iter684.next = add i64 %prol.iter684, 1   ; 2 uses
  %prol.iter684.cmp.not = icmp eq i64 %prol.iter684.next, %xtraiter682
  br i1 %prol.iter684.cmp.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol, !llvm.loop !941

.lr.ph233.prol.loopexit:                          ; preds = %.lr.ph233.prol, %.lr.ph233.preheader
  %indvars.iv304.unr = phi i64 [ %indvars.iv304.ph, %.lr.ph233.preheader ], [ %indvars.iv.next305.prol, %.lr.ph233.prol ]
  %i.ds = sub nsw i64 %indvars.iv304.ph, %7
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %iter.check609, label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233
  %indvars.iv304 = phi i64 [ %indvars.iv.next305.3, %.lr.ph233 ], [ %indvars.iv304.unr, %.lr.ph233.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv304
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv304
  store i8 %i.dv, ptr %i.dw, align 1
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.next305
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next305
  store i8 %i.dy, ptr %i.dz, align 1
  %indvars.iv.next305.1 = add nuw nsw i64 %indvars.iv304, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.next305.1
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next305.1
  store i8 %i.eb, ptr %i.ec, align 1
  %indvars.iv.next305.2 = add nuw nsw i64 %indvars.iv304, 3 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.next305.2
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next305.2
  store i8 %i.ee, ptr %i.ef, align 1
  %indvars.iv.next305.3 = add nuw nsw i64 %indvars.iv304, 4 ; 2 uses
  %exitcond310.not.3 = icmp eq i64 %indvars.iv.next305.3, %i.cx
  br i1 %exitcond310.not.3, label %iter.check609, label %.lr.ph233, !llvm.loop !942

iter.check609:                                    ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233, %vec.epilog.middle.block647, %middle.block634
  %min.iters.check595 = icmp ult i32 %i.cu, 7
  %or.cond655 = or i1 %min.iters.check595, %diff.check594
  br i1 %or.cond655, label %.lr.ph235.preheader, label %vector.main.loop.iter.check596

vector.main.loop.iter.check596:                   ; preds = %iter.check609
  %min.iters.check597 = icmp ult i32 %i.cu, 31
  br i1 %min.iters.check597, label %vec.epilog.ph613, label %vector.ph598

vector.ph598:                                     ; preds = %vector.main.loop.iter.check596
  %i.eg = and i64 %i.cw, 24
  %n.vec599 = and i64 %i.cw, 8589934560           ; 4 uses
  %i.eh = add nuw nsw i64 %n.vec599, %i.cx
  br label %vector.body600

vector.body600:                                   ; preds = %vector.body600, %vector.ph598
  %index601 = phi i64 [ 0, %vector.ph598 ], [ %index.next604, %vector.body600 ] ; 2 uses
  %i.ei = add nuw i64 %index601, %i.cx            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load602 = load <16 x i8>, ptr %i.ej, align 1
  %wide.load603 = load <16 x i8>, ptr %i.ek, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ei ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <16 x i8> %wide.load602, ptr %i.el, align 1
  store <16 x i8> %wide.load603, ptr %i.em, align 1
  %index.next604 = add nuw i64 %index601, 32      ; 2 uses
  %i.en = icmp eq i64 %index.next604, %n.vec599
  br i1 %i.en, label %middle.block605, label %vector.body600, !llvm.loop !943

middle.block605:                                  ; preds = %vector.body600
  %cmp.n606 = icmp eq i64 %i.cw, %n.vec599
  br i1 %cmp.n606, label %.loopexit199, label %vec.epilog.iter.check611

vec.epilog.iter.check611:                         ; preds = %middle.block605
  %min.epilog.iters.check612 = icmp eq i64 %i.eg, 0
  br i1 %min.epilog.iters.check612, label %.lr.ph235.preheader, label %vec.epilog.ph613, !prof !935

vec.epilog.ph613:                                 ; preds = %vector.main.loop.iter.check596, %vec.epilog.iter.check611
  %vec.epilog.resume.val607 = phi i64 [ %n.vec599, %vec.epilog.iter.check611 ], [ 0, %vector.main.loop.iter.check596 ]
  %n.vec614 = and i64 %i.cw, 8589934584           ; 3 uses
  %i.eo = add nuw nsw i64 %n.vec614, %i.cx
  br label %vec.epilog.vector.body615

vec.epilog.vector.body615:                        ; preds = %vec.epilog.vector.body615, %vec.epilog.ph613
  %index616 = phi i64 [ %vec.epilog.resume.val607, %vec.epilog.ph613 ], [ %index.next618, %vec.epilog.vector.body615 ] ; 2 uses
  %i.ep = add nuw i64 %index616, %i.cx            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ep
  %wide.load617 = load <8 x i8>, ptr %i.eq, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ep
  store <8 x i8> %wide.load617, ptr %i.er, align 1
  %index.next618 = add nuw i64 %index616, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next618, %n.vec614
  br i1 %i.es, label %vec.epilog.middle.block619, label %vec.epilog.vector.body615, !llvm.loop !944

vec.epilog.middle.block619:                       ; preds = %vec.epilog.vector.body615
  %cmp.n620 = icmp eq i64 %i.cw, %n.vec614
  br i1 %cmp.n620, label %.loopexit199, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %iter.check609, %vec.epilog.iter.check611, %vec.epilog.middle.block619
  %indvars.iv314.ph = phi i64 [ %i.cx, %iter.check609 ], [ %i.eh, %vec.epilog.iter.check611 ], [ %i.eo, %vec.epilog.middle.block619 ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %.lr.ph235 ], [ %indvars.iv314.ph, %.lr.ph235.preheader ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.db, i64 %indvars.iv314
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv314
  store i8 %i.eu, ptr %i.ev, align 1
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %i.ew = trunc nuw i64 %indvars.iv.next315 to i32
  %i.ex = icmp sgt i32 %.v.i, %i.ew
  br i1 %i.ex, label %.lr.ph235, label %.loopexit199, !llvm.loop !945

.loopexit199.sink.split:                          ; preds = %bb.d, %.lr.ph237
  %.sink372 = phi ptr [ %i.db, %.lr.ph237 ], [ %i.da, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cz, ptr noundef nonnull align 1 dereferenceable(1) %.sink372, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit199

.loopexit199:                                     ; preds = %.lr.ph235, %middle.block605, %vec.epilog.middle.block619, %.loopexit199.sink.split
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %indvars.iv.next308.reass.reass = add i32 %indvars.iv307.a, %invariant.op701
  %exitcond321.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count320
  br i1 %exitcond321.not, label %.loopexit197, label %.lr.ph237, !llvm.loop !946

.preheader207:                                    ; preds = %decode_counter.exit
  br i1 %i.ab, label %.lr.ph215, label %.loopexit197

.lr.ph215:                                        ; preds = %.preheader207
  %i.ey = icmp sgt i32 %.fr244, 1
  %wide.trip.count278 = zext nneg i32 %i.k to i64 ; 2 uses
  br i1 %i.ey, label %.lr.ph215.split.us.preheader, label %.lr.ph215.split.preheader

.lr.ph215.split.preheader:                        ; preds = %.lr.ph215
  %wide.trip.count = zext nneg i32 %.v.i to i64
  %narrow651 = add nuw nsw i32 %.v.v.i, 8
  %i.ez = zext nneg i32 %narrow651 to i64
  %i.fa = or disjoint i32 %.v.v.i, 7
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = sub i64 %i.b, %i.c
  %diff.check449 = icmp ugt i64 %i.fc, -32
  br label %.lr.ph215.split

.lr.ph215.split.us.preheader:                     ; preds = %.lr.ph215
  %wide.trip.count265 = zext nneg i32 %.fr244 to i64 ; 5 uses
  %wide.trip.count273 = zext nneg i32 %.v.i to i64
  %i.fd = sub i64 %i.c, %i.b                      ; 2 uses
  %narrow652 = add nuw nsw i32 %.v.v.i, 8
  %i.fe = zext nneg i32 %narrow652 to i64
  %i.ff = add nsw i64 %wide.trip.count265, -2     ; 2 uses
  %i.fg = add nsw i64 %wide.trip.count265, -1     ; 5 uses
  %i.fh = or disjoint i32 %.v.v.i, 7
  %i.fi = zext nneg i32 %i.fh to i64
  %min.iters.check509 = icmp ult i32 %.fr244, 9
  %i.fj = trunc i64 %i.ff to i32
  %i.fk = icmp ugt i64 %i.ff, 4294967295
  %i.fl = add i64 %i.fd, -1
  %diff.check508 = icmp ult i64 %i.fl, 31
  %invariant.op699 = or i1 %i.fk, %diff.check508
  %min.iters.check511 = icmp ult i32 %.fr244, 33
  %i.fm = and i64 %i.fg, 24
  %n.vec513 = and i64 %i.fg, -32                  ; 4 uses
  %i.fn = or disjoint i64 %n.vec513, 1
  %cmp.n520 = icmp eq i64 %i.fg, %n.vec513
  %min.epilog.iters.check526 = icmp eq i64 %i.fm, 0
  %n.vec528 = and i64 %i.fg, -8                   ; 3 uses
  %i.fo = or disjoint i64 %n.vec528, 1
  %cmp.n534 = icmp eq i64 %i.fg, %n.vec528
  %i.fp = add i64 %i.fd, -1
  %diff.check478 = icmp ult i64 %i.fp, 31
  br label %.lr.ph215.split.us

.lr.ph215.split.us:                               ; preds = %.lr.ph215.split.us.preheader, %._crit_edge.us217
  %indvars.iv275 = phi i64 [ 0, %.lr.ph215.split.us.preheader ], [ %indvars.iv.next276, %._crit_edge.us217 ] ; 3 uses
  %i.fq = shl nuw nsw i64 %indvars.iv275, 8       ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 %i.fq ; 15 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fq ; 14 uses
  %i.fu = trunc i64 %indvars.iv275 to i32
  %i.fv = mul i32 %.v.i, %i.fu
  %i.fw = sub i32 %i.z, %i.fv                     ; 2 uses
  %i.fx = tail call i32 @llvm.smin.i32(i32 %i.fw, i32 %.v.i)
  %i.fy = icmp sgt i32 %i.fw, 0
  br i1 %i.fy, label %iter.check523, label %iter.check493

.lr.ph.us216:                                     ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216
  %indvars.iv270 = phi i64 [ %indvars.iv.next271.3, %.lr.ph.us216 ], [ %indvars.iv270.unr, %.lr.ph.us216.prol.loopexit ] ; 6 uses
  %i.fz = getelementptr inbounds i8, ptr %i.ft, i64 %indvars.iv270
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = getelementptr inbounds i8, ptr %i.fr, i64 %indvars.iv270
  store i8 %i.ga, ptr %i.gb, align 1
  %indvars.iv.next271 = add nsw i64 %indvars.iv270, 1 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %i.ft, i64 %indvars.iv.next271
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = getelementptr inbounds i8, ptr %i.fr, i64 %indvars.iv.next271
  store i8 %i.gd, ptr %i.ge, align 1
  %indvars.iv.next271.1 = add nsw i64 %indvars.iv270, 2 ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ft, i64 %indvars.iv.next271.1
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = getelementptr inbounds i8, ptr %i.fr, i64 %indvars.iv.next271.1
  store i8 %i.gg, ptr %i.gh, align 1
  %indvars.iv.next271.2 = add nsw i64 %indvars.iv270, 3 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %i.ft, i64 %indvars.iv.next271.2
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = getelementptr inbounds i8, ptr %i.fr, i64 %indvars.iv.next271.2
  store i8 %i.gj, ptr %i.gk, align 1
  %indvars.iv.next271.3 = add nsw i64 %indvars.iv270, 4 ; 2 uses
  %exitcond274.not.3 = icmp eq i64 %indvars.iv.next271.3, %wide.trip.count273
  br i1 %exitcond274.not.3, label %._crit_edge.us217, label %.lr.ph.us216, !llvm.loop !947

._crit_edge.us217:                                ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216, %middle.block489, %vec.epilog.middle.block503, %.preheader206.us
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@helper_sme2_sel_b:bb.a
  %i.pe = getelementptr inbounds i8, ptr %i.oo, i64 %i.pb ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  store <16 x i8> %wide.load457, ptr %i.pe, align 1
  store <16 x i8> %wide.load458, ptr %i.pf, align 1
  %index.next459 = add nuw i64 %index456, 32      ; 2 uses
  %i.pg = icmp eq i64 %index.next459, %n.vec454
  br i1 %i.pg, label %middle.block460, label %vector.body455, !llvm.loop !969

middle.block460:                                  ; preds = %vector.body455
  %cmp.n461 = icmp eq i64 %i.oy, %n.vec454
  br i1 %cmp.n461, label %._crit_edge, label %vec.epilog.iter.check466

vec.epilog.iter.check466:                         ; preds = %middle.block460
  %min.epilog.iters.check467 = icmp eq i64 %i.oz, 0
  br i1 %min.epilog.iters.check467, label %.lr.ph.preheader, label %vec.epilog.ph468, !prof !935

vec.epilog.ph468:                                 ; preds = %vector.main.loop.iter.check451, %vec.epilog.iter.check466
  %vec.epilog.resume.val462 = phi i64 [ %n.vec454, %vec.epilog.iter.check466 ], [ 0, %vector.main.loop.iter.check451 ]
  %n.vec469 = and i64 %i.oy, -8                   ; 3 uses
  %i.ph = add nsw i64 %n.vec469, %i.ox
  br label %vec.epilog.vector.body470

vec.epilog.vector.body470:                        ; preds = %vec.epilog.vector.body470, %vec.epilog.ph468
  %index471 = phi i64 [ %vec.epilog.resume.val462, %vec.epilog.ph468 ], [ %index.next473, %vec.epilog.vector.body470 ] ; 2 uses
  %i.pi = add i64 %index471, %i.ox                ; 2 uses
  %i.pj = getelementptr inbounds i8, ptr %i.oq, i64 %i.pi
  %wide.load472 = load <8 x i8>, ptr %i.pj, align 1
  %i.pk = getelementptr inbounds i8, ptr %i.oo, i64 %i.pi
  store <8 x i8> %wide.load472, ptr %i.pk, align 1
  %index.next473 = add nuw i64 %index471, 8       ; 2 uses
  %i.pl = icmp eq i64 %index.next473, %n.vec469
  br i1 %i.pl, label %vec.epilog.middle.block474, label %vec.epilog.vector.body470, !llvm.loop !970

vec.epilog.middle.block474:                       ; preds = %vec.epilog.vector.body470
  %cmp.n475 = icmp eq i64 %i.oy, %n.vec469
  br i1 %cmp.n475, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check464, %vec.epilog.iter.check466, %vec.epilog.middle.block474
  %indvars.iv.ph = phi i64 [ %i.ox, %iter.check464 ], [ %i.pa, %vec.epilog.iter.check466 ], [ %i.ph, %vec.epilog.middle.block474 ] ; 4 uses
  %i.pm = sub nsw i64 0, %indvars.iv.ph
  %i.pn = sub nsw i64 %i.fb, %indvars.iv.ph
  %xtraiter670 = and i64 %i.pm, 3                 ; 2 uses
  %lcmp.mod671.not = icmp eq i64 %xtraiter670, 0
  br i1 %lcmp.mod671.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter672 = phi i64 [ %prol.iter672.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.po = getelementptr inbounds i8, ptr %i.oq, i64 %indvars.iv.prol
  %i.pp = load i8, ptr %i.po, align 1
  %i.pq = getelementptr inbounds i8, ptr %i.oo, i64 %indvars.iv.prol
  store i8 %i.pp, ptr %i.pq, align 1
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter672.next = add i64 %prol.iter672, 1   ; 2 uses
  %prol.iter672.cmp.not = icmp eq i64 %prol.iter672.next, %xtraiter670
  br i1 %prol.iter672.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !971

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.pr = icmp ult i64 %i.pn, 3
  br i1 %i.pr, label %._crit_edge, label %.lr.ph

.lr.ph212:                                        ; preds = %.lr.ph215.split, %.lr.ph212
  %.0168210 = phi i32 [ %i.pw, %.lr.ph212 ], [ 0, %.lr.ph215.split ] ; 2 uses
  %i.ps = sext i32 %.0168210 to i64               ; 2 uses
  %i.pt = getelementptr inbounds i8, ptr %i.op, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1
  %i.pv = getelementptr inbounds i8, ptr %i.oo, i64 %i.ps
  store i8 %i.pu, ptr %i.pv, align 1
  %i.pw = add i32 %.0168210, %.fr244              ; 4 uses
  %i.px = icmp slt i32 %i.pw, %i.ou
  br i1 %i.px, label %.lr.ph212, label %.preheader206, !llvm.loop !956

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.py = getelementptr inbounds i8, ptr %i.oq, i64 %indvars.iv
  %i.pz = load i8, ptr %i.py, align 1
  %i.qa = getelementptr inbounds i8, ptr %i.oo, i64 %indvars.iv
  store i8 %i.pz, ptr %i.qa, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.qb = getelementptr inbounds i8, ptr %i.oq, i64 %indvars.iv.next
  %i.qc = load i8, ptr %i.qb, align 1
  %i.qd = getelementptr inbounds i8, ptr %i.oo, i64 %indvars.iv.next
  store i8 %i.qc, ptr %i.qd, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qe = getelementptr inbounds i8, ptr %i.oq, i64 %indvars.iv.next.1
  %i.qf = load i8, ptr %i.qe, align 1
  %i.qg = getelementptr inbounds i8, ptr %i.oo, i64 %indvars.iv.next.1
  store i8 %i.qf, ptr %i.qg, align 1
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.qh = getelementptr inbounds i8, ptr %i.oq, i64 %indvars.iv.next.2
  %i.qi = load i8, ptr %i.qh, align 1
  %i.qj = getelementptr inbounds i8, ptr %i.oo, i64 %indvars.iv.next.2
  store i8 %i.qi, ptr %i.qj, align 1
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !972

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block460, %vec.epilog.middle.block474, %.preheader206
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count278
  br i1 %exitcond261.not, label %.loopexit197, label %.lr.ph215.split, !llvm.loop !948

.loopexit197:                                     ; preds = %._crit_edge228.split, %._crit_edge228.split.us.us, %._crit_edge, %._crit_edge.us217, %.loopexit, %.loopexit199, %.preheader207, %.preheader204, %.preheader201, %.preheader196
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sel_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.d = lshr i32 %4, 8
  %i.e = and i32 %i.d, 3                          ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 3
  %i.g = shl i32 %4, 3
  %i.h = and i32 %i.g, 2040
  %i.i = icmp eq i32 %i.e, 2
  %.v.v.i = select i1 %i.i, i32 %i.h, i32 %i.f
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.j = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.k = ashr i32 %4, 10                          ; 7 uses
  %i.l = lshr exact i32 %.v.i, 1                  ; 20 uses
  %i.m = and i32 %3, 15
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %.preheader201, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 3 uses
  %i.o = add nsw i64 %i.j, -1
  %i.p = tail call range(i64 53, 65) i64 @llvm.ctlz.i64(i64 range(i64 7, 2048) %i.o, i1 true)
  %i.q = add nuw nsw i64 %i.p, 4294967295
  %i.r = and i64 %i.q, 4294967295
  %i.s = lshr exact i64 -9223372036854775808, %i.r
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 3
  %i.v = add nsw i32 %i.u, -1
  %i.w = and i32 %i.v, %3                         ; 2 uses
  %i.x = add nuw nsw i32 %i.n, 1
  %i.y = lshr i32 %i.w, %i.x                      ; 3 uses
  %i.z = and i32 %3, 32768
  %.not343 = icmp eq i32 %i.z, 0                  ; 2 uses
  switch i32 %i.n, label %decode_counter.exit [
    i32 1, label %decode_counter.exit.thread326
    i32 0, label %bb.c
  ], !prof !973

bb.c:                                             ; preds = %bb.b
  %i.aa = lshr i32 %i.w, 2                        ; 2 uses
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %i.ac = icmp ne i32 %i.y, %i.ab
  %i.ad = zext i1 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.aa, %i.ad
  br label %decode_counter.exit.thread326

decode_counter.exit.thread326:                    ; preds = %bb.c, %bb.b
  %.sroa.020.sroa.0.0.i.ph = phi i32 [ %i.y, %bb.b ], [ %i.ae, %bb.c ] ; 4 uses
  br i1 %.not343, label %.preheader201, label %.preheader196

decode_counter.exit:                              ; preds = %bb.b
  %i.af = add nsw i32 %i.n, -1                    ; 7 uses
  %i.ag = shl i32 %i.y, %i.af                     ; 3 uses
  %i.ah = shl nuw nsw i32 1, %i.af                ; 4 uses
  %i.ai = icmp sgt i32 %i.k, 0                    ; 2 uses
  br i1 %.not343, label %.preheader207, label %.preheader204

.preheader201:                                    ; preds = %bb.a, %decode_counter.exit.thread326
  %.sroa.0119.sroa.0.0.extract.trunc194331 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %decode_counter.exit.thread326 ], [ 0, %bb.a ] ; 3 uses
  %i.aj = icmp sgt i32 %i.k, 0
  br i1 %i.aj, label %.lr.ph237.preheader, label %.loopexit197

.lr.ph237.preheader:                              ; preds = %.preheader201
  %wide.trip.count296 = zext nneg i32 %i.k to i64
  %i.ak = xor i32 %.sroa.0119.sroa.0.0.extract.trunc194331, -1
  %i.al = add i32 %i.l, %i.ak
  %i.am = lshr exact i64 %i.j, 1
  %i.an = sub i64 %i.b, %i.c
  %diff.check528 = icmp ugt i64 %i.an, -32
  %i.ao = sub i64 %i.a, %i.c
  %diff.check499 = icmp ugt i64 %i.ao, -32
  br label %.lr.ph237

.preheader196:                                    ; preds = %decode_counter.exit.thread326
  %i.ap = icmp sgt i32 %i.k, 0
  br i1 %i.ap, label %.lr.ph243.preheader, label %.loopexit197

.lr.ph243.preheader:                              ; preds = %.preheader196
  %wide.trip.count315 = zext nneg i32 %i.k to i64
  %i.aq = xor i32 %.sroa.020.sroa.0.0.i.ph, -1
  %i.ar = add i32 %i.l, %i.aq
  %i.as = lshr exact i64 %i.j, 1
  %i.at = sub i64 %i.a, %i.c
  %diff.check356 = icmp ugt i64 %i.at, -32
  %i.au = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.au, -32
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %.loopexit
  %indvars.iv312 = phi i64 [ 0, %.lr.ph243.preheader ], [ %indvars.iv.next313, %.loopexit ] ; 4 uses
  %indvars.iv302 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %.lr.ph243.preheader ], [ %indvars.iv.next303, %.loopexit ] ; 6 uses
  %5 = zext i32 %indvars.iv302 to i64             ; 2 uses
  %6 = zext i32 %indvars.iv302 to i64             ; 5 uses
  %i.av = mul i64 %i.as, %indvars.iv312
  %i.aw = trunc i64 %i.av to i32
  %i.ax = add i32 %i.ar, %i.aw                    ; 3 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = add nuw nsw i64 %i.ay, 1                ; 5 uses
  %i.ba = zext i32 %indvars.iv302 to i64          ; 6 uses
  %i.bb = shl nuw nsw i64 %indvars.iv312, 8       ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb ; 8 uses
  %i.bf = trunc i64 %indvars.iv312 to i32
  %i.bg = mul i32 %i.l, %i.bf
  %i.bh = sub i32 %.sroa.020.sroa.0.0.i.ph, %i.bg ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %.lr.ph243
  %.not186 = icmp slt i32 %i.bh, %i.l
  br i1 %.not186, label %iter.check370, label %.loopexit.sink.split

iter.check370:                                    ; preds = %bb.d
  %min.iters.check357 = icmp ult i32 %indvars.iv302, 4
  %or.cond = or i1 %min.iters.check357, %diff.check356
  br i1 %or.cond, label %.lr.ph239.preheader, label %vector.main.loop.iter.check358

vector.main.loop.iter.check358:                   ; preds = %iter.check370
  %min.iters.check359 = icmp ult i32 %indvars.iv302, 16
  br i1 %min.iters.check359, label %vec.epilog.ph374, label %vector.ph360

vector.ph360:                                     ; preds = %vector.main.loop.iter.check358
  %i.bj = and i64 %6, 12
  %n.vec361 = and i64 %6, 4294967280              ; 4 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next366, %vector.body362 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %index363 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load364 = load <8 x i16>, ptr %i.bk, align 2
  %wide.load365 = load <8 x i16>, ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %index363 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <8 x i16> %wide.load364, ptr %i.bm, align 2
  store <8 x i16> %wide.load365, ptr %i.bn, align 2
  %index.next366 = add nuw i64 %index363, 16      ; 2 uses
  %i.bo = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.bo, label %middle.block367, label %vector.body362, !llvm.loop !974

middle.block367:                                  ; preds = %vector.body362
  %cmp.n368 = icmp eq i64 %n.vec361, %6
  br i1 %cmp.n368, label %iter.check, label %vec.epilog.iter.check372

vec.epilog.iter.check372:                         ; preds = %middle.block367
  %min.epilog.iters.check373 = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check373, label %.lr.ph239.preheader, label %vec.epilog.ph374, !prof !299

vec.epilog.ph374:                                 ; preds = %vector.main.loop.iter.check358, %vec.epilog.iter.check372
  %vec.epilog.resume.val369 = phi i64 [ %n.vec361, %vec.epilog.iter.check372 ], [ 0, %vector.main.loop.iter.check358 ]
  %n.vec375 = and i64 %6, 4294967292              ; 3 uses
  br label %vec.epilog.vector.body376

vec.epilog.vector.body376:                        ; preds = %vec.epilog.vector.body376, %vec.epilog.ph374
  %index377 = phi i64 [ %vec.epilog.resume.val369, %vec.epilog.ph374 ], [ %index.next379, %vec.epilog.vector.body376 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %index377
  %wide.load378 = load <4 x i16>, ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %index377
  store <4 x i16> %wide.load378, ptr %i.bq, align 2
  %index.next379 = add nuw i64 %index377, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next379, %n.vec375
  br i1 %i.br, label %vec.epilog.middle.block380, label %vec.epilog.vector.body376, !llvm.loop !975

vec.epilog.middle.block380:                       ; preds = %vec.epilog.vector.body376
  %cmp.n381 = icmp eq i64 %n.vec375, %6
  br i1 %cmp.n381, label %iter.check, label %.lr.ph239.preheader

.lr.ph239.preheader:                              ; preds = %iter.check370, %vec.epilog.iter.check372, %vec.epilog.middle.block380
  %indvars.iv299.ph = phi i64 [ 0, %iter.check370 ], [ %n.vec361, %vec.epilog.iter.check372 ], [ %n.vec375, %vec.epilog.middle.block380 ] ; 3 uses
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol

.lr.ph239.prol:                                   ; preds = %.lr.ph239.preheader, %.lr.ph239.prol
  %indvars.iv299.prol = phi i64 [ %indvars.iv.next300.prol, %.lr.ph239.prol ], [ %indvars.iv299.ph, %.lr.ph239.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph239.prol ], [ 0, %.lr.ph239.preheader ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv299.prol
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv299.prol
  store i16 %i.bt, ptr %i.bu, align 2
  %indvars.iv.next300.prol = add nuw nsw i64 %indvars.iv299.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph239.prol.loopexit, label %.lr.ph239.prol, !llvm.loop !976

.lr.ph239.prol.loopexit:                          ; preds = %.lr.ph239.prol, %.lr.ph239.preheader
  %indvars.iv299.unr = phi i64 [ %indvars.iv299.ph, %.lr.ph239.preheader ], [ %indvars.iv.next300.prol, %.lr.ph239.prol ]
  %i.bv = sub nsw i64 %indvars.iv299.ph, %5
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %iter.check, label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239
  %indvars.iv299 = phi i64 [ %indvars.iv.next300.3, %.lr.ph239 ], [ %indvars.iv299.unr, %.lr.ph239.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv299
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv299
  store i16 %i.by, ptr %i.bz, align 2
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv.next300
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.next300
  store i16 %i.cb, ptr %i.cc, align 2
  %indvars.iv.next300.1 = add nuw nsw i64 %indvars.iv299, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv.next300.1
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.next300.1
  store i16 %i.ce, ptr %i.cf, align 2
  %indvars.iv.next300.2 = add nuw nsw i64 %indvars.iv299, 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv.next300.2
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv.next300.2
  store i16 %i.ch, ptr %i.ci, align 2
  %indvars.iv.next300.3 = add nuw nsw i64 %indvars.iv299, 4 ; 2 uses
  %exitcond305.not.3 = icmp eq i64 %indvars.iv.next300.3, %i.ba
  br i1 %exitcond305.not.3, label %iter.check, label %.lr.ph239, !llvm.loop !977

iter.check:                                       ; preds = %.lr.ph239.prol.loopexit, %.lr.ph239, %vec.epilog.middle.block380, %middle.block367
  %min.iters.check = icmp ult i32 %i.ax, 3
  %or.cond555.a = or i1 %min.iters.check, %diff.check
  br i1 %or.cond555.a, label %.lr.ph241.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check347 = icmp ult i32 %i.ax, 15
  br i1 %min.iters.check347, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cj = and i64 %i.az, 12
  %n.vec = and i64 %i.az, 8589934576              ; 4 uses
  %i.ck = add nuw nsw i64 %n.vec, %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = add nuw i64 %index, %i.ba               ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load = load <8 x i16>, ptr %i.cm, align 2
  %wide.load348 = load <8 x i16>, ptr %i.cn, align 2
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.cl ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <8 x i16> %wide.load, ptr %i.co, align 2
  store <8 x i16> %wide.load348, ptr %i.cp, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !978

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph241.preheader, label %vec.epilog.ph, !prof !299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec349 = and i64 %i.az, 8589934588           ; 3 uses
  %i.cr = add nuw nsw i64 %n.vec349, %i.ba
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index350 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next352, %vec.epilog.vector.body ] ; 2 uses
  %i.cs = add nuw i64 %index350, %i.ba            ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cs
  %wide.load351 = load <4 x i16>, ptr %i.ct, align 2
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.cs
  store <4 x i16> %wide.load351, ptr %i.cu, align 2
  %index.next352 = add nuw i64 %index350, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next352, %n.vec349
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !979

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n353 = icmp eq i64 %i.az, %n.vec349
  br i1 %cmp.n353, label %.loopexit, label %.lr.ph241.preheader

.lr.ph241.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv309.ph = phi i64 [ %i.ba, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ]
  br label %.lr.ph241

.lr.ph241:                                        ; preds = %.lr.ph241.preheader, %.lr.ph241
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %.lr.ph241 ], [ %indvars.iv309.ph, %.lr.ph241.preheader ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv309
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %indvars.iv309
  store i16 %i.cx, ptr %i.cy, align 2
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %i.cz = trunc nuw i64 %indvars.iv.next310 to i32
  %i.da = icmp sgt i32 %i.l, %i.cz
  br i1 %i.da, label %.lr.ph241, label %.loopexit, !llvm.loop !980

.loopexit.sink.split:                             ; preds = %bb.d, %.lr.ph243
  %.sink = phi ptr [ %i.bd, %.lr.ph243 ], [ %i.be, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr noundef nonnull align 1 dereferenceable(1) %.sink, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph241, %middle.block, %vec.epilog.middle.block, %.loopexit.sink.split
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %indvars.iv.next303 = sub i32 %indvars.iv302, %i.l
  %exitcond316.not = icmp eq i64 %indvars.iv.next313, %wide.trip.count315
  br i1 %exitcond316.not, label %.loopexit197, label %.lr.ph243, !llvm.loop !981

.lr.ph237:                                        ; preds = %.lr.ph237.preheader, %.loopexit199
  %indvars.iv293 = phi i64 [ 0, %.lr.ph237.preheader ], [ %indvars.iv.next294, %.loopexit199 ] ; 4 uses
  %indvars.iv283 = phi i32 [ %.sroa.0119.sroa.0.0.extract.trunc194331, %.lr.ph237.preheader ], [ %indvars.iv.next284, %.loopexit199 ] ; 6 uses
  %7 = zext i32 %indvars.iv283 to i64             ; 2 uses
  %8 = zext i32 %indvars.iv283 to i64             ; 5 uses
  %i.db = mul i64 %i.am, %indvars.iv293
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.al, %i.dc                    ; 3 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = add nuw nsw i64 %i.de, 1                ; 5 uses
  %i.dg = zext i32 %indvars.iv283 to i64          ; 6 uses
  %i.dh = shl nuw nsw i64 %indvars.iv293, 8       ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.dh ; 11 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %i.dh ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %i.dh ; 4 uses
  %i.dl = trunc i64 %indvars.iv293 to i32
  %i.dm = mul i32 %i.l, %i.dl
  %i.dn = sub i32 %.sroa.0119.sroa.0.0.extract.trunc194331, %i.dm ; 2 uses
  %i.do = icmp slt i32 %i.dn, 1
  br i1 %i.do, label %.loopexit199.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph237
  %.not = icmp slt i32 %i.dn, %i.l
  br i1 %.not, label %iter.check542, label %.loopexit199.sink.split

iter.check542:                                    ; preds = %bb.e
  %min.iters.check529 = icmp ult i32 %indvars.iv283, 4
  %or.cond556 = or i1 %min.iters.check529, %diff.check528
  br i1 %or.cond556, label %.lr.ph233.preheader, label %vector.main.loop.iter.check530

vector.main.loop.iter.check530:                   ; preds = %iter.check542
  %min.iters.check531 = icmp ult i32 %indvars.iv283, 16
  br i1 %min.iters.check531, label %vec.epilog.ph546, label %vector.ph532

vector.ph532:                                     ; preds = %vector.main.loop.iter.check530
  %i.dp = and i64 %8, 12
  %n.vec533 = and i64 %8, 4294967280              ; 4 uses
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph532
  %index535 = phi i64 [ 0, %vector.ph532 ], [ %index.next538, %vector.body534 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index535 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load536 = load <8 x i16>, ptr %i.dq, align 2
  %wide.load537 = load <8 x i16>, ptr %i.dr, align 2
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %index535 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <8 x i16> %wide.load536, ptr %i.ds, align 2
  store <8 x i16> %wide.load537, ptr %i.dt, align 2
  %index.next538 = add nuw i64 %index535, 16      ; 2 uses
  %i.du = icmp eq i64 %index.next538, %n.vec533
  br i1 %i.du, label %middle.block539, label %vector.body534, !llvm.loop !982

middle.block539:                                  ; preds = %vector.body534
  %cmp.n540 = icmp eq i64 %n.vec533, %8
  br i1 %cmp.n540, label %iter.check514, label %vec.epilog.iter.check544

vec.epilog.iter.check544:                         ; preds = %middle.block539
  %min.epilog.iters.check545 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check545, label %.lr.ph233.preheader, label %vec.epilog.ph546, !prof !299

vec.epilog.ph546:                                 ; preds = %vector.main.loop.iter.check530, %vec.epilog.iter.check544
  %vec.epilog.resume.val541 = phi i64 [ %n.vec533, %vec.epilog.iter.check544 ], [ 0, %vector.main.loop.iter.check530 ]
  %n.vec547 = and i64 %8, 4294967292              ; 3 uses
  br label %vec.epilog.vector.body548

vec.epilog.vector.body548:                        ; preds = %vec.epilog.vector.body548, %vec.epilog.ph546
  %index549 = phi i64 [ %vec.epilog.resume.val541, %vec.epilog.ph546 ], [ %index.next551, %vec.epilog.vector.body548 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index549
  %wide.load550 = load <4 x i16>, ptr %i.dv, align 2
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %index549
  store <4 x i16> %wide.load550, ptr %i.dw, align 2
  %index.next551 = add nuw i64 %index549, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next551, %n.vec547
  br i1 %i.dx, label %vec.epilog.middle.block552, label %vec.epilog.vector.body548, !llvm.loop !983

vec.epilog.middle.block552:                       ; preds = %vec.epilog.vector.body548
  %cmp.n553 = icmp eq i64 %n.vec547, %8
  br i1 %cmp.n553, label %iter.check514, label %.lr.ph233.preheader

.lr.ph233.preheader:                              ; preds = %iter.check542, %vec.epilog.iter.check544, %vec.epilog.middle.block552
  %indvars.iv280.ph = phi i64 [ 0, %iter.check542 ], [ %n.vec533, %vec.epilog.iter.check544 ], [ %n.vec547, %vec.epilog.middle.block552 ] ; 3 uses
  %xtraiter575 = and i64 %7, 3                    ; 2 uses
  %lcmp.mod576.not = icmp eq i64 %xtraiter575, 0
  br i1 %lcmp.mod576.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol

.lr.ph233.prol:                                   ; preds = %.lr.ph233.preheader, %.lr.ph233.prol
  %indvars.iv280.prol = phi i64 [ %indvars.iv.next281.prol, %.lr.ph233.prol ], [ %indvars.iv280.ph, %.lr.ph233.preheader ] ; 3 uses
  %prol.iter577 = phi i64 [ %prol.iter577.next, %.lr.ph233.prol ], [ 0, %.lr.ph233.preheader ]
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv280.prol
  %i.dz = load i16, ptr %i.dy, align 2
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv280.prol
  store i16 %i.dz, ptr %i.ea, align 2
  %indvars.iv.next281.prol = add nuw nsw i64 %indvars.iv280.prol, 1 ; 2 uses
  %prol.iter577.next = add i64 %prol.iter577, 1   ; 2 uses
  %prol.iter577.cmp.not = icmp eq i64 %prol.iter577.next, %xtraiter575
  br i1 %prol.iter577.cmp.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol, !llvm.loop !984

.lr.ph233.prol.loopexit:                          ; preds = %.lr.ph233.prol, %.lr.ph233.preheader
  %indvars.iv280.unr = phi i64 [ %indvars.iv280.ph, %.lr.ph233.preheader ], [ %indvars.iv.next281.prol, %.lr.ph233.prol ]
  %i.eb = sub nsw i64 %indvars.iv280.ph, %7
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %iter.check514, label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233
  %indvars.iv280 = phi i64 [ %indvars.iv.next281.3, %.lr.ph233 ], [ %indvars.iv280.unr, %.lr.ph233.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv280
  %i.ee = load i16, ptr %i.ed, align 2
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv280
  store i16 %i.ee, ptr %i.ef, align 2
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next281
  %i.eh = load i16, ptr %i.eg, align 2
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next281
  store i16 %i.eh, ptr %i.ei, align 2
  %indvars.iv.next281.1 = add nuw nsw i64 %indvars.iv280, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next281.1
  %i.ek = load i16, ptr %i.ej, align 2
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next281.1
  store i16 %i.ek, ptr %i.el, align 2
  %indvars.iv.next281.2 = add nuw nsw i64 %indvars.iv280, 3 ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next281.2
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next281.2
  store i16 %i.en, ptr %i.eo, align 2
  %indvars.iv.next281.3 = add nuw nsw i64 %indvars.iv280, 4 ; 2 uses
  %exitcond286.not.3 = icmp eq i64 %indvars.iv.next281.3, %i.dg
  br i1 %exitcond286.not.3, label %iter.check514, label %.lr.ph233, !llvm.loop !985

iter.check514:                                    ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233, %vec.epilog.middle.block552, %middle.block539
  %min.iters.check500 = icmp ult i32 %i.dd, 3
  %or.cond557 = or i1 %min.iters.check500, %diff.check499
  br i1 %or.cond557, label %.lr.ph235.preheader, label %vector.main.loop.iter.check501

vector.main.loop.iter.check501:                   ; preds = %iter.check514
  %min.iters.check502 = icmp ult i32 %i.dd, 15
  br i1 %min.iters.check502, label %vec.epilog.ph518, label %vector.ph503

vector.ph503:                                     ; preds = %vector.main.loop.iter.check501
  %i.ep = and i64 %i.df, 12
  %n.vec504 = and i64 %i.df, 8589934576           ; 4 uses
  %i.eq = add nuw nsw i64 %n.vec504, %i.dg
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next509, %vector.body505 ] ; 2 uses
  %i.er = add nuw i64 %index506, %i.dg            ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load507 = load <8 x i16>, ptr %i.es, align 2
  %wide.load508 = load <8 x i16>, ptr %i.et, align 2
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.er ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <8 x i16> %wide.load507, ptr %i.eu, align 2
  store <8 x i16> %wide.load508, ptr %i.ev, align 2
  %index.next509 = add nuw i64 %index506, 16      ; 2 uses
  %i.ew = icmp eq i64 %index.next509, %n.vec504
  br i1 %i.ew, label %middle.block510, label %vector.body505, !llvm.loop !986

middle.block510:                                  ; preds = %vector.body505
  %cmp.n511 = icmp eq i64 %i.df, %n.vec504
  br i1 %cmp.n511, label %.loopexit199, label %vec.epilog.iter.check516

vec.epilog.iter.check516:                         ; preds = %middle.block510
  %min.epilog.iters.check517 = icmp eq i64 %i.ep, 0
  br i1 %min.epilog.iters.check517, label %.lr.ph235.preheader, label %vec.epilog.ph518, !prof !299

vec.epilog.ph518:                                 ; preds = %vector.main.loop.iter.check501, %vec.epilog.iter.check516
  %vec.epilog.resume.val512 = phi i64 [ %n.vec504, %vec.epilog.iter.check516 ], [ 0, %vector.main.loop.iter.check501 ]
  %n.vec519 = and i64 %i.df, 8589934588           ; 3 uses
  %i.ex = add nuw nsw i64 %n.vec519, %i.dg
  br label %vec.epilog.vector.body520

vec.epilog.vector.body520:                        ; preds = %vec.epilog.vector.body520, %vec.epilog.ph518
  %index521 = phi i64 [ %vec.epilog.resume.val512, %vec.epilog.ph518 ], [ %index.next523, %vec.epilog.vector.body520 ] ; 2 uses
  %i.ey = add nuw i64 %index521, %i.dg            ; 2 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.ey
  %wide.load522 = load <4 x i16>, ptr %i.ez, align 2
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.ey
  store <4 x i16> %wide.load522, ptr %i.fa, align 2
  %index.next523 = add nuw i64 %index521, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next523, %n.vec519
  br i1 %i.fb, label %vec.epilog.middle.block524, label %vec.epilog.vector.body520, !llvm.loop !987

vec.epilog.middle.block524:                       ; preds = %vec.epilog.vector.body520
  %cmp.n525 = icmp eq i64 %i.df, %n.vec519
  br i1 %cmp.n525, label %.loopexit199, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %iter.check514, %vec.epilog.iter.check516, %vec.epilog.middle.block524
  %indvars.iv290.ph = phi i64 [ %i.dg, %iter.check514 ], [ %i.eq, %vec.epilog.iter.check516 ], [ %i.ex, %vec.epilog.middle.block524 ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %.lr.ph235 ], [ %indvars.iv290.ph, %.lr.ph235.preheader ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %indvars.iv290
  %i.fd = load i16, ptr %i.fc, align 2
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv290
  store i16 %i.fd, ptr %i.fe, align 2
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.ff = trunc nuw i64 %indvars.iv.next291 to i32
  %i.fg = icmp sgt i32 %i.l, %i.ff
  br i1 %i.fg, label %.lr.ph235, label %.loopexit199, !llvm.loop !988

.loopexit199.sink.split:                          ; preds = %bb.e, %.lr.ph237
  %.sink341 = phi ptr [ %i.dk, %.lr.ph237 ], [ %i.dj, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.di, ptr noundef nonnull align 1 dereferenceable(1) %.sink341, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit199

.loopexit199:                                     ; preds = %.lr.ph235, %middle.block510, %vec.epilog.middle.block524, %.loopexit199.sink.split
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %indvars.iv.next284 = sub i32 %indvars.iv283, %i.l
  %exitcond297.not = icmp eq i64 %indvars.iv.next294, %wide.trip.count296
  br i1 %exitcond297.not, label %.loopexit197, label %.lr.ph237, !llvm.loop !989

.preheader207:                                    ; preds = %decode_counter.exit
  br i1 %i.ai, label %.lr.ph215.split.us.preheader, label %.loopexit197

.lr.ph215.split.us.preheader:                     ; preds = %.preheader207
  %wide.trip.count262 = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.ah to i64   ; 5 uses
  %wide.trip.count257 = zext nneg i32 %i.l to i64 ; 4 uses
  %i.fh = sub i64 %i.c, %i.a                      ; 2 uses
  %i.fi = add nsw i64 %wide.trip.count, -2        ; 2 uses
  %i.fj = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check471 = icmp ult i32 %i.af, 3
  %i.fk = trunc i64 %i.fi to i32
  %i.fl = icmp ugt i64 %i.fi, 4294967295
  %i.fm = add i64 %i.fh, -1
  %diff.check470 = icmp ult i64 %i.fm, 31
  %invariant.op590 = or i1 %i.fl, %diff.check470
  %min.iters.check473 = icmp ult i32 %i.af, 5
  %i.fn = and i64 %i.fj, 12
  %n.vec475 = and i64 %i.fj, -16                  ; 4 uses
  %i.fo = or disjoint i64 %n.vec475, 1
  %cmp.n482 = icmp eq i64 %i.fj, %n.vec475
  %min.epilog.iters.check488 = icmp eq i64 %i.fn, 0
  %n.vec490 = and i64 %i.fj, -4                   ; 3 uses
  %i.fp = or disjoint i64 %n.vec490, 1
  %cmp.n496 = icmp eq i64 %i.fj, %n.vec490
  %i.fq = add i64 %i.fh, -1
  %diff.check440 = icmp ult i64 %i.fq, 31
  br label %.lr.ph215.split.us

.lr.ph215.split.us:                               ; preds = %.lr.ph215.split.us.preheader, %._crit_edge.us217
  %indvars.iv259 = phi i64 [ 0, %.lr.ph215.split.us.preheader ], [ %indvars.iv.next260, %._crit_edge.us217 ] ; 3 uses
  %i.fr = shl nuw nsw i64 %indvars.iv259, 8       ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 %i.fr ; 15 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %i.fr
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 %i.fr ; 14 uses
  %i.fv = trunc i64 %indvars.iv259 to i32
  %i.fw = mul i32 %i.l, %i.fv
  %i.fx = sub i32 %i.ag, %i.fw                    ; 2 uses
  %i.fy = tail call i32 @llvm.smin.i32(i32 %i.fx, i32 %i.l)
  %i.fz = icmp sgt i32 %i.fx, 0
  br i1 %i.fz, label %iter.check485, label %iter.check455

.lr.ph.us216:                                     ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216
  %indvars.iv254 = phi i64 [ %indvars.iv.next255.3, %.lr.ph.us216 ], [ %indvars.iv254.unr, %.lr.ph.us216.prol.loopexit ] ; 6 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv254
  %i.gb = load i16, ptr %i.ga, align 2
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %indvars.iv254
  store i16 %i.gb, ptr %i.gc, align 2
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv.next255
  %i.ge = load i16, ptr %i.gd, align 2
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %indvars.iv.next255
  store i16 %i.ge, ptr %i.gf, align 2
  %indvars.iv.next255.1 = add nuw nsw i64 %indvars.iv254, 2 ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv.next255.1
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %indvars.iv.next255.1
  store i16 %i.gh, ptr %i.gi, align 2
  %indvars.iv.next255.2 = add nuw nsw i64 %indvars.iv254, 3 ; 2 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.fu, i64 %indvars.iv.next255.2
  %i.gk = load i16, ptr %i.gj, align 2
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %indvars.iv.next255.2
  store i16 %i.gk, ptr %i.gl, align 2
  %indvars.iv.next255.3 = add nuw nsw i64 %indvars.iv254, 4 ; 2 uses
  %exitcond258.not.3 = icmp eq i64 %indvars.iv.next255.3, %wide.trip.count257
  br i1 %exitcond258.not.3, label %._crit_edge.us217, label %.lr.ph.us216, !llvm.loop !990

._crit_edge.us217:                                ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216, %middle.block451, %vec.epilog.middle.block465, %.preheader206.us
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %.loopexit197, label %.lr.ph215.split.us, !llvm.loop !991

.preheader206.us:                                 ; preds = %._crit_edge.us.us
  %i.gm = icmp samesign ult i32 %i.jj, %i.l
  br i1 %i.gm, label %iter.check455, label %._crit_edge.us217

iter.check455:                                    ; preds = %.lr.ph215.split.us, %.preheader206.us
  %.0168.lcssa.us334 = phi i32 [ %i.jj, %.preheader206.us ], [ 0, %.lr.ph215.split.us ]
  %i.gn = zext i32 %.0168.lcssa.us334 to i64      ; 6 uses
  %i.go = sub nsw i64 %wide.trip.count257, %i.gn  ; 7 uses
  %min.iters.check441 = icmp ult i64 %i.go, 4
  %or.cond558 = or i1 %min.iters.check441, %diff.check440
  br i1 %or.cond558, label %.lr.ph.us216.preheader, label %vector.main.loop.iter.check442

vector.main.loop.iter.check442:                   ; preds = %iter.check455
  %min.iters.check443 = icmp ult i64 %i.go, 16
  br i1 %min.iters.check443, label %vec.epilog.ph459, label %vector.ph444
end_hunk_1
begin_hunk_2_@helper_sme2_sel_h:bb.a
  br i1 %min.epilog.iters.check401, label %vec.epilog.scalar.ph399.preheader, label %vec.epilog.ph402, !prof !299

vec.epilog.ph402:                                 ; preds = %vector.main.loop.iter.check385, %vec.epilog.iter.check400
  %vec.epilog.resume.val396 = phi i64 [ %n.vec388, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check385 ]
  br label %vec.epilog.vector.body404

vec.epilog.vector.body404:                        ; preds = %vec.epilog.vector.body404, %vec.epilog.ph402
  %index405 = phi i64 [ %vec.epilog.resume.val396, %vec.epilog.ph402 ], [ %index.next407, %vec.epilog.vector.body404 ] ; 2 uses
  %i.lq = trunc i64 %index405 to i32
  %i.lr = or disjoint i32 %i.lq, 1
  %i.ls = add i32 %.1172226.us.us, %i.lr
  %i.lt = sext i32 %i.ls to i64                   ; 2 uses
  %i.lu = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.lt
  %wide.load406 = load <4 x i16>, ptr %i.lu, align 2
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.lt
  store <4 x i16> %wide.load406, ptr %i.lv, align 2
  %index.next407 = add nuw i64 %index405, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next407, %n.vec403
  br i1 %i.lw, label %vec.epilog.middle.block408, label %vec.epilog.vector.body404, !llvm.loop !1005

vec.epilog.middle.block408:                       ; preds = %vec.epilog.vector.body404
  br i1 %cmp.n409, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph399.preheader

vec.epilog.scalar.ph399.preheader:                ; preds = %vector.scevcheck, %iter.check398, %vec.epilog.iter.check400, %vec.epilog.middle.block408
  %indvars.iv268.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %iter.check398 ], [ %i.jt, %vec.epilog.iter.check400 ], [ %i.ju, %vec.epilog.middle.block408 ] ; 4 uses
  %i.lx = sub nsw i64 %wide.trip.count272, %indvars.iv268.ph
  %xtraiter566 = and i64 %i.lx, 3                 ; 2 uses
  %lcmp.mod567.not = icmp eq i64 %xtraiter566, 0
  br i1 %lcmp.mod567.not, label %vec.epilog.scalar.ph399.prol.loopexit, label %vec.epilog.scalar.ph399.prol

vec.epilog.scalar.ph399.prol:                     ; preds = %vec.epilog.scalar.ph399.preheader, %vec.epilog.scalar.ph399.prol
  %indvars.iv268.prol = phi i64 [ %indvars.iv.next269.prol, %vec.epilog.scalar.ph399.prol ], [ %indvars.iv268.ph, %vec.epilog.scalar.ph399.preheader ] ; 2 uses
  %prol.iter568 = phi i64 [ %prol.iter568.next, %vec.epilog.scalar.ph399.prol ], [ 0, %vec.epilog.scalar.ph399.preheader ]
  %i.ly = trunc nuw nsw i64 %indvars.iv268.prol to i32
  %i.lz = add i32 %.1172226.us.us, %i.ly
  %i.ma = sext i32 %i.lz to i64                   ; 2 uses
  %i.mb = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.ma
  %i.mc = load i16, ptr %i.mb, align 2
  %i.md = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.ma
  store i16 %i.mc, ptr %i.md, align 2
  %indvars.iv.next269.prol = add nuw nsw i64 %indvars.iv268.prol, 1 ; 2 uses
  %prol.iter568.next = add i64 %prol.iter568, 1   ; 2 uses
  %prol.iter568.cmp.not = icmp eq i64 %prol.iter568.next, %xtraiter566
  br i1 %prol.iter568.cmp.not, label %vec.epilog.scalar.ph399.prol.loopexit, label %vec.epilog.scalar.ph399.prol, !llvm.loop !1006

vec.epilog.scalar.ph399.prol.loopexit:            ; preds = %vec.epilog.scalar.ph399.prol, %vec.epilog.scalar.ph399.preheader
  %indvars.iv268.unr = phi i64 [ %indvars.iv268.ph, %vec.epilog.scalar.ph399.preheader ], [ %indvars.iv.next269.prol, %vec.epilog.scalar.ph399.prol ]
  %i.me = sub nsw i64 %indvars.iv268.ph, %wide.trip.count272
  %i.mf = icmp ugt i64 %i.me, -4
  br i1 %i.mf, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph399.preheader.new

vec.epilog.scalar.ph399.preheader.new:            ; preds = %vec.epilog.scalar.ph399.prol.loopexit
  %invariant.op = add i32 1, %.1172226.us.us
  %invariant.op579 = add i32 2, %.1172226.us.us
  %invariant.op581 = add i32 3, %.1172226.us.us
  br label %vec.epilog.scalar.ph399

vec.epilog.scalar.ph399:                          ; preds = %vec.epilog.scalar.ph399, %vec.epilog.scalar.ph399.preheader.new
  %indvars.iv268 = phi i64 [ %indvars.iv268.unr, %vec.epilog.scalar.ph399.preheader.new ], [ %indvars.iv.next269.3, %vec.epilog.scalar.ph399 ] ; 5 uses
  %i.mg = trunc nuw nsw i64 %indvars.iv268 to i32
  %i.mh = add i32 %.1172226.us.us, %i.mg
  %i.mi = sext i32 %i.mh to i64                   ; 2 uses
  %i.mj = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.mi
  %i.mk = load i16, ptr %i.mj, align 2
  %i.ml = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.mi
  store i16 %i.mk, ptr %i.ml, align 2
  %i.mm = trunc i64 %indvars.iv268 to i32
  %.reass = add i32 %i.mm, %invariant.op
  %i.mn = sext i32 %.reass to i64                 ; 2 uses
  %i.mo = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.mn
  %i.mp = load i16, ptr %i.mo, align 2
  %i.mq = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.mn
  store i16 %i.mp, ptr %i.mq, align 2
  %i.mr = trunc i64 %indvars.iv268 to i32
  %.reass580 = add i32 %i.mr, %invariant.op579
  %i.ms = sext i32 %.reass580 to i64              ; 2 uses
  %i.mt = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2
  %i.mv = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.ms
  store i16 %i.mu, ptr %i.mv, align 2
  %i.mw = trunc i64 %indvars.iv268 to i32
  %.reass582 = add i32 %i.mw, %invariant.op581
  %i.mx = sext i32 %.reass582 to i64              ; 2 uses
  %i.my = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.mx
  %i.mz = load i16, ptr %i.my, align 2
  %i.na = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.mx
  store i16 %i.mz, ptr %i.na, align 2
  %indvars.iv.next269.3 = add nuw nsw i64 %indvars.iv268, 4 ; 2 uses
  %exitcond273.not.3 = icmp eq i64 %indvars.iv.next269.3, %wide.trip.count272
  br i1 %exitcond273.not.3, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph399, !llvm.loop !1007

._crit_edge225.us.us:                             ; preds = %vec.epilog.scalar.ph399.prol.loopexit, %vec.epilog.scalar.ph399, %vec.epilog.middle.block408, %middle.block394
  %i.nb = add nsw i32 %.1172226.us.us, %i.ah      ; 2 uses
  %i.nc = icmp slt i32 %i.nb, %i.l
  %indvar.next = add i32 %indvar, 1
  br i1 %i.nc, label %iter.check398, label %._crit_edge228.split.us.us, !llvm.loop !1008

.loopexit197:                                     ; preds = %.loopexit, %._crit_edge228.split.us.us, %._crit_edge.us217, %.loopexit199, %.preheader207, %.preheader204, %.preheader201, %.preheader196
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sel_s(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 4 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.d = lshr i32 %4, 8
  %i.e = and i32 %i.d, 3                          ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 3
  %i.g = shl i32 %4, 3
  %i.h = and i32 %i.g, 2040
  %i.i = icmp eq i32 %i.e, 2
  %.v.v.i = select i1 %i.i, i32 %i.h, i32 %i.f
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.j = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.k = ashr i32 %4, 10                          ; 7 uses
  %i.l = lshr exact i32 %.v.i, 2                  ; 20 uses
  %i.m = and i32 %3, 15
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %.preheader181, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 5 uses
  %i.o = add nsw i64 %i.j, -1
  %i.p = tail call range(i64 53, 65) i64 @llvm.ctlz.i64(i64 range(i64 7, 2048) %i.o, i1 true)
  %i.q = add nuw nsw i64 %i.p, 4294967295
  %i.r = and i64 %i.q, 4294967295
  %i.s = lshr exact i64 -9223372036854775808, %i.r
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 3
  %i.v = add nsw i32 %i.u, -1
  %i.w = and i32 %i.v, %3                         ; 2 uses
  %i.x = add nuw nsw i32 %i.n, 1
  %i.y = lshr i32 %i.w, %i.x                      ; 3 uses
  %i.z = and i32 %3, 32768
  %.not303 = icmp eq i32 %i.z, 0                  ; 3 uses
  %.not29.i = icmp eq i32 %i.n, 2
  br i1 %.not29.i, label %decode_counter.exit.thread286, label %bb.c, !prof !62

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp samesign ult i32 %i.n, 2
  br i1 %i.aa, label %bb.d, label %decode_counter.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = sub nuw nsw i32 2, %i.n
  %i.ac = lshr i32 %i.w, 3                        ; 2 uses
  %i.ad = shl nuw nsw i32 %i.ac, %i.ab
  %i.ae = icmp ne i32 %i.y, %i.ad
  %i.af = zext i1 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.ac, %i.af
  br label %decode_counter.exit.thread286

decode_counter.exit.thread286:                    ; preds = %bb.d, %bb.b
  %.sroa.020.sroa.0.0.i.ph = phi i32 [ %i.y, %bb.b ], [ %i.ag, %bb.d ] ; 2 uses
  br i1 %.not303, label %.preheader181, label %.preheader176

decode_counter.exit:                              ; preds = %bb.c
  %i.ah = add nsw i32 %i.n, -2                    ; 2 uses
  %i.ai = shl i32 %i.y, %i.ah                     ; 5 uses
  %i.aj = icmp eq i32 %i.ah, 0
  br i1 %i.aj, label %decode_counter.exit.thread, label %bb.g

decode_counter.exit.thread:                       ; preds = %decode_counter.exit
  br i1 %.not303, label %.preheader181, label %.preheader176

.preheader181:                                    ; preds = %bb.a, %decode_counter.exit.thread286, %decode_counter.exit.thread
  %.sroa.0107.sroa.0.0.extract.trunc174291 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %decode_counter.exit.thread286 ], [ %i.ai, %decode_counter.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %i.ak = icmp sgt i32 %i.k, 0
  br i1 %i.ak, label %.lr.ph208.preheader, label %.loopexit177

.lr.ph208.preheader:                              ; preds = %.preheader181
  %wide.trip.count260 = zext nneg i32 %i.k to i64
  %i.al = xor i32 %.sroa.0107.sroa.0.0.extract.trunc174291, -1
  %i.am = add i32 %i.l, %i.al
  %i.an = lshr exact i64 %i.j, 2
  %i.ao = sub i64 %i.a, %i.c
  %diff.check428 = icmp ugt i64 %i.ao, -32
  %i.ap = sub i64 %i.b, %i.c
  %diff.check414 = icmp ugt i64 %i.ap, -32
  br label %.lr.ph208

.preheader176:                                    ; preds = %decode_counter.exit.thread286, %decode_counter.exit.thread
  %.sroa.0107.sroa.0.0.extract.trunc174292 = phi i32 [ %.sroa.020.sroa.0.0.i.ph, %decode_counter.exit.thread286 ], [ %i.ai, %decode_counter.exit.thread ] ; 3 uses
  %i.aq = icmp sgt i32 %i.k, 0
  br i1 %i.aq, label %.lr.ph214.preheader, label %.loopexit177

.lr.ph214.preheader:                              ; preds = %.preheader176
  %wide.trip.count279 = zext nneg i32 %i.k to i64
  %i.ar = xor i32 %.sroa.0107.sroa.0.0.extract.trunc174292, -1
  %i.as = add i32 %i.l, %i.ar
  %i.at = lshr exact i64 %i.j, 2
  %i.au = sub i64 %i.b, %i.c
  %diff.check400 = icmp ugt i64 %i.au, -32
  %i.av = sub i64 %i.a, %i.c
  %diff.check386 = icmp ugt i64 %i.av, -32
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %.loopexit
  %indvars.iv276 = phi i64 [ 0, %.lr.ph214.preheader ], [ %indvars.iv.next277, %.loopexit ] ; 4 uses
  %indvars.iv266 = phi i32 [ %.sroa.0107.sroa.0.0.extract.trunc174292, %.lr.ph214.preheader ], [ %indvars.iv.next267, %.loopexit ] ; 4 uses
  %5 = zext i32 %indvars.iv266 to i64             ; 2 uses
  %i.aw = mul i64 %i.at, %indvars.iv276
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.as, %i.ax                    ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %i.bb = zext i32 %indvars.iv266 to i64          ; 6 uses
  %i.bc = shl nuw nsw i64 %indvars.iv276, 8       ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc ; 7 uses
  %i.bg = trunc i64 %indvars.iv276 to i32
  %i.bh = mul i32 %i.l, %i.bg
  %i.bi = sub i32 %.sroa.0107.sroa.0.0.extract.trunc174292, %i.bh ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph214
  %.not167 = icmp slt i32 %i.bi, %i.l
  br i1 %.not167, label %.lr.ph210.preheader, label %.loopexit.sink.split

.lr.ph210.preheader:                              ; preds = %bb.e
  %min.iters.check402 = icmp ult i32 %indvars.iv266, 8
  %or.cond = or i1 %min.iters.check402, %diff.check400
  br i1 %or.cond, label %.lr.ph210.preheader450, label %vector.ph403

vector.ph403:                                     ; preds = %.lr.ph210.preheader
  %n.vec404 = and i64 %i.bb, 4294967288           ; 3 uses
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next409, %vector.body405 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index406 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load407 = load <4 x i32>, ptr %i.bk, align 4
  %wide.load408 = load <4 x i32>, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index406 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> %wide.load407, ptr %i.bm, align 4
  store <4 x i32> %wide.load408, ptr %i.bn, align 4
  %index.next409 = add nuw i64 %index406, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next409, %n.vec404
  br i1 %i.bo, label %middle.block410, label %vector.body405, !llvm.loop !1009

middle.block410:                                  ; preds = %vector.body405
  %cmp.n411 = icmp eq i64 %n.vec404, %i.bb
  br i1 %cmp.n411, label %.lr.ph212.preheader, label %.lr.ph210.preheader450

.lr.ph210.preheader450:                           ; preds = %.lr.ph210.preheader, %middle.block410
  %indvars.iv263.ph = phi i64 [ 0, %.lr.ph210.preheader ], [ %n.vec404, %middle.block410 ] ; 3 uses
  %xtraiter459 = and i64 %5, 3                    ; 2 uses
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  br i1 %lcmp.mod460.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol

.lr.ph210.prol:                                   ; preds = %.lr.ph210.preheader450, %.lr.ph210.prol
  %indvars.iv263.prol = phi i64 [ %indvars.iv.next264.prol, %.lr.ph210.prol ], [ %indvars.iv263.ph, %.lr.ph210.preheader450 ] ; 3 uses
  %prol.iter461 = phi i64 [ %prol.iter461.next, %.lr.ph210.prol ], [ 0, %.lr.ph210.preheader450 ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv263.prol
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv263.prol
  store i32 %i.bq, ptr %i.br, align 4
  %indvars.iv.next264.prol = add nuw nsw i64 %indvars.iv263.prol, 1 ; 2 uses
  %prol.iter461.next = add i64 %prol.iter461, 1   ; 2 uses
  %prol.iter461.cmp.not = icmp eq i64 %prol.iter461.next, %xtraiter459
  br i1 %prol.iter461.cmp.not, label %.lr.ph210.prol.loopexit, label %.lr.ph210.prol, !llvm.loop !1010

.lr.ph210.prol.loopexit:                          ; preds = %.lr.ph210.prol, %.lr.ph210.preheader450
  %indvars.iv263.unr = phi i64 [ %indvars.iv263.ph, %.lr.ph210.preheader450 ], [ %indvars.iv.next264.prol, %.lr.ph210.prol ]
  %i.bs = sub nsw i64 %indvars.iv263.ph, %5
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %.lr.ph212.preheader, label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210
  %indvars.iv263 = phi i64 [ %indvars.iv.next264.3, %.lr.ph210 ], [ %indvars.iv263.unr, %.lr.ph210.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv263
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv263
  store i32 %i.bv, ptr %i.bw, align 4
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next264
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next264
  store i32 %i.by, ptr %i.bz, align 4
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next264.1
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next264.1
  store i32 %i.cb, ptr %i.cc, align 4
  %indvars.iv.next264.2 = add nuw nsw i64 %indvars.iv263, 3 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next264.2
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next264.2
  store i32 %i.ce, ptr %i.cf, align 4
  %indvars.iv.next264.3 = add nuw nsw i64 %indvars.iv263, 4 ; 2 uses
  %exitcond269.not.3 = icmp eq i64 %indvars.iv.next264.3, %i.bb
  br i1 %exitcond269.not.3, label %.lr.ph212.preheader, label %.lr.ph210, !llvm.loop !1011

.lr.ph212.preheader:                              ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210, %middle.block410
  %min.iters.check388 = icmp ult i32 %i.ay, 7
  %or.cond442 = or i1 %min.iters.check388, %diff.check386
  br i1 %or.cond442, label %.lr.ph212.preheader449, label %vector.ph389

vector.ph389:                                     ; preds = %.lr.ph212.preheader
  %n.vec390 = and i64 %i.ba, 8589934584           ; 3 uses
  %i.cg = add nuw nsw i64 %n.vec390, %i.bb
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next395, %vector.body391 ] ; 2 uses
  %i.ch = add nuw i64 %index392, %i.bb            ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load393 = load <4 x i32>, ptr %i.ci, align 4
  %wide.load394 = load <4 x i32>, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ch ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <4 x i32> %wide.load393, ptr %i.ck, align 4
  store <4 x i32> %wide.load394, ptr %i.cl, align 4
  %index.next395 = add nuw i64 %index392, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next395, %n.vec390
  br i1 %i.cm, label %middle.block396, label %vector.body391, !llvm.loop !1012

middle.block396:                                  ; preds = %vector.body391
  %cmp.n397 = icmp eq i64 %i.ba, %n.vec390
  br i1 %cmp.n397, label %.loopexit, label %.lr.ph212.preheader449

.lr.ph212.preheader449:                           ; preds = %.lr.ph212.preheader, %middle.block396
  %indvars.iv273.ph = phi i64 [ %i.bb, %.lr.ph212.preheader ], [ %i.cg, %middle.block396 ]
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.preheader449, %.lr.ph212
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %.lr.ph212 ], [ %indvars.iv273.ph, %.lr.ph212.preheader449 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv273
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv273
  store i32 %i.co, ptr %i.cp, align 4
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.next274 to i32
  %i.cr = icmp sgt i32 %i.l, %i.cq
  br i1 %i.cr, label %.lr.ph212, label %.loopexit, !llvm.loop !1013

.loopexit.sink.split:                             ; preds = %bb.e, %.lr.ph214
  %.sink = phi ptr [ %i.be, %.lr.ph214 ], [ %i.bf, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %.sink, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph212, %middle.block396, %.loopexit.sink.split
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %indvars.iv.next267 = sub i32 %indvars.iv266, %i.l
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %wide.trip.count279
  br i1 %exitcond280.not, label %.loopexit177, label %.lr.ph214, !llvm.loop !1014

.lr.ph208:                                        ; preds = %.lr.ph208.preheader, %.loopexit179
  %indvars.iv257 = phi i64 [ 0, %.lr.ph208.preheader ], [ %indvars.iv.next258, %.loopexit179 ] ; 4 uses
  %indvars.iv247 = phi i32 [ %.sroa.0107.sroa.0.0.extract.trunc174291, %.lr.ph208.preheader ], [ %indvars.iv.next248, %.loopexit179 ] ; 4 uses
  %6 = zext i32 %indvars.iv247 to i64             ; 2 uses
  %i.cs = mul i64 %i.an, %indvars.iv257
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = add i32 %i.am, %i.ct                    ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %i.cx = zext i32 %indvars.iv247 to i64          ; 6 uses
  %i.cy = shl nuw nsw i64 %indvars.iv257, 8       ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %i.cy ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 3 uses
  %i.dc = trunc i64 %indvars.iv257 to i32
  %i.dd = mul i32 %i.l, %i.dc
  %i.de = sub i32 %.sroa.0107.sroa.0.0.extract.trunc174291, %i.dd ; 2 uses
  %i.df = icmp slt i32 %i.de, 1
  br i1 %i.df, label %.loopexit179.sink.split, label %bb.f

bb.f:                                             ; preds = %.lr.ph208
  %.not = icmp slt i32 %i.de, %i.l
  br i1 %.not, label %.lr.ph204.preheader, label %.loopexit179.sink.split

.lr.ph204.preheader:                              ; preds = %bb.f
  %min.iters.check430 = icmp ult i32 %indvars.iv247, 8
  %or.cond443 = or i1 %min.iters.check430, %diff.check428
  br i1 %or.cond443, label %.lr.ph204.preheader448, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph204.preheader
  %n.vec432 = and i64 %i.cx, 4294967288           ; 3 uses
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next437, %vector.body433 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index434 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load435 = load <4 x i32>, ptr %i.dg, align 4
  %wide.load436 = load <4 x i32>, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index434 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <4 x i32> %wide.load435, ptr %i.di, align 4
  store <4 x i32> %wide.load436, ptr %i.dj, align 4
  %index.next437 = add nuw i64 %index434, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next437, %n.vec432
  br i1 %i.dk, label %middle.block438, label %vector.body433, !llvm.loop !1015

middle.block438:                                  ; preds = %vector.body433
  %cmp.n439 = icmp eq i64 %n.vec432, %i.cx
  br i1 %cmp.n439, label %.lr.ph206.preheader, label %.lr.ph204.preheader448

.lr.ph204.preheader448:                           ; preds = %.lr.ph204.preheader, %middle.block438
  %indvars.iv244.ph = phi i64 [ 0, %.lr.ph204.preheader ], [ %n.vec432, %middle.block438 ] ; 3 uses
  %xtraiter462 = and i64 %6, 3                    ; 2 uses
  %lcmp.mod463.not = icmp eq i64 %xtraiter462, 0
  br i1 %lcmp.mod463.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol

.lr.ph204.prol:                                   ; preds = %.lr.ph204.preheader448, %.lr.ph204.prol
  %indvars.iv244.prol = phi i64 [ %indvars.iv.next245.prol, %.lr.ph204.prol ], [ %indvars.iv244.ph, %.lr.ph204.preheader448 ] ; 3 uses
  %prol.iter464 = phi i64 [ %prol.iter464.next, %.lr.ph204.prol ], [ 0, %.lr.ph204.preheader448 ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv244.prol
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv244.prol
  store i32 %i.dm, ptr %i.dn, align 4
  %indvars.iv.next245.prol = add nuw nsw i64 %indvars.iv244.prol, 1 ; 2 uses
  %prol.iter464.next = add i64 %prol.iter464, 1   ; 2 uses
  %prol.iter464.cmp.not = icmp eq i64 %prol.iter464.next, %xtraiter462
  br i1 %prol.iter464.cmp.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol, !llvm.loop !1016

.lr.ph204.prol.loopexit:                          ; preds = %.lr.ph204.prol, %.lr.ph204.preheader448
  %indvars.iv244.unr = phi i64 [ %indvars.iv244.ph, %.lr.ph204.preheader448 ], [ %indvars.iv.next245.prol, %.lr.ph204.prol ]
  %i.do = sub nsw i64 %indvars.iv244.ph, %6
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %.lr.ph206.preheader, label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.3, %.lr.ph204 ], [ %indvars.iv244.unr, %.lr.ph204.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv244
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv244
  store i32 %i.dr, ptr %i.ds, align 4
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next245
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next245
  store i32 %i.du, ptr %i.dv, align 4
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next245.1
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next245.1
  store i32 %i.dx, ptr %i.dy, align 4
  %indvars.iv.next245.2 = add nuw nsw i64 %indvars.iv244, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next245.2
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next245.2
  store i32 %i.ea, ptr %i.eb, align 4
  %indvars.iv.next245.3 = add nuw nsw i64 %indvars.iv244, 4 ; 2 uses
  %exitcond250.not.3 = icmp eq i64 %indvars.iv.next245.3, %i.cx
  br i1 %exitcond250.not.3, label %.lr.ph206.preheader, label %.lr.ph204, !llvm.loop !1017

.lr.ph206.preheader:                              ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204, %middle.block438
  %min.iters.check416 = icmp ult i32 %i.cu, 7
  %or.cond444 = or i1 %min.iters.check416, %diff.check414
  br i1 %or.cond444, label %.lr.ph206.preheader447, label %vector.ph417

vector.ph417:                                     ; preds = %.lr.ph206.preheader
  %n.vec418 = and i64 %i.cw, 8589934584           ; 3 uses
  %i.ec = add nuw nsw i64 %n.vec418, %i.cx
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph417
  %index420 = phi i64 [ 0, %vector.ph417 ], [ %index.next423, %vector.body419 ] ; 2 uses
  %i.ed = add nuw i64 %index420, %i.cx            ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load421 = load <4 x i32>, ptr %i.ee, align 4
  %wide.load422 = load <4 x i32>, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ed ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <4 x i32> %wide.load421, ptr %i.eg, align 4
  store <4 x i32> %wide.load422, ptr %i.eh, align 4
  %index.next423 = add nuw i64 %index420, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next423, %n.vec418
  br i1 %i.ei, label %middle.block424, label %vector.body419, !llvm.loop !1018

middle.block424:                                  ; preds = %vector.body419
  %cmp.n425 = icmp eq i64 %i.cw, %n.vec418
  br i1 %cmp.n425, label %.loopexit179, label %.lr.ph206.preheader447

.lr.ph206.preheader447:                           ; preds = %.lr.ph206.preheader, %middle.block424
  %indvars.iv254.ph = phi i64 [ %i.cx, %.lr.ph206.preheader ], [ %i.ec, %middle.block424 ]
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader447, %.lr.ph206
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph206 ], [ %indvars.iv254.ph, %.lr.ph206.preheader447 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv254
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv254
  store i32 %i.ek, ptr %i.el, align 4
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %i.em = trunc nuw i64 %indvars.iv.next255 to i32
  %i.en = icmp sgt i32 %i.l, %i.em
  br i1 %i.en, label %.lr.ph206, label %.loopexit179, !llvm.loop !1019

.loopexit179.sink.split:                          ; preds = %bb.f, %.lr.ph208
  %.sink301 = phi ptr [ %i.db, %.lr.ph208 ], [ %i.da, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cz, ptr noundef nonnull align 1 dereferenceable(1) %.sink301, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit179

.loopexit179:                                     ; preds = %.lr.ph206, %middle.block424, %.loopexit179.sink.split
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %indvars.iv.next248 = sub i32 %indvars.iv247, %i.l
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %.loopexit177, label %.lr.ph208, !llvm.loop !1020

bb.g:                                             ; preds = %decode_counter.exit
  %i.eo = icmp sgt i32 %i.k, 0                    ; 2 uses
  br i1 %.not303, label %.preheader187, label %.preheader184

.preheader187:                                    ; preds = %bb.g
  br i1 %i.eo, label %.lr.ph193.preheader, label %.loopexit177

.lr.ph193.preheader:                              ; preds = %.preheader187
  %i.ep = zext nneg i32 %i.l to i64               ; 4 uses
  %wide.trip.count229 = zext nneg i32 %i.k to i64
  %i.eq = sub i64 %i.b, %i.c
  %diff.check335 = icmp ugt i64 %i.eq, -32
  br label %.lr.ph193

.preheader184:                                    ; preds = %bb.g
  br i1 %i.eo, label %.lr.ph202.preheader, label %.loopexit177

.lr.ph202.preheader:                              ; preds = %.preheader184
  %i.er = zext nneg i32 %i.l to i64               ; 3 uses
  %wide.trip.count241 = zext nneg i32 %i.k to i64
  %i.es = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.es, -32
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %._crit_edge200
  %indvars.iv238 = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next239, %._crit_edge200 ] ; 4 uses
  %i.et = shl nuw nsw i64 %indvars.iv238, 8       ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.et
  %i.eu = or disjoint i64 %i.et, 8                ; 2 uses
  %scevgep308 = getelementptr i8, ptr %0, i64 %i.eu
  %scevgep310.a = getelementptr i8, ptr %1, i64 %i.et
  %i.ev = or disjoint i64 %i.et, 4                ; 2 uses
  %scevgep312 = getelementptr i8, ptr %1, i64 %i.ev
  %scevgep314 = getelementptr i8, ptr %2, i64 %i.ev
  %scevgep316 = getelementptr i8, ptr %2, i64 %i.eu
  %i.ew = shl nuw nsw i64 %indvars.iv238, 8       ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %i.ew ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.ew ; 4 uses
  %i.fa = trunc i64 %indvars.iv238 to i32
  %i.fb = mul i32 %i.l, %i.fa
  %i.fc = sub i32 %i.ai, %i.fb                    ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %.lr.ph196.preheader, label %.lr.ph199.preheader

.lr.ph196.preheader:                              ; preds = %.lr.ph202
  %i.fe = tail call i32 @llvm.smin.i32(i32 %i.fc, i32 %i.l) ; 2 uses
  %i.ff = zext nneg i32 %i.fe to i64              ; 3 uses
  %min.iters.check325 = icmp ult i32 %i.fe, 8
  %or.cond445 = or i1 %min.iters.check325, %diff.check
  br i1 %or.cond445, label %.lr.ph196.preheader456, label %vector.ph326

vector.ph326:                                     ; preds = %.lr.ph196.preheader
  %n.vec327 = and i64 %i.ff, 1073741816           ; 4 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next331, %vector.body328 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %index329 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load = load <4 x i32>, ptr %i.fg, align 4
  %wide.load330 = load <4 x i32>, ptr %i.fh, align 4
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index329 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <4 x i32> %wide.load, ptr %i.fi, align 4
  store <4 x i32> %wide.load330, ptr %i.fj, align 4
  %index.next331 = add nuw i64 %index329, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next331, %n.vec327
  br i1 %i.fk, label %middle.block332, label %vector.body328, !llvm.loop !1021

middle.block332:                                  ; preds = %vector.body328
  %cmp.n = icmp eq i64 %n.vec327, %i.ff
  br i1 %cmp.n, label %.preheader183, label %.lr.ph196.preheader456

.lr.ph196.preheader456:                           ; preds = %.lr.ph196.preheader, %middle.block332
  %indvars.iv232.ph.a = phi i64 [ 0, %.lr.ph196.preheader ], [ %n.vec327, %middle.block332 ]
  br label %.lr.ph196

.preheader183:                                    ; preds = %.lr.ph196, %middle.block332
  %indvars.iv.next233.lcssa = phi i64 [ %n.vec327, %middle.block332 ], [ %indvars.iv.next233.a, %.lr.ph196 ] ; 2 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv.next233.lcssa to i32
  %i.fm = icmp samesign ugt i32 %i.l, %i.fl
  br i1 %i.fm, label %.lr.ph199.preheader, label %._crit_edge200

.lr.ph199.preheader:                              ; preds = %.lr.ph202, %.preheader183
  %.0154.lcssa294 = phi i64 [ %indvars.iv.next233.lcssa, %.preheader183 ], [ 0, %.lr.ph202 ] ; 9 uses
  %i.fn = add nuw nsw i64 %.0154.lcssa294, 2
  %i.fo = tail call i64 @llvm.umax.i64(i64 %i.er, i64 %i.fn)
  %i.fp = xor i64 %.0154.lcssa294, -1
  %i.fq = add i64 %i.fo, %i.fp                    ; 3 uses
  %i.fr = lshr i64 %i.fq, 1
  %i.fs = add nuw i64 %i.fr, 1
  %min.iters.check = icmp ult i64 %i.fq, 20
  br i1 %min.iters.check, label %.lr.ph199.preheader455, label %vector.memcheck

.lr.ph199.preheader455:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph199.preheader
  %indvars.iv235.ph = phi i64 [ %.0154.lcssa294, %vector.memcheck ], [ %.0154.lcssa294, %.lr.ph199.preheader ], [ %i.gc, %vector.body ]
  br label %.lr.ph199

vector.memcheck:                                  ; preds = %.lr.ph199.preheader
  %i.ft = shl nuw nsw i64 %.0154.lcssa294, 2      ; 4 uses
  %scevgep307 = getelementptr nuw i8, ptr %scevgep, i64 %i.ft ; 2 uses
  %i.fu = add nuw nsw i64 %.0154.lcssa294, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.er, i64 %i.fu)
  %i.fv = xor i64 %.0154.lcssa294, -1
  %i.fw = add i64 %umax, %i.fv
  %i.fx = shl i64 %i.fw, 2
  %i.fy = and i64 %i.fx, -8
  %i.fz = add i64 %i.fy, %i.ft                    ; 3 uses
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.fz ; 2 uses
  %scevgep311 = getelementptr nuw i8, ptr %scevgep310.a, i64 %i.ft
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.fz
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.ft
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.fz
  %bound0 = icmp ult ptr %scevgep307, %scevgep313
  %bound1 = icmp ult ptr %scevgep311, %scevgep309
  %found.conflict = and i1 %bound0, %bound1
  %bound0318 = icmp ult ptr %scevgep307, %scevgep317
  %bound1319 = icmp ult ptr %scevgep315, %scevgep309
  %found.conflict320 = and i1 %bound0318, %bound1319
  %conflict.rdx = or i1 %found.conflict, %found.conflict320
  br i1 %conflict.rdx, label %.lr.ph199.preheader455, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ga = and i64 %i.fq, 2
  %.not441 = icmp eq i64 %i.ga, 0
  %.neg = select i1 %.not441, i64 -1, i64 -2
  %n.vec = add i64 %.neg, %i.fs                   ; 2 uses
  %i.gb = shl i64 %n.vec, 1
  %i.gc = add i64 %.0154.lcssa294, %i.gb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gd = shl nuw i64 %index, 1
  %i.ge = add nuw i64 %.0154.lcssa294, %i.gd      ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ge
  %wide.vec = load <4 x i32>, ptr %i.gf, align 4, !alias.scope !1022
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ge
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ge
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %wide.vec321 = load <4 x i32>, ptr %i.gi, align 4, !alias.scope !1025
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> %wide.vec321, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec, ptr %i.gg, align 4, !alias.scope !1027, !noalias !1029
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %.lr.ph199.preheader455, label %vector.body, !llvm.loop !1030

.lr.ph196:                                        ; preds = %.lr.ph196.preheader456, %.lr.ph196
  %indvars.iv232.a = phi i64 [ %indvars.iv.next233.a, %.lr.ph196 ], [ %indvars.iv232.ph.a, %.lr.ph196.preheader456 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv232.a
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv232.a
  store i32 %i.gl, ptr %i.gm, align 4
  %indvars.iv.next233.a = add nuw nsw i64 %indvars.iv232.a, 1 ; 3 uses
  %i.gn = icmp samesign ult i64 %indvars.iv.next233.a, %i.ff
  br i1 %i.gn, label %.lr.ph196, label %.preheader183, !llvm.loop !1031

.lr.ph199:                                        ; preds = %.lr.ph199.preheader455, %.lr.ph199
  %indvars.iv235 = phi i64 [ %indvars.iv.next236.a, %.lr.ph199 ], [ %indvars.iv235.ph, %.lr.ph199.preheader455 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv235
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv235
  store i32 %i.gp, ptr %i.gq, align 4
  %i.gr = add nuw nsw i64 %indvars.iv235, 1       ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.gr
  store i32 %i.gt, ptr %i.gu, align 4
  %indvars.iv.next236.a = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %i.gv = icmp samesign ult i64 %indvars.iv.next236.a, %i.er
  br i1 %i.gv, label %.lr.ph199, label %._crit_edge200, !llvm.loop !1032

._crit_edge200:                                   ; preds = %.lr.ph199, %.preheader183
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit177, label %.lr.ph202, !llvm.loop !1033

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %._crit_edge
  %indvars.iv226 = phi i64 [ 0, %.lr.ph193.preheader ], [ %indvars.iv.next227, %._crit_edge ] ; 5 uses
  %i.gw = shl nuw nsw i64 %indvars.iv226, 8       ; 4 uses
  %scevgep349 = getelementptr i8, ptr %0, i64 %i.gw ; 2 uses
  %i.gx = or disjoint i64 %i.gw, 8                ; 2 uses
  %scevgep350 = getelementptr i8, ptr %0, i64 %i.gx
  %i.gy = trunc i64 %indvars.iv226 to i32
  %i.gz = mul i32 %i.l, %i.gy
  %i.ha = sub i32 %i.ai, %i.gz
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 %i.l)
  %i.hb = tail call i32 @llvm.umax.i32(i32 %smin, i32 2)
  %umax351 = zext i32 %i.hb to i64
  %i.hc = shl nuw nsw i64 %umax351, 2
  %i.hd = add nsw i64 %i.hc, -4
  %i.he = and i64 %i.hd, -8                       ; 3 uses
  %scevgep352 = getelementptr i8, ptr %scevgep350, i64 %i.he ; 2 uses
  %scevgep353 = getelementptr i8, ptr %1, i64 %i.gw
  %i.hf = or disjoint i64 %i.gw, 4                ; 2 uses
  %scevgep354 = getelementptr i8, ptr %1, i64 %i.hf
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %i.he
  %scevgep356 = getelementptr i8, ptr %2, i64 %i.hf
  %scevgep357 = getelementptr i8, ptr %2, i64 %i.gx
  %scevgep358 = getelementptr i8, ptr %scevgep357, i64 %i.he
  %i.hg = shl nuw nsw i64 %indvars.iv226, 8       ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 %i.hg ; 10 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 %i.hg ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 %i.hg ; 9 uses
  %i.hk = trunc i64 %indvars.iv226 to i32
  %i.hl = mul i32 %i.l, %i.hk
  %i.hm = sub i32 %i.ai, %i.hl                    ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph.preheader, label %.lr.ph191.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph193
  %i.ho = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 %i.l) ; 2 uses
  %i.hp = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hq = tail call i64 @llvm.umax.i64(i64 %i.hp, i64 2)
  %i.hr = add nsw i64 %i.hq, -1
  %i.hs = lshr i64 %i.hr, 1
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check367 = icmp ult i32 %i.ho, 13
  br i1 %min.iters.check367, label %.lr.ph.preheader453, label %vector.memcheck348

.lr.ph.preheader453:                              ; preds = %vector.body370, %vector.memcheck348, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck348 ], [ 0, %.lr.ph.preheader ], [ %i.hx, %vector.body370 ]
  br label %.lr.ph

vector.memcheck348:                               ; preds = %.lr.ph.preheader
  %bound0359 = icmp ult ptr %scevgep349, %scevgep355
  %bound1360 = icmp ult ptr %scevgep353, %scevgep352
  %found.conflict361 = and i1 %bound0359, %bound1360
  %bound0362 = icmp ult ptr %scevgep349, %scevgep358
  %bound1363 = icmp ult ptr %scevgep356, %scevgep352
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %found.conflict361, %found.conflict364
  br i1 %conflict.rdx365, label %.lr.ph.preheader453, label %vector.ph368

vector.ph368:                                     ; preds = %vector.memcheck348
  %i.hu = and i64 %i.ht, 3                        ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 0
  %i.hw = select i1 %i.hv, i64 4, i64 %i.hu
  %n.vec369 = sub nsw i64 %i.ht, %i.hw            ; 2 uses
  %i.hx = shl i64 %n.vec369, 1
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph368
  %index371 = phi i64 [ 0, %vector.ph368 ], [ %index.next382, %vector.body370 ] ; 2 uses
  %i.hy = shl nuw i64 %index371, 1                ; 5 uses
  %i.hz = or disjoint i64 %i.hy, 4                ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hy
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hz
  %wide.vec372 = load <4 x i32>, ptr %i.ia, align 4, !alias.scope !1034
  %wide.vec374 = load <4 x i32>, ptr %i.ib, align 4, !alias.scope !1034
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hy
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hz
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hy
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hy
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 20
  %wide.vec376 = load <4 x i32>, ptr %i.if, align 4, !alias.scope !1037
  %wide.vec378 = load <4 x i32>, ptr %i.ih, align 4, !alias.scope !1037
  %interleaved.vec380 = shufflevector <4 x i32> %wide.vec372, <4 x i32> %wide.vec376, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec380, ptr %i.ic, align 4, !alias.scope !1039, !noalias !1041
  %interleaved.vec381 = shufflevector <4 x i32> %wide.vec374, <4 x i32> %wide.vec378, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec381, ptr %i.id, align 4, !alias.scope !1039, !noalias !1041
  %index.next382 = add nuw i64 %index371, 4       ; 2 uses
  %i.ii = icmp eq i64 %index.next382, %n.vec369
  br i1 %i.ii, label %.lr.ph.preheader453, label %vector.body370, !llvm.loop !1042

.preheader186:                                    ; preds = %.lr.ph
  %i.ij = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ik = icmp sgt i32 %i.l, %i.ij
  br i1 %i.ik, label %.lr.ph191.preheader, label %._crit_edge

.lr.ph191.preheader:                              ; preds = %.lr.ph193, %.preheader186
  %.0.lcssa296 = phi i64 [ %indvars.iv.next, %.preheader186 ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.il = sub i64 %i.ep, %.0.lcssa296             ; 3 uses
  %min.iters.check337 = icmp ult i64 %i.il, 8
  %or.cond446 = or i1 %min.iters.check337, %diff.check335
  br i1 %or.cond446, label %.lr.ph191.preheader452, label %vector.ph338

vector.ph338:                                     ; preds = %.lr.ph191.preheader
  %n.vec339 = and i64 %i.il, -8                   ; 3 uses
  %i.im = add i64 %.0.lcssa296, %n.vec339
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next344, %vector.body340 ] ; 2 uses
  %i.in = add nuw i64 %.0.lcssa296, %index341     ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load342 = load <4 x i32>, ptr %i.io, align 4
  %wide.load343 = load <4 x i32>, ptr %i.ip, align 4
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.in ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <4 x i32> %wide.load342, ptr %i.iq, align 4
  store <4 x i32> %wide.load343, ptr %i.ir, align 4
  %index.next344 = add nuw i64 %index341, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next344, %n.vec339
  br i1 %i.is, label %middle.block345, label %vector.body340, !llvm.loop !1043

middle.block345:                                  ; preds = %vector.body340
  %cmp.n346 = icmp eq i64 %i.il, %n.vec339
  br i1 %cmp.n346, label %._crit_edge, label %.lr.ph191.preheader452

.lr.ph191.preheader452:                           ; preds = %.lr.ph191.preheader, %middle.block345
  %indvars.iv223.ph = phi i64 [ %.0.lcssa296, %.lr.ph191.preheader ], [ %i.im, %middle.block345 ] ; 4 uses
  %i.it = sub i64 %i.ep, %indvars.iv223.ph
  %xtraiter = and i64 %i.it, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol

.lr.ph191.prol:                                   ; preds = %.lr.ph191.preheader452, %.lr.ph191.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %.lr.ph191.prol ], [ %indvars.iv223.ph, %.lr.ph191.preheader452 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph191.prol ], [ 0, %.lr.ph191.preheader452 ]
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv223.prol
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv223.prol
  store i32 %i.iv, ptr %i.iw, align 4
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol, !llvm.loop !1044

.lr.ph191.prol.loopexit:                          ; preds = %.lr.ph191.prol, %.lr.ph191.preheader452
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %.lr.ph191.preheader452 ], [ %indvars.iv.next224.prol, %.lr.ph191.prol ]
  %i.ix = sub i64 %indvars.iv223.ph, %i.ep
  %i.iy = icmp ugt i64 %i.ix, -4
  br i1 %i.iy, label %._crit_edge, label %.lr.ph191

.lr.ph:                                           ; preds = %.lr.ph.preheader453, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader453 ] ; 4 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv
  store i32 %i.ja, ptr %i.jb, align 4
  %i.jc = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.jc
  store i32 %i.je, ptr %i.jf, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.jg = icmp samesign ult i64 %indvars.iv.next, %i.hp
  br i1 %i.jg, label %.lr.ph, label %.preheader186, !llvm.loop !1045

.lr.ph191:                                        ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %.lr.ph191 ], [ %indvars.iv223.unr, %.lr.ph191.prol.loopexit ] ; 6 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv223
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv223
  store i32 %i.ji, ptr %i.jj, align 4
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next224
  %i.jl = load i32, ptr %i.jk, align 4
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next224
  store i32 %i.jl, ptr %i.jm, align 4
  %indvars.iv.next224.1 = add nuw nsw i64 %indvars.iv223, 2 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next224.1
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next224.1
  store i32 %i.jo, ptr %i.jp, align 4
  %indvars.iv.next224.2 = add nuw nsw i64 %indvars.iv223, 3 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next224.2
  %i.jr = load i32, ptr %i.jq, align 4
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next224.2
  store i32 %i.jr, ptr %i.js, align 4
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next224.3, %i.ep
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph191, !llvm.loop !1046

._crit_edge:                                      ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191, %middle.block345, %.preheader186
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %.loopexit177, label %.lr.ph193, !llvm.loop !1047

.loopexit177:                                     ; preds = %._crit_edge200, %._crit_edge, %.loopexit, %.loopexit179, %.preheader187, %.preheader184, %.preheader181, %.preheader176
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_sel_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = ashr i32 %4, 10                          ; 4 uses
  %i.i = lshr exact i32 %.v.i, 3                  ; 6 uses
  %i.j = and i32 %3, 15
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader70, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 5 uses
  %i.l = add nsw i64 %i.g, -1
  %i.m = tail call range(i64 53, 65) i64 @llvm.ctlz.i64(i64 range(i64 7, 2048) %i.l, i1 true)
  %i.n = add nuw nsw i64 %i.m, 4294967295
  %i.o = and i64 %i.n, 4294967295
  %i.p = lshr exact i64 -9223372036854775808, %i.o
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 3
  %i.s = add nsw i32 %i.r, -1
  %i.t = and i32 %i.s, %3                         ; 2 uses
  %i.u = add nuw nsw i32 %i.k, 1
  %i.v = lshr i32 %i.t, %i.u                      ; 4 uses
  %i.w = and i32 %3, 32768
  %.not93 = icmp eq i32 %i.w, 0                   ; 3 uses
  %.not29.i = icmp eq i32 %i.k, 3
  br i1 %.not29.i, label %decode_counter.exit, label %bb.c, !prof !62

bb.c:                                             ; preds = %bb.b
  %i.x = icmp samesign ult i32 %i.k, 3
  br i1 %i.x, label %.split91, label %.split

.split91:                                         ; preds = %bb.c
  %i.y = sub nuw nsw i32 3, %i.k
  %i.z = lshr i32 %i.t, 4                         ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, %i.y
  %i.ab = icmp ne i32 %i.v, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.z, %i.ac             ; 2 uses
  br i1 %.not93, label %.preheader70, label %.preheader

.split:                                           ; preds = %bb.c
  %i.ae = add nsw i32 %i.k, -3
  %i.af = shl i32 %i.v, %i.ae                     ; 2 uses
  br i1 %.not93, label %.preheader70, label %.preheader

end_hunk_2
