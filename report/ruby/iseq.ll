inline.NumInlined: 615
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@rb_iseq_free:bb.a
bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = phi ptr [ %.pre54, %bb.t ], [ %i.cl, %bb.s ]
  call void @ruby_xfree(ptr noundef %i.co) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %i.cp = getelementptr i8, ptr %i.ax, i64 144
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !95 ; 2 uses
  %.not47 = icmp eq ptr %i.cq, @rb_iseq_shared_exc_local_tbl
  br i1 %.not47, label %bb.x, label %bb.w, !prof !99

bb.w:                                             ; preds = %bb.v
  call void @ruby_xfree(ptr noundef %i.cq) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cr = getelementptr i8, ptr %i.ax, i64 152
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !100
  call void @ruby_xfree(ptr noundef %i.cs) #20
  %i.ct = load i64, ptr %0, align 8, !tbaa !101
  %i.cu = and i64 %i.ct, 262144
  %.not.i49 = icmp eq i64 %i.cu, 0
  br i1 %.not.i49, label %compile_data_free.exit, label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.x
  %i.cv = getelementptr i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !90 ; 5 uses
  %.not.i50 = icmp eq ptr %i.cw, null
  br i1 %.not.i50, label %compile_data_free.exit, label %bb.y

bb.y:                                             ; preds = %ISEQ_COMPILE_DATA.exit
  %i.cx = getelementptr i8, ptr %i.cw, i64 88
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !102 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.cy, null
  br i1 %.not4.i.i, label %free_arena.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.cy, %bb.y ] ; 2 uses
  %i.cz = load ptr, ptr %.05.i.i, align 8, !tbaa !110 ; 2 uses
  call void @ruby_xfree(ptr noundef nonnull %.05.i.i) #20
  %.not.i.i51 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i51, label %free_arena.exit.i, label %.lr.ph.i.i, !llvm.loop !111

free_arena.exit.i:                                ; preds = %.lr.ph.i.i, %bb.y
  %i.da = getelementptr i8, ptr %i.cw, i64 104
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !112 ; 2 uses
  %.not4.i8.i = icmp eq ptr %i.db, null
  br i1 %.not4.i8.i, label %free_arena.exit12.i, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %free_arena.exit.i, %.lr.ph.i9.i
  %.05.i10.i = phi ptr [ %i.dc, %.lr.ph.i9.i ], [ %i.db, %free_arena.exit.i ] ; 2 uses
  %i.dc = load ptr, ptr %.05.i10.i, align 8, !tbaa !110 ; 2 uses
  call void @ruby_xfree(ptr noundef nonnull %.05.i10.i) #20
  %.not.i11.i = icmp eq ptr %i.dc, null
  br i1 %.not.i11.i, label %free_arena.exit12.i, label %.lr.ph.i9.i, !llvm.loop !111

free_arena.exit12.i:                              ; preds = %.lr.ph.i9.i, %free_arena.exit.i
  %i.dd = getelementptr i8, ptr %i.cw, i64 160
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !113 ; 2 uses
  %.not7.i = icmp eq ptr %i.de, null
  br i1 %.not7.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %free_arena.exit12.i
  call void @rb_id_table_free(ptr noundef nonnull %i.de) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %free_arena.exit12.i
  call void @ruby_xfree(ptr noundef nonnull %i.cw) #20
  br label %compile_data_free.exit

compile_data_free.exit:                           ; preds = %bb.x, %ISEQ_COMPILE_DATA.exit, %bb.aa
  %i.df = getelementptr i8, ptr %i.ax, i64 288
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !114 ; 2 uses
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
define hidden void @rb_iseq_mark_and_move(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 27 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.bi, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.j, i64 232
  %.val119.val = load ptr, ptr %i.k, align 8, !tbaa !91
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %.val119.val, %bb.c ], [ null, %bb.b ] ; 4 uses
  %i.m = getelementptr i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !89
  %i.o = getelementptr i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82   ; 4 uses
  %i.q = getelementptr i8, ptr %i.j, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.j, i64 252
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr [16 x i8], ptr %i.r, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.j, i64 256      ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %.not17.i = icmp eq i32 %i.x, 0
  br i1 %.not17.i, label %.preheader5.i, label %.lr.ph.i

.preheader5.i:                                    ; preds = %bb.g, %bb.e
  %.0.lcssa.i = phi ptr [ %i.v, %bb.e ], [ %i.af, %bb.g ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.j, i64 248      ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %.not18.i = icmp eq i32 %i.z, 0
  br i1 %.not18.i, label %.preheader4.i, label %.lr.ph10.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %i.aa = phi i32 [ %i.ad, %bb.g ], [ %i.x, %bb.e ]
  %.07.i = phi ptr [ %i.af, %bb.g ], [ %i.v, %bb.e ] ; 2 uses
  %.0446.i = phi i32 [ %i.ae, %bb.g ], [ 0, %bb.e ]
  %i.ab = load ptr, ptr %.07.i, align 8, !tbaa !115 ; 2 uses
  %.not56.i = icmp eq ptr %i.ab, null
  br i1 %.not56.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ac) #20
  %.pre.i = load i32, ptr %i.w, align 8, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.ad = phi i32 [ %.pre.i, %bb.f ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %i.ae = add nuw i32 %.0446.i, 1                 ; 2 uses
  %i.af = getelementptr i8, ptr %.07.i, i64 16    ; 2 uses
  %i.ag = icmp ult i32 %i.ae, %i.ad
  br i1 %i.ag, label %.lr.ph.i, label %.preheader5.i, !llvm.loop !118

.preheader4.i:                                    ; preds = %bb.i, %.preheader5.i
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader5.i ], [ %i.ao, %bb.i ]
  %i.ah = getelementptr i8, ptr %i.j, i64 244     ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40 ; 2 uses
  %.not19.i = icmp eq i32 %i.ai, 0
  br i1 %.not19.i, label %.loopexit.i, label %.lr.ph14.i

.lr.ph10.i:                                       ; preds = %.preheader5.i, %bb.i
  %i.aj = phi i32 [ %i.am, %bb.i ], [ %i.z, %.preheader5.i ]
  %.19.i = phi ptr [ %i.ao, %bb.i ], [ %.0.lcssa.i, %.preheader5.i ] ; 2 uses
  %.0468.i = phi i32 [ %i.an, %bb.i ], [ 0, %.preheader5.i ]
  %i.ak = getelementptr i8, ptr %.19.i, i64 8     ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !90
  %.not55.i = icmp eq i64 %i.al, 0
  br i1 %.not55.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph10.i
  tail call void @rb_gc_mark_and_move(ptr noundef nonnull %i.ak) #20
  %.pre30.i = load i32, ptr %i.y, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph10.i
  %i.am = phi i32 [ %.pre30.i, %bb.h ], [ %i.aj, %.lr.ph10.i ] ; 2 uses
  %i.an = add nuw i32 %.0468.i, 1                 ; 2 uses
  %i.ao = getelementptr i8, ptr %.19.i, i64 16    ; 2 uses
  %i.ap = icmp ult i32 %i.an, %i.am
  br i1 %i.ap, label %.lr.ph10.i, label %.preheader4.i, !llvm.loop !119

.lr.ph14.i:                                       ; preds = %.preheader4.i, %bb.m
  %i.aq = phi i32 [ %i.ax, %bb.m ], [ %i.ai, %.preheader4.i ]
  %.213.i = phi ptr [ %i.az, %bb.m ], [ %.1.lcssa.i, %.preheader4.i ] ; 4 uses
  %.04512.i = phi i32 [ %i.ay, %bb.m ], [ 0, %.preheader4.i ]
  %i.ar = load ptr, ptr %.213.i, align 8, !tbaa !120 ; 2 uses
  %.not53.i = icmp eq ptr %i.ar, null
  br i1 %.not53.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph14.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.as = ptrtoint ptr %i.ar to i64
  store i64 %i.as, ptr %i.a, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.a) #20
  %i.at = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.au = load ptr, ptr %.213.i, align 8, !tbaa !120
  %i.av = ptrtoint ptr %i.au to i64
  %.not54.i = icmp eq i64 %i.at, %i.av
  br i1 %.not54.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = inttoptr i64 %i.at to ptr
  store ptr %i.aw, ptr %.213.i, align 8, !tbaa !120
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.pre31.i = load i32, ptr %i.ah, align 4, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph14.i
  %i.ax = phi i32 [ %.pre31.i, %bb.l ], [ %i.aq, %.lr.ph14.i ] ; 2 uses
  %i.ay = add nuw i32 %.04512.i, 1                ; 2 uses
  %i.az = getelementptr i8, ptr %.213.i, i64 16
  %i.ba = icmp ult i32 %i.ay, %i.ax
  br i1 %i.ba, label %.lr.ph14.i, label %.loopexit.i, !llvm.loop !121

.loopexit.i:                                      ; preds = %bb.m, %.preheader4.i, %bb.d
  %i.bb = getelementptr i8, ptr %i.j, i64 280     ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not52.i = icmp eq ptr %i.bc, null
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  br i1 %.not52.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit.i
  %i.be = zext i32 %i.n to i64
  %i.bf = add nuw nsw i64 %i.be, 63
  %i.bg = lshr i64 %i.bf, 6                       ; 3 uses
  switch i64 %i.bg, label %.lr.ph16.i [
    i64 1, label %.lr.ph.i.i
    i64 0, label %rb_iseq_mark_and_move_each_body_value.exit
  ]

.lr.ph16.i:                                       ; preds = %bb.n
  %.not22.i59.i = icmp eq ptr %i.l, null
  br i1 %.not22.i59.i, label %.lr.ph16.split.us.i, label %.lr.ph16.split.i

.lr.ph16.split.us.i:                              ; preds = %.lr.ph16.i, %iseq_scan_bits.exit69.us.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %iseq_scan_bits.exit69.us.i ], [ 0, %.lr.ph16.i ] ; 3 uses
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv26.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %.not24.i57.us.i = icmp eq i64 %i.bj, 0
  br i1 %.not24.i57.us.i, label %iseq_scan_bits.exit69.us.i, label %.lr.ph.i58.us.i

.lr.ph.i58.us.i:                                  ; preds = %.lr.ph16.split.us.i
  %invariant.gep.i.us.idx.i = shl i64 %indvars.iv26.i, 9
  %invariant.gep.i.us.i = getelementptr i8, ptr %i.p, i64 %invariant.gep.i.us.idx.i
  br label %.lr.ph.split.us.i65.us.i

.lr.ph.split.us.i65.us.i:                         ; preds = %.lr.ph.split.us.i65.us.i, %.lr.ph.i58.us.i
  %.025.us.i66.us.i = phi i64 [ %i.bm, %.lr.ph.split.us.i65.us.i ], [ %i.bj, %.lr.ph.i58.us.i ] ; 3 uses
  %i.bk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i66.us.i, i1 true)
  %gep.i67.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %i.bk
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i67.us.i) #20
  %i.bl = add i64 %.025.us.i66.us.i, -1
  %i.bm = and i64 %i.bl, %.025.us.i66.us.i        ; 2 uses
  %.not.us.i68.us.i = icmp eq i64 %i.bm, 0
  br i1 %.not.us.i68.us.i, label %iseq_scan_bits.exit69.us.i, label %.lr.ph.split.us.i65.us.i, !llvm.loop !122

iseq_scan_bits.exit69.us.i:                       ; preds = %.lr.ph.split.us.i65.us.i, %.lr.ph16.split.us.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next27.i, %i.bg
  br i1 %exitcond29.not.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph16.split.us.i, !llvm.loop !123

.lr.ph.i.i:                                       ; preds = %bb.n
  %.not22.i.i = icmp eq ptr %i.l, null
  br i1 %.not22.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i.i
  %.025.us.i.i = phi i64 [ %i.bp, %.lr.ph.split.us.i.i ], [ %i.bd, %.lr.ph.i.i ] ; 3 uses
  %i.bn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i.i, i1 true)
  %gep.i.i = getelementptr [8 x i8], ptr %i.p, i64 %i.bn
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i.i) #20
  %i.bo = add i64 %.025.us.i.i, -1
  %i.bp = and i64 %i.bo, %.025.us.i.i             ; 2 uses
  %.not.us.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.us.i.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph.split.us.i.i, !llvm.loop !122

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.p
  %.025.i.i = phi i64 [ %i.bw, %bb.p ], [ %i.bd, %.lr.ph.i.i ] ; 3 uses
  %i.bq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i.i, i1 true) ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.p, i64 %i.bq ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.br) #20
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  %.not23.i.i = icmp eq i64 %i.bt, %i.bs
  br i1 %.not23.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i.i
  %i.bu = getelementptr [8 x i8], ptr %i.l, i64 %i.bq
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.i.i
  %i.bv = add i64 %.025.i.i, -1
  %i.bw = and i64 %i.bv, %.025.i.i                ; 2 uses
  %.not.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph.split.i.i, !llvm.loop !122

.lr.ph16.split.i:                                 ; preds = %.lr.ph16.i, %iseq_scan_bits.exit69.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %iseq_scan_bits.exit69.i ], [ 0, %.lr.ph16.i ] ; 3 uses
  %i.bx = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11 ; 2 uses
  %.not24.i57.i = icmp eq i64 %i.bz, 0
  br i1 %.not24.i57.i, label %iseq_scan_bits.exit69.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.lr.ph16.split.i
  %i.ca = shl nuw nsw i64 %indvars.iv.i, 6
  br label %.lr.ph.split.i60.i

.lr.ph.split.i60.i:                               ; preds = %bb.r, %.lr.ph.i58.i
  %.025.i61.i = phi i64 [ %i.ci, %bb.r ], [ %i.bz, %.lr.ph.i58.i ] ; 3 uses
  %i.cb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i61.i, i1 true)
  %i.cc = or disjoint i64 %i.cb, %i.ca            ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.p, i64 %i.cc ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.cd) #20
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !11 ; 2 uses
  %.not23.i62.i = icmp eq i64 %i.cf, %i.ce
  br i1 %.not23.i62.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.i60.i
  %i.cg = getelementptr [8 x i8], ptr %i.l, i64 %i.cc
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.i60.i
  %i.ch = add i64 %.025.i61.i, -1
  %i.ci = and i64 %i.ch, %.025.i61.i              ; 2 uses
  %.not.i63.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i63.i, label %iseq_scan_bits.exit69.i, label %.lr.ph.split.i60.i, !llvm.loop !122

iseq_scan_bits.exit69.i:                          ; preds = %bb.r, %.lr.ph16.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bg
  br i1 %exitcond.not.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph16.split.i, !llvm.loop !123

rb_iseq_mark_and_move_each_body_value.exit:       ; preds = %bb.p, %.lr.ph.split.us.i.i, %iseq_scan_bits.exit69.i, %iseq_scan_bits.exit69.us.i, %.loopexit.i, %bb.n
  %i.cj = getelementptr i8, ptr %i.j, i64 208
  call void @rb_gc_mark_and_move(ptr noundef %i.cj) #20
  %i.ck = getelementptr i8, ptr %i.j, i64 64
  %i.cl = getelementptr i8, ptr %i.j, i64 80
  call void @rb_gc_mark_and_move(ptr noundef %i.cl) #20
  %i.cm = getelementptr i8, ptr %i.j, i64 72
  call void @rb_gc_mark_and_move(ptr noundef %i.cm) #20
  call void @rb_gc_mark_and_move(ptr noundef %i.ck) #20
  %i.cn = getelementptr i8, ptr %i.j, i64 176     ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !124 ; 2 uses
  %.not100 = icmp eq ptr %i.co, null
  br i1 %.not100, label %bb.v, label %bb.s

bb.s:                                             ; preds = %rb_iseq_mark_and_move_each_body_value.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cp = ptrtoint ptr %i.co to i64
  store i64 %i.cp, ptr %i.b, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.b) #20
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !124
  %i.cs = ptrtoint ptr %i.cr to i64
  %.not101 = icmp eq i64 %i.cq, %i.cs
  br i1 %.not101, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = inttoptr i64 %i.cq to ptr
  store ptr %i.ct, ptr %i.cn, align 8, !tbaa !124
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %rb_iseq_mark_and_move_each_body_value.exit
  %i.cu = getelementptr i8, ptr %i.j, i64 168     ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !125 ; 2 uses
  %.not102 = icmp eq ptr %i.cv, null
  br i1 %.not102, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.cw = ptrtoint ptr %i.cv to i64
  store i64 %i.cw, ptr %i.c, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.c) #20
  %i.cx = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !125
  %i.cz = ptrtoint ptr %i.cy to i64
  %.not103 = icmp eq i64 %i.cx, %i.cz
  br i1 %.not103, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = inttoptr i64 %i.cx to ptr
  store ptr %i.da, ptr %i.cu, align 8, !tbaa !125
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.db = getelementptr i8, ptr %i.j, i64 296     ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !126 ; 2 uses
  %.not104 = icmp eq ptr %i.dc, null
  br i1 %.not104, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.dd = ptrtoint ptr %i.dc to i64
  store i64 %i.dd, ptr %i.d, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.d) #20
  %i.de = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !126
  %i.dg = ptrtoint ptr %i.df to i64
  %.not105 = icmp eq i64 %i.de, %i.dg
  br i1 %.not105, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = inttoptr i64 %i.de to ptr
  store ptr %i.dh, ptr %i.db, align 8, !tbaa !126
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.di = getelementptr i8, ptr %i.j, i64 192     ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !86
  %.not106 = icmp eq ptr %i.dj, null
  br i1 %.not106, label %.loopexit147, label %.preheader146

.preheader146:                                    ; preds = %bb.ad
  %i.dk = getelementptr i8, ptr %i.j, i64 260     ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !127
  %.not158 = icmp eq i32 %i.dl, 0
  br i1 %.not158, label %.loopexit147, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader146, %bb.av
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %.preheader146 ] ; 2 uses
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !86
  %i.dn = getelementptr [16 x i8], ptr %i.dm, i64 %indvars.iv ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !128 ; 2 uses
  %.not115 = icmp eq ptr %i.do, null
  br i1 %.not115, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.dp = ptrtoint ptr %i.do to i64
  store i64 %i.dp, ptr %i.e, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.e) #20
  %i.dq = load i64, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !128
  %i.ds = ptrtoint ptr %i.dr to i64
  %.not116 = icmp eq i64 %i.dq, %i.ds
  br i1 %.not116, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = inttoptr i64 %i.dq to ptr
  store ptr %i.dt, ptr %i.dn, align 8, !tbaa !128
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph
  %i.du = getelementptr i8, ptr %i.dn, i64 8      ; 6 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !132 ; 4 uses
  %.not.i121 = icmp eq ptr %i.dv, null
  br i1 %.not.i121, label %bb.at, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = call ptr @rb_vm_empty_cc() #20
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = call ptr @rb_vm_empty_cc_for_super() #20
  %.not15.i = icmp eq ptr %i.dy, null
  br i1 %.not15.i, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  br i1 %1, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = call i64 @rb_gc_location(i64 noundef %i.dz) #20
  %i.eb = inttoptr i64 %i.ea to ptr
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.013.i = phi ptr [ %i.eb, %bb.al ], [ %i.dv, %bb.ak ] ; 3 uses
  %i.ec = load i64, ptr %.013.i, align 8, !tbaa !80
  %i.ed = and i64 %i.ec, 1048576
  %.not19.i122 = icmp eq i64 %i.ed, 0
  br i1 %.not19.i122, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.ee = getelementptr i8, ptr %.013.i, i64 8
  %.013.val.i = load i64, ptr %i.ee, align 8, !tbaa !133
  %.not20.i = icmp eq i64 %.013.val.i, 36
  br i1 %.not20.i, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = getelementptr i8, ptr %.013.i, i64 16
  %.013.val18.i = load ptr, ptr %i.ef, align 8, !tbaa !136 ; 2 uses
  br i1 %1, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eg = ptrtoint ptr %.013.val18.i to i64
  %i.eh = call i64 @rb_gc_location(i64 noundef %i.eg) #20
  %i.ei = inttoptr i64 %i.eh to ptr
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.011.i = phi ptr [ %i.ei, %bb.ap ], [ %.013.val18.i, %bb.ao ]
  %i.ej = load i64, ptr %.011.i, align 8, !tbaa !137
  %i.ek = and i64 %i.ej, 2097152
  %.not17.not.i = icmp eq i64 %i.ek, 0
  br i1 %.not17.not.i, label %cc_is_active.exit, label %bb.at

cc_is_active.exit:                                ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.el = load ptr, ptr %i.du, align 8, !tbaa !132
  %i.em = ptrtoint ptr %i.el to i64
  store i64 %i.em, ptr %i.f, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.f) #20
  %i.en = load i64, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %i.eo = load ptr, ptr %i.du, align 8, !tbaa !132
  %i.ep = ptrtoint ptr %i.eo to i64
  %.not118 = icmp eq i64 %i.en, %i.ep
  br i1 %.not118, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %cc_is_active.exit
  %i.eq = inttoptr i64 %i.en to ptr
  store ptr %i.eq, ptr %i.du, align 8, !tbaa !132
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %cc_is_active.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %bb.av

bb.at:                                            ; preds = %bb.ah, %bb.am, %bb.an, %bb.aq, %bb.aj, %bb.ai
  %i.er = load ptr, ptr %i.du, align 8, !tbaa !132
  %i.es = call ptr @rb_vm_empty_cc() #20
  %.not117 = icmp eq ptr %i.er, %i.es
  br i1 %.not117, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.et = call ptr @rb_vm_empty_cc() #20
  store ptr %i.et, ptr %i.du, align 8, !tbaa !132
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.as
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eu = load i32, ptr %i.dk, align 4, !tbaa !127
  %i.ev = zext i32 %i.eu to i64
  %i.ew = icmp samesign ult i64 %indvars.iv.next, %i.ev
  br i1 %i.ew, label %.lr.ph, label %.loopexit147, !llvm.loop !140

.loopexit147:                                     ; preds = %bb.av, %.preheader146, %bb.ad
  %i.ex = getelementptr i8, ptr %i.j, i64 16
  %i.ey = load i16, ptr %i.ex, align 8
  %i.ez = and i16 %i.ey, 16
  %.not107 = icmp eq i16 %i.ez, 0
  br i1 %.not107, label %.loopexit145, label %bb.aw

bb.aw:                                            ; preds = %.loopexit147
  %i.fa = getelementptr i8, ptr %i.j, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !92 ; 5 uses
  %.not108 = icmp eq ptr %i.fb, null
  br i1 %.not108, label %.loopexit145, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fc = getelementptr i8, ptr %i.fb, i64 24     ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !98
  %.not109 = icmp eq ptr %i.fd, null
  br i1 %.not109, label %.loopexit145, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fe = getelementptr i8, ptr %i.fb, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !141 ; 2 uses
  %i.fg = load i32, ptr %i.fb, align 8, !tbaa !97
  %i.fh = icmp slt i32 %i.ff, %i.fg
  br i1 %i.fh, label %.lr.ph155, label %.loopexit145

.lr.ph155:                                        ; preds = %bb.ay, %.lr.ph155
  %.088154 = phi i32 [ %i.fm, %.lr.ph155 ], [ 0, %bb.ay ] ; 2 uses
  %.089153 = phi i32 [ %i.fl, %.lr.ph155 ], [ %i.ff, %bb.ay ]
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !98
  %i.fj = sext i32 %.088154 to i64
  %i.fk = getelementptr [8 x i8], ptr %i.fi, i64 %i.fj
  call void @rb_gc_mark_and_move(ptr noundef %i.fk) #20
  %i.fl = add nsw i32 %.089153, 1                 ; 2 uses
  %i.fm = add i32 %.088154, 1
  %i.fn = load i32, ptr %i.fb, align 8, !tbaa !97
  %i.fo = icmp slt i32 %i.fl, %i.fn
  br i1 %i.fo, label %.lr.ph155, label %.loopexit145, !llvm.loop !142

.loopexit145:                                     ; preds = %.lr.ph155, %bb.ay, %bb.ax, %bb.aw, %.loopexit147
  %i.fp = getelementptr i8, ptr %i.j, i64 160
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !87 ; 4 uses
  %.not110 = icmp eq ptr %i.fq, null
  br i1 %.not110, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit145
  %i.fr = load i32, ptr %i.fq, align 1, !tbaa !7  ; 2 uses
  %.not159 = icmp eq i32 %i.fr, 0
  br i1 %.not159, label %.loopexit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader, %bb.bc
  %i.fs = phi i32 [ %i.gb, %bb.bc ], [ %i.fr, %.preheader ]
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.bc ], [ 0, %.preheader ] ; 2 uses
  %i.ft = getelementptr [32 x i8], ptr %i.fq, i64 %indvars.iv168
  %i.fu = getelementptr i8, ptr %i.ft, i64 12     ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !143 ; 2 uses
  %.not113 = icmp eq ptr %i.fv, null
  br i1 %.not113, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %.lr.ph157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.fw = ptrtoint ptr %i.fv to i64
  store i64 %i.fw, ptr %i.g, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.g) #20
  %i.fx = load i64, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !143
  %i.fz = ptrtoint ptr %i.fy to i64
  %.not114 = icmp eq i64 %i.fx, %i.fz
  br i1 %.not114, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ga = inttoptr i64 %i.fx to ptr
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !143
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %.pre = load i32, ptr %i.fq, align 1, !tbaa !7
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph157
  %i.gb = phi i32 [ %.pre, %bb.bb ], [ %i.fs, %.lr.ph157 ] ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.gc = zext i32 %i.gb to i64
  %i.gd = icmp samesign ult i64 %indvars.iv.next169, %i.gc
  br i1 %i.gd, label %.lr.ph157, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %bb.bc, %.preheader, %.loopexit145
  br i1 %1, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.loopexit
  call void @rb_yjit_iseq_update_references(ptr noundef %0) #20
  %i.ge = getelementptr i8, ptr %i.j, i64 352
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !146
  call void @rb_zjit_iseq_update_references(ptr noundef %i.gf) #20
  br label %bb.bg

bb.be:                                            ; preds = %.loopexit
  %i.gg = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gg, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gh = getelementptr i8, ptr %i.j, i64 336
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !147
  call void @rb_yjit_iseq_mark(ptr noundef %i.gi) #20
  %i.gj = getelementptr i8, ptr %i.j, i64 352
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !146
  call void @rb_zjit_iseq_mark(ptr noundef %i.gk) #20
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %i.gl = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gl, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gm = getelementptr i8, ptr %i.j, i64 216
  call void @rb_gc_mark_and_move(ptr noundef %i.gm) #20
  %i.gn = getelementptr i8, ptr %i.j, i64 224
  call void @rb_gc_mark_and_move(ptr noundef %i.gn) #20
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.a
  %i.go = load i64, ptr %0, align 8, !tbaa !80    ; 2 uses
  %i.gp = and i64 %i.go, 131072
  %.not111 = icmp eq i64 %i.gp, 0
  br i1 %.not111, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gq = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gq, label %bb.bu, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gr = getelementptr i8, ptr %0, i64 24
  br label %.sink.split

bb.bl:                                            ; preds = %bb.bi
  %i.gs = and i64 %i.go, 262144
  %.not112 = icmp eq i64 %i.gs, 0
  br i1 %.not112, label %bb.bu, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gt = call zeroext i1 @rb_gc_checking_shareable() #20
  br i1 %i.gt, label %bb.bu, label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.bm
  %i.gu = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !90 ; 3 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 104
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !112
  call void @rb_iseq_mark_and_move_insn_storage(ptr noundef %i.gx) #20
  br i1 %1, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %ISEQ_COMPILE_DATA.exit
  %.val = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.gy = getelementptr i8, ptr %.val, i64 232
  %.val.val = load ptr, ptr %i.gy, align 8, !tbaa !91
  br label %bb.bo

bb.bo:                                            ; preds = %ISEQ_COMPILE_DATA.exit, %bb.bn
  %i.gz = phi ptr [ %.val.val, %bb.bn ], [ null, %ISEQ_COMPILE_DATA.exit ] ; 4 uses
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !90 ; 4 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 16
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !148
  %i.hd = getelementptr i8, ptr %i.ha, i64 24
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !149 ; 4 uses
  %i.hf = getelementptr i8, ptr %i.ha, i64 40     ; 3 uses
  %i.hg = load ptr, ptr %i.hf, align 8            ; 2 uses
  %.not.i125 = icmp eq ptr %i.hg, null
  %i.hh = ptrtoint ptr %i.hg to i64               ; 2 uses
  br i1 %.not.i125, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hi = getelementptr i8, ptr %i.ha, i64 32
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !150, !range !151, !noundef !152
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %.lr.ph.i.i132, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bp
  %i.hl = zext i32 %i.hc to i64
  %i.hm = add nuw nsw i64 %i.hl, 63
  %i.hn = lshr i64 %i.hm, 6                       ; 3 uses
  %.not35.i = icmp eq i64 %i.hn, 0
  br i1 %.not35.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.preheader.i
  %.not22.i20.i = icmp eq ptr %i.gz, null
  br i1 %.not22.i20.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i126, %iseq_scan_bits.exit30.us.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %iseq_scan_bits.exit30.us.i ], [ 0, %.lr.ph.i126 ] ; 3 uses
  %i.ho = load ptr, ptr %i.hf, align 8, !tbaa !90
  %i.hp = getelementptr [8 x i8], ptr %i.ho, i64 %indvars.iv40.i
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !11 ; 2 uses
  %.not24.i18.us.i = icmp eq i64 %i.hq, 0
  br i1 %.not24.i18.us.i, label %iseq_scan_bits.exit30.us.i, label %.lr.ph.i19.us.i

.lr.ph.i19.us.i:                                  ; preds = %.lr.ph.split.us.i
  %invariant.gep.i.us.idx.i130 = shl nuw nsw i64 %indvars.iv40.i, 9
  %invariant.gep.i.us.i131 = getelementptr i8, ptr %i.he, i64 %invariant.gep.i.us.idx.i130
  br label %.lr.ph.split.us.i26.us.i

.lr.ph.split.us.i26.us.i:                         ; preds = %.lr.ph.split.us.i26.us.i, %.lr.ph.i19.us.i
  %.025.us.i27.us.i = phi i64 [ %i.ht, %.lr.ph.split.us.i26.us.i ], [ %i.hq, %.lr.ph.i19.us.i ] ; 3 uses
  %i.hr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i27.us.i, i1 true)
  %gep.i28.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i131, i64 %i.hr
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i28.us.i) #20
  %i.hs = add i64 %.025.us.i27.us.i, -1
  %i.ht = and i64 %i.hs, %.025.us.i27.us.i        ; 2 uses
  %.not.us.i29.us.i = icmp eq i64 %i.ht, 0
  br i1 %.not.us.i29.us.i, label %iseq_scan_bits.exit30.us.i, label %.lr.ph.split.us.i26.us.i, !llvm.loop !122

iseq_scan_bits.exit30.us.i:                       ; preds = %.lr.ph.split.us.i26.us.i, %.lr.ph.split.us.i
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next41.i, %i.hn
  br i1 %exitcond43.not.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.us.i, !llvm.loop !153

.lr.ph.i.i132:                                    ; preds = %bb.bp
  %.not22.i.i133 = icmp eq ptr %i.gz, null
  br i1 %.not22.i.i133, label %.lr.ph.split.us.i.i137, label %.lr.ph.split.i.i134

.lr.ph.split.us.i.i137:                           ; preds = %.lr.ph.i.i132, %.lr.ph.split.us.i.i137
  %.025.us.i.i138 = phi i64 [ %i.hw, %.lr.ph.split.us.i.i137 ], [ %i.hh, %.lr.ph.i.i132 ] ; 3 uses
  %i.hu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i.i138, i1 true)
  %gep.i.i139 = getelementptr [8 x i8], ptr %i.he, i64 %i.hu
  call void @rb_gc_mark_and_move(ptr noundef nonnull %gep.i.i139) #20
  %i.hv = add i64 %.025.us.i.i138, -1
  %i.hw = and i64 %i.hv, %.025.us.i.i138          ; 2 uses
  %.not.us.i.i140 = icmp eq i64 %i.hw, 0
  br i1 %.not.us.i.i140, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.us.i.i137, !llvm.loop !122

.lr.ph.split.i.i134:                              ; preds = %.lr.ph.i.i132, %bb.br
  %.025.i.i135 = phi i64 [ %i.id, %bb.br ], [ %i.hh, %.lr.ph.i.i132 ] ; 3 uses
  %i.hx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i.i135, i1 true) ; 2 uses
  %i.hy = getelementptr [8 x i8], ptr %i.he, i64 %i.hx ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.hy) #20
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !11 ; 2 uses
  %.not23.i.i136 = icmp eq i64 %i.ia, %i.hz
  br i1 %.not23.i.i136, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.split.i.i134
  %i.ib = getelementptr [8 x i8], ptr %i.gz, i64 %i.hx
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !11
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.split.i.i134
  %i.ic = add i64 %.025.i.i135, -1
  %i.id = and i64 %i.ic, %.025.i.i135             ; 2 uses
  %.not.i17.i = icmp eq i64 %i.id, 0
  br i1 %.not.i17.i, label %rb_iseq_mark_and_move_each_compile_data_value.exit, label %.lr.ph.split.i.i134, !llvm.loop !122

.lr.ph.split.i:                                   ; preds = %.lr.ph.i126, %iseq_scan_bits.exit30.i
  %indvars.iv.i127 = phi i64 [ %indvars.iv.next.i128, %iseq_scan_bits.exit30.i ], [ 0, %.lr.ph.i126 ] ; 3 uses
  %i.ie = load ptr, ptr %i.hf, align 8, !tbaa !90
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %indvars.iv.i127
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !11 ; 2 uses
  %.not24.i18.i = icmp eq i64 %i.ig, 0
  br i1 %.not24.i18.i, label %iseq_scan_bits.exit30.i, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.split.i
  %i.ih = shl nuw nsw i64 %indvars.iv.i127, 6
  br label %.lr.ph.split.i21.i
end_hunk_0
