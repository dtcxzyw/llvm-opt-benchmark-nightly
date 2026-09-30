Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdmarker?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@read_markers:bb.a
  %i.agg = zext i8 %i.agf to i64
  %i.agh = or disjoint i64 %i.afw, %i.agg         ; 2 uses
  %i.agi = add nsw i64 %i.agh, -2                 ; 2 uses
  %i.agj = load ptr, ptr %0, align 8, !tbaa !34   ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 40
  store i32 91, ptr %i.agk, align 8, !tbaa !37
  %i.agl = load i32, ptr %i.b, align 4, !tbaa !33
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 44
  store i32 %i.agl, ptr %i.agm, align 4, !tbaa !38
  %i.agn = trunc nsw i64 %i.agi to i32
  %i.ago = load ptr, ptr %0, align 8, !tbaa !34
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 48
  store i32 %i.agn, ptr %i.agp, align 4, !tbaa !38
  %i.agq = load ptr, ptr %0, align 8, !tbaa !34
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !39
  tail call void %i.ags(ptr noundef nonnull %0, i32 noundef 1) #6, !inline_history !110
  store ptr %i.age, ptr %i.afk, align 8, !tbaa !42
  store i64 %i.agd, ptr %i.afl, align 8, !tbaa !43
  %i.agt = icmp samesign ugt i64 %i.agh, 2
  br i1 %i.agt, label %bb.gv, label %skip_variable.exit

bb.gv:                                            ; preds = %bb.gu
  %i.agu = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 32
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !76
  tail call void %i.agw(ptr noundef nonnull %0, i64 noundef %i.agi) #6, !inline_history !110
  br label %skip_variable.exit

bb.gw:                                            ; preds = %bb.m
  %i.agx = load ptr, ptr %0, align 8, !tbaa !34   ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 40
  store i32 68, ptr %i.agy, align 8, !tbaa !37
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agx, i64 44
  store i32 %i.bg, ptr %i.agz, align 4, !tbaa !38
  %i.aha = load ptr, ptr %0, align 8, !tbaa !34
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !61
  tail call void %i.ahb(ptr noundef nonnull %0) #6
  br label %skip_variable.exit

skip_variable.exit:                               ; preds = %bb.gv, %bb.gu, %get_dri.exit, %get_dqt.exit, %get_dht.exit, %get_dac.exit, %get_soi.exit, %bb.gm, %bb.gl, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.gw, %bb.gn, %bb.v
  store i32 0, ptr %i.b, align 4, !tbaa !33
  br label %bb.b

first_marker.exit.thread:                         ; preds = %bb.gp, %bb.gs, %bb.gj, %bb.fy, %bb.gb, %bb.gg, %bb.fc, %bb.ez, %bb.bm, %bb.bj, %bb.h, %bb.e, %bb.gm, %bb.gl, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.l, %bb.fg, %bb.bt, %bb.bq, %bb.ft, %bb.fq, %bb.fn, %bb.am, %bb.aj, %bb.ac, %bb.be, %bb.ay, %bb.bb, %bb.af, %bb.z, %get_dht.exit.thread, %bb.bh, %bb.bg
  %.0 = phi i32 [ 0, %bb.bt ], [ 0, %bb.am ], [ 0, %bb.fn ], [ 0, %bb.fg ], [ 0, %bb.z ], [ 0, %bb.af ], [ 0, %bb.bb ], [ 1, %bb.bg ], [ 0, %bb.ay ], [ 2, %bb.bh ], [ 0, %bb.be ], [ 0, %bb.ac ], [ 0, %get_dht.exit.thread ], [ 0, %bb.ft ], [ 0, %bb.aj ], [ 0, %bb.fq ], [ 0, %bb.bq ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.gl ], [ 0, %bb.gm ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.bj ], [ 0, %bb.bm ], [ 0, %bb.ez ], [ 0, %bb.fc ], [ 0, %bb.gg ], [ 0, %bb.gb ], [ 0, %bb.fy ], [ 0, %bb.gj ], [ 0, %bb.gs ], [ 0, %bb.gp ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @read_restart_marker(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @next_marker(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.e = phi i32 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !74   ; 3 uses
  %i.j = add nsw i32 %i.i, 208
  %i.k = icmp eq i32 %i.e, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 98, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  store i32 %i.i, ptr %i.n, align 4, !tbaa !38
  %i.o = load ptr, ptr %0, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39
  tail call void %i.q(ptr noundef nonnull %0, i32 noundef 3) #6
  store i32 0, ptr %i.a, align 4, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111
  %i.v = tail call i32 %i.u(ptr noundef nonnull %0, i32 noundef %i.i) #6
  %.not15 = icmp eq i32 %i.v, 0
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !74
  %i.z = add nsw i32 %i.y, 1
  %i.aa = and i32 %i.z, 7
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @skip_variable(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i64 [ %i.i, %bb.c ], [ %i.d, %bb.a ]
  %.034 = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.j = add i64 %.0, -1                          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 1
  %i.l = load i8, ptr %.034, align 1, !tbaa !38
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 8
  %i.o = icmp eq i64 %i.j, 0
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = tail call i32 %i.q(ptr noundef nonnull %0) #6
  %.not40 = icmp eq i32 %i.r, 0
  br i1 %.not40, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.t = load i64, ptr %i.c, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.135 = phi ptr [ %i.s, %bb.f ], [ %i.k, %bb.d ] ; 2 uses
  %.1 = phi i64 [ %i.t, %bb.f ], [ %i.j, %bb.d ]
  %i.u = add i64 %.1, -1
  %i.v = getelementptr inbounds nuw i8, ptr %.135, i64 1
  %i.w = load i8, ptr %.135, align 1, !tbaa !38
  %i.x = zext i8 %i.w to i64
  %i.y = or disjoint i64 %i.n, %i.x               ; 2 uses
  %i.z = add nsw i64 %i.y, -2                     ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 91, ptr %i.ab, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !38
  %i.af = trunc nsw i64 %i.z to i32
  %i.ag = load ptr, ptr %0, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !38
  %i.ai = load ptr, ptr %0, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39
  tail call void %i.ak(ptr noundef nonnull %0, i32 noundef 1) #6
  store ptr %i.v, ptr %i.b, align 8, !tbaa !42
  store i64 %i.u, ptr %i.c, align 8, !tbaa !43
  %i.al = icmp samesign ugt i64 %i.y, 2
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76
  tail call void %i.ao(ptr noundef nonnull %0, i64 noundef %i.z) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.b
  %.036 = phi i32 [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.h ], [ 1, %bb.g ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @get_interesting_appn(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [14 x i8], align 4                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0) #6
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i64 [ %i.j, %bb.c ], [ %i.e, %bb.a ]
  %.055 = load ptr, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %i.k = add i64 %.0, -1                          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.055, i64 1
  %i.m = load i8, ptr %.055, align 1, !tbaa !38
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 8
  %i.p = icmp eq i64 %i.k, 0
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.s = tail call i32 %i.r(ptr noundef nonnull %0) #6
  %.not66 = icmp eq i32 %i.s, 0
  br i1 %.not66, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.u = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.156 = phi ptr [ %i.t, %bb.f ], [ %i.l, %bb.d ] ; 2 uses
  %.1 = phi i64 [ %i.u, %bb.f ], [ %i.k, %bb.d ]
  %i.v = load i8, ptr %.156, align 1, !tbaa !38
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.o, %i.w               ; 3 uses
  %i.y = add nsw i64 %i.x, -2                     ; 2 uses
  %i.z = icmp samesign ugt i64 %i.x, 15
  %i.aa = icmp samesign ugt i64 %i.x, 2
  %i.ab = trunc nuw nsw i64 %i.y to i32
  %spec.select = select i1 %i.aa, i32 %i.ab, i32 0
  %.059 = select i1 %i.z, i32 14, i32 %spec.select ; 5 uses
  %.25783 = getelementptr inbounds nuw i8, ptr %.156, i64 1 ; 2 uses
  %.284 = add i64 %.1, -1                         ; 2 uses
  %.not89 = icmp eq i32 %.059, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %wide.trip.count = zext nneg i32 %.059 to i64   ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.287 = phi i64 [ %.284, %.lr.ph ], [ %.2, %bb.k ] ; 2 uses
  %.25786 = phi ptr [ %.25783, %.lr.ph ], [ %.257, %bb.k ]
  %i.ad = icmp eq i64 %.287, 0
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.af = tail call i32 %i.ae(ptr noundef %0) #6
  %.not67 = icmp eq i32 %i.af, 0
  br i1 %.not67, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.358 = phi ptr [ %i.ag, %bb.j ], [ %.25786, %bb.h ] ; 2 uses
  %.3 = phi i64 [ %i.ah, %bb.j ], [ %.287, %bb.h ]
  %i.ai = load i8, ptr %.358, align 1, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.257 = getelementptr inbounds nuw i8, ptr %.358, i64 1 ; 2 uses
  %.2 = add i64 %.3, -1                           ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.k, %bb.g
  %.pre-phi = phi i64 [ 0, %bb.g ], [ %wide.trip.count, %bb.k ]
  %.257.lcssa = phi ptr [ %.25783, %bb.g ], [ %.257, %bb.k ]
  %.2.lcssa = phi i64 [ %.284, %bb.g ], [ %.2, %bb.k ]
  %i.ak = sub nsw i64 %i.y, %.pre-phi             ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33 ; 2 uses
  switch i32 %i.am, label %bb.p [
    i32 224, label %bb.l
    i32 238, label %bb.m
  ]

bb.l:                                             ; preds = %._crit_edge
  call fastcc void @examine_app0(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.059, i64 noundef %i.ak)
  br label %examine_app14.exit

bb.m:                                             ; preds = %._crit_edge
  %i.an = icmp ugt i32 %.059, 11
  %i.ao = load <4 x i8>, ptr %i.a, align 4
  %.fr = freeze <4 x i8> %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = icmp eq i8 %i.aq, 101
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.as = icmp eq i32 %.fr.scalar, 1651467329
  %i.at = and i1 %i.an, %i.as
  %op.rdx100 = select i1 %i.at, i1 %i.ar, i1 false
  br i1 %op.rdx100, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %1 = load i16, ptr %i.au, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %i.av = zext i16 %2 to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %3 = load i16, ptr %i.aw, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.ax = zext i16 %4 to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %5 = load i16, ptr %i.ay, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %i.az = zext i16 %6 to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !38  ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = load ptr, ptr %0, align 8, !tbaa !34    ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  store i32 %i.av, ptr %i.be, align 4, !tbaa !54
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i32 %i.ax, ptr %i.bf, align 4, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 52
  store i32 %i.az, ptr %i.bg, align 4, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i32 76, ptr %i.bi, align 8, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !39
  tail call void %i.bk(ptr noundef nonnull %0, i32 noundef 1) #6, !inline_history !0
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 1, ptr %i.bl, align 8, !tbaa !68
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i8 %i.bb, ptr %i.bm, align 4, !tbaa !69
  br label %examine_app14.exit

bb.o:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i32 78, ptr %i.bo, align 8, !tbaa !37
  %i.bp = trunc i64 %i.ak to i32
  %i.bq = add i32 %.059, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !38
  %i.bs = load ptr, ptr %0, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39
  tail call void %i.bu(ptr noundef nonnull %0, i32 noundef 1) #6, !inline_history !0
  br label %examine_app14.exit

bb.p:                                             ; preds = %._crit_edge
  %i.bv = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i32 68, ptr %i.bw, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 44
  store i32 %i.am, ptr %i.bx, align 4, !tbaa !38
  %i.by = load ptr, ptr %0, align 8, !tbaa !34
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !61
  tail call void %i.bz(ptr noundef nonnull %0) #6
  br label %examine_app14.exit

examine_app14.exit:                               ; preds = %bb.o, %bb.n, %bb.p, %bb.l
  store ptr %.257.lcssa, ptr %i.c, align 8, !tbaa !42
  store i64 %.2.lcssa, ptr %i.d, align 8, !tbaa !43
  %i.ca = icmp sgt i64 %i.ak, 0
  br i1 %i.ca, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %examine_app14.exit
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !76
  tail call void %i.cd(ptr noundef nonnull %0, i64 noundef %i.ak) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %examine_app14.exit, %bb.q, %bb.e, %bb.b
  %.061 = phi i32 [ 0, %bb.e ], [ 1, %examine_app14.exit ], [ 0, %bb.b ], [ 1, %bb.q ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.061
}

; Function Attrs: nounwind uwtable
define void @jpeg_save_markers(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113
  %i.g = add i64 %i.f, -32
  %i.h = zext i32 %2 to i64
  %spec.select50 = tail call i64 @llvm.smin.i64(i64 %i.g, i64 %i.h)
  %spec.select = trunc i64 %spec.select50 to i32  ; 4 uses
  %.not = icmp eq i32 %spec.select, 0
  %i.i = icmp eq i32 %1, 224                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i32 %spec.select, 14
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %.thread44, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %1, 238
  %i.l = tail call i32 @llvm.umax.i32(i32 %spec.select, i32 12)
  %spec.store.select = select i1 %i.k, i32 %i.l, i32 %spec.select
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %1, 238
  %or.cond5 = or i1 %i.i, %i.m
  %spec.store.select8 = select i1 %or.cond5, ptr @get_interesting_appn, ptr @skip_variable
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ 0, %bb.d ], [ %spec.store.select, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %spec.store.select8, %bb.d ], [ @save_marker, %bb.c ] ; 2 uses
  %i.n = icmp eq i32 %1, 254
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.0, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i32 %.1, ptr %i.p, align 8, !tbaa !114
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = and i32 %1, -16
  %or.cond7 = icmp eq i32 %i.q, 224
  br i1 %or.cond7, label %.thread44, label %bb.h

.thread44:                                        ; preds = %bb.b, %bb.g
  %.14249 = phi i32 [ %.1, %bb.g ], [ 14, %bb.b ]
  %.04348 = phi ptr [ %.0, %bb.g ], [ @save_marker, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = add nsw i32 %1, -224
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  store ptr %.04348, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store i32 %.14249, ptr %i.w, align 4, !tbaa !54
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i32 68, ptr %i.y, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  store i32 %1, ptr %i.z, align 4, !tbaa !38
  %i.aa = load ptr, ptr %0, align 8, !tbaa !34
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !61
  tail call void %i.ab(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %.thread44, %bb.h, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @save_marker(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 10 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43   ; 3 uses
  %i.j = icmp eq ptr %i.d, null
  br i1 %i.j, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = tail call i32 %i.m(ptr noundef nonnull %0) #6
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit141, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.p = load i64, ptr %i.h, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0111 = phi ptr [ %i.o, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %.0109 = phi i64 [ %i.p, %bb.d ], [ %i.i, %bb.b ]
  %i.q = add i64 %.0109, -1                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0111, i64 1
  %i.s = load i8, ptr %.0111, align 1, !tbaa !38
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = icmp eq i64 %i.q, 0
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44
  %i.y = tail call i32 %i.x(ptr noundef nonnull %0) #6
  %.not138 = icmp eq i32 %i.y, 0
  br i1 %.not138, label %.loopexit141, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.1112 = phi ptr [ %i.z, %bb.g ], [ %i.r, %bb.e ] ; 2 uses
  %.1110 = phi i64 [ %i.aa, %bb.g ], [ %i.q, %bb.e ]
  %i.ab = add i64 %.1110, -1                      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1112, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.1112, align 1, !tbaa !38
  %i.ae = zext i8 %i.ad to i64
  %i.af = or disjoint i64 %i.u, %i.ae             ; 2 uses
  %i.ag = add nsw i64 %i.af, -2                   ; 2 uses
end_hunk_0
begin_hunk_1_@save_marker:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !124
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !125
  %i.bl = zext i32 %i.bg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0127 = phi ptr [ %i.aw, %bb.i ], [ %i.d, %bb.j ] ; 6 uses
  %.0124 = phi i32 [ 0, %bb.i ], [ %i.bg, %bb.j ] ; 2 uses
  %.0123 = phi i32 [ %.1, %bb.i ], [ %i.bi, %bb.j ] ; 7 uses
  %.0119 = phi ptr [ %i.bc, %bb.i ], [ %i.bm, %bb.j ]
  %.2113 = phi ptr [ %i.ac, %bb.i ], [ %i.g, %bb.j ] ; 2 uses
  %.2 = phi i64 [ %i.ab, %bb.i ], [ %i.i, %bb.j ] ; 2 uses
  %i.bn = icmp ult i32 %.0124, %.0123
  br i1 %i.bn, label %.lr.ph156, label %._crit_edge.thread189

.lr.ph156:                                        ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.l

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.o
  %.2126.lcssa = phi i32 [ %.1125152, %bb.o ], [ %i.cs, %vec.epilog.middle.block ], [ %i.ck, %middle.block ], [ %i.cy, %.lr.ph ] ; 2 uses
  %.2121.lcssa = phi ptr [ %.1120153, %bb.o ], [ %i.cq, %vec.epilog.middle.block ], [ %i.ci, %middle.block ], [ %i.cw, %.lr.ph ]
  %.5116.lcssa = phi ptr [ %.4115, %bb.o ], [ %i.cp, %vec.epilog.middle.block ], [ %i.ch, %middle.block ], [ %i.cu, %.lr.ph ] ; 2 uses
  %.5.lcssa = phi i64 [ %.4.fr, %bb.o ], [ %i.co, %vec.epilog.middle.block ], [ %i.cg, %middle.block ], [ %i.cx, %.lr.ph ] ; 2 uses
  %i.bq = icmp ult i32 %.2126.lcssa, %.0123
  br i1 %i.bq, label %bb.l, label %._crit_edge.thread189, !llvm.loop !115

bb.l:                                             ; preds = %.lr.ph156, %.loopexit
  %.3155 = phi i64 [ %.2, %.lr.ph156 ], [ %.5.lcssa, %.loopexit ] ; 3 uses
  %.3114154 = phi ptr [ %.2113, %.lr.ph156 ], [ %.5116.lcssa, %.loopexit ] ; 2 uses
  %.1120153 = phi ptr [ %.0119, %.lr.ph156 ], [ %.2121.lcssa, %.loopexit ] ; 7 uses
  %.1125152 = phi i32 [ %.0124, %.lr.ph156 ], [ %.2126.lcssa, %.loopexit ] ; 7 uses
  %.1120153207 = ptrtoaddr ptr %.1120153 to i64
  store ptr %.3114154, ptr %i.f, align 8, !tbaa !42
  store i64 %.3155, ptr %i.h, align 8, !tbaa !43
  store i32 %.1125152, ptr %i.bo, align 8, !tbaa !126
  %i.br = icmp eq i64 %.3155, 0
  br i1 %i.br, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !44
  %i.bt = tail call i32 %i.bs(ptr noundef %0) #6
  %.not140 = icmp eq i32 %i.bt, 0
  br i1 %.not140, label %.loopexit141, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.bv = load i64, ptr %i.h, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.4115 = phi ptr [ %i.bu, %bb.n ], [ %.3114154, %bb.l ] ; 7 uses
  %.4 = phi i64 [ %i.bv, %bb.n ], [ %.3155, %bb.l ]
  %.4.fr = freeze i64 %.4                         ; 6 uses
  %i.bw = icmp ult i32 %.1125152, %.0123
  %i.bx = icmp ne i64 %.4.fr, 0
  %i.by = and i1 %i.bw, %i.bx
  br i1 %i.by, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.o
  %.4115208 = ptrtoaddr ptr %.4115 to i64
  %i.bz = add i64 %.4.fr, -1
  %i.ca = xor i32 %.1125152, -1
  %i.cb = add i32 %.0123, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 %i.cc) ; 3 uses
  %i.cd = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  %i.ce = sub i64 %.4115208, %.1120153207
  %diff.check = icmp ugt i64 %i.ce, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check209 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check209, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cf = and i64 %i.cd, 28
  %n.vec = and i64 %i.cd, 8589934560              ; 7 uses
  %i.cg = sub i64 %.4.fr, %n.vec                  ; 2 uses
  %i.ch = getelementptr i8, ptr %.4115, i64 %n.vec ; 2 uses
  %i.ci = getelementptr i8, ptr %.1120153, i64 %n.vec ; 2 uses
  %i.cj = trunc i64 %n.vec to i32
  %i.ck = add i32 %.1125152, %i.cj                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.4115, i64 %index ; 2 uses
  %next.gep210 = getelementptr i8, ptr %.1120153, i64 %index ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !38
  %wide.load211 = load <16 x i8>, ptr %i.cl, align 1, !tbaa !38
  %i.cm = getelementptr i8, ptr %next.gep210, i64 16
  store <16 x i8> %wide.load, ptr %next.gep210, align 1, !tbaa !38
  store <16 x i8> %wide.load211, ptr %i.cm, align 1, !tbaa !38
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec215 = and i64 %i.cd, 8589934588           ; 6 uses
  %i.co = sub i64 %.4.fr, %n.vec215               ; 2 uses
  %i.cp = getelementptr i8, ptr %.4115, i64 %n.vec215 ; 2 uses
  %i.cq = getelementptr i8, ptr %.1120153, i64 %n.vec215 ; 2 uses
  %i.cr = trunc i64 %n.vec215 to i32
  %i.cs = add i32 %.1125152, %i.cr                ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index216 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next220, %vec.epilog.vector.body ] ; 3 uses
  %next.gep217 = getelementptr i8, ptr %.4115, i64 %index216
  %next.gep218 = getelementptr i8, ptr %.1120153, i64 %index216
  %wide.load219 = load <4 x i8>, ptr %next.gep217, align 1, !tbaa !38
  store <4 x i8> %wide.load219, ptr %next.gep218, align 1, !tbaa !38
  %index.next220 = add nuw i64 %index216, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next220, %n.vec215
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n221 = icmp eq i64 %i.cd, %n.vec215
  br i1 %cmp.n221, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5148.ph = phi i64 [ %.4.fr, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  %.5116147.ph = phi ptr [ %.4115, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ]
  %.2121146.ph = phi ptr [ %.1120153, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  %.2126145.ph = phi i32 [ %.1125152, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.5148 = phi i64 [ %i.cx, %.lr.ph ], [ %.5148.ph, %.lr.ph.preheader ]
  %.5116147 = phi ptr [ %i.cu, %.lr.ph ], [ %.5116147.ph, %.lr.ph.preheader ] ; 2 uses
  %.2121146 = phi ptr [ %i.cw, %.lr.ph ], [ %.2121146.ph, %.lr.ph.preheader ] ; 2 uses
  %.2126145 = phi i32 [ %i.cy, %.lr.ph ], [ %.2126145.ph, %.lr.ph.preheader ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.5116147, i64 1 ; 2 uses
  %i.cv = load i8, ptr %.5116147, align 1, !tbaa !38
  %i.cw = getelementptr inbounds nuw i8, ptr %.2121146, i64 1 ; 2 uses
  store i8 %i.cv, ptr %.2121146, align 1, !tbaa !38
  %i.cx = add i64 %.5148, -1                      ; 3 uses
  %i.cy = add nuw i32 %.2126145, 1                ; 3 uses
  %i.cz = icmp ult i32 %i.cy, %.0123
  %i.da = icmp ne i64 %i.cx, 0
  %i.db = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %i.db, label %.lr.ph, label %.loopexit, !llvm.loop !118

._crit_edge.thread189:                            ; preds = %.loopexit, %bb.k
  %.3.lcssa200 = phi i64 [ %.2, %bb.k ], [ %.5.lcssa, %.loopexit ]
  %.3114.lcssa199 = phi ptr [ %.2113, %bb.k ], [ %.5116.lcssa, %.loopexit ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !130
  %i.de = icmp eq ptr %i.dd, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !77 ; 2 uses
  br i1 %i.de, label %._crit_edge163, label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread189
  %i.df = getelementptr inbounds nuw i8, ptr %.pre, i64 120 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !131 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %._crit_edge163, label %bb.q

._crit_edge163:                                   ; preds = %._crit_edge.thread189, %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %.pre, i64 120
  store ptr %.0127, ptr %i.di, align 8, !tbaa !131
  store ptr %.0127, ptr %i.dc, align 8, !tbaa !130
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.0127, ptr %i.dg, align 8, !tbaa !121
  store ptr %.0127, ptr %i.df, align 8, !tbaa !131
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge163
  %i.dj = getelementptr inbounds nuw i8, ptr %.0127, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !125
  %i.dl = getelementptr inbounds nuw i8, ptr %.0127, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !123
  %i.dn = sub i32 %i.dm, %.0123
  %i.do = zext i32 %i.dn to i64
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.h, %bb.r
  %.3.lcssa188 = phi i64 [ %.3.lcssa200, %bb.r ], [ %i.ab, %bb.h ]
  %.3114.lcssa187 = phi ptr [ %.3114.lcssa199, %bb.r ], [ %i.ac, %bb.h ]
  %.0123177186 = phi i32 [ %.0123, %bb.r ], [ 0, %bb.h ] ; 4 uses
  %.3122 = phi ptr [ %i.dk, %bb.r ], [ null, %bb.h ] ; 10 uses
  %.1118 = phi i64 [ %i.do, %bb.r ], [ %i.ag, %bb.h ] ; 5 uses
  store ptr null, ptr %i.c, align 8, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !33 ; 2 uses
  switch i32 %i.dq, label %bb.ab [
    i32 224, label %bb.s
    i32 238, label %bb.t
  ]

bb.s:                                             ; preds = %._crit_edge.thread
  tail call fastcc void @examine_app0(ptr noundef nonnull %0, ptr noundef %.3122, i32 noundef %.0123177186, i64 noundef %.1118)
  br label %examine_app14.exit

bb.t:                                             ; preds = %._crit_edge.thread
  %i.dr = icmp ugt i32 %.0123177186, 11
  br i1 %i.dr, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ds = load i8, ptr %.3122, align 1, !tbaa !38
  %i.dt = icmp eq i8 %i.ds, 65
  br i1 %i.dt, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %.3122, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !38
  %i.dw = icmp eq i8 %i.dv, 100
  br i1 %i.dw, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw i8, ptr %.3122, i64 2
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !38
  %i.dz = icmp eq i8 %i.dy, 111
  br i1 %i.dz, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.3122, i64 3
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !38
  %i.ec = icmp eq i8 %i.eb, 98
  br i1 %i.ec, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %.3122, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !38
  %i.ef = icmp eq i8 %i.ee, 101
  br i1 %i.ef, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %.3122, i64 5
  %1 = load i16, ptr %i.eg, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %i.eh = zext i16 %2 to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %.3122, i64 7
  %3 = load i16, ptr %i.ei, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.ej = zext i16 %4 to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %.3122, i64 9
  %5 = load i16, ptr %i.ek, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %i.el = zext i16 %6 to i32
  %i.em = getelementptr inbounds nuw i8, ptr %.3122, i64 11
  %i.en = load i8, ptr %i.em, align 1, !tbaa !38  ; 2 uses
  %i.eo = zext i8 %i.en to i32
  %i.ep = load ptr, ptr %0, align 8, !tbaa !34    ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 44
  store i32 %i.eh, ptr %i.eq, align 4, !tbaa !54
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  store i32 %i.ej, ptr %i.er, align 4, !tbaa !54
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 52
  store i32 %i.el, ptr %i.es, align 4, !tbaa !54
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  store i32 %i.eo, ptr %i.et, align 4, !tbaa !54
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  store i32 76, ptr %i.eu, align 8, !tbaa !37
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !39
  tail call void %i.ew(ptr noundef nonnull %0, i32 noundef 1) #6, !inline_history !0
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 1, ptr %i.ex, align 8, !tbaa !68
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i8 %i.en, ptr %i.ey, align 4, !tbaa !69
  br label %examine_app14.exit

bb.aa:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %i.ez = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  store i32 78, ptr %i.fa, align 8, !tbaa !37
  %i.fb = trunc i64 %.1118 to i32
  %i.fc = add i32 %.0123177186, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 44
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !38
  %i.fe = load ptr, ptr %0, align 8, !tbaa !34
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !39
  tail call void %i.fg(ptr noundef nonnull %0, i32 noundef 1) #6, !inline_history !0
  br label %examine_app14.exit

bb.ab:                                            ; preds = %._crit_edge.thread
  %i.fh = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store i32 91, ptr %i.fi, align 8, !tbaa !37
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 44
  store i32 %i.dq, ptr %i.fj, align 4, !tbaa !38
  %i.fk = trunc i64 %.1118 to i32
  %i.fl = add i32 %.0123177186, %i.fk
  %i.fm = load ptr, ptr %0, align 8, !tbaa !34
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !38
  %i.fo = load ptr, ptr %0, align 8, !tbaa !34
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !39
  tail call void %i.fq(ptr noundef nonnull %0, i32 noundef 1) #6
  br label %examine_app14.exit

examine_app14.exit:                               ; preds = %bb.aa, %bb.z, %bb.ab, %bb.s
  store ptr %.3114.lcssa187, ptr %i.f, align 8, !tbaa !42
  store i64 %.3.lcssa188, ptr %i.h, align 8, !tbaa !43
  %i.fr = icmp sgt i64 %.1118, 0
  br i1 %i.fr, label %bb.ac, label %.loopexit141

bb.ac:                                            ; preds = %examine_app14.exit
  %i.fs = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !76
  tail call void %i.fu(ptr noundef nonnull %0, i64 noundef %.1118) #6
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.m, %examine_app14.exit, %bb.ac, %bb.f, %bb.c
  %.0128 = phi i32 [ 0, %bb.f ], [ 1, %examine_app14.exit ], [ 0, %bb.c ], [ 1, %bb.ac ], [ 0, %bb.m ]
  ret i32 %.0128
}

; Function Attrs: nounwind uwtable
define void @jpeg_set_marker_processor(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = icmp eq i32 %1, 254
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.d, align 8, !tbaa !52
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %1, -16
  %or.cond = icmp eq i32 %i.e, 224
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr [8 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1744
  store ptr %2, ptr %i.h, align 8, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 68, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  store i32 %1, ptr %i.k, align 4, !tbaa !38
  %i.l = load ptr, ptr %0, align 8, !tbaa !34
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  tail call void %i.m(ptr noundef nonnull %0) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @get_sof(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 23 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 13 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i32 58, ptr %i.k, align 8, !tbaa !37
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !61
  tail call void %i.l(ptr noundef nonnull %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %1, ptr %i.m, align 8, !tbaa !133
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 %2, ptr %i.p, align 4, !tbaa !134
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %3, ptr %i.q, align 4, !tbaa !135
  %i.r = icmp eq i64 %i.e, 0
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0) #6
  %.not183 = icmp eq i32 %i.u, 0
  br i1 %.not183, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.w = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0159 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.c ] ; 2 uses
  %.0158 = phi i64 [ %i.w, %bb.e ], [ %i.e, %bb.c ]
  %i.x = add i64 %.0158, -1                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0159, i64 1
  %i.z = load i8, ptr %.0159, align 1, !tbaa !38
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 8
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = tail call i32 %i.ae(ptr noundef nonnull %0) #6
  %.not184 = icmp eq i32 %i.af, 0
  br i1 %.not184, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.1160 = phi ptr [ %i.ag, %bb.h ], [ %i.y, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %i.ah, %bb.h ], [ %i.x, %bb.f ]
  %i.ai = add i64 %.1, -1                         ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.1160, i64 1
  %i.ak = load i8, ptr %.1160, align 1, !tbaa !38
  %i.al = zext i8 %i.ak to i64
  %i.am = or disjoint i64 %i.ab, %i.al
  %i.an = icmp eq i64 %i.ai, 0
  br i1 %i.an, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !44
  %i.aq = tail call i32 %i.ap(ptr noundef nonnull %0) #6
  %.not185 = icmp eq i32 %i.aq, 0
  br i1 %.not185, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.as = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.2161 = phi ptr [ %i.ar, %bb.k ], [ %i.aj, %bb.i ] ; 2 uses
  %.2 = phi i64 [ %i.as, %bb.k ], [ %i.ai, %bb.i ]
  %i.at = add i64 %.2, -1                         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.2161, i64 1
end_hunk_1
begin_hunk_2_@get_sof:bb.a
  %i.eo = sext i32 %.pre209 to i64
  %i.ep = mul nsw i64 %i.eo, 96
  %i.eq = tail call ptr %i.en(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.ep) #6 ; 2 uses
  store ptr %i.eq, ptr %i.ei, align 8, !tbaa !55
  %.pre208 = load i32, ptr %i.de, align 8, !tbaa !71
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.er = phi ptr [ %i.eq, %bb.ah ], [ %i.ej, %bb.ag ]
  %i.es = phi i32 [ %.pre208, %bb.ah ], [ %.pre209, %bb.ag ]
  %.8167197 = getelementptr inbounds nuw i8, ptr %.7166, i64 1 ; 2 uses
  %.8198 = add i64 %.7, -1                        ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %bb.as
  %.8202 = phi i64 [ %.8198, %.lr.ph ], [ %.8, %bb.as ] ; 2 uses
  %.8167201 = phi ptr [ %.8167197, %.lr.ph ], [ %.8167, %bb.as ]
  %.0171200 = phi ptr [ %i.er, %.lr.ph ], [ %i.gn, %bb.as ] ; 7 uses
  %.0172199 = phi i32 [ 0, %.lr.ph ], [ %i.gm, %bb.as ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0171200, i64 4
  store i32 %.0172199, ptr %i.ev, align 4, !tbaa !140
  %i.ew = icmp eq i64 %.8202, 0
  br i1 %i.ew, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ex = load ptr, ptr %i.eu, align 8, !tbaa !44
  %i.ey = tail call i32 %i.ex(ptr noundef nonnull %0) #6
  %.not192 = icmp eq i32 %i.ey, 0
  br i1 %.not192, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.fa = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.9168 = phi ptr [ %i.ez, %bb.al ], [ %.8167201, %bb.aj ] ; 2 uses
  %.9 = phi i64 [ %i.fa, %bb.al ], [ %.8202, %bb.aj ]
  %i.fb = add i64 %.9, -1                         ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.9168, i64 1
  %i.fd = load i8, ptr %.9168, align 1, !tbaa !38
  %i.fe = zext i8 %i.fd to i32
  store i32 %i.fe, ptr %.0171200, align 8, !tbaa !73
  %i.ff = icmp eq i64 %i.fb, 0
  br i1 %i.ff, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fg = load ptr, ptr %i.eu, align 8, !tbaa !44
  %i.fh = tail call i32 %i.fg(ptr noundef nonnull %0) #6
  %.not193 = icmp eq i32 %i.fh, 0
  br i1 %.not193, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.fj = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.10169 = phi ptr [ %i.fi, %bb.ao ], [ %i.fc, %bb.am ] ; 2 uses
  %.10 = phi i64 [ %i.fj, %bb.ao ], [ %i.fb, %bb.am ]
  %i.fk = add i64 %.10, -1                        ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.10169, i64 1
  %i.fm = load i8, ptr %.10169, align 1, !tbaa !38
  %i.fn = zext i8 %i.fm to i32                    ; 2 uses
  %i.fo = lshr i32 %i.fn, 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.0171200, i64 8 ; 2 uses
  store i32 %i.fo, ptr %i.fp, align 8, !tbaa !141
  %i.fq = and i32 %i.fn, 15
  %i.fr = getelementptr inbounds nuw i8, ptr %.0171200, i64 12 ; 2 uses
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !142
  %i.fs = icmp eq i64 %i.fk, 0
  br i1 %i.fs, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ft = load ptr, ptr %i.eu, align 8, !tbaa !44
  %i.fu = tail call i32 %i.ft(ptr noundef nonnull %0) #6
  %.not194 = icmp eq i32 %i.fu, 0
  br i1 %.not194, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.fw = load i64, ptr %i.d, align 8, !tbaa !43
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %.11170 = phi ptr [ %i.fv, %bb.ar ], [ %i.fl, %bb.ap ] ; 2 uses
  %.11 = phi i64 [ %i.fw, %bb.ar ], [ %i.fk, %bb.ap ]
  %i.fx = load i8, ptr %.11170, align 1, !tbaa !38
  %i.fy = zext i8 %i.fx to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %.0171200, i64 16 ; 2 uses
  store i32 %i.fy, ptr %i.fz, align 8, !tbaa !143
  %i.ga = load ptr, ptr %0, align 8, !tbaa !34    ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 44
  %i.gc = load i32, ptr %.0171200, align 8, !tbaa !73
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !54
  %i.gd = load i32, ptr %i.fp, align 8, !tbaa !141
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !54
  %i.gf = load i32, ptr %i.fr, align 4, !tbaa !142
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 52
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !54
  %i.gh = load i32, ptr %i.fz, align 8, !tbaa !143
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !54
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  store i32 101, ptr %i.gj, align 8, !tbaa !37
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !39
  tail call void %i.gl(ptr noundef nonnull %0, i32 noundef 1) #6
  %i.gm = add nuw nsw i32 %.0172199, 1            ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0171200, i64 96
  %.8167 = getelementptr inbounds nuw i8, ptr %.11170, i64 1 ; 2 uses
  %.8 = add i64 %.11, -1                          ; 2 uses
  %i.go = load i32, ptr %i.de, align 8, !tbaa !71
  %i.gp = icmp slt i32 %i.gm, %i.go
  br i1 %i.gp, label %bb.aj, label %._crit_edge, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.as, %bb.ai
  %.8167.lcssa = phi ptr [ %.8167197, %bb.ai ], [ %.8167, %bb.as ]
  %.8.lcssa = phi i64 [ %.8198, %bb.ai ], [ %.8, %bb.as ]
  %i.gq = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 28
  store i32 1, ptr %i.gr, align 4, !tbaa !70
  store ptr %.8167.lcssa, ptr %i.b, align 8, !tbaa !42
  store i64 %.8.lcssa, ptr %i.d, align 8, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aq, %bb.an, %bb.ak, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d, %._crit_edge
  %.0 = phi i32 [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.y ], [ 1, %._crit_edge ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %bb.j ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.aq ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @examine_app0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i64 noundef range(i64 -16, 4294967296) %3) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = add nsw i64 %3, %i.a                     ; 6 uses
  %i.c = icmp ugt i32 %2, 13
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !38
  %i.e = icmp eq i8 %i.d, 74
  br i1 %i.e, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !38
  %i.h = icmp eq i8 %i.g, 70
  br i1 %i.h, label %bb.d, label %.thread.thread105

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !38
  %i.k = icmp eq i8 %i.j, 73
  br i1 %i.k, label %bb.e, label %.thread.thread105

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !38
  %i.n = icmp eq i8 %i.m, 70
  br i1 %i.n, label %bb.f, label %.thread.thread105

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.g, label %.thread.thread105

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 372
  store i32 1, ptr %i.r, align 4, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !38    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  store i8 %i.t, ptr %i.u, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 377 ; 3 uses
  store i8 %i.w, ptr %i.x, align 1, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.z = load i8, ptr %i.y, align 1, !tbaa !38    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 378 ; 2 uses
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load i16, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)      ; 2 uses
  store i16 %5, ptr %i.ac, align 4, !tbaa !66
  %6 = load i16, ptr %i.ad, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 382
  store i16 %7, ptr %i.ae, align 2, !tbaa !67
  %.not = icmp eq i8 %i.t, 1
  %i.af = insertelement <2 x i16> poison, i16 %5, i64 0
  %i.ag = insertelement <2 x i16> %i.af, i16 %7, i64 1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 119, ptr %i.ai, align 8, !tbaa !37
  %i.aj = zext i8 %i.t to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !38
  %i.al = load i8, ptr %i.x, align 1, !tbaa !64
  %i.am = zext i8 %i.al to i32
  %i.an = load ptr, ptr %0, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !38
  %i.ap = load ptr, ptr %0, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39
  tail call void %i.ar(ptr noundef nonnull %0, i32 noundef -1) #6
  %.pre = load i8, ptr %i.u, align 8, !tbaa !63
  %.pre97 = load i8, ptr %i.x, align 1, !tbaa !64
  %i.as = load <2 x i16>, ptr %i.ac, align 4, !tbaa !75
  %.pre100 = load i8, ptr %i.aa, align 2, !tbaa !65
  %i.at = zext i8 %.pre to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.au = phi i8 [ %i.z, %bb.g ], [ %.pre100, %bb.h ]
  %i.av = phi i8 [ %i.w, %bb.g ], [ %.pre97, %bb.h ]
  %i.aw = phi i32 [ 1, %bb.g ], [ %i.at, %bb.h ]
  %i.ax = phi <2 x i16> [ %i.ag, %bb.g ], [ %i.as, %bb.h ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !34    ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !54
  %i.ba = zext i8 %i.av to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !54
  %i.bc = zext <2 x i16> %i.ax to <2 x i32>
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 52
  store <2 x i32> %i.bc, ptr %i.bd, align 4, !tbaa !54
  %i.be = zext i8 %i.au to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store i32 87, ptr %i.bg, align 8, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39
  tail call void %i.bi(ptr noundef nonnull %0, i32 noundef 1) #6
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !38  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !38  ; 2 uses
  %i.bn = or i8 %i.bm, %i.bk
  %.not94 = icmp eq i8 %i.bn, 0
  br i1 %.not94, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i32 90, ptr %i.bp, align 8, !tbaa !37
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !38
  %i.br = zext i8 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !38
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !38
  %i.bu = zext i8 %i.bt to i32
  %i.bv = load ptr, ptr %0, align 8, !tbaa !34
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !38
  %i.bx = load ptr, ptr %0, align 8, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !39
  tail call void %i.bz(ptr noundef nonnull %0, i32 noundef 1) #6
  %.pre101 = load i8, ptr %i.bj, align 1, !tbaa !38
  %.pre102 = load i8, ptr %i.bl, align 1, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ca = phi i8 [ %.pre102, %bb.j ], [ %i.bm, %bb.i ]
  %i.cb = phi i8 [ %.pre101, %bb.j ], [ %i.bk, %bb.i ]
  %i.cc = add nsw i64 %i.b, -14                   ; 2 uses
  %i.cd = zext i8 %i.cb to i64
  %i.ce = zext i8 %i.ca to i64
  %i.cf = mul nuw nsw i64 %i.cd, 3
  %i.cg = mul nuw nsw i64 %i.cf, %i.ce
  %.not95 = icmp eq i64 %i.cc, %i.cg
  br i1 %.not95, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store i32 88, ptr %i.ci, align 8, !tbaa !37
  %i.cj = trunc i64 %i.cc to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !38
  br label %.sink.split

bb.m:                                             ; preds = %bb.a
  %i.cl = icmp samesign ugt i32 %2, 5
  br i1 %i.cl, label %.thread, label %.thread.thread

.thread:                                          ; preds = %bb.m
  %.pr.pre = load i8, ptr %1, align 1, !tbaa !38
  %i.cm = icmp eq i8 %.pr.pre, 74
  br i1 %i.cm, label %.thread.thread105, label %.thread.thread

.thread.thread105:                                ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !38
  %i.cp = icmp eq i8 %i.co, 70
  br i1 %i.cp, label %bb.n, label %.thread.thread

bb.n:                                             ; preds = %.thread.thread105
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !38
  %i.cs = icmp eq i8 %i.cr, 88
  br i1 %i.cs, label %bb.o, label %.thread.thread

bb.o:                                             ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !38
  %i.cv = icmp eq i8 %i.cu, 88
  br i1 %i.cv, label %bb.p, label %.thread.thread

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !38
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.q, label %.thread.thread

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !38
  %i.db = load ptr, ptr %0, align 8, !tbaa !34    ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40 ; 4 uses
  switch i8 %i.da, label %bb.u [
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 19, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  store i32 108, ptr %i.dc, align 8, !tbaa !37
  %i.dd = trunc i64 %i.b to i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !38
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  store i32 109, ptr %i.dc, align 8, !tbaa !37
  %i.df = trunc i64 %i.b to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !38
  br label %.sink.split

bb.t:                                             ; preds = %bb.q
  store i32 110, ptr %i.dc, align 8, !tbaa !37
  %i.dh = trunc i64 %i.b to i32
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !38
  br label %.sink.split

bb.u:                                             ; preds = %bb.q
  store i32 89, ptr %i.dc, align 8, !tbaa !37
  %i.dj = load i8, ptr %i.cz, align 1, !tbaa !38
  %i.dk = zext i8 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !38
  %i.dm = trunc i64 %i.b to i32
  %i.dn = load ptr, ptr %0, align 8, !tbaa !34
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store i32 %i.dm, ptr %i.do, align 4, !tbaa !38
  br label %.sink.split

.thread.thread:                                   ; preds = %bb.b, %bb.p, %bb.o, %bb.n, %.thread.thread105, %.thread, %bb.m
  %i.dp = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store i32 77, ptr %i.dq, align 8, !tbaa !37
  %i.dr = trunc i64 %i.b to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 44
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !38
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.r, %bb.s, %bb.t, %bb.u, %.thread.thread
  %i.dt = load ptr, ptr %0, align 8, !tbaa !34
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !39
  tail call void %i.dv(ptr noundef nonnull %0, i32 noundef 1) #6
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.k
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS14jpeg_error_mgr", !9, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !9, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !9, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !9, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"any p2 pointer", !9, i64 0}
!16 = !{!"p2 omnipotent char", !15, i64 0}
!17 = !{!"p1 int", !9, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !9, i64 0}
!20 = !{!"p1 omnipotent char", !9, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !9, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !9, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !9, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !9, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !9, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !9, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !9, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !9, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !9, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !9, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !9, i64 0}
!32 = !{!"jpeg_decompress_struct", !10, i64 0, !11, i64 8, !12, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !13, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !14, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !16, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !6, i64 296, !9, i64 304, !6, i64 312, !6, i64 316, !5, i64 320, !5, i64 336, !5, i64 352, !6, i64 368, !6, i64 372, !5, i64 376, !5, i64 377, !5, i64 378, !18, i64 380, !18, i64 382, !6, i64 384, !5, i64 388, !6, i64 392, !19, i64 400, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !20, i64 424, !6, i64 432, !5, i64 440, !6, i64 472, !6, i64 476, !6, i64 480, !5, i64 484, !6, i64 524, !6, i64 528, !6, i64 532, !6, i64 536, !6, i64 540, !21, i64 544, !22, i64 552, !23, i64 560, !24, i64 568, !25, i64 576, !26, i64 584, !27, i64 592, !28, i64 600, !29, i64 608, !30, i64 616, !31, i64 624}
!33 = !{!32, !6, i64 540}
!34 = !{!32, !10, i64 0}
!35 = !{!"long", !5, i64 0}
!36 = !{!"jpeg_error_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40, !5, i64 44, !6, i64 124, !35, i64 128, !16, i64 136, !6, i64 144, !16, i64 152, !6, i64 160, !6, i64 164}
!37 = !{!36, !6, i64 40}
!38 = !{!5, !5, i64 0}
!39 = !{!36, !9, i64 8}
!40 = !{!32, !13, i64 40}
!41 = !{!"jpeg_source_mgr", !20, i64 0, !35, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!42 = !{!41, !20, i64 0}
!43 = !{!41, !35, i64 8}
!44 = !{!41, !9, i64 24}
!45 = !{!32, !26, i64 584}
!46 = !{!"jpeg_marker_reader", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!32, !11, i64 8}
!49 = !{!"jpeg_memory_mgr", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !35, i64 88, !35, i64 96}
!50 = !{!49, !9, i64 0}
!51 = !{!"", !46, i64 0, !9, i64 40, !5, i64 48, !6, i64 176, !5, i64 180, !19, i64 248, !6, i64 256}
!52 = !{!51, !9, i64 40}
!53 = !{!9, !9, i64 0}
!54 = !{!6, !6, i64 0}
!55 = !{!32, !9, i64 304}
!56 = !{!32, !6, i64 172}
!57 = !{!51, !6, i64 24}
!58 = !{!51, !6, i64 28}
!59 = !{!51, !6, i64 36}
!60 = !{!51, !19, i64 248}
!61 = !{!36, !9, i64 0}
!62 = !{!32, !6, i64 372}
!63 = !{!32, !5, i64 376}
!64 = !{!32, !5, i64 377}
!65 = !{!32, !5, i64 378}
!66 = !{!32, !18, i64 380}
!67 = !{!32, !18, i64 382}
!68 = !{!32, !6, i64 384}
!69 = !{!32, !5, i64 388}
!70 = !{!46, !6, i64 28}
!71 = !{!32, !6, i64 56}
!72 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !9, i64 80, !9, i64 88}
!73 = !{!72, !6, i64 0}
!74 = !{!46, !6, i64 32}
!75 = !{!18, !18, i64 0}
!76 = !{!41, !9, i64 32}
!77 = !{!32, !21, i64 544}
!78 = !{!"jpeg_decomp_master", !9, i64 0, !9, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !5, i64 32, !5, i64 72, !6, i64 112, !6, i64 116, !19, i64 120, !6, i64 128, !6, i64 132, !6, i64 136}
!79 = distinct !{!79, !47}
!80 = !{!46, !6, i64 36}
!81 = !{!51, !9, i64 0}
!82 = !{!51, !9, i64 8}
!83 = !{!51, !9, i64 16}
!84 = distinct !{null}
!85 = distinct !{null}
!86 = distinct !{null}
!87 = distinct !{!87, !47}
!88 = distinct !{!88, !47}
!89 = distinct !{null}
!90 = distinct !{!90, !47}
!91 = distinct !{null}
!92 = distinct !{!92, !47}
!93 = distinct !{!93, !47}
!94 = distinct !{null}
!95 = distinct !{!95, !47}
!96 = distinct !{!96, !47}
!97 = distinct !{null}
!98 = !{!46, !6, i64 24}
!99 = !{!32, !6, i64 368}
!100 = !{!32, !6, i64 60}
!101 = !{!32, !6, i64 392}
!102 = !{!32, !6, i64 432}
!103 = !{!72, !6, i64 20}
!104 = !{!72, !6, i64 24}
!105 = !{!32, !6, i64 524}
!106 = !{!32, !6, i64 528}
!107 = !{!32, !6, i64 532}
!108 = !{!32, !6, i64 536}
!109 = !{!36, !6, i64 124}
!110 = !{ptr @skip_variable}
!111 = !{!41, !9, i64 40}
!112 = distinct !{!112, !47}
!113 = !{!49, !35, i64 96}
!114 = !{!51, !6, i64 176}
!115 = distinct !{!115, !47}
!116 = distinct !{!116, !47, !127, !128}
!117 = distinct !{!117, !47, !127, !128}
!118 = distinct !{!118, !47, !127}
!119 = !{!49, !9, i64 8}
!120 = !{!"jpeg_marker_struct", !19, i64 0, !5, i64 8, !6, i64 12, !6, i64 16, !20, i64 24}
!121 = !{!120, !19, i64 0}
!122 = !{!120, !5, i64 8}
!123 = !{!120, !6, i64 12}
!124 = !{!120, !6, i64 16}
!125 = !{!120, !20, i64 24}
!126 = !{!51, !6, i64 256}
!127 = !{!"llvm.loop.isvectorized", i32 1}
!128 = !{!"llvm.loop.unroll.runtime.disable"}
!129 = !{!"branch_weights", i32 4, i32 28}
!130 = !{!32, !19, i64 400}
!131 = !{!78, !19, i64 120}
!132 = distinct !{!132, !47}
!133 = !{!32, !6, i64 312}
!134 = !{!78, !6, i64 20}
!135 = !{!32, !6, i64 316}
!136 = !{!32, !6, i64 296}
!137 = !{!78, !6, i64 136}
!138 = !{!32, !6, i64 52}
!139 = !{!32, !6, i64 48}
!140 = !{!72, !6, i64 4}
!141 = !{!72, !6, i64 8}
!142 = !{!72, !6, i64 12}
!143 = !{!72, !6, i64 16}
end_hunk_2
