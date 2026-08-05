inline.NumInlined: 2138
inline.NumDeleted: 500
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 49
begin_hunk_0_@mprotect

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #36

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @invalidate_moved_plane(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.g
  %.030 = phi i64 [ %i.bo, %bb.g ], [ %2, %bb.a ] ; 2 uses
  %.0 = phi i64 [ %i.bn, %bb.g ], [ %1, %bb.a ]   ; 6 uses
  %i.a = and i64 %.030, 1
  %.not33 = icmp eq i64 %i.a, 0
  br i1 %.not33, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.b = inttoptr i64 %.0 to ptr                  ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !109
  %i.d = and i64 %i.c, 31
  %i.e = icmp eq i64 %i.d, 30
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %.0, -65536
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 65536, !tbaa !113
  %i.i = getelementptr i8, ptr %i.h, i64 1112
  %.lhs.trunc = trunc i64 %.0 to i16              ; 2 uses
  %i.j = udiv i16 %.lhs.trunc, 40
  %i.k = udiv i16 %.lhs.trunc, 2560
  %.zext3 = zext nneg i16 %i.k to i64
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %.zext3 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !59
  %i.n = and i16 %i.j, 63
  %i.o = zext nneg i16 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = xor i64 %i.p, -1
  %i.r = and i64 %i.m, %i.q
  store i64 %i.r, ptr %i.l, align 8, !tbaa !59
  %i.s = load i64, ptr %i.b, align 8, !tbaa !109
  %i.t = and i64 %i.s, 31
  %i.u = icmp eq i64 %i.t, 30
  br i1 %i.u, label %.split2.us.i, label %rb_gc_impl_location.exit

.split2.us.i:                                     ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.b, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !286
  br label %rb_gc_impl_location.exit

rb_gc_impl_location.exit:                         ; preds = %bb.c, %.split2.us.i
  %.us-phi.i = phi i64 [ %i.w, %.split2.us.i ], [ %.0, %bb.c ] ; 7 uses
  %i.x = icmp eq i64 %.us-phi.i, 0
  %i.y = and i64 %.us-phi.i, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rb_gc_impl_location.exit
  %i.ab = inttoptr i64 %.us-phi.i to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !109
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.af = getelementptr i8, ptr %i.b, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !540
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rb_gc_impl_location.exit, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %.029 = phi i32 [ %i.ag, %bb.d ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ 0, %rb_gc_impl_location.exit ] ; 2 uses
  %i.ah = and i64 %.us-phi.i, -65536
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 65536, !tbaa !113
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !100
  %i.al = zext i16 %i.ak to i64
  %i.am = load i16, ptr %0, align 8, !tbaa !100
  %i.an = zext i16 %i.am to i64
  %i.ao = tail call fastcc i64 @gc_move(i64 noundef %.us-phi.i, i64 noundef %.0, i64 noundef %i.al, i64 noundef %i.an) ; 0 uses
  %.not34 = icmp eq i32 %.029, 0
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !109
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = zext i32 %.029 to i64
  %i.as = shl nuw i64 %i.ar, 32
  %i.at = or disjoint i64 %i.aq, %i.as
  store i64 %i.at, ptr %i.b, align 8, !tbaa !109
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.au = load ptr, ptr %i.ai, align 65536, !tbaa !113 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4      ; 2 uses
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !456
  %i.ax = add i16 %i.aw, 1
  store i16 %i.ax, ptr %i.av, align 4, !tbaa !456
  %i.ay = getelementptr i8, ptr %i.au, i64 1320
  %.lhs.trunc.i = trunc i64 %.us-phi.i to i16     ; 2 uses
  %i.az = udiv i16 %.lhs.trunc.i, 40
  %i.ba = shl nuw nsw i16 %i.az, 1
  %i.bb = and i16 %i.ba, 62
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = shl nuw i64 3, %i.bc
  %i.be = xor i64 %i.bd, -1
  %i.bf = udiv i16 %.lhs.trunc.i, 1280
  %.zext8.i = zext nneg i16 %i.bf to i64
  %i.bg = getelementptr [8 x i8], ptr %i.ay, i64 %.zext8.i ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59
  %i.bi = and i64 %i.bh, %i.be
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !59
  %i.bj = inttoptr i64 %.us-phi.i to ptr          ; 3 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !432
  %i.bk = getelementptr i8, ptr %i.au, i64 48     ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !433
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !196
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !433
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %.preheader
  %i.bn = add i64 %.0, 40
  %i.bo = lshr i64 %.030, 1                       ; 2 uses
  %.not35 = icmp eq i64 %i.bo, 0
  br i1 %.not35, label %.loopexit, label %.preheader, !llvm.loop !541

.loopexit:                                        ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @gc_move(i64 noundef returned %0, i64 noundef %1, i64 noundef range(i64 0, 65536) %2, i64 noundef range(i64 0, 65536) %3) unnamed_addr #17 {
bb.a:
  %i.a = and i64 %0, -65536
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 65536, !tbaa !113 ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 280
  %.lhs.trunc.i = trunc i64 %0 to i16             ; 3 uses
  %i.e = udiv i16 %.lhs.trunc.i, 40               ; 2 uses
  %i.f = udiv i16 %.lhs.trunc.i, 2560
  %.zext2.i = zext nneg i16 %i.f to i64           ; 4 uses
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %.zext2.i ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = and i16 %i.e, 63
  %i.j = zext nneg i16 %i.i to i64
  %i.k = getelementptr i8, ptr %i.c, i64 72
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %.zext2.i ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !59   ; 2 uses
  %i.n = getelementptr i8, ptr %i.c, i64 488
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %.zext2.i ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59   ; 2 uses
  %i.q = getelementptr i8, ptr %i.c, i64 904
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.zext2.i ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59   ; 2 uses
  %i.t = shl nuw i64 1, %i.j                      ; 5 uses
  %i.u = getelementptr i8, ptr %i.c, i64 1320
  %i.v = udiv i16 %.lhs.trunc.i, 1280
  %.zext4.i = zext nneg i16 %i.v to i64           ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %.zext4.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59
  %i.y = xor i64 %i.t, -1                         ; 4 uses
  %i.z = and i64 %i.h, %i.y
  store i64 %i.z, ptr %i.g, align 8, !tbaa !59
  %i.aa = and i64 %i.m, %i.y
  store i64 %i.aa, ptr %i.l, align 8, !tbaa !59
  %i.ab = and i64 %i.p, %i.y
  store i64 %i.ab, ptr %i.o, align 8, !tbaa !59
  %i.ac = and i64 %i.s, %i.y
  store i64 %i.ac, ptr %i.r, align 8, !tbaa !59
  %i.ad = inttoptr i64 %1 to ptr                  ; 3 uses
  %i.ae = inttoptr i64 %0 to ptr                  ; 5 uses
  %i.af = tail call i64 @llvm.umin.i64(i64 %2, i64 %3) ; 2 uses
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ad, ptr noundef nonnull readonly align 1 %i.ae, i64 noundef range(i64 1, 34359738361) %i.af, i1 noundef false) #46
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.a, %bb.b
  %i.ag = shl nuw nsw i16 %i.e, 1
  %i.ah = and i16 %i.ag, 62
  %i.ai = zext nneg i16 %i.ah to i64              ; 2 uses
  %i.aj = and i64 %i.s, %i.t
  %.not = icmp eq i64 %i.aj, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ae, i8 noundef 0, i64 noundef %2, i1 noundef false) #46
  %i.ak = load ptr, ptr %i.b, align 65536, !tbaa !113 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 1320
  %i.am = shl nuw i64 3, %i.ai
  %i.an = xor i64 %i.am, -1
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %.zext4.i ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !59
  %i.aq = and i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !59
  %i.ar = and i64 %1, -65536
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 65536, !tbaa !113
  %i.au = getelementptr i8, ptr %i.at, i64 904
  %.lhs.trunc3 = trunc i64 %1 to i16
  %4 = insertelement <8 x i16> poison, i16 %.lhs.trunc3, i64 0
  %5 = shufflevector <8 x i16> %4, <8 x i16> poison, <8 x i32> zeroinitializer
  %6 = and i64 %i.h, %i.t
  %.not90 = icmp eq i64 %6, 0
  %7 = and i64 %1, -65536
  %8 = inttoptr i64 %7 to ptr
  %9 = load ptr, ptr %8, align 65536, !tbaa !113
  %10 = getelementptr i8, ptr %9, i64 280
  %11 = and i64 %i.m, %i.t
  %.not91 = icmp eq i64 %11, 0
  %i.av = and i64 %1, -65536
  %12 = inttoptr i64 %i.av to ptr
  %13 = load ptr, ptr %12, align 65536, !tbaa !113
  %14 = getelementptr i8, ptr %13, i64 72
  %i.aw = and i64 %i.p, %i.t
  %.not90.a = icmp eq i64 %i.aw, 0
  %i.ax = and i64 %1, -65536
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 65536, !tbaa !113
  %i.ba = getelementptr i8, ptr %i.az, i64 488
  %.lhs.trunc7 = trunc i64 %1 to i16
  %i.bb = udiv i16 %.lhs.trunc7, 40               ; 2 uses
  %i.bc = and i16 %i.bb, 63
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd                    ; 2 uses
  %i.bf = xor i64 %i.be, -1
  %15 = lshr i64 %i.x, %i.ai
  %16 = load ptr, ptr %i.ay, align 65536, !tbaa !113 ; 2 uses
  %17 = getelementptr i8, ptr %16, i64 1320
  %18 = shl nuw nsw i16 %i.bb, 1
  %19 = and i16 %18, 62
  %20 = zext nneg i16 %19 to i64                  ; 2 uses
  %21 = shl nuw i64 3, %20
  %22 = xor i64 %21, -1
  %23 = udiv <8 x i16> %5, <i16 40, i16 2560, i16 40, i16 2560, i16 40, i16 2560, i16 2560, i16 1280> ; 8 uses
  %24 = extractelement <8 x i16> %23, i64 1
  %.zext14.a = zext nneg i16 %24 to i64
  %i.bg = getelementptr [8 x i8], ptr %i.au, i64 %.zext14.a ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59 ; 2 uses
  %25 = extractelement <8 x i16> %23, i64 0
  %i.bi = and i16 %25, 63
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj                    ; 2 uses
  %i.bl = xor i64 %i.bk, -1
  %i.bm = and i64 %i.bh, %i.bl
  %i.bn = or i64 %i.bh, %i.bk
  %.sink37.a = select i1 %.not, i64 %i.bm, i64 %i.bn
  store i64 %.sink37.a, ptr %i.bg, align 8, !tbaa !59
  %26 = extractelement <8 x i16> %23, i64 3
  %.zext10 = zext nneg i16 %26 to i64
  %27 = getelementptr [8 x i8], ptr %10, i64 %.zext10 ; 2 uses
  %28 = load i64, ptr %27, align 8, !tbaa !59     ; 2 uses
  %29 = extractelement <8 x i16> %23, i64 2
  %30 = and i16 %29, 63
  %31 = zext nneg i16 %30 to i64
  %32 = shl nuw i64 1, %31                        ; 2 uses
  %33 = xor i64 %32, -1
  %34 = and i64 %28, %33
  %35 = or i64 %28, %32
  %.sink38 = select i1 %.not90, i64 %34, i64 %35
  store i64 %.sink38, ptr %27, align 8, !tbaa !59
  %36 = extractelement <8 x i16> %23, i64 5
  %.zext18.a = zext nneg i16 %36 to i64
  %i.bo = getelementptr [8 x i8], ptr %14, i64 %.zext18.a ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !59 ; 2 uses
  %37 = extractelement <8 x i16> %23, i64 4
  %i.bq = and i16 %37, 63
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = shl nuw i64 1, %i.br                    ; 2 uses
  %i.bt = xor i64 %i.bs, -1
  %i.bu = and i64 %i.bp, %i.bt
  %i.bv = or i64 %i.bp, %i.bs
  %.sink39.a = select i1 %.not91, i64 %i.bu, i64 %i.bv
  store i64 %.sink39.a, ptr %i.bo, align 8, !tbaa !59
  %38 = extractelement <8 x i16> %23, i64 6
  %.zext18 = zext nneg i16 %38 to i64
  %39 = getelementptr [8 x i8], ptr %i.ba, i64 %.zext18 ; 2 uses
  %40 = load i64, ptr %39, align 8, !tbaa !59     ; 2 uses
  %41 = and i64 %40, %i.bf
  %42 = or i64 %40, %i.be
  %.sink39 = select i1 %.not90.a, i64 %41, i64 %42
  store i64 %.sink39, ptr %39, align 8, !tbaa !59
  %43 = extractelement <8 x i16> %23, i64 7
  %.zext8.i.i = zext nneg i16 %43 to i64
  %i.bw = getelementptr [8 x i8], ptr %17, i64 %.zext8.i.i ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !59
  %i.by = and i64 %i.bx, %22
  %i.bz = and i64 %15, 3                          ; 2 uses
  %i.ca = shl nuw i64 %i.bz, %20
  %i.cb = or i64 %i.by, %i.ca
  store i64 %i.cb, ptr %i.bw, align 8, !tbaa !59
  %i.cc = icmp eq i64 %i.bz, 3
  %i.cd = load i64, ptr %i.ad, align 8, !tbaa !109
  %i.ce = and i64 %i.cd, -33
  %masksel.i = select i1 %i.cc, i64 32, i64 0
  %.sink.i = or disjoint i64 %i.ce, %masksel.i
  store i64 %.sink.i, ptr %i.ad, align 8, !tbaa !109
  store i64 30, ptr %i.ae, align 8, !tbaa !542
  %i.cf = getelementptr i8, ptr %i.ae, i64 8
  store i64 36, ptr %i.cf, align 8, !tbaa !543
  %i.cg = getelementptr i8, ptr %i.ae, i64 16
  store i64 %1, ptr %i.cg, align 8, !tbaa !286
  %i.ch = getelementptr i8, ptr %i.ak, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !431
  %i.cj = getelementptr i8, ptr %i.ci, i64 48     ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !153
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !153
  %i.cm = getelementptr i8, ptr %16, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !431
  %i.co = getelementptr i8, ptr %i.cn, i64 40     ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !152
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !152
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @gc_compact_move(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.gc_sweep_context, align 8   ; 5 uses
  %i.a = tail call fastcc ptr @gc_compact_destination_pool(ptr noundef %0, ptr noundef %1, i64 noundef %2) ; 9 uses
  %i.b = getelementptr i8, ptr %i.a, i64 104
  %.val = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.c = getelementptr i8, ptr %i.a, i64 112
  %.val58 = load ptr, ptr %i.c, align 8, !tbaa !469
  %i.d = icmp eq ptr %.val, %.val58
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne ptr %i.a, %1
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %2, 0
  %i.g = and i64 %2, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !109
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.n = tail call i32 @rb_obj_shape_id(i64 noundef %2) #46 ; 2 uses
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 152
  %i.t = tail call i32 @rb_shape_transition_heap(i64 noundef %2, i64 noundef range(i64 -60680079189834051, 60680079189834052) %i.s) #46 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %spec.select = select i1 %i.u, ptr %1, ptr %i.a
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.c, %bb.e, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %.047 = phi ptr [ %i.a, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %spec.select, %bb.e ], [ %i.a, %bb.d ], [ %i.a, %bb.c ] ; 6 uses
  %.046 = phi i32 [ 0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.045 = phi i32 [ 0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.t, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.v = getelementptr i8, ptr %.047, i64 80      ; 3 uses
  %i.w = and i64 %2, -65536
  %i.x = inttoptr i64 %i.w to ptr                 ; 6 uses
  %i.y = getelementptr i8, ptr %.047, i64 104     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr i8, ptr %.047, i64 88
  %i.ab = getelementptr i8, ptr %.047, i64 112
  br label %bb.f

bb.f:                                             ; preds = %bb.t, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !447 ; 5 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !433 ; 3 uses
  %.not33.not.i = icmp eq ptr %i.ae, null
  br i1 %.not33.not.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.ac, i64 48
  %i.ag = load ptr, ptr %i.x, align 65536, !tbaa !113
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !196
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !433
  %i.ak = load i16, ptr %i.ag, align 8, !tbaa !100 ; 3 uses
  %i.al = load i16, ptr %i.ac, align 8, !tbaa !100 ; 3 uses
  %i.am = icmp ugt i16 %i.ak, %i.al
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %0, i64 1944
  %i.ao = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !109
  %i.aq = and i64 %i.ap, 31
  %i.ar = getelementptr [8 x i8], ptr %i.an, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !59
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !59
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.au = icmp ugt i16 %i.al, %i.ak
  br i1 %i.au, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = inttoptr i64 %2 to ptr
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr i8, ptr %0, i64 1696
  %i.aw = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !109
  %i.ay = and i64 %i.ax, 31
  %i.az = getelementptr [8 x i8], ptr %i.av, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i, %bb.i
  %.pre-phi.i = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.aw, %bb.k ], [ %i.ao, %bb.i ]
  %i.bc = getelementptr i8, ptr %0, i64 1448
  %i.bd = load i64, ptr %.pre-phi.i, align 8, !tbaa !109
  %i.be = and i64 %i.bd, 31
  %i.bf = getelementptr [8 x i8], ptr %i.bc, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !59
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !59
  %i.bi = getelementptr i8, ptr %0, i64 2192      ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !347
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !347
  %i.bl = zext i16 %i.ak to i64
  %i.bm = zext i16 %i.al to i64
  %i.bn = tail call fastcc i64 @gc_move(i64 noundef %2, i64 noundef %i.ah, i64 noundef %i.bl, i64 noundef %i.bm) ; 0 uses
  %i.bo = getelementptr i8, ptr %0, i64 28
  %.val.i = load i16, ptr %i.bo, align 4          ; 2 uses
  %i.bp = and i16 %.val.i, 64
  %.not.i.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i.i, label %bb.u, label %bb.m, !prof !189

bb.m:                                             ; preds = %bb.l
  %i.bq = and i16 %.val.i, 32
  %.not9.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not9.i.i, label %bb.u, label %bb.n, !prof !60

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %i.x, align 65536, !tbaa !113 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 1112
  %.lhs.trunc.i.i.i = trunc i64 %2 to i16         ; 2 uses
  %i.bt = udiv i16 %.lhs.trunc.i.i.i, 40
  %i.bu = udiv i16 %.lhs.trunc.i.i.i, 2560
  %.zext2.i.i.i = zext nneg i16 %i.bu to i64
  %i.bv = getelementptr [8 x i8], ptr %i.bs, i64 %.zext2.i.i.i ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !59 ; 2 uses
  %i.bx = and i16 %i.bt, 63
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by                    ; 2 uses
  %i.ca = and i64 %i.bw, %i.bz
  %.not10.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not10.i.i, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr i8, ptr %i.br, i64 8      ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !288
  %i.cd = add i16 %i.cc, 1
  store i16 %i.cd, ptr %i.cb, align 8, !tbaa !288
  %i.ce = or i64 %i.bw, %i.bz
  store i64 %i.ce, ptr %i.bv, align 8, !tbaa !59
  br label %bb.u

bb.p:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !111
  store ptr %i.cf, ptr %3, align 8, !tbaa !522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.cg = tail call i32 @mprotect(ptr noundef nonnull %i.x, i64 noundef 65536, i32 noundef 0) #46
  %.not.i59 = icmp eq i32 %i.cg, 0
  br i1 %.not.i59, label %lock_page_body.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = tail call ptr @rb_errno_ptr() #46
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = tail call ptr @strerror(i32 noundef %i.ci) #46
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.138, ptr noundef nonnull %i.x, ptr noundef %i.cj) #61
  unreachable

lock_page_body.exit:                              ; preds = %bb.p
  call fastcc void @gc_sweep_page(ptr noundef %0, ptr noundef nonnull %.047, ptr noundef %3)
  %i.ck = tail call i32 @mprotect(ptr noundef nonnull %i.x, i64 noundef 65536, i32 noundef 3) #46
  %.not.i60 = icmp eq i32 %i.ck, 0
  br i1 %.not.i60, label %unlock_page_body.exit, label %bb.r

bb.r:                                             ; preds = %lock_page_body.exit
  %i.cl = tail call ptr @rb_errno_ptr() #46
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  %i.cn = tail call ptr @strerror(i32 noundef %i.cm) #46
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.130, ptr noundef nonnull %i.x, ptr noundef %i.cn) #61
  unreachable
end_hunk_0
