Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pcf?download=true
inline.NumInlined: 21
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@pcf_get_accel:bb.a
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !81 ; 2 uses
  %i.ag = add i64 %i.af, -32768
  %i.ah = icmp ult i64 %i.ag, -65535
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp slt i64 %i.af, 0
  %i.aj = select i1 %i.ai, i64 -32767, i64 32767
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !81
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ak = and i64 %i.s, 255                       ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.am = select i1 %.not35, ptr @pcf_metric_header, ptr @pcf_metric_msb_header
  %i.an = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %0, ptr noundef nonnull %i.am, ptr noundef nonnull %i.al) #12 ; 3 uses
  store i32 %i.an, ptr %i.a, align 4, !tbaa !76
  %.not38 = icmp eq i32 %i.an, 0
  br i1 %.not38, label %bb.o, label %pcf_seek_to_table_type.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.ap = call fastcc i32 @pcf_get_metric(ptr noundef nonnull %0, i64 noundef %i.ak, ptr noundef nonnull %i.ao) ; 3 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !76
  %.not39 = icmp eq i32 %i.ap, 0
  br i1 %.not39, label %bb.p, label %pcf_seek_to_table_type.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.aq = icmp eq i64 %i.u, 256
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  br i1 %i.aq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.as = call fastcc i32 @pcf_get_metric(ptr noundef nonnull %0, i64 noundef %i.ak, ptr noundef nonnull %i.ar) ; 3 uses
  store i32 %i.as, ptr %i.a, align 4, !tbaa !76
  %.not40 = icmp eq i32 %i.as, 0
  br i1 %.not40, label %bb.r, label %pcf_seek_to_table_type.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.au = call fastcc i32 @pcf_get_metric(ptr noundef nonnull %0, i64 noundef %i.ak, ptr noundef nonnull %i.at)
  br label %pcf_seek_to_table_type.exit.thread

bb.s:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !94
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !94
  br label %pcf_seek_to_table_type.exit.thread

pcf_seek_to_table_type.exit.thread:               ; preds = %bb.b, %bb.a, %bb.c, %bb.d, %bb.f, %bb.r, %bb.s, %bb.q, %bb.o, %bb.n, %bb.i, %bb.h, %bb.e
  %i.aw = phi i32 [ %i.t, %bb.e ], [ 0, %bb.f ], [ %i.au, %bb.r ], [ 0, %bb.s ], [ %i.as, %bb.q ], [ %i.ap, %bb.o ], [ %i.an, %bb.n ], [ %i.x, %bb.i ], [ %i.w, %bb.h ], [ 83, %bb.d ], [ 3, %bb.a ], [ 83, %bb.c ], [ 3, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.aw
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pcf_get_encodings(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.h = load i64, ptr %i.g, align 8, !tbaa !87   ; 2 uses
  %.not26.i = icmp eq i64 %i.h, 0
  br i1 %.not26.i, label %pcf_seek_to_table_type.exit.thread, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = add nuw i64 %.025.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.h
  br i1 %exitcond.not.i, label %pcf_seek_to_table_type.exit.thread, label %.lr.ph.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.025.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.025.i ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !88
  %i.l = icmp eq i64 %i.k, 32
  br i1 %i.l, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !89   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !86   ; 2 uses
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %pcf_seek_to_table_type.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = sub nuw i64 %i.p, %i.n
  %i.s = tail call i32 @FT_Stream_Skip(ptr noundef nonnull %0, i64 noundef %i.r) #12
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.e, label %pcf_seek_to_table_type.exit.thread

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.a, align 4, !tbaa !76
  %i.t = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !76   ; 2 uses
  %.not87 = icmp eq i32 %i.u, 0
  br i1 %.not87, label %bb.f, label %pcf_seek_to_table_type.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = icmp ult i32 %i.t, 256
  br i1 %i.v, label %bb.g, label %pcf_seek_to_table_type.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.w = and i32 %i.t, 4
  %.not88 = icmp eq i32 %i.w, 0                   ; 3 uses
  br i1 %.not88, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %0, ptr noundef nonnull @pcf_enc_msb_header, ptr noundef nonnull %i.d) #12 ; 3 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !76
  %.not90 = icmp eq i32 %i.x, 0
  br i1 %.not90, label %bb.j, label %pcf_seek_to_table_type.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.y = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %0, ptr noundef nonnull @pcf_enc_header, ptr noundef nonnull %i.d) #12 ; 3 uses
  store i32 %i.y, ptr %i.a, align 4, !tbaa !76
  %.not89 = icmp eq i32 %i.y, 0
  br i1 %.not89, label %bb.j, label %pcf_seek_to_table_type.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.z = load i16, ptr %i.d, align 8, !tbaa !95   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 538 ; 5 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !96 ; 4 uses
  %i.ac = icmp ugt i16 %i.z, %i.ab
  %i.ad = icmp ugt i16 %i.ab, 255
  %or.cond = or i1 %i.ac, %i.ad
  br i1 %or.cond, label %pcf_seek_to_table_type.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 540 ; 3 uses
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !97 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 542 ; 3 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !98 ; 4 uses
  %i.ai = icmp ugt i16 %i.af, %i.ah
  %i.aj = icmp ugt i16 %i.ah, 255
  %or.cond98 = or i1 %i.ai, %i.aj
  br i1 %or.cond98, label %pcf_seek_to_table_type.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !182 ; 2 uses
  %i.am = lshr i16 %i.al, 8                       ; 3 uses
  %i.an = and i16 %i.al, 255                      ; 3 uses
  %i.ao = icmp ult i16 %i.am, %i.af
  %i.ap = icmp samesign ugt i16 %i.am, %i.ah
  %or.cond99 = or i1 %i.ao, %i.ap
  %i.aq = icmp ult i16 %i.an, %i.z
  %or.cond100 = or i1 %i.aq, %or.cond99
  %i.ar = icmp samesign ugt i16 %i.an, %i.ab
  %or.cond101 = or i1 %i.ar, %or.cond100
  br i1 %or.cond101, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = shl nuw i16 %i.af, 8
  %i.at = add i16 %i.as, %i.z
  store i16 %i.at, ptr %i.ak, align 8, !tbaa !182
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.077 = phi i16 [ %i.af, %bb.m ], [ %i.am, %bb.l ]
  %.076 = phi i16 [ %i.z, %bb.m ], [ %i.an, %bb.l ]
  %i.au = zext nneg i16 %i.ab to i64
  %i.av = zext i16 %i.z to i64
  %reass.sub = sub nsw i64 %i.au, %i.av
  %i.aw = add nsw i64 %reass.sub, 1
  %i.ax = zext nneg i16 %i.ah to i64
  %i.ay = zext i16 %i.af to i64
  %reass.sub118 = sub nsw i64 %i.ax, %i.ay
  %i.az = add nsw i64 %reass.sub118, 1
  %i.ba = mul nsw i64 %i.az, %i.aw                ; 2 uses
  %i.bb = shl nsw i64 %i.ba, 1
  %i.bc = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %0, i64 noundef %i.bb) #12 ; 3 uses
  store i32 %i.bc, ptr %i.a, align 4, !tbaa !76
  %.not91 = icmp eq i32 %i.bc, 0
  br i1 %.not91, label %bb.o, label %pcf_seek_to_table_type.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !183
  %i.bf = zext i16 %.077 to i32
  %i.bg = load i16, ptr %i.ae, align 4, !tbaa !97
  %i.bh = zext i16 %i.bg to i32
  %i.bi = sub nsw i32 %i.bf, %i.bh
  %i.bj = load i16, ptr %i.aa, align 2, !tbaa !96
  %i.bk = zext i16 %i.bj to i32
  %i.bl = load i16, ptr %i.d, align 8, !tbaa !95
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = add nuw nsw i32 %i.bk, 1
  %i.bo = sub nsw i32 %i.bn, %i.bm
  %i.bp = mul nsw i32 %i.bo, %i.bi
  %i.bq = zext i16 %.076 to i32
  %i.br = sub nsw i32 %i.bq, %i.bm
  %i.bs = add i32 %i.br, %i.bp
  %i.bt = shl nsw i32 %i.bs, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.be, i64 %i.bu ; 3 uses
  br i1 %.not88, label %10, label %2

2:                                                ; preds = %bb.o
  %3 = load i8, ptr %i.bv, align 1, !tbaa !43
  %4 = zext i8 %3 to i16
  %5 = shl nuw i16 %4, 8
  %6 = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !43
  %8 = zext i8 %7 to i16
  %9 = or disjoint i16 %5, %8
  br label %12

10:                                               ; preds = %bb.o
  %11 = load i16, ptr %i.bv, align 1
  br label %12

12:                                               ; preds = %10, %2
  %.074 = phi i16 [ %9, %2 ], [ %11, %10 ]        ; 2 uses
  %13 = icmp eq i16 %.074, -1
  br i1 %13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %12
  %i.bw = add nuw i16 %.074, 1
  %i.bx = zext i16 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !90
  %.not93 = icmp ugt i64 %i.bz, %i.bx
  %i.ca = select i1 %.not93, i64 %i.bx, i64 1
  br label %bb.q

bb.q:                                             ; preds = %12, %bb.p
  %.1 = phi i64 [ %i.ca, %bb.p ], [ 1, %12 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !47 ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !tbaa.struct !94
  %i.ce = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 2, i64 noundef 0, i64 noundef %i.ba, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 552
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !99
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !76  ; 2 uses
  %.not94 = icmp eq i32 %i.cg, 0
  br i1 %.not94, label %bb.r, label %pcf_seek_to_table_type.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ch = load i16, ptr %i.ae, align 4, !tbaa !97 ; 2 uses
  %i.ci = load i16, ptr %i.ag, align 2, !tbaa !98
  %.not95112 = icmp ugt i16 %i.ch, %i.ci
  br i1 %.not95112, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.r
  %i.cj = load i16, ptr %i.d, align 8, !tbaa !95
  %i.ck = load i16, ptr %i.aa, align 2, !tbaa !96 ; 2 uses
  %i.cl = icmp ugt i16 %i.cj, %i.ck
  br i1 %i.cl, label %._crit_edge117, label %.lr.ph116.split

.lr.ph116.split:                                  ; preds = %.lr.ph116, %._crit_edge
  %i.cm = phi i16 [ %i.cy, %._crit_edge ], [ %i.ck, %.lr.ph116 ] ; 2 uses
  %.073114 = phi i16 [ %i.cz, %._crit_edge ], [ %i.ch, %.lr.ph116 ]
  %.078113 = phi ptr [ %.179.lcssa, %._crit_edge ], [ %i.ce, %.lr.ph116 ] ; 3 uses
  %i.cn = load i16, ptr %i.d, align 8, !tbaa !95  ; 3 uses
  %.not96109 = icmp ugt i16 %i.cn, %i.cm
  br i1 %.not96109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph116.split
  br i1 %.not88, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0111.us = phi i16 [ %i.cr, %.lr.ph.split.us ], [ %i.cn, %.lr.ph ]
  %.179110.us = phi ptr [ %i.cq, %.lr.ph.split.us ], [ %.078113, %.lr.ph ] ; 2 uses
  %i.co = call zeroext i16 @FT_Stream_GetUShortLE(ptr noundef nonnull %0) #12
  %i.cp = call i16 @llvm.uadd.sat.i16(i16 %i.co, i16 1)
  %i.cq = getelementptr inbounds nuw i8, ptr %.179110.us, i64 2 ; 2 uses
  store i16 %i.cp, ptr %.179110.us, align 2, !tbaa !75
  %i.cr = add i16 %.0111.us, 1                    ; 2 uses
  %i.cs = load i16, ptr %i.aa, align 2, !tbaa !96 ; 2 uses
  %.not96.us = icmp ugt i16 %i.cr, %i.cs
  br i1 %.not96.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !180

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.0111 = phi i16 [ %i.cw, %.lr.ph.split ], [ %i.cn, %.lr.ph ]
  %.179110 = phi ptr [ %i.cv, %.lr.ph.split ], [ %.078113, %.lr.ph ] ; 2 uses
  %i.ct = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %0) #12
  %i.cu = call i16 @llvm.uadd.sat.i16(i16 %i.ct, i16 1)
  %i.cv = getelementptr inbounds nuw i8, ptr %.179110, i64 2 ; 2 uses
  store i16 %i.cu, ptr %.179110, align 2, !tbaa !75
  %i.cw = add i16 %.0111, 1                       ; 2 uses
  %i.cx = load i16, ptr %i.aa, align 2, !tbaa !96 ; 2 uses
  %.not96 = icmp ugt i16 %i.cw, %i.cx
  br i1 %.not96, label %._crit_edge, label %.lr.ph.split, !llvm.loop !180

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph116.split
  %i.cy = phi i16 [ %i.cm, %.lr.ph116.split ], [ %i.cs, %.lr.ph.split.us ], [ %i.cx, %.lr.ph.split ]
  %.179.lcssa = phi ptr [ %.078113, %.lr.ph116.split ], [ %i.cq, %.lr.ph.split.us ], [ %i.cv, %.lr.ph.split ]
  %i.cz = add i16 %.073114, 1                     ; 2 uses
  %i.da = load i16, ptr %i.ag, align 2, !tbaa !98
  %.not95 = icmp ugt i16 %i.cz, %i.da
  br i1 %.not95, label %._crit_edge117, label %.lr.ph116.split, !llvm.loop !181

._crit_edge117:                                   ; preds = %._crit_edge, %.lr.ph116, %bb.r
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %0) #12
  %.pre = load i32, ptr %i.a, align 4, !tbaa !76
  br label %pcf_seek_to_table_type.exit.thread

pcf_seek_to_table_type.exit.thread:               ; preds = %bb.b, %bb.a, %bb.c, %bb.d, %._crit_edge117, %bb.e, %bb.h, %bb.i, %bb.n, %bb.q, %bb.j, %bb.k, %bb.f
  %.080 = phi i32 [ 8, %bb.j ], [ 3, %bb.f ], [ 8, %bb.k ], [ %.pre, %._crit_edge117 ], [ %i.cg, %bb.q ], [ %i.bc, %bb.n ], [ %i.y, %bb.i ], [ %i.x, %bb.h ], [ %i.u, %bb.e ], [ 83, %bb.d ], [ 3, %bb.a ], [ 83, %bb.c ], [ 3, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.080
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pcf_interpret_style(ptr nofree noundef captures(none) initializes((24, 32)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !190
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i, label %.thread223

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64                ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(6) @.str.18) #13
  %.fr.i = freeze i32 %i.m
  %.not14.i = icmp ne i32 %.fr.i, 0               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.n = icmp samesign ult i64 %indvars.iv.next.i, %i.j
  %or.cond.i = and i1 %i.n, %.not14.i
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.next.i ; 2 uses
  br i1 %.not14.i, label %.lr.ph.preheader.i105, label %pcf_find_property.exit

pcf_find_property.exit:                           ; preds = %.critedge.i
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !52
  %.not91 = icmp eq i8 %i.q, 0
  br i1 %.not91, label %.lr.ph.preheader.i105, label %bb.b

bb.b:                                             ; preds = %pcf_find_property.exit
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = load i8, ptr %i.s, align 1, !tbaa !43
  switch i8 %i.t, label %.lr.ph.preheader.i105 [
    i8 79, label %bb.c
    i8 111, label %bb.c
    i8 73, label %bb.c
    i8 105, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  store i64 1, ptr %i.d, align 8, !tbaa !190
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43
  %i.w = and i8 %i.v, -33
  %i.x = icmp eq i8 %i.w, 79
  %i.y = select i1 %i.x, ptr @.str.19, ptr @.str.20
  br label %.lr.ph.preheader.i105

.lr.ph.preheader.i105:                            ; preds = %pcf_find_property.exit, %bb.c, %bb.b, %.critedge.i
  %i.z = phi i64 [ 2, %.critedge.i ], [ 2, %pcf_find_property.exit ], [ 2, %bb.b ], [ 3, %bb.c ]
  %.sroa.10.0 = phi ptr [ null, %.critedge.i ], [ null, %pcf_find_property.exit ], [ null, %bb.b ], [ %i.y, %bb.c ] ; 3 uses
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %.lr.ph.i106, %.lr.ph.preheader.i105
  %indvars.iv.i107 = phi i64 [ 0, %.lr.ph.preheader.i105 ], [ %indvars.iv.next.i110, %.lr.ph.i106 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i107
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(12) @.str.21) #13
  %.fr.i108 = freeze i32 %i.ac
  %.not14.i109 = icmp ne i32 %.fr.i108, 0         ; 2 uses
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i107, 1 ; 3 uses
  %i.ad = icmp samesign ult i64 %indvars.iv.next.i110, %i.j
  %or.cond.i111 = and i1 %i.ad, %.not14.i109
  br i1 %or.cond.i111, label %.lr.ph.i106, label %.critedge.i112, !llvm.loop !0

.critedge.i112:                                   ; preds = %.lr.ph.i106
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.next.i110 ; 2 uses
  br i1 %.not14.i109, label %.lr.ph.preheader.i115, label %pcf_find_property.exit113

pcf_find_property.exit113:                        ; preds = %.critedge.i112
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !52
  %.not93 = icmp eq i8 %i.ag, 0
  br i1 %.not93, label %.lr.ph.preheader.i115, label %bb.d

bb.d:                                             ; preds = %pcf_find_property.exit113
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !43
  switch i8 %i.aj, label %.lr.ph.preheader.i115 [
    i8 66, label %bb.e
    i8 98, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  store i64 %i.z, ptr %i.d, align 8, !tbaa !190
  br label %.lr.ph.preheader.i115

.lr.ph.preheader.i115:                            ; preds = %pcf_find_property.exit113, %bb.e, %bb.d, %.critedge.i112
  %.not103.1 = phi i1 [ true, %.critedge.i112 ], [ true, %pcf_find_property.exit113 ], [ true, %bb.d ], [ false, %bb.e ] ; 3 uses
  %.sroa.7.0 = phi ptr [ null, %.critedge.i112 ], [ null, %pcf_find_property.exit113 ], [ null, %bb.d ], [ @.str.22, %bb.e ] ; 2 uses
  br label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %.lr.ph.i116, %.lr.ph.preheader.i115
  %indvars.iv.i117 = phi i64 [ 0, %.lr.ph.preheader.i115 ], [ %indvars.iv.next.i120, %.lr.ph.i116 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i117
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(14) @.str.23) #13
  %.fr.i118 = freeze i32 %i.am
  %.not14.i119 = icmp ne i32 %.fr.i118, 0         ; 2 uses
  %indvars.iv.next.i120 = add nuw nsw i64 %indvars.iv.i117, 1 ; 3 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next.i120, %i.j
  %or.cond.i121 = and i1 %i.an, %.not14.i119
  br i1 %or.cond.i121, label %.lr.ph.i116, label %.critedge.i122, !llvm.loop !0

.critedge.i122:                                   ; preds = %.lr.ph.i116
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.next.i120 ; 2 uses
  br i1 %.not14.i119, label %.lr.ph.preheader.i125, label %pcf_find_property.exit123
end_hunk_0
