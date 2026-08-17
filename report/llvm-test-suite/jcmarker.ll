inline.NumInlined: 73
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@write_file_header:bb.a
  br label %emit_adobe_app14.exit

emit_adobe_app14.exit:                            ; preds = %emit_byte.exit37.sink.split.i, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %emit_jfif_app0.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_frame_header(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !68   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !69
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.044 = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.03243 = phi i32 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.03342 = phi i32 [ %i.j, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !70
  %i.h = tail call fastcc i32 @emit_dqt(ptr noundef nonnull %0, i32 noundef %i.g)
  %i.i = add nuw nsw i32 %i.h, %.03243            ; 2 uses
  %i.j = add nuw nsw i32 %.03342, 1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.044, i64 96
  %i.l = load i32, ptr %i.b, align 4, !tbaa !68   ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !72

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.n = icmp ne i32 %i.i, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.032.lcssa = phi i1 [ false, %bb.a ], [ %i.n, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.l, %._crit_edge.loopexit ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !73
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !74
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !75
  %.not36 = icmp eq i32 %i.t, 8
  br i1 %.not36, label %bb.d, label %.thread58

bb.d:                                             ; preds = %bb.c
  %i.u = icmp sgt i32 %.lcssa, 0
  br i1 %i.u, label %.lr.ph50.preheader, label %._crit_edge51

.lr.ph50.preheader:                               ; preds = %bb.d
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %xtraiter = and i32 %.lcssa, 1
  %i.w = icmp eq i32 %.lcssa, 1
  br i1 %i.w, label %.lr.ph50.epil.preheader, label %.lr.ph50.preheader.new

.lr.ph50.preheader.new:                           ; preds = %.lr.ph50.preheader
  %unroll_iter = and i32 %.lcssa, 2147483646
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.i, %.lr.ph50.preheader.new
  %.148 = phi ptr [ %i.v, %.lr.ph50.preheader.new ], [ %i.aj, %bb.i ] ; 5 uses
  %.03047 = phi i32 [ 1, %.lr.ph50.preheader.new ], [ %.131.1, %bb.i ]
  %niter = phi i32 [ 0, %.lr.ph50.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.148, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !76
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph50
  %i.aa = getelementptr inbounds nuw i8, ptr %.148, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !77
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.f, label %.lr.ph50.1

bb.f:                                             ; preds = %bb.e, %.lr.ph50
  br label %.lr.ph50.1

.lr.ph50.1:                                       ; preds = %bb.e, %bb.f
  %.131 = phi i32 [ 0, %bb.f ], [ %.03047, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.148, i64 116
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !76
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph50.1
  %i.ag = getelementptr inbounds nuw i8, ptr %.148, i64 120
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !77
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.lr.ph50.1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.131.1 = phi i32 [ 0, %bb.h ], [ %.131, %bb.g ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.148, i64 192 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge51.loopexit.unr-lcssa, label %.lr.ph50, !llvm.loop !78

._crit_edge51.loopexit.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge51, label %.lr.ph50.epil.preheader

.lr.ph50.epil.preheader:                          ; preds = %._crit_edge51.loopexit.unr-lcssa, %.lr.ph50.preheader
  %.148.epil.init = phi ptr [ %i.v, %.lr.ph50.preheader ], [ %i.aj, %._crit_edge51.loopexit.unr-lcssa ] ; 2 uses
  %.03047.epil.init = phi i32 [ 1, %.lr.ph50.preheader ], [ %.131.1, %._crit_edge51.loopexit.unr-lcssa ]
  %lcmp.mod78 = trunc i32 %.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.ak = getelementptr inbounds nuw i8, ptr %.148.epil.init, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !76
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph50.epil.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.148.epil.init, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !77
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.k, label %._crit_edge51

bb.k:                                             ; preds = %bb.j, %.lr.ph50.epil.preheader
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %._crit_edge51.loopexit.unr-lcssa, %bb.k, %bb.j, %bb.d
  %.030.lcssa = phi i32 [ 1, %bb.d ], [ %.131.1, %._crit_edge51.loopexit.unr-lcssa ], [ 0, %bb.k ], [ %.03047.epil.init, %bb.j ] ; 2 uses
  %i.aq = icmp ne i32 %.030.lcssa, 0
  %or.cond = select i1 %.032.lcssa, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.l, label %.thread58

bb.l:                                             ; preds = %._crit_edge51
  %i.ar = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i32 74, ptr %i.as, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !79
  tail call void %i.au(ptr noundef nonnull %0, i32 noundef 0) #3
  %.pr.pre = load i32, ptr %i.o, align 4, !tbaa !73
  %i.av = icmp eq i32 %.pr.pre, 0
  br i1 %i.av, label %.thread62, label %.thread

.thread58:                                        ; preds = %._crit_edge51, %bb.c
  %.2.ph.ph.ph = phi i32 [ 0, %bb.c ], [ %.030.lcssa, %._crit_edge51 ]
  %.pr = load i32, ptr %i.q, align 4, !tbaa !74
  %.not38 = icmp eq i32 %.pr, 0
  br i1 %.not38, label %bb.m, label %.thread

.thread62:                                        ; preds = %bb.l
  %i.aw = load i32, ptr %i.q, align 4, !tbaa !74
  %.not3864 = icmp eq i32 %i.aw, 0
  br i1 %.not3864, label %.thread66, label %.thread

bb.m:                                             ; preds = %.thread58
  %.not39 = icmp eq i32 %.2.ph.ph.ph, 0
  br i1 %.not39, label %.thread66, label %.thread

.thread66:                                        ; preds = %.thread62, %bb.m
  br label %.thread

.thread:                                          ; preds = %bb.m, %.thread58, %.thread62, %bb.b, %bb.l, %._crit_edge, %.thread66
  %.sink = phi i32 [ 201, %bb.l ], [ 193, %.thread66 ], [ 194, %.thread58 ], [ 201, %._crit_edge ], [ 194, %bb.b ], [ 194, %.thread62 ], [ 192, %bb.m ]
  tail call fastcc void @emit_sof(ptr noundef nonnull %0, i32 noundef %.sink)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_scan_header(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 412
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81   ; 4 uses
  %i.l = load i32, ptr %i.g, align 4, !tbaa !74
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.h, align 4, !tbaa !82
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.i, align 4, !tbaa !83
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %1, label %bb.g

1:                                                ; preds = %bb.d
  %2 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %3 = load i32, ptr %2, align 4, !tbaa !76
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 0)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !77
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %i.r, i32 noundef 1)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %5 = load i32, ptr %4, align 4, !tbaa !76
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %5, i32 noundef 0)
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !77
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %1, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !80
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.b, label %.loopexit, !llvm.loop !84

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !85
  %.not21 = icmp eq i32 %i.y, 0
  br i1 %.not21, label %emit_dri.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37  ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !38
  store i8 -1, ptr %i.ab, align 1, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.af = add i64 %i.ae, -1                       ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !42
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.i, label %emit_byte.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.aj = tail call i32 %i.ai(ptr noundef nonnull %0) #3, !inline_history !86
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.j, label %emit_byte.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i32 22, ptr %i.al, align 8, !tbaa !46
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !50
  tail call void %i.am(ptr noundef nonnull %0) #3, !inline_history !86
  br label %emit_byte.exit.i.i

emit_byte.exit.i.i:                               ; preds = %bb.j, %bb.i, %bb.h
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !37  ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !38
  store i8 -35, ptr %i.ao, align 1, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !42
  %i.as = add i64 %i.ar, -1                       ; 2 uses
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !42
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.k, label %emit_marker.exit.i

bb.k:                                             ; preds = %emit_byte.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !43
  %i.aw = tail call i32 %i.av(ptr noundef nonnull %0) #3, !inline_history !86
  %.not.i2.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i2.i.i, label %bb.l, label %emit_marker.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i32 22, ptr %i.ay, align 8, !tbaa !46
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !50
  tail call void %i.az(ptr noundef nonnull %0) #3, !inline_history !86
  br label %emit_marker.exit.i

emit_marker.exit.i:                               ; preds = %bb.l, %bb.k, %emit_byte.exit.i.i
  %i.ba = load ptr, ptr %i.z, align 8, !tbaa !37  ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !38 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !38
  store i8 0, ptr %i.bb, align 1, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !42
  %i.bf = add i64 %i.be, -1                       ; 2 uses
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !42
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %emit_byte.exit.i4.i

bb.m:                                             ; preds = %emit_marker.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = tail call i32 %i.bi(ptr noundef nonnull %0) #3, !inline_history !87
  %.not.i.i5.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i5.i, label %bb.n, label %emit_byte.exit.i4.i

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store i32 22, ptr %i.bl, align 8, !tbaa !46
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !50
  tail call void %i.bm(ptr noundef nonnull %0) #3, !inline_history !87
  br label %emit_byte.exit.i4.i

emit_byte.exit.i4.i:                              ; preds = %bb.n, %bb.m, %emit_marker.exit.i
  %i.bn = load ptr, ptr %i.z, align 8, !tbaa !37  ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !38 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !38
  store i8 4, ptr %i.bo, align 1, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !42
  %i.bs = add i64 %i.br, -1                       ; 2 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !42
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.o, label %emit_2bytes.exit.i

bb.o:                                             ; preds = %emit_byte.exit.i4.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bw = tail call i32 %i.bv(ptr noundef nonnull %0) #3, !inline_history !87
  %.not.i3.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i3.i.i, label %bb.p, label %emit_2bytes.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i32 22, ptr %i.by, align 8, !tbaa !46
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !50
  tail call void %i.bz(ptr noundef nonnull %0) #3, !inline_history !87
  br label %emit_2bytes.exit.i

emit_2bytes.exit.i:                               ; preds = %bb.p, %bb.o, %emit_byte.exit.i4.i
  %i.ca = load i32, ptr %i.x, align 8, !tbaa !85  ; 2 uses
  %i.cb = lshr i32 %i.ca, 8
  %i.cc = load ptr, ptr %i.z, align 8, !tbaa !37  ; 4 uses
  %i.cd = trunc i32 %i.cb to i8
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !38 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !38
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !42
  %i.ci = add i64 %i.ch, -1                       ; 2 uses
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !42
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.q, label %emit_byte.exit.i6.i

bb.q:                                             ; preds = %emit_2bytes.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !43
  %i.cm = tail call i32 %i.cl(ptr noundef nonnull %0) #3, !inline_history !87
  %.not.i.i8.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i8.i, label %bb.r, label %emit_byte.exit.i6.i

bb.r:                                             ; preds = %bb.q
  %i.cn = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store i32 22, ptr %i.co, align 8, !tbaa !46
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !50
  tail call void %i.cp(ptr noundef nonnull %0) #3, !inline_history !87
  br label %emit_byte.exit.i6.i

emit_byte.exit.i6.i:                              ; preds = %bb.r, %bb.q, %emit_2bytes.exit.i
  %i.cq = load ptr, ptr %i.z, align 8, !tbaa !37  ; 4 uses
  %i.cr = trunc i32 %i.ca to i8
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !38 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !38
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !41
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !42
  %i.cw = add i64 %i.cv, -1                       ; 2 uses
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !42
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.s, label %emit_dri.exit

bb.s:                                             ; preds = %emit_byte.exit.i6.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !43
  %i.da = tail call i32 %i.cz(ptr noundef nonnull %0) #3, !inline_history !87
  %.not.i3.i7.i = icmp eq i32 %i.da, 0
  br i1 %.not.i3.i7.i, label %bb.t, label %emit_dri.exit

bb.t:                                             ; preds = %bb.s
  %i.db = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store i32 22, ptr %i.dc, align 8, !tbaa !46
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !50
  tail call void %i.dd(ptr noundef nonnull %0) #3, !inline_history !87
  br label %emit_dri.exit

emit_dri.exit:                                    ; preds = %bb.t, %bb.s, %emit_byte.exit.i6.i, %.loopexit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !37 ; 4 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !38 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !38
  store i8 -1, ptr %i.dg, align 1, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !42
  %i.dk = add i64 %i.dj, -1                       ; 2 uses
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !42
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.u, label %emit_byte.exit.i.i22

bb.u:                                             ; preds = %emit_dri.exit
end_hunk_0
