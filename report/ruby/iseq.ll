inline.NumInlined: 615
inline.NumDeleted: 145
begin_hunk_0_@rb_iseq_free:bb.a
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

.lr.ph16.split.us.i:                              ; preds = %.lr.ph16.i, %iseq_scan_bits.exit67.us.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %iseq_scan_bits.exit67.us.i ], [ 0, %.lr.ph16.i ] ; 3 uses
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv26.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %.not24.i57.us.i = icmp eq i64 %i.bj, 0
  br i1 %.not24.i57.us.i, label %iseq_scan_bits.exit67.us.i, label %.lr.ph.split.us.i64.us.preheader.i

.lr.ph.split.us.i64.us.preheader.i:               ; preds = %.lr.ph16.split.us.i
  %i.bk = shl i64 %indvars.iv26.i, 6
  %.masked52.i = and i64 %i.bk, 4294967232
  %2 = getelementptr [8 x i8], ptr %i.p, i64 %.masked52.i
  br label %.lr.ph.split.us.i64.us.i

.lr.ph.split.us.i64.us.i:                         ; preds = %.lr.ph.split.us.i64.us.i, %.lr.ph.split.us.i64.us.preheader.i
  %.025.us.i65.us.i = phi i64 [ %i.bo, %.lr.ph.split.us.i64.us.i ], [ %i.bj, %.lr.ph.split.us.i64.us.preheader.i ] ; 3 uses
  %i.bl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i65.us.i, i1 true)
  %i.bm = getelementptr [8 x i8], ptr %2, i64 %i.bl
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.bm) #20
  %i.bn = add i64 %.025.us.i65.us.i, -1
  %i.bo = and i64 %i.bn, %.025.us.i65.us.i        ; 2 uses
  %.not.us.i66.us.i = icmp eq i64 %i.bo, 0
  br i1 %.not.us.i66.us.i, label %iseq_scan_bits.exit67.us.i, label %.lr.ph.split.us.i64.us.i, !llvm.loop !122

iseq_scan_bits.exit67.us.i:                       ; preds = %.lr.ph.split.us.i64.us.i, %.lr.ph16.split.us.i
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next27.i, %i.bg
  br i1 %exitcond29.not.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph16.split.us.i, !llvm.loop !123

.lr.ph.i.i:                                       ; preds = %bb.n
  %.not22.i.i = icmp eq ptr %i.l, null
  br i1 %.not22.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i.i
  %.025.us.i.i = phi i64 [ %i.bs, %.lr.ph.split.us.i.i ], [ %i.bd, %.lr.ph.i.i ] ; 3 uses
  %i.bp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.us.i.i, i1 true)
  %i.bq = getelementptr [8 x i8], ptr %i.p, i64 %i.bp
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.bq) #20
  %i.br = add i64 %.025.us.i.i, -1
  %i.bs = and i64 %i.br, %.025.us.i.i             ; 2 uses
  %.not.us.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.us.i.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph.split.us.i.i, !llvm.loop !122

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.p
  %.025.i.i = phi i64 [ %i.bz, %bb.p ], [ %i.bd, %.lr.ph.i.i ] ; 3 uses
  %i.bt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i.i, i1 true) ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.p, i64 %i.bt ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.bu) #20
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %.not23.i.i = icmp eq i64 %i.bw, %i.bv
  br i1 %.not23.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i.i
  %i.bx = getelementptr [8 x i8], ptr %i.l, i64 %i.bt
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.i.i
  %i.by = add i64 %.025.i.i, -1
  %i.bz = and i64 %i.by, %.025.i.i                ; 2 uses
  %.not.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph.split.i.i, !llvm.loop !122

.lr.ph16.split.i:                                 ; preds = %.lr.ph16.i, %iseq_scan_bits.exit67.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %iseq_scan_bits.exit67.i ], [ 0, %.lr.ph16.i ] ; 3 uses
  %i.ca = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !11 ; 2 uses
  %.not24.i57.i = icmp eq i64 %i.cc, 0
  br i1 %.not24.i57.i, label %iseq_scan_bits.exit67.i, label %.lr.ph.split.i60.preheader.i

.lr.ph.split.i60.preheader.i:                     ; preds = %.lr.ph16.split.i
  %i.cd = shl i64 %indvars.iv.i, 6
  %.masked.i = and i64 %i.cd, 4294967232
  br label %.lr.ph.split.i60.i

.lr.ph.split.i60.i:                               ; preds = %bb.r, %.lr.ph.split.i60.preheader.i
  %.025.i61.i = phi i64 [ %i.cl, %bb.r ], [ %i.cc, %.lr.ph.split.i60.preheader.i ] ; 3 uses
  %i.ce = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.025.i61.i, i1 true)
  %i.cf = or disjoint i64 %i.ce, %.masked.i       ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %i.p, i64 %i.cf ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.cg) #20
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !11 ; 2 uses
  %.not23.i62.i = icmp eq i64 %i.ci, %i.ch
  br i1 %.not23.i62.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.i60.i
  %i.cj = getelementptr [8 x i8], ptr %i.l, i64 %i.cf
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.i60.i
  %i.ck = add i64 %.025.i61.i, -1
  %i.cl = and i64 %i.ck, %.025.i61.i              ; 2 uses
  %.not.i63.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i63.i, label %iseq_scan_bits.exit67.i, label %.lr.ph.split.i60.i, !llvm.loop !122

iseq_scan_bits.exit67.i:                          ; preds = %bb.r, %.lr.ph16.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bg
  br i1 %exitcond.not.i, label %rb_iseq_mark_and_move_each_body_value.exit, label %.lr.ph16.split.i, !llvm.loop !123

rb_iseq_mark_and_move_each_body_value.exit:       ; preds = %bb.p, %.lr.ph.split.us.i.i, %iseq_scan_bits.exit67.i, %iseq_scan_bits.exit67.us.i, %.loopexit.i, %bb.n
  %i.cm = getelementptr i8, ptr %i.j, i64 208
  call void @rb_gc_mark_and_move(ptr noundef %i.cm) #20
  %i.cn = getelementptr i8, ptr %i.j, i64 64
  %i.co = getelementptr i8, ptr %i.j, i64 80
  call void @rb_gc_mark_and_move(ptr noundef %i.co) #20
  %i.cp = getelementptr i8, ptr %i.j, i64 72
  call void @rb_gc_mark_and_move(ptr noundef %i.cp) #20
  call void @rb_gc_mark_and_move(ptr noundef %i.cn) #20
  %i.cq = getelementptr i8, ptr %i.j, i64 176     ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !124 ; 2 uses
  %.not100 = icmp eq ptr %i.cr, null
  br i1 %.not100, label %bb.v, label %bb.s

bb.s:                                             ; preds = %rb_iseq_mark_and_move_each_body_value.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cs = ptrtoint ptr %i.cr to i64
  store i64 %i.cs, ptr %i.b, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.b) #20
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !124
  %i.cv = ptrtoint ptr %i.cu to i64
  %.not101 = icmp eq i64 %i.ct, %i.cv
  br i1 %.not101, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = inttoptr i64 %i.ct to ptr
  store ptr %i.cw, ptr %i.cq, align 8, !tbaa !124
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %rb_iseq_mark_and_move_each_body_value.exit
  %i.cx = getelementptr i8, ptr %i.j, i64 168     ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !125 ; 2 uses
  %.not102 = icmp eq ptr %i.cy, null
  br i1 %.not102, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.cz = ptrtoint ptr %i.cy to i64
  store i64 %i.cz, ptr %i.c, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.c) #20
  %i.da = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !125
  %i.dc = ptrtoint ptr %i.db to i64
  %.not103 = icmp eq i64 %i.da, %i.dc
  br i1 %.not103, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = inttoptr i64 %i.da to ptr
  store ptr %i.dd, ptr %i.cx, align 8, !tbaa !125
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.de = getelementptr i8, ptr %i.j, i64 296     ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !126 ; 2 uses
  %.not104 = icmp eq ptr %i.df, null
  br i1 %.not104, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.dg = ptrtoint ptr %i.df to i64
  store i64 %i.dg, ptr %i.d, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.d) #20
  %i.dh = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !126
  %i.dj = ptrtoint ptr %i.di to i64
  %.not105 = icmp eq i64 %i.dh, %i.dj
  br i1 %.not105, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = inttoptr i64 %i.dh to ptr
  store ptr %i.dk, ptr %i.de, align 8, !tbaa !126
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.dl = getelementptr i8, ptr %i.j, i64 192     ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !86
  %.not106 = icmp eq ptr %i.dm, null
  br i1 %.not106, label %.loopexit145.a, label %.preheader144

.preheader144:                                    ; preds = %bb.ad
  %i.dn = getelementptr i8, ptr %i.j, i64 260     ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !127
  %.not156 = icmp eq i32 %i.do, 0
  br i1 %.not156, label %.loopexit145.a, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader144, %bb.av
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %.preheader144 ] ; 2 uses
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !86
  %i.dq = getelementptr [16 x i8], ptr %i.dp, i64 %indvars.iv ; 4 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !128 ; 2 uses
  %.not115 = icmp eq ptr %i.dr, null
  br i1 %.not115, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.ds = ptrtoint ptr %i.dr to i64
  store i64 %i.ds, ptr %i.e, align 8, !tbaa !11
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.e) #20
  %i.dt = load i64, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !128
  %i.dv = ptrtoint ptr %i.du to i64
  %.not116 = icmp eq i64 %i.dt, %i.dv
  br i1 %.not116, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = inttoptr i64 %i.dt to ptr
  store ptr %i.dw, ptr %i.dq, align 8, !tbaa !128
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph
  %i.dx = getelementptr i8, ptr %i.dq, i64 8      ; 6 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !132 ; 4 uses
  %.not.i121 = icmp eq ptr %i.dy, null
  br i1 %.not.i121, label %bb.at, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dz = call ptr @rb_vm_empty_cc() #20
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = call ptr @rb_vm_empty_cc_for_super() #20
  %.not15.i = icmp eq ptr %i.eb, null
  br i1 %.not15.i, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  br i1 %1, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = call i64 @rb_gc_location(i64 noundef %i.ec) #20
  %i.ee = inttoptr i64 %i.ed to ptr
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.013.i = phi ptr [ %i.ee, %bb.al ], [ %i.dy, %bb.ak ] ; 3 uses
  %i.ef = load i64, ptr %.013.i, align 8, !tbaa !80
  %i.eg = and i64 %i.ef, 1048576
  %.not19.i122 = icmp eq i64 %i.eg, 0
  br i1 %.not19.i122, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.eh = getelementptr i8, ptr %.013.i, i64 8
  %.013.val.i = load i64, ptr %i.eh, align 8, !tbaa !133
  %.not20.i = icmp eq i64 %.013.val.i, 36
  br i1 %.not20.i, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = getelementptr i8, ptr %.013.i, i64 16
  %.013.val18.i = load ptr, ptr %i.ei, align 8, !tbaa !136 ; 2 uses
  br i1 %1, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ej = ptrtoint ptr %.013.val18.i to i64
  %i.ek = call i64 @rb_gc_location(i64 noundef %i.ej) #20
  %i.el = inttoptr i64 %i.ek to ptr
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.011.i = phi ptr [ %i.el, %bb.ap ], [ %.013.val18.i, %bb.ao ]
end_hunk_0
