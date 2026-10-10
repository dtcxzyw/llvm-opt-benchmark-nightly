Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1193
loop-unroll.NumRuntimeUnrolled: 419
loop-unroll.NumUnrolled: 1634
begin_hunk_0_@helper_sve2_sabal_h:bb.a
  %i.av = load i8, ptr %i.an, align 1
  %i.aw = load i8, ptr %i.ao, align 1
  %i.ax = load i8, ptr %i.ap, align 1
  %i.ay = load i8, ptr %i.aq, align 1
  %i.az = load i8, ptr %i.ar, align 1
  %i.ba = load i8, ptr %i.as, align 1
  %i.bb = load i8, ptr %i.at, align 1
  %i.bc = insertelement <8 x i8> poison, i8 %i.au, i64 0
  %i.bd = insertelement <8 x i8> %i.bc, i8 %i.av, i64 1
  %i.be = insertelement <8 x i8> %i.bd, i8 %i.aw, i64 2
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 3
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 4
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 5
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 6
  %i.bj = insertelement <8 x i8> %i.bi, i8 %i.bb, i64 7 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.af
  %i.bm = getelementptr inbounds i8, ptr %2, i64 %i.ag
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.aj
  %i.bq = getelementptr inbounds i8, ptr %2, i64 %i.ak
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.al
  %i.bs = load i8, ptr %i.bk, align 1
  %i.bt = load i8, ptr %i.bl, align 1
  %i.bu = load i8, ptr %i.bm, align 1
  %i.bv = load i8, ptr %i.bn, align 1
  %i.bw = load i8, ptr %i.bo, align 1
  %i.bx = load i8, ptr %i.bp, align 1
  %i.by = load i8, ptr %i.bq, align 1
  %i.bz = load i8, ptr %i.br, align 1
  %i.ca = insertelement <8 x i8> poison, i8 %i.bs, i64 0
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bt, i64 1
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bu, i64 2
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 3
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bw, i64 4
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bx, i64 5
  %i.cg = insertelement <8 x i8> %i.cf, i8 %i.by, i64 6
  %i.ch = insertelement <8 x i8> %i.cg, i8 %i.bz, i64 7 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 %i.w
  %wide.load = load <8 x i16>, ptr %i.ci, align 2
  %i.cj = sext <8 x i8> %i.bj to <8 x i16>        ; 2 uses
  %i.ck = sext <8 x i8> %i.ch to <8 x i16>        ; 2 uses
  %i.cl = icmp slt <8 x i8> %i.bj, %i.ch
  %i.cm = sub nsw <8 x i16> %i.cj, %i.ck
  %i.cn = sub nsw <8 x i16> %i.ck, %i.cj
  %i.co = select <8 x i1> %i.cl, <8 x i16> %i.cn, <8 x i16> %i.cm
  %i.cp = add <8 x i16> %i.co, %wide.load
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  store <8 x i16> %i.cp, ptr %i.cq, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2433

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.a
  %.024.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.v, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.024 = phi i64 [ %i.dg, %scalar.ph ], [ %.024.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cs = add nsw i64 %.024, %i.i                 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %1, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1             ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %2, i64 %i.cs
  %i.cw = load i8, ptr %i.cv, align 1             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 %.024
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = sext i8 %i.cu to i16                    ; 2 uses
  %i.da = sext i8 %i.cw to i16                    ; 2 uses
  %.not = icmp slt i8 %i.cu, %i.cw
  %i.db = sub nsw i16 %i.cz, %i.da
  %i.dc = sub nsw i16 %i.da, %i.cz
  %i.dd = select i1 %.not, i16 %i.dc, i16 %i.db
  %i.de = add i16 %i.dd, %i.cy
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.024
  store i16 %i.de, ptr %i.df, align 2
  %i.dg = add nuw nsw i64 %.024, 2                ; 2 uses
  %i.dh = icmp samesign ult i64 %i.dg, %i.g
  br i1 %i.dh, label %scalar.ph, label %bb.b, !llvm.loop !2434

bb.b:                                             ; preds = %scalar.ph
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sabal_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = ashr i32 %4, 10
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 1                      ; 4 uses
  %i.k = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.k, 2
  %i.l = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 44
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.m = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.n = ptrtoaddr ptr %1 to i64
  %i.o = ptrtoaddr ptr %2 to i64
  %i.p = ptrtoaddr ptr %3 to i64
  %i.q = add i64 %i.j, %i.n
  %i.r = sub i64 %i.q, %i.m
  %diff.check = icmp ugt i64 %i.r, -16
  %i.s = add i64 %i.j, %i.o
  %i.t = sub i64 %i.s, %i.m
  %diff.check25 = icmp ugt i64 %i.t, -16
  %conflict.rdx = or i1 %diff.check, %diff.check25
  %i.u = sub i64 %i.p, %i.m
  %diff.check26 = icmp ugt i64 %i.u, -16
  %conflict.rdx27 = or i1 %conflict.rdx, %diff.check26
  br i1 %conflict.rdx27, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.v = and i64 %i.l, 2
  %.neg = or disjoint i64 %i.v, -4
  %n.vec = add nsw i64 %.neg, %i.l                ; 2 uses
  %i.w = shl nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl nuw i64 %index, 2                    ; 3 uses
  %i.y = add nsw i64 %i.x, %i.j                   ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  %wide.vec = load <8 x i16>, ptr %i.z, align 2
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.aa = sext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %i.y
  %wide.vec28 = load <8 x i16>, ptr %i.ab, align 2
  %strided.vec29 = shufflevector <8 x i16> %wide.vec28, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ac = sext <4 x i16> %strided.vec29 to <4 x i32> ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.x
  %wide.load = load <4 x i32>, ptr %i.ad, align 4
  %i.ae = icmp slt <4 x i16> %strided.vec, %strided.vec29
  %i.af = sub nsw <4 x i32> %i.aa, %i.ac
  %i.ag = sub nsw <4 x i32> %i.ac, %i.aa
  %i.ah = select <4 x i1> %i.ae, <4 x i32> %i.ag, <4 x i32> %i.af
  %i.ai = add <4 x i32> %i.ah, %wide.load
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  store <4 x i32> %i.ai, ptr %i.aj, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2435

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.a
  %.024.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.w, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.024 = phi i64 [ %i.az, %scalar.ph ], [ %.024.ph, %scalar.ph.preheader ] ; 4 uses
  %i.al = add nsw i64 %.024, %i.j                 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = sext i16 %i.an to i32                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.al
  %i.aq = load i16, ptr %i.ap, align 2            ; 2 uses
  %i.ar = sext i16 %i.aq to i32                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %.024
  %i.at = load i32, ptr %i.as, align 4
  %.not = icmp slt i16 %i.an, %i.aq
  %i.au = sub nsw i32 %i.ao, %i.ar
  %i.av = sub nsw i32 %i.ar, %i.ao
  %i.aw = select i1 %.not, i32 %i.av, i32 %i.au
  %i.ax = add i32 %i.aw, %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.024
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = add nuw nsw i64 %.024, 4                ; 2 uses
  %i.ba = icmp samesign ult i64 %i.az, %i.g
  br i1 %i.ba, label %scalar.ph, label %bb.b, !llvm.loop !2436

bb.b:                                             ; preds = %scalar.ph
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sabal_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = ashr i32 %4, 10
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 4 uses
  %i.k = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.k, 1
  %5 = zext nneg i32 %narrow to i64               ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 96
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.l = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.m = ptrtoaddr ptr %1 to i64
  %i.n = ptrtoaddr ptr %2 to i64
  %i.o = ptrtoaddr ptr %3 to i64
  %i.p = add i64 %i.j, %i.m
  %i.q = sub i64 %i.p, %i.l
  %diff.check = icmp ugt i64 %i.q, -16
  %i.r = add i64 %i.j, %i.n
  %i.s = sub i64 %i.r, %i.l
  %diff.check25 = icmp ugt i64 %i.s, -16
  %conflict.rdx = or i1 %diff.check, %diff.check25
  %i.t = sub i64 %i.o, %i.l
  %diff.check26 = icmp ugt i64 %i.t, -16
  %conflict.rdx27 = or i1 %conflict.rdx, %diff.check26
  br i1 %conflict.rdx27, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %5, -2
  %n.vec = add nsw i64 %.neg, %5                  ; 2 uses
  %i.u = shl nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl nuw i64 %index, 3                    ; 3 uses
  %i.w = add nsw i64 %i.v, %i.j                   ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %wide.vec = load <4 x i32>, ptr %i.x, align 4
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = sext <2 x i32> %strided.vec to <2 x i64> ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.w
  %wide.vec28 = load <4 x i32>, ptr %i.z, align 4
  %strided.vec29 = shufflevector <4 x i32> %wide.vec28, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aa = sext <2 x i32> %strided.vec29 to <2 x i64> ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  %wide.load = load <2 x i64>, ptr %i.ab, align 8
  %i.ac = icmp slt <2 x i32> %strided.vec, %strided.vec29
  %i.ad = sub nsw <2 x i64> %i.y, %i.aa
  %i.ae = sub nsw <2 x i64> %i.aa, %i.y
  %i.af = select <2 x i1> %i.ac, <2 x i64> %i.ae, <2 x i64> %i.ad
  %i.ag = add <2 x i64> %i.af, %wide.load
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  store <2 x i64> %i.ag, ptr %i.ah, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2437

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.a
  %.024.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.u, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.024 = phi i64 [ %i.ax, %scalar.ph ], [ %.024.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = add nsw i64 %.024, %i.j                 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.aj
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.024
  %i.ar = load i64, ptr %i.aq, align 8
  %.not = icmp slt i32 %i.al, %i.ao
  %i.as = sub nsw i64 %i.am, %i.ap
  %i.at = sub nsw i64 %i.ap, %i.am
  %i.au = select i1 %.not, i64 %i.at, i64 %i.as
  %i.av = add i64 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.024
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = add nuw nsw i64 %.024, 8                ; 2 uses
  %i.ay = icmp samesign ult i64 %i.ax, %i.g
  br i1 %i.ay, label %scalar.ph, label %bb.b, !llvm.loop !2438

bb.b:                                             ; preds = %scalar.ph
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_uabal_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = ashr i32 %4, 10
  %i.i = sext i32 %i.h to i64                     ; 11 uses
  %i.j = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.j, 4
  %i.k = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 26
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.l = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.m = ptrtoaddr ptr %1 to i64
  %i.n = ptrtoaddr ptr %2 to i64
  %i.o = ptrtoaddr ptr %3 to i64
  %i.p = add i64 %i.m, %i.i
  %i.q = sub i64 %i.p, %i.l
  %diff.check = icmp ugt i64 %i.q, -16
  %i.r = add i64 %i.n, %i.i
  %i.s = sub i64 %i.r, %i.l
  %diff.check25 = icmp ugt i64 %i.s, -16
  %conflict.rdx = or i1 %diff.check, %diff.check25
  %i.t = sub i64 %i.o, %i.l
  %diff.check26 = icmp ugt i64 %i.t, -16
  %conflict.rdx27 = or i1 %conflict.rdx, %diff.check26
  br i1 %conflict.rdx27, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.u = and i64 %i.k, 4
  %.neg = or disjoint i64 %i.u, -8
  %n.vec = add nsw i64 %.neg, %i.k                ; 2 uses
  %i.v = shl nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl nuw i64 %index, 1                    ; 10 uses
  %i.x = or disjoint i64 %i.w, 2
  %i.y = or disjoint i64 %i.w, 4
  %i.z = or disjoint i64 %i.w, 6
  %i.aa = or disjoint i64 %i.w, 8
  %i.ab = or disjoint i64 %i.w, 10
  %i.ac = or disjoint i64 %i.w, 12
  %i.ad = or disjoint i64 %i.w, 14
  %i.ae = add nsw i64 %i.w, %i.i                  ; 2 uses
  %i.af = add nsw i64 %i.x, %i.i                  ; 2 uses
  %i.ag = add nsw i64 %i.y, %i.i                  ; 2 uses
  %i.ah = add nsw i64 %i.z, %i.i                  ; 2 uses
  %i.ai = add nsw i64 %i.aa, %i.i                 ; 2 uses
  %i.aj = add nsw i64 %i.ab, %i.i                 ; 2 uses
  %i.ak = add nsw i64 %i.ac, %i.i                 ; 2 uses
  %i.al = add nsw i64 %i.ad, %i.i                 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.af
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.ag
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ah
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ai
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.as = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.at = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.au = load i8, ptr %i.am, align 1
  %i.av = load i8, ptr %i.an, align 1
  %i.aw = load i8, ptr %i.ao, align 1
  %i.ax = load i8, ptr %i.ap, align 1
  %i.ay = load i8, ptr %i.aq, align 1
  %i.az = load i8, ptr %i.ar, align 1
  %i.ba = load i8, ptr %i.as, align 1
  %i.bb = load i8, ptr %i.at, align 1
  %i.bc = insertelement <8 x i8> poison, i8 %i.au, i64 0
  %i.bd = insertelement <8 x i8> %i.bc, i8 %i.av, i64 1
  %i.be = insertelement <8 x i8> %i.bd, i8 %i.aw, i64 2
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 3
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 4
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 5
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 6
  %i.bj = insertelement <8 x i8> %i.bi, i8 %i.bb, i64 7 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.af
  %i.bm = getelementptr inbounds i8, ptr %2, i64 %i.ag
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.aj
  %i.bq = getelementptr inbounds i8, ptr %2, i64 %i.ak
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.al
  %i.bs = load i8, ptr %i.bk, align 1
  %i.bt = load i8, ptr %i.bl, align 1
  %i.bu = load i8, ptr %i.bm, align 1
  %i.bv = load i8, ptr %i.bn, align 1
  %i.bw = load i8, ptr %i.bo, align 1
  %i.bx = load i8, ptr %i.bp, align 1
  %i.by = load i8, ptr %i.bq, align 1
  %i.bz = load i8, ptr %i.br, align 1
  %i.ca = insertelement <8 x i8> poison, i8 %i.bs, i64 0
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bt, i64 1
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bu, i64 2
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 3
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bw, i64 4
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bx, i64 5
  %i.cg = insertelement <8 x i8> %i.cf, i8 %i.by, i64 6
  %i.ch = insertelement <8 x i8> %i.cg, i8 %i.bz, i64 7 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 %i.w
  %wide.load = load <8 x i16>, ptr %i.ci, align 2
  %i.cj = zext <8 x i8> %i.bj to <8 x i16>        ; 2 uses
  %i.ck = zext <8 x i8> %i.ch to <8 x i16>        ; 2 uses
  %i.cl = icmp ult <8 x i8> %i.bj, %i.ch
  %i.cm = sub nsw <8 x i16> %i.cj, %i.ck
  %i.cn = sub nsw <8 x i16> %i.ck, %i.cj
  %i.co = select <8 x i1> %i.cl, <8 x i16> %i.cn, <8 x i16> %i.cm
  %i.cp = add <8 x i16> %i.co, %wide.load
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  store <8 x i16> %i.cp, ptr %i.cq, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2439

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.a
  %.024.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.v, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.024 = phi i64 [ %i.dg, %scalar.ph ], [ %.024.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cs = add nsw i64 %.024, %i.i                 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %1, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1             ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %2, i64 %i.cs
  %i.cw = load i8, ptr %i.cv, align 1             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 %.024
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = zext i8 %i.cu to i16                    ; 2 uses
  %i.da = zext i8 %i.cw to i16                    ; 2 uses
  %.not = icmp ult i8 %i.cu, %i.cw
  %i.db = sub nsw i16 %i.cz, %i.da
  %i.dc = sub nsw i16 %i.da, %i.cz
  %i.dd = select i1 %.not, i16 %i.dc, i16 %i.db
  %i.de = add i16 %i.dd, %i.cy
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.024
  store i16 %i.de, ptr %i.df, align 2
  %i.dg = add nuw nsw i64 %.024, 2                ; 2 uses
  %i.dh = icmp samesign ult i64 %i.dg, %i.g
  br i1 %i.dh, label %scalar.ph, label %bb.b, !llvm.loop !2440

bb.b:                                             ; preds = %scalar.ph
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_uabal_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = ashr i32 %4, 10
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 1                      ; 4 uses
  %i.k = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.k, 2
  %i.l = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 44
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.m = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.n = ptrtoaddr ptr %1 to i64
  %i.o = ptrtoaddr ptr %2 to i64
  %i.p = ptrtoaddr ptr %3 to i64
  %i.q = add i64 %i.j, %i.n
  %i.r = sub i64 %i.q, %i.m
  %diff.check = icmp ugt i64 %i.r, -16
  %i.s = add i64 %i.j, %i.o
  %i.t = sub i64 %i.s, %i.m
  %diff.check25 = icmp ugt i64 %i.t, -16
  %conflict.rdx = or i1 %diff.check, %diff.check25
  %i.u = sub i64 %i.p, %i.m
  %diff.check26 = icmp ugt i64 %i.u, -16
  %conflict.rdx27 = or i1 %conflict.rdx, %diff.check26
  br i1 %conflict.rdx27, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.v = and i64 %i.l, 2
  %.neg = or disjoint i64 %i.v, -4
  %n.vec = add nsw i64 %.neg, %i.l                ; 2 uses
  %i.w = shl nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl nuw i64 %index, 2                    ; 3 uses
  %i.y = add nsw i64 %i.x, %i.j                   ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  %wide.vec = load <8 x i16>, ptr %i.z, align 2
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.aa = zext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %i.y
  %wide.vec28 = load <8 x i16>, ptr %i.ab, align 2
  %strided.vec29 = shufflevector <8 x i16> %wide.vec28, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ac = zext <4 x i16> %strided.vec29 to <4 x i32> ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.x
  %wide.load = load <4 x i32>, ptr %i.ad, align 4
  %i.ae = icmp ult <4 x i16> %strided.vec, %strided.vec29
  %i.af = sub nsw <4 x i32> %i.aa, %i.ac
  %i.ag = sub nsw <4 x i32> %i.ac, %i.aa
  %i.ah = select <4 x i1> %i.ae, <4 x i32> %i.ag, <4 x i32> %i.af
  %i.ai = add <4 x i32> %i.ah, %wide.load
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  store <4 x i32> %i.ai, ptr %i.aj, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2441

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.a
  %.024.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.w, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.024 = phi i64 [ %i.az, %scalar.ph ], [ %.024.ph, %scalar.ph.preheader ] ; 4 uses
  %i.al = add nsw i64 %.024, %i.j                 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.al
  %i.aq = load i16, ptr %i.ap, align 2            ; 2 uses
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %.024
  %i.at = load i32, ptr %i.as, align 4
  %.not = icmp ult i16 %i.an, %i.aq
  %i.au = sub nsw i32 %i.ao, %i.ar
  %i.av = sub nsw i32 %i.ar, %i.ao
  %i.aw = select i1 %.not, i32 %i.av, i32 %i.au
  %i.ax = add i32 %i.aw, %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.024
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = add nuw nsw i64 %.024, 4                ; 2 uses
  %i.ba = icmp samesign ult i64 %i.az, %i.g
  br i1 %i.ba, label %scalar.ph, label %bb.b, !llvm.loop !2442

bb.b:                                             ; preds = %scalar.ph
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_uabal_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = ashr i32 %4, 10
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 4 uses
  %i.k = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.k, 1
  %5 = zext nneg i32 %narrow to i64               ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 96
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.l = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.m = ptrtoaddr ptr %1 to i64
  %i.n = ptrtoaddr ptr %2 to i64
  %i.o = ptrtoaddr ptr %3 to i64
  %i.p = add i64 %i.j, %i.m
  %i.q = sub i64 %i.p, %i.l
  %diff.check = icmp ugt i64 %i.q, -16
  %i.r = add i64 %i.j, %i.n
  %i.s = sub i64 %i.r, %i.l
  %diff.check25 = icmp ugt i64 %i.s, -16
  %conflict.rdx = or i1 %diff.check, %diff.check25
  %i.t = sub i64 %i.o, %i.l
  %diff.check26 = icmp ugt i64 %i.t, -16
  %conflict.rdx27 = or i1 %conflict.rdx, %diff.check26
  br i1 %conflict.rdx27, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %.neg = or i64 %5, -2
  %n.vec = add nsw i64 %.neg, %5                  ; 2 uses
  %i.u = shl nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl nuw i64 %index, 3                    ; 3 uses
  %i.w = add nsw i64 %i.v, %i.j                   ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %wide.vec = load <4 x i32>, ptr %i.x, align 4
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = zext <2 x i32> %strided.vec to <2 x i64> ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.w
  %wide.vec28 = load <4 x i32>, ptr %i.z, align 4
  %strided.vec29 = shufflevector <4 x i32> %wide.vec28, <4 x i32> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aa = zext <2 x i32> %strided.vec29 to <2 x i64> ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  %wide.load = load <2 x i64>, ptr %i.ab, align 8
  %i.ac = icmp ult <2 x i32> %strided.vec, %strided.vec29
  %i.ad = sub nsw <2 x i64> %i.y, %i.aa
  %i.ae = sub nsw <2 x i64> %i.aa, %i.y
  %i.af = select <2 x i1> %i.ac, <2 x i64> %i.ae, <2 x i64> %i.ad
  %i.ag = add <2 x i64> %i.af, %wide.load
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  store <2 x i64> %i.ag, ptr %i.ah, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2443

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.a
  %.024.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.u, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.024 = phi i64 [ %i.ax, %scalar.ph ], [ %.024.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = add nsw i64 %.024, %i.j                 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.aj
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.024
  %i.ar = load i64, ptr %i.aq, align 8
  %.not = icmp ult i32 %i.al, %i.ao
  %i.as = sub nsw i64 %i.am, %i.ap
  %i.at = sub nsw i64 %i.ap, %i.am
  %i.au = select i1 %.not, i64 %i.at, i64 %i.as
  %i.av = add i64 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.024
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = add nuw nsw i64 %.024, 8                ; 2 uses
  %i.ay = icmp samesign ult i64 %i.ax, %i.g
  br i1 %i.ay, label %scalar.ph, label %bb.b, !llvm.loop !2444

bb.b:                                             ; preds = %scalar.ph
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_adcl_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %4, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.e = lshr i32 %4, 10
  %i.f = and i32 %i.e, 1
  %i.g = shl i32 %4, 20
  %i.h = ashr i32 %i.g, 31                        ; 4 uses
  %i.i = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.j = zext nneg i32 %i.f to i64                ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.j ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.l = ptrtoaddr ptr %3 to i64
  %i.m = ptrtoaddr ptr %1 to i64
  %i.n = ptrtoaddr ptr %2 to i64
  %i.o = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.o, -32
  %i.p = shl nuw nsw i64 %i.j, 2
  %i.q = add i64 %i.p, %i.m
  %i.r = sub i64 %i.q, %i.k
  %diff.check23 = icmp ugt i64 %i.r, -32
  %conflict.rdx = or i1 %diff.check, %diff.check23
  %i.s = sub i64 %i.n, %i.k
  %diff.check24 = icmp ugt i64 %i.s, -32
  %conflict.rdx25 = or i1 %conflict.rdx, %diff.check24
  br i1 %conflict.rdx25, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.t = and i64 %i.i, 3                          ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 4, i64 %i.t
  %n.vec = sub nsw i64 %i.i, %i.v                 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.w = shl nuw nsw i64 %index, 1                ; 2 uses
  %i.x = shl i64 %index, 1
  %i.y = or disjoint i64 %i.x, 4                  ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.w
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y
  %wide.vec = load <4 x i32>, ptr %i.z, align 4
  %i.ab = freeze <4 x i32> %wide.vec
  %i.ac = bitcast <4 x i32> %i.ab to <2 x i64>
  %i.ad = and <2 x i64> %i.ac, splat (i64 4294967295)
  %wide.vec26 = load <4 x i32>, ptr %i.aa, align 4
  %i.ae = freeze <4 x i32> %wide.vec26
  %i.af = bitcast <4 x i32> %i.ae to <2 x i64>
  %i.ag = and <2 x i64> %i.af, splat (i64 4294967295)
  %i.ah = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.w
  %i.ai = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.y
  %wide.vec28 = load <4 x i32>, ptr %i.ah, align 4
  %strided.vec29 = shufflevector <4 x i32> %wide.vec28, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec30 = load <4 x i32>, ptr %i.ai, align 4
  %strided.vec31 = shufflevector <4 x i32> %wide.vec30, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.aj = xor <2 x i32> %strided.vec29, %broadcast.splat
  %i.ak = xor <2 x i32> %strided.vec31, %broadcast.splat
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x i64>, ptr %i.al, align 8
  %wide.load32 = load <2 x i64>, ptr %i.am, align 8
  %i.an = lshr <2 x i64> %wide.load, splat (i64 32)
  %i.ao = lshr <2 x i64> %wide.load32, splat (i64 32)
  %i.ap = and <2 x i64> %i.an, splat (i64 1)
  %i.aq = and <2 x i64> %i.ao, splat (i64 1)
  %i.ar = zext <2 x i32> %i.aj to <2 x i64>
  %i.as = zext <2 x i32> %i.ak to <2 x i64>
  %i.at = add nuw nsw <2 x i64> %i.ad, %i.ar
  %i.au = add nuw nsw <2 x i64> %i.ag, %i.as
  %i.av = add nuw nsw <2 x i64> %i.at, %i.ap
  %i.aw = add nuw nsw <2 x i64> %i.au, %i.aq
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %i.av, ptr %i.ax, align 8
  store <2 x i64> %i.aw, ptr %i.ay, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2445

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.a
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %vector.body ] ; 7 uses
  %i.ba = zext nneg i32 %.v.v.i to i64            ; 2 uses
  %i.bb = add nsw i64 %.022.ph, %i.ba
  %i.bc = and i64 %i.bb, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bd = shl nuw nsw i64 %.022.ph, 1             ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bd
  %i.bg = load i32, ptr %gep.prol, align 4
  %i.bh = xor i32 %i.bg, %i.h
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.022.ph
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = lshr i64 %i.bj, 32
  %i.bl = and i64 %i.bk, 1
  %i.bm = zext i32 %i.bf to i64
  %i.bn = zext i32 %i.bh to i64
  %i.bo = add nuw nsw i64 %i.bn, %i.bm
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.022.ph
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = add nuw nsw i64 %.022.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.022.unr = phi i64 [ %.022.ph, %scalar.ph.preheader ], [ %i.br, %scalar.ph.prol ]
  %i.bs = icmp eq i64 %.022.ph, %i.ba
  br i1 %i.bs, label %.unr-lcssa, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.022 = phi i64 [ %i.cw, %scalar.ph ], [ %.022.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bt = shl nuw nsw i64 %.022, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bt
  %i.bw = load i32, ptr %gep, align 4
  %i.bx = xor i32 %i.bw, %i.h
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.022
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = lshr i64 %i.bz, 32
  %i.cb = and i64 %i.ca, 1
  %i.cc = zext i32 %i.bv to i64
  %i.cd = zext i32 %i.bx to i64
  %i.ce = add nuw nsw i64 %i.cd, %i.cc
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.022
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = add nuw nsw i64 %.022, 1                ; 3 uses
  %i.ci = shl nuw nsw i64 %i.ch, 1                ; 2 uses
end_hunk_0
