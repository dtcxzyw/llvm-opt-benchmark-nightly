Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/iseq?download=true
inline.NumInlined: 615
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@rb_iseq_free:bb.a
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %free_arena.exit12.i
  call void @ruby_xfree(ptr noundef nonnull %i.cw) #20
  br label %compile_data_free.exit

compile_data_free.exit:                           ; preds = %bb.x, %ISEQ_COMPILE_DATA.exit, %bb.aa
  %i.df = getelementptr i8, ptr %i.ax, i64 288
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !625 ; 2 uses
  %.not48 = icmp eq ptr %i.dg, null
  br i1 %.not48, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %compile_data_free.exit
  call void @rb_id_table_free(ptr noundef nonnull %i.dg) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %compile_data_free.exit
  call void @ruby_xfree(ptr noundef nonnull %i.ax) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.b, %bb.a
  ret void
}

declare void @rb_yjit_iseq_free(ptr noundef) local_unnamed_addr #2

declare void @rb_zjit_iseq_free(ptr noundef) local_unnamed_addr #2

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #2

declare void @rb_id_table_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_iseq_mark_and_move(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !guid !635 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.h) #20
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !372  ; 27 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.bi, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.j, i64 232
  %.val119.val = load ptr, ptr %i.k, align 8, !tbaa !435
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %.val119.val, %bb.c ], [ null, %bb.b ] ; 4 uses
  %i.m = getelementptr i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !433
  %i.o = getelementptr i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !426  ; 4 uses
  %i.q = getelementptr i8, ptr %i.j, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !391  ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.j, i64 252
  %i.t = load i32, ptr %i.s, align 4, !tbaa !395
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr [16 x i8], ptr %i.r, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.j, i64 256      ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !394  ; 2 uses
  %.not17.i = icmp eq i32 %i.x, 0
  br i1 %.not17.i, label %.preheader5.i, label %.lr.ph.i

.preheader5.i:                                    ; preds = %bb.g, %bb.e
  %.046.lcssa.i = phi ptr [ %i.v, %bb.e ], [ %i.af, %bb.g ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.j, i64 248      ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !393  ; 2 uses
  %.not18.i = icmp eq i32 %i.z, 0
  br i1 %.not18.i, label %.preheader4.i, label %.lr.ph10.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %i.aa = phi i32 [ %i.ad, %bb.g ], [ %i.x, %bb.e ]
  %.0457.i = phi i32 [ %i.ae, %bb.g ], [ 0, %bb.e ]
  %.0466.i = phi ptr [ %i.af, %bb.g ], [ %i.v, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %.0466.i, align 8, !tbaa !638 ; 2 uses
  %.not56.i = icmp eq ptr %i.ab, null
  br i1 %.not56.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ac) #20
  %.pre.i = load i32, ptr %i.w, align 8, !tbaa !394
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.ad = phi i32 [ %.pre.i, %bb.f ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %i.ae = add nuw i32 %.0457.i, 1                 ; 2 uses
  %i.af = getelementptr i8, ptr %.0466.i, i64 16  ; 2 uses
  %i.ag = icmp ult i32 %i.ae, %i.ad
  br i1 %i.ag, label %.lr.ph.i, label %.preheader5.i, !llvm.loop !626

.preheader4.i:                                    ; preds = %bb.i, %.preheader5.i
  %.1.lcssa.i = phi ptr [ %.046.lcssa.i, %.preheader5.i ], [ %i.ao, %bb.i ]
  %i.ah = getelementptr i8, ptr %i.j, i64 244     ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !392 ; 2 uses
  %.not19.i = icmp eq i32 %i.ai, 0
  br i1 %.not19.i, label %.loopexit.i, label %.lr.ph14.i

.lr.ph10.i:                                       ; preds = %.preheader5.i, %bb.i
  %i.aj = phi i32 [ %i.am, %bb.i ], [ %i.z, %.preheader5.i ]
  %.0449.i = phi i32 [ %i.an, %bb.i ], [ 0, %.preheader5.i ]
  %.18.i = phi ptr [ %i.ao, %bb.i ], [ %.046.lcssa.i, %.preheader5.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.18.i, i64 8     ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !434
  %.not55.i = icmp eq i64 %i.al, 0
  br i1 %.not55.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph10.i
  tail call void @rb_gc_mark_and_move(ptr noundef nonnull %i.ak) #20
  %.pre30.i = load i32, ptr %i.y, align 8, !tbaa !393
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph10.i
  %i.am = phi i32 [ %.pre30.i, %bb.h ], [ %i.aj, %.lr.ph10.i ] ; 2 uses
  %i.an = add nuw i32 %.0449.i, 1                 ; 2 uses
  %i.ao = getelementptr i8, ptr %.18.i, i64 16    ; 2 uses
  %i.ap = icmp ult i32 %i.an, %i.am
  br i1 %i.ap, label %.lr.ph10.i, label %.preheader4.i, !llvm.loop !627

.lr.ph14.i:                                       ; preds = %.preheader4.i, %bb.m
  %i.aq = phi i32 [ %i.ay, %bb.m ], [ %i.ai, %.preheader4.i ]
  %.04313.i = phi i32 [ %i.az, %bb.m ], [ 0, %.preheader4.i ]
  %.212.i = phi ptr [ %i.ba, %bb.m ], [ %.1.lcssa.i, %.preheader4.i ] ; 5 uses
  %i.ar = load ptr, ptr %.212.i, align 8, !tbaa !639
  %.not53.i = icmp eq ptr %i.ar, null
  br i1 %.not53.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph14.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.as = load ptr, ptr %.212.i, align 8, !tbaa !639
  %i.at = ptrtoint ptr %i.as to i64
  store i64 %i.at, ptr %i.a, align 8, !tbaa !364
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.a) #20
  %i.au = load i64, ptr %i.a, align 8, !tbaa !364 ; 2 uses
  %i.av = load ptr, ptr %.212.i, align 8, !tbaa !639
  %i.aw = ptrtoint ptr %i.av to i64
  %.not54.i = icmp eq i64 %i.au, %i.aw
  br i1 %.not54.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = inttoptr i64 %i.au to ptr
  store ptr %i.ax, ptr %.212.i, align 8, !tbaa !639
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.pre31.i = load i32, ptr %i.ah, align 4, !tbaa !392
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph14.i
  %i.ay = phi i32 [ %.pre31.i, %bb.l ], [ %i.aq, %.lr.ph14.i ] ; 2 uses
  %i.az = add nuw i32 %.04313.i, 1                ; 2 uses
  %i.ba = getelementptr i8, ptr %.212.i, i64 16
  %i.bb = icmp ult i32 %i.az, %i.ay
  br i1 %i.bb, label %.lr.ph14.i, label %.loopexit.i, !llvm.loop !628

.loopexit.i:                                      ; preds = %bb.m, %.preheader4.i, %bb.d
  %i.bc = getelementptr i8, ptr %i.j, i64 280     ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not52.i = icmp eq ptr %i.bd, null
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  br i1 %.not52.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit.i
  %i.bf = zext i32 %i.n to i64
  %i.bg = add nuw nsw i64 %i.bf, 63
  %i.bh = lshr i64 %i.bg, 6                       ; 3 uses
  switch i64 %i.bh, label %.lr.ph16.i [
    i64 1, label %.lr.ph.i.i
    i64 0, label %rb_iseq_mark_and_move_each_body_value.exit
  ]

.lr.ph16.i:                                       ; preds = %bb.n
  %.not22.i59.i = icmp eq ptr %i.l, null
  br i1 %.not22.i59.i, label %.lr.ph16.split.us.i, label %.lr.ph16.split.i

.lr.ph16.split.us.i:                              ; preds = %.lr.ph16.i, %iseq_scan_bits.exit69.us.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %iseq_scan_bits.exit69.us.i ], [ 0, %.lr.ph16.i ] ; 3 uses
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !434
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %indvars.iv26.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !364 ; 2 uses
  %.not24.i57.us.i = icmp eq i64 %i.bk, 0
  br i1 %.not24.i57.us.i, label %iseq_scan_bits.exit69.us.i, label %.lr.ph.i58.us.i

.lr.ph.i58.us.i:                                  ; preds = %.lr.ph16.split.us.i
  %invariant.gep.i.us.idx.i = shl i64 %indvars.iv26.i, 9
  %invariant.gep.i.us.i = getelementptr i8, ptr %i.p, i64 %invariant.gep.i.us.idx.i
  br label %.lr.ph.split.us.i65.us.i

.lr.ph.split.us.i65.us.i:                         ; preds = %.lr.ph.split.us.i65.us.i, %.lr.ph.i58.us.i
  %.025.us.i66.us.i = phi i64 [ %i.bn, %.lr.ph.split.us.i65.us.i ], [ %i.bk, %.lr.ph.i58.us.i ] ; 3 uses
  %i.bl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i66.us.i, i1 true)
  %gep.i67.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %i.bl
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i67.us.i) #20
  %i.bm = add i64 %.025.us.i66.us.i, -1
  %i.bn = and i64 %i.bm, %.025.us.i66.us.i        ; 2 uses
  %.not.us.i68.us.i = icmp eq i64 %i.bn, 0
  br i1 %.not.us.i68.us.i, label %iseq_scan_bits.exit69.us.i, label %.lr.ph.split.us.i65.us.i, !llvm.loop !629

iseq_scan_bits.exit69.us.i:                       ; preds = %.lr.ph.split.us.i65.us.i, %.lr.ph16.split.us.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next27.i, %i.bh
  br i1 %exitcond29.not.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph16.split.us.i, !llvm.loop !630

.lr.ph.i.i:                                       ; preds = %bb.n
  %.not22.i.i = icmp eq ptr %i.l, null
  br i1 %.not22.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i.i
  %.025.us.i.i = phi i64 [ %i.bq, %.lr.ph.split.us.i.i ], [ %i.be, %.lr.ph.i.i ] ; 3 uses
  %i.bo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i.i, i1 true)
  %gep.i.i = getelementptr [8 x i8], ptr %i.p, i64 %i.bo
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i.i) #20
  %i.bp = add i64 %.025.us.i.i, -1
  %i.bq = and i64 %i.bp, %.025.us.i.i             ; 2 uses
  %.not.us.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.us.i.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph.split.us.i.i, !llvm.loop !629

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.p
  %.025.i.i = phi i64 [ %i.bx, %bb.p ], [ %i.be, %.lr.ph.i.i ] ; 3 uses
  %i.br = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i.i, i1 true) ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.p, i64 %i.br ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !364
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.bs) #20
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !364 ; 2 uses
  %.not23.i.i = icmp eq i64 %i.bu, %i.bt
  br i1 %.not23.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i.i
  %i.bv = getelementptr [8 x i8], ptr %i.l, i64 %i.br
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !364
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.i.i
  %i.bw = add i64 %.025.i.i, -1
  %i.bx = and i64 %i.bw, %.025.i.i                ; 2 uses
  %.not.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph.split.i.i, !llvm.loop !629

.lr.ph16.split.i:                                 ; preds = %.lr.ph16.i, %iseq_scan_bits.exit69.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %iseq_scan_bits.exit69.i ], [ 0, %.lr.ph16.i ] ; 3 uses
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !434
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !364 ; 2 uses
  %.not24.i57.i = icmp eq i64 %i.ca, 0
  br i1 %.not24.i57.i, label %iseq_scan_bits.exit69.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.lr.ph16.split.i
  %i.cb = shl nuw nsw i64 %indvars.iv.i, 6
  br label %.lr.ph.split.i60.i

.lr.ph.split.i60.i:                               ; preds = %bb.r, %.lr.ph.i58.i
  %.025.i61.i = phi i64 [ %i.cj, %bb.r ], [ %i.ca, %.lr.ph.i58.i ] ; 3 uses
  %i.cc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i61.i, i1 true)
  %i.cd = or disjoint i64 %i.cc, %i.cb            ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.p, i64 %i.cd ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !364
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.ce) #20
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !364 ; 2 uses
  %.not23.i62.i = icmp eq i64 %i.cg, %i.cf
  br i1 %.not23.i62.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.i60.i
  %i.ch = getelementptr [8 x i8], ptr %i.l, i64 %i.cd
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !364
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.i60.i
  %i.ci = add i64 %.025.i61.i, -1
  %i.cj = and i64 %i.ci, %.025.i61.i              ; 2 uses
  %.not.i63.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i63.i, label %iseq_scan_bits.exit69.i, label %.lr.ph.split.i60.i, !llvm.loop !629

iseq_scan_bits.exit69.i:                          ; preds = %bb.r, %.lr.ph16.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bh
  br i1 %exitcond.not.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph16.split.i, !llvm.loop !630

rb_iseq_mark_and_move_each_body_value.exit:       ; preds = %bb.p, %.lr.ph.split.us.i.i, %iseq_scan_bits.exit69.i, %iseq_scan_bits.exit69.us.i, %.loopexit.i, %bb.n
  %i.ck = getelementptr i8, ptr %i.j, i64 208
  call void @rb_gc_mark_and_move(ptr noundef %i.ck) #20
  %i.cl = getelementptr i8, ptr %i.j, i64 64
  %i.cm = getelementptr i8, ptr %i.j, i64 80
  call void @rb_gc_mark_and_move(ptr noundef %i.cm) #20
  %i.cn = getelementptr i8, ptr %i.j, i64 72
  call void @rb_gc_mark_and_move(ptr noundef %i.cn) #20
  call void @rb_gc_mark_and_move(ptr noundef %i.cl) #20
  %i.co = getelementptr i8, ptr %i.j, i64 176     ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !456 ; 2 uses
  %.not100 = icmp eq ptr %i.cp, null
  br i1 %.not100, label %bb.v, label %bb.s

bb.s:                                             ; preds = %rb_iseq_mark_and_move_each_body_value.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cq = ptrtoint ptr %i.cp to i64
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !364
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.b) #20
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !364 ; 2 uses
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !456
  %i.ct = ptrtoint ptr %i.cs to i64
  %.not101 = icmp eq i64 %i.cr, %i.ct
  br i1 %.not101, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = inttoptr i64 %i.cr to ptr
  store ptr %i.cu, ptr %i.co, align 8, !tbaa !456
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %rb_iseq_mark_and_move_each_body_value.exit
  %i.cv = getelementptr i8, ptr %i.j, i64 168     ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !457 ; 2 uses
  %.not102 = icmp eq ptr %i.cw, null
  br i1 %.not102, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.cx = ptrtoint ptr %i.cw to i64
  store i64 %i.cx, ptr %i.c, align 8, !tbaa !364
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.c) #20
  %i.cy = load i64, ptr %i.c, align 8, !tbaa !364 ; 2 uses
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !457
  %i.da = ptrtoint ptr %i.cz to i64
  %.not103 = icmp eq i64 %i.cy, %i.da
  br i1 %.not103, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = inttoptr i64 %i.cy to ptr
  store ptr %i.db, ptr %i.cv, align 8, !tbaa !457
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.dc = getelementptr i8, ptr %i.j, i64 296     ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !640 ; 2 uses
  %.not104 = icmp eq ptr %i.dd, null
  br i1 %.not104, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.de = ptrtoint ptr %i.dd to i64
  store i64 %i.de, ptr %i.d, align 8, !tbaa !364
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.d) #20
  %i.df = load i64, ptr %i.d, align 8, !tbaa !364 ; 2 uses
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !640
  %i.dh = ptrtoint ptr %i.dg to i64
  %.not105 = icmp eq i64 %i.df, %i.dh
  br i1 %.not105, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = inttoptr i64 %i.df to ptr
  store ptr %i.di, ptr %i.dc, align 8, !tbaa !640
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.dj = getelementptr i8, ptr %i.j, i64 192     ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !430
  %.not106 = icmp eq ptr %i.dk, null
  br i1 %.not106, label %.loopexit147, label %.preheader146

.preheader146:                                    ; preds = %bb.ad
  %i.dl = getelementptr i8, ptr %i.j, i64 260     ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !458
  %.not158 = icmp eq i32 %i.dm, 0
  br i1 %.not158, label %.loopexit147, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader146, %bb.av
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %.preheader146 ] ; 2 uses
  %i.dn = load ptr, ptr %i.dj, align 8, !tbaa !430
  %i.do = getelementptr [16 x i8], ptr %i.dn, i64 %indvars.iv ; 5 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !462
  %.not115 = icmp eq ptr %i.dp, null
  br i1 %.not115, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
end_hunk_0
