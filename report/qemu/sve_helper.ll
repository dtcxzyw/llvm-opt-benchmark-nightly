Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1193
loop-unroll.NumRuntimeUnrolled: 419
loop-unroll.NumUnrolled: 1634
begin_hunk_0_@helper_sve2_usubw_s:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %i.s = and i64 %i.l, 6                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 8, i64 %i.s
  %n.vec = sub nsw i64 %i.l, %i.u                 ; 2 uses
  %i.v = shl nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl nuw i64 %index, 2                    ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x i32>, ptr %i.x, align 4
  %wide.load15 = load <4 x i32>, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %invariant.gep, i64 %i.w
  %i.aa = getelementptr i8, ptr %invariant.gep, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %wide.vec = load <8 x i16>, ptr %i.z, align 2
  %i.ac = freeze <8 x i16> %wide.vec
  %i.ad = bitcast <8 x i16> %i.ac to <4 x i32>
  %i.ae = and <4 x i32> %i.ad, splat (i32 65535)
  %wide.vec16 = load <8 x i16>, ptr %i.ab, align 2
  %i.af = freeze <8 x i16> %wide.vec16
  %i.ag = bitcast <8 x i16> %i.af to <4 x i32>
  %i.ah = and <4 x i32> %i.ag, splat (i32 65535)
  %i.ai = sub <4 x i32> %wide.load, %i.ae
  %i.aj = sub <4 x i32> %wide.load15, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.w ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x i32> %i.ai, ptr %i.ak, align 4
  store <4 x i32> %i.aj, ptr %i.al, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1867

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.a
  %.013.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.v, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.013 = phi i64 [ %i.at, %scalar.ph ], [ %.013.ph, %scalar.ph.preheader ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.ao = load i32, ptr %i.an, align 4
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.013
  %i.ap = load i16, ptr %gep, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = sub i32 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = add nuw nsw i64 %.013, 4                ; 2 uses
  %i.au = icmp samesign ult i64 %i.at, %i.g
  br i1 %i.au, label %scalar.ph, label %bb.b, !llvm.loop !1868

bb.b:                                             ; preds = %scalar.ph
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_usubw_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8                           ; 2 uses
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = and i32 %i.a, 4
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.i ; 3 uses
  %i.j = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.j, 1
  %i.k = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.l = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.m = ptrtoaddr ptr %1 to i64
  %i.n = ptrtoaddr ptr %2 to i64
  %i.o = sub i64 %i.m, %i.l
  %diff.check = icmp ugt i64 %i.o, -32
  %i.p = add i64 %i.n, %i.i
  %i.q = sub i64 %i.p, %i.l
  %diff.check14 = icmp ugt i64 %i.q, -32
  %conflict.rdx = or i1 %diff.check, %diff.check14
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.r = and i64 %i.k, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.k, %i.t                 ; 2 uses
  %i.u = shl nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl nuw i64 %index, 3                    ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x i64>, ptr %i.w, align 8
  %wide.load15 = load <2 x i64>, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %invariant.gep, i64 %i.v
  %i.z = getelementptr i8, ptr %invariant.gep, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %wide.vec = load <4 x i32>, ptr %i.y, align 4
  %i.ab = freeze <4 x i32> %wide.vec
  %i.ac = bitcast <4 x i32> %i.ab to <2 x i64>
  %i.ad = and <2 x i64> %i.ac, splat (i64 4294967295)
  %wide.vec16 = load <4 x i32>, ptr %i.aa, align 4
  %i.ae = freeze <4 x i32> %wide.vec16
  %i.af = bitcast <4 x i32> %i.ae to <2 x i64>
  %i.ag = and <2 x i64> %i.af, splat (i64 4294967295)
  %i.ah = sub <2 x i64> %wide.load, %i.ad
  %i.ai = sub <2 x i64> %wide.load15, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x i64> %i.ah, ptr %i.aj, align 8
  store <2 x i64> %i.ai, ptr %i.ak, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1869

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.a
  %.013.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.u, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.013 = phi i64 [ %i.as, %scalar.ph ], [ %.013.ph, %scalar.ph.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.an = load i64, ptr %i.am, align 8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.013
  %i.ao = load i32, ptr %gep, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = add nuw nsw i64 %.013, 8                ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %i.g
  br i1 %i.at, label %scalar.ph, label %bb.b, !llvm.loop !1870

bb.b:                                             ; preds = %scalar.ph
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bb_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 27 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr @pred_esz_masks, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i5, %bb.e ]
  %.0.i4 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i4, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 3 uses
  %.1.i5 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = ashr i32 %i.a, 10                       ; 3 uses
  %i.ab = icmp sgt i64 %.178.i, -1
  br i1 %i.ab, label %bb.g, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ad = and i32 %i.aa, 31
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.af, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldN_r.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i64 %.1.i5, %i.h
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = trunc i64 %.178.i to i16                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i16 %i.ah, ptr %i.ai, align 4
  store i16 %i.ah, ptr %4, align 8
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.ak = or i64 %i.aj, %2                        ; 3 uses
  %i.al = sub i64 0, %i.ak                        ; 3 uses
  %.not83.i.not = icmp slt i64 %.1.i5, %i.al
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.am = trunc nuw nsw i64 %.1.i5 to i16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.am, ptr %i.an, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ao = trunc i64 %i.al to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.ao, ptr %i.ap, align 8
  %.not84.i = icmp eq i64 %i.ak, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = trunc i64 %i.ak to i16
  %i.ar = xor i16 %i.aq, -1
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ar, ptr %i.as, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.al, i64 noundef %i.h, i32 noundef 0) ; 2 uses
  %i.au = icmp sle i64 %i.at, %.1.i5
  tail call void @llvm.assume(i1 %i.au)
  %i.av = trunc i64 %i.at to i16                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.av, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.av, ptr %i.ax, align 2
  %i.ay = trunc nuw nsw i64 %.1.i5 to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.ay, ptr %i.az, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %i.ba = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = or i32 %i.bf, %i.bc
  %.not166.i = icmp eq i32 %i.bg, 0
  br i1 %.not166.i, label %.preheader9, label %bb.m, !prof !85

.preheader9:                                      ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.bi = and i32 %i.aa, 31
  %i.bj = zext nneg i32 %i.bi to i64              ; 4 uses
  %i.bk = getelementptr inbounds nuw [256 x i8], ptr %i.bh, i64 %i.bj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.bl = load i16, ptr %4, align 8
  %i.bm = load i16, ptr %i.ai, align 4            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = load i16, ptr %i.bn, align 8            ; 2 uses
  %i.bp = sext i16 %i.bo to i64                   ; 2 uses
  %i.bq = load ptr, ptr %i.j, align 8
  %i.br = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.z, ptr %i.br, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i25 = icmp sgt i16 %i.bm, %i.bo
  br i1 %.not167.i25, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.bs = load i16, ptr %4, align 8
  %i.bt = sext i16 %i.bs to i64
  %i.bu = load i16, ptr %i.ai, align 4
  %i.bv = sext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.by = load i16, ptr %i.bx, align 2            ; 2 uses
  %i.bz = icmp slt i16 %i.by, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cb = load i16, ptr %i.ca, align 2            ; 2 uses
  %i.cc = icmp slt i16 %i.cb, 0
  %i.cd = load i16, ptr %i.bw, align 8
  %spec.select.i = select i1 %i.cc, i16 %i.cd, i16 %i.cb
  %.0149.in.i = select i1 %i.bz, i16 %spec.select.i, i16 %i.by
  %.0149.i = sext i16 %.0149.in.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0150.i = phi i64 [ %i.bv, %bb.m ], [ %i.cp, %bb.q ] ; 2 uses
  %.0143.i = phi i64 [ %i.bt, %bb.m ], [ %i.cq, %bb.q ]
  %i.ce = ashr i64 %.0150.i, 6
  %i.cf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1151.i = phi i64 [ %.0150.i, %bb.n ], [ %i.cp, %bb.p ] ; 3 uses
  %.1144.i = phi i64 [ %.0143.i, %bb.n ], [ %i.cq, %bb.p ] ; 2 uses
  %i.ch = and i64 %.1151.i, 63
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = and i64 %i.ci, %i.cg
  %.not172.i = icmp eq i64 %i.cj, 0
  br i1 %.not172.i, label %bb.p, label %.preheader11

.preheader11:                                     ; preds = %bb.o
  %invariant.gep = getelementptr i8, ptr %5, i64 %.1151.i
  %i.ck = add i64 %.1144.i, %2                    ; 2 uses
  %i.cl = shl i64 %i.ck, 8
  %i.cm = ashr exact i64 %i.cl, 8
  %i.cn = and i64 %i.cm, %i.ck
  %i.co = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.cn, i32 noundef 0, i64 noundef %i.z) #26
  store i8 %i.co, ptr %invariant.gep, align 1
  br label %bb.p

bb.p:                                             ; preds = %.preheader11, %bb.o
  %i.cp = add i64 %.1151.i, 1                     ; 4 uses
  %i.cq = add i64 %.1144.i, 1                     ; 2 uses
  %i.cr = and i64 %i.cp, 63
  %.not173.i = icmp eq i64 %i.cr, 0
  br i1 %.not173.i, label %bb.q, label %bb.o, !llvm.loop !18

bb.q:                                             ; preds = %bb.p
  %.not174.i = icmp sgt i64 %i.cp, %.0149.i
  br i1 %.not174.i, label %.preheader10, label %bb.n, !llvm.loop !19

.preheader10:                                     ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ct = and i32 %i.aa, 31
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [256 x i8], ptr %i.cs, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cv, ptr noundef nonnull align 16 dereferenceable(1) %5, i64 noundef range(i64 -1073741824, 4294967296) %i.h, i1 noundef false) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %sve_ldN_r.exit

.lr.ph:                                           ; preds = %.preheader9
  %i.cw = sext i16 %i.bm to i64
  %i.cx = sext i16 %i.bl to i64
  %invariant.gep54 = getelementptr [256 x i8], ptr %i.bh, i64 %i.bj
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %.2145.i27 = phi i64 [ %i.cx, %.lr.ph ], [ %i.dg, %bb.u ]
  %.2152.i26 = phi i64 [ %i.cw, %.lr.ph ], [ %i.df, %bb.u ] ; 2 uses
  %i.cy = ashr i64 %.2152.i26, 6
  %i.cz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.3153.i = phi i64 [ %.2152.i26, %bb.r ], [ %i.df, %bb.t ] ; 5 uses
  %.3146.i = phi i64 [ %.2145.i27, %bb.r ], [ %i.dg, %bb.t ] ; 2 uses
  %i.db = and i64 %.3153.i, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.da
  %.not171.i = icmp eq i64 %i.dd, 0
  br i1 %.not171.i, label %bb.t, label %.preheader7

.preheader7:                                      ; preds = %bb.s
  %i.de = getelementptr inbounds i8, ptr %i.bq, i64 %.3146.i
  %.val3 = load i8, ptr %i.de, align 1
  %gep = getelementptr i8, ptr %invariant.gep54, i64 %.3153.i
  store i8 %.val3, ptr %gep, align 1
  br label %bb.t

bb.t:                                             ; preds = %.preheader7, %bb.s
  %i.df = add nsw i64 %.3153.i, 1                 ; 3 uses
  %i.dg = add i64 %.3146.i, 1                     ; 2 uses
  %i.dh = icmp slt i64 %.3153.i, %i.bp
  %i.di = and i64 %i.df, 63
  %i.dj = icmp ne i64 %i.di, 0
  %i.dk = and i1 %i.dh, %i.dj
  br i1 %i.dk, label %bb.s, label %bb.u, !llvm.loop !20

bb.u:                                             ; preds = %bb.t
  %.not167.i.not = icmp slt i64 %.3153.i, %i.bp
  br i1 %.not167.i.not, label %bb.r, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.u, %.preheader9
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.br, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dm = load i16, ptr %i.dl, align 4            ; 2 uses
  %i.dn = icmp sgt i16 %i.dm, -1
  br i1 %i.dn, label %.loopexit6, label %bb.v, !prof !76

.loopexit6:                                       ; preds = %._crit_edge
  %i.do = zext nneg i16 %i.dm to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dq = load i16, ptr %i.dp, align 2
  %i.dr = sext i16 %i.dq to i64
  %i.ds = add i64 %2, %i.do                       ; 2 uses
  %invariant.gep29 = getelementptr i8, ptr %i.bh, i64 %i.dr
end_hunk_0
begin_hunk_1_@helper_sve_ld4qq_be_r:bb.a
  store i64 %i.jr, ptr %gep30.2.1, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  %.val5.i3.3.1 = load i64, ptr %i.js, align 1
  %i.jt = call i64 @llvm.bswap.i64(i64 %.val5.i3.3.1)
  %gep30.3.1 = getelementptr [256 x i8], ptr %invariant.gep29.1, i64 %i.hw ; 2 uses
  %i.ju = getelementptr i8, ptr %gep30.3.1, i64 8
  store i64 %i.jt, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  %.val.i4.3.1 = load i64, ptr %i.jv, align 1
  %i.jw = call i64 @llvm.bswap.i64(i64 %.val.i4.3.1)
  store i64 %i.jw, ptr %gep30.3.1, align 8
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader.1, %bb.l
  %i.jx = add i64 %.4154.i, 32                    ; 4 uses
  %i.jy = add i64 %.4147.i, 128                   ; 2 uses
  %i.jz = and i64 %i.jx, 63
  %.not169.i.1 = icmp eq i64 %i.jz, 0
  br i1 %.not169.i.1, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.loopexit.1
  %i.ka = and i64 %i.jx, 63
  %i.kb = shl nuw i64 1, %i.ka
  %i.kc = and i64 %i.kb, %i.hz
  %.not168.i.2 = icmp eq i64 %i.kc, 0
  br i1 %.not168.i.2, label %.loopexit.2, label %.preheader.2

.preheader.2:                                     ; preds = %bb.m
  %i.kd = getelementptr inbounds i8, ptr %i.hn, i64 %i.jy ; 8 uses
  %invariant.gep29.2 = getelementptr i8, ptr %i.ak, i64 %i.jx ; 4 uses
  %.val5.i3.265 = load i64, ptr %i.kd, align 1
  %i.ke = call i64 @llvm.bswap.i64(i64 %.val5.i3.265)
  %gep30.266 = getelementptr [256 x i8], ptr %invariant.gep29.2, i64 %i.am ; 2 uses
  %i.kf = getelementptr i8, ptr %gep30.266, i64 8
  store i64 %i.ke, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %.val.i4.267 = load i64, ptr %i.kg, align 1
  %i.kh = call i64 @llvm.bswap.i64(i64 %.val.i4.267)
  store i64 %i.kh, ptr %gep30.266, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %.val5.i3.1.2 = load i64, ptr %i.ki, align 1
  %i.kj = call i64 @llvm.bswap.i64(i64 %.val5.i3.1.2)
  %gep30.1.2 = getelementptr [256 x i8], ptr %invariant.gep29.2, i64 %i.hq ; 2 uses
  %i.kk = getelementptr i8, ptr %gep30.1.2, i64 8
  store i64 %i.kj, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %.val.i4.1.2 = load i64, ptr %i.kl, align 1
  %i.km = call i64 @llvm.bswap.i64(i64 %.val.i4.1.2)
  store i64 %i.km, ptr %gep30.1.2, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %.val5.i3.2.2 = load i64, ptr %i.kn, align 1
  %i.ko = call i64 @llvm.bswap.i64(i64 %.val5.i3.2.2)
  %gep30.2.2 = getelementptr [256 x i8], ptr %invariant.gep29.2, i64 %i.ht ; 2 uses
  %i.kp = getelementptr i8, ptr %gep30.2.2, i64 8
  store i64 %i.ko, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  %.val.i4.2.2 = load i64, ptr %i.kq, align 1
  %i.kr = call i64 @llvm.bswap.i64(i64 %.val.i4.2.2)
  store i64 %i.kr, ptr %gep30.2.2, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kd, i64 48
  %.val5.i3.3.2 = load i64, ptr %i.ks, align 1
  %i.kt = call i64 @llvm.bswap.i64(i64 %.val5.i3.3.2)
  %gep30.3.2 = getelementptr [256 x i8], ptr %invariant.gep29.2, i64 %i.hw ; 2 uses
  %i.ku = getelementptr i8, ptr %gep30.3.2, i64 8
  store i64 %i.kt, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kd, i64 56
  %.val.i4.3.2 = load i64, ptr %i.kv, align 1
  %i.kw = call i64 @llvm.bswap.i64(i64 %.val.i4.3.2)
  store i64 %i.kw, ptr %gep30.3.2, align 8
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.preheader.2, %bb.m
  %i.kx = add i64 %.4154.i, 48                    ; 4 uses
  %i.ky = add i64 %.4147.i, 192                   ; 2 uses
  %i.kz = and i64 %i.kx, 63
  %.not169.i.2 = icmp eq i64 %i.kz, 0
  br i1 %.not169.i.2, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit.2
  %i.la = and i64 %i.kx, 63
  %i.lb = shl nuw i64 1, %i.la
  %i.lc = and i64 %i.lb, %i.hz
  %.not168.i.3 = icmp eq i64 %i.lc, 0
  br i1 %.not168.i.3, label %.loopexit.3, label %.preheader.3

.preheader.3:                                     ; preds = %bb.n
  %i.ld = getelementptr inbounds i8, ptr %i.hn, i64 %i.ky ; 8 uses
  %invariant.gep29.3 = getelementptr i8, ptr %i.ak, i64 %i.kx ; 4 uses
  %.val5.i3.368 = load i64, ptr %i.ld, align 1
  %i.le = call i64 @llvm.bswap.i64(i64 %.val5.i3.368)
  %gep30.369 = getelementptr [256 x i8], ptr %invariant.gep29.3, i64 %i.am ; 2 uses
  %i.lf = getelementptr i8, ptr %gep30.369, i64 8
  store i64 %i.le, ptr %i.lf, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %.val.i4.370 = load i64, ptr %i.lg, align 1
  %i.lh = call i64 @llvm.bswap.i64(i64 %.val.i4.370)
  store i64 %i.lh, ptr %gep30.369, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %.val5.i3.1.3 = load i64, ptr %i.li, align 1
  %i.lj = call i64 @llvm.bswap.i64(i64 %.val5.i3.1.3)
  %gep30.1.3 = getelementptr [256 x i8], ptr %invariant.gep29.3, i64 %i.hq ; 2 uses
  %i.lk = getelementptr i8, ptr %gep30.1.3, i64 8
  store i64 %i.lj, ptr %i.lk, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %.val.i4.1.3 = load i64, ptr %i.ll, align 1
  %i.lm = call i64 @llvm.bswap.i64(i64 %.val.i4.1.3)
  store i64 %i.lm, ptr %gep30.1.3, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %.val5.i3.2.3 = load i64, ptr %i.ln, align 1
  %i.lo = call i64 @llvm.bswap.i64(i64 %.val5.i3.2.3)
  %gep30.2.3 = getelementptr [256 x i8], ptr %invariant.gep29.3, i64 %i.ht ; 2 uses
  %i.lp = getelementptr i8, ptr %gep30.2.3, i64 8
  store i64 %i.lo, ptr %i.lp, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %.val.i4.2.3 = load i64, ptr %i.lq, align 1
  %i.lr = call i64 @llvm.bswap.i64(i64 %.val.i4.2.3)
  store i64 %i.lr, ptr %gep30.2.3, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ld, i64 48
  %.val5.i3.3.3 = load i64, ptr %i.ls, align 1
  %i.lt = call i64 @llvm.bswap.i64(i64 %.val5.i3.3.3)
  %gep30.3.3 = getelementptr [256 x i8], ptr %invariant.gep29.3, i64 %i.hw ; 2 uses
  %i.lu = getelementptr i8, ptr %gep30.3.3, i64 8
  store i64 %i.lt, ptr %i.lu, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ld, i64 56
  %.val.i4.3.3 = load i64, ptr %i.lv, align 1
  %i.lw = call i64 @llvm.bswap.i64(i64 %.val.i4.3.3)
  store i64 %i.lw, ptr %gep30.3.3, align 8
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %.preheader.3, %bb.n
  %i.lx = add i64 %.4154.i, 64
  %i.ly = add i64 %.4147.i, 256
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.3, %.loopexit.2, %.loopexit.1, %.loopexit
  %.lcssa57 = phi i64 [ %i.ix, %.loopexit ], [ %i.jx, %.loopexit.1 ], [ %i.kx, %.loopexit.2 ], [ %i.lx, %.loopexit.3 ] ; 2 uses
  %.lcssa = phi i64 [ %i.iy, %.loopexit ], [ %i.jy, %.loopexit.1 ], [ %i.ky, %.loopexit.2 ], [ %i.ly, %.loopexit.3 ]
  %.not170.i = icmp sgt i64 %.lcssa57, %i.hm
  br i1 %.not170.i, label %bb.p, label %bb.k, !llvm.loop !23

bb.p:                                             ; preds = %bb.o
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bh, align 8
  br label %sve_ldN_r.exit

sve_ldN_r.exit:                                   ; preds = %.preheader12, %.preheader9, %.loopexit5, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bhu_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 27 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i5, %bb.e ]
  %.0.i4 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i4, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 4 uses
  %.1.i5 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = ashr i32 %i.a, 10                       ; 3 uses
  %i.ab = icmp sgt i64 %.178.i, -1
  br i1 %i.ab, label %bb.g, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ad = and i32 %i.aa, 31
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.af, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldN_r.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i64 %.1.i5, %i.h
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = trunc i64 %.178.i to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i16 %i.ah, ptr %i.ai, align 4
  %i.aj = lshr i64 %.178.i, 1
  %i.ak = trunc i64 %i.aj to i16
  store i16 %i.ak, ptr %4, align 8
  %i.al = lshr i64 %.1.i5, 1
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.an = or i64 %i.am, %2                        ; 2 uses
  %i.ao = sub i64 0, %i.an                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.al, %i.ao
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ap = trunc nuw nsw i64 %.1.i5 to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ap, ptr %i.aq, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ar = trunc i64 %i.ao to i16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.ar, ptr %i.as, align 8
  %i.at = shl i64 %i.ao, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.an, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = trunc i64 %i.at to i16
  %i.av = add i16 %i.au, -2
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.av, ptr %i.aw, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.at, i64 noundef %i.h, i32 noundef 1) ; 3 uses
  %i.ay = icmp sle i64 %i.ax, %.1.i5
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = trunc i64 %i.ax to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = lshr i64 %i.ax, 1
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = trunc nuw nsw i64 %.1.i5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.be, ptr %i.bf, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = or i32 %i.bl, %i.bi
  %.not166.i = icmp eq i32 %i.bm, 0
  br i1 %.not166.i, label %.preheader9, label %bb.m, !prof !85

.preheader9:                                      ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.bo = and i32 %i.aa, 31
  %i.bp = zext nneg i32 %i.bo to i64              ; 4 uses
  %i.bq = getelementptr inbounds nuw [256 x i8], ptr %i.bn, i64 %i.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.br = load i16, ptr %4, align 8
  %i.bs = load i16, ptr %i.ai, align 4            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8            ; 2 uses
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i25 = icmp sgt i16 %i.bs, %i.bu
  br i1 %.not167.i25, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.by = load i16, ptr %4, align 8
  %i.bz = sext i16 %i.by to i64
  %i.ca = load i16, ptr %i.ai, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.cf = icmp slt i16 %i.ce, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ch = load i16, ptr %i.cg, align 2            ; 2 uses
  %i.ci = icmp slt i16 %i.ch, 0
  %i.cj = load i16, ptr %i.cc, align 8
  %spec.select.i = select i1 %i.ci, i16 %i.cj, i16 %i.ch
  %.0149.in.i = select i1 %i.cf, i16 %spec.select.i, i16 %i.ce
  %.0149.i = sext i16 %.0149.in.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0150.i = phi i64 [ %i.cb, %bb.m ], [ %i.cw, %bb.q ] ; 2 uses
  %.0143.i = phi i64 [ %i.bz, %bb.m ], [ %i.cx, %bb.q ]
  %i.ck = ashr i64 %.0150.i, 6
  %i.cl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1151.i = phi i64 [ %.0150.i, %bb.n ], [ %i.cw, %bb.p ] ; 3 uses
  %.1144.i = phi i64 [ %.0143.i, %bb.n ], [ %i.cx, %bb.p ] ; 2 uses
  %i.cn = and i64 %.1151.i, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.co, %i.cm
  %.not172.i = icmp eq i64 %i.cp, 0
  br i1 %.not172.i, label %bb.p, label %.preheader11

.preheader11:                                     ; preds = %bb.o
  %invariant.gep = getelementptr i8, ptr %5, i64 %.1151.i
  %i.cq = add i64 %.1144.i, %2                    ; 2 uses
  %i.cr = shl i64 %i.cq, 8
  %i.cs = ashr exact i64 %i.cr, 8
  %i.ct = and i64 %i.cs, %i.cq
  %i.cu = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.ct, i32 noundef 0, i64 noundef %i.z) #26
  %i.cv = zext i8 %i.cu to i16
  store i16 %i.cv, ptr %invariant.gep, align 2
  br label %bb.p

bb.p:                                             ; preds = %.preheader11, %bb.o
  %i.cw = add i64 %.1151.i, 2                     ; 4 uses
  %i.cx = add i64 %.1144.i, 1                     ; 2 uses
  %i.cy = and i64 %i.cw, 63
  %.not173.i = icmp eq i64 %i.cy, 0
  br i1 %.not173.i, label %bb.q, label %bb.o, !llvm.loop !18

bb.q:                                             ; preds = %bb.p
  %.not174.i = icmp sgt i64 %i.cw, %.0149.i
  br i1 %.not174.i, label %.preheader10, label %bb.n, !llvm.loop !19

.preheader10:                                     ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.da = and i32 %i.aa, 31
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [256 x i8], ptr %i.cz, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dc, ptr noundef nonnull align 16 dereferenceable(1) %5, i64 noundef range(i64 -1073741824, 4294967296) %i.h, i1 noundef false) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %sve_ldN_r.exit

.lr.ph:                                           ; preds = %.preheader9
  %i.dd = sext i16 %i.bs to i64
  %i.de = sext i16 %i.br to i64
  %invariant.gep51 = getelementptr [256 x i8], ptr %i.bn, i64 %i.bp
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %.2145.i27 = phi i64 [ %i.de, %.lr.ph ], [ %i.do, %bb.u ]
  %.2152.i26 = phi i64 [ %i.dd, %.lr.ph ], [ %i.dn, %bb.u ] ; 2 uses
  %i.df = ashr i64 %.2152.i26, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.3153.i = phi i64 [ %.2152.i26, %bb.r ], [ %i.dn, %bb.t ] ; 3 uses
  %.3146.i = phi i64 [ %.2145.i27, %bb.r ], [ %i.do, %bb.t ] ; 2 uses
  %i.di = and i64 %.3153.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not171.i = icmp eq i64 %i.dk, 0
  br i1 %.not171.i, label %bb.t, label %.preheader7

.preheader7:                                      ; preds = %bb.s
  %i.dl = getelementptr inbounds i8, ptr %i.bw, i64 %.3146.i
  %.val3 = load i8, ptr %i.dl, align 1
  %i.dm = zext i8 %.val3 to i16
  %gep = getelementptr i8, ptr %invariant.gep51, i64 %.3153.i
  store i16 %i.dm, ptr %gep, align 2
  br label %bb.t

bb.t:                                             ; preds = %.preheader7, %bb.s
  %i.dn = add nsw i64 %.3153.i, 2                 ; 5 uses
  %i.do = add i64 %.3146.i, 1                     ; 2 uses
  %i.dp = icmp sle i64 %i.dn, %i.bv
  %i.dq = and i64 %i.dn, 63
  %i.dr = icmp ne i64 %i.dq, 0
  %i.ds = and i1 %i.dp, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.u, !llvm.loop !20

bb.u:                                             ; preds = %bb.t
  %.not167.i = icmp sgt i64 %i.dn, %i.bv
  br i1 %.not167.i, label %._crit_edge, label %bb.r, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.u, %.preheader9
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.du = load i16, ptr %i.dt, align 4            ; 2 uses
  %i.dv = icmp sgt i16 %i.du, -1
  br i1 %i.dv, label %.loopexit6, label %bb.v, !prof !76

.loopexit6:                                       ; preds = %._crit_edge
  %i.dw = zext nneg i16 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = sext i16 %i.dy to i64
  %i.ea = add i64 %2, %i.dw                       ; 2 uses
  %invariant.gep29 = getelementptr i8, ptr %i.bn, i64 %i.dz
  %i.eb = shl i64 %i.ea, 8
  %i.ec = ashr exact i64 %i.eb, 8
  %i.ed = and i64 %i.ec, %i.ea
  %i.ee = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.ed, i32 noundef 0, i64 noundef %i.z) #26
  %i.ef = zext i8 %i.ee to i16
  %gep30 = getelementptr [256 x i8], ptr %invariant.gep29, i64 %i.bp
  store i16 %i.ef, ptr %gep30, align 2
  br label %bb.v

bb.v:                                             ; preds = %.loopexit6, %._crit_edge
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.eh = load i16, ptr %i.eg, align 2            ; 2 uses
  %i.ei = icmp sgt i16 %i.eh, -1
  br i1 %i.ei, label %bb.w, label %sve_ldN_r.exit, !prof !76

bb.w:                                             ; preds = %bb.v
  %i.ej = zext nneg i16 %i.eh to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = sext i16 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = sext i16 %i.eo to i64
  %i.eq = load ptr, ptr %i.bj, align 8            ; 3 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  %invariant.gep52 = getelementptr [256 x i8], ptr %i.bn, i64 %i.bp ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.unr-lcssa, %bb.w
  %.4154.i = phi i64 [ %i.em, %bb.w ], [ %.lcssa59, %.unr-lcssa ] ; 6 uses
  %.4147.i = phi i64 [ %i.ej, %bb.w ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.er = ashr i64 %.4154.i, 6
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8            ; 3 uses
  %i.eu = trunc i64 %.4154.i to i6
  %i.ev = sub i6 -2, %i.eu                        ; 2 uses
  %i.ew = and i6 %i.ev, 2
  %lcmp.mod.not.not = icmp eq i6 %i.ew, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.x
  %i.ex = and i64 %.4154.i, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ey, %i.et
  %.not168.i.prol = icmp eq i64 %i.ez, 0
  br i1 %.not168.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.fa = getelementptr inbounds i8, ptr %i.eq, i64 %.4147.i
  %.val.prol = load i8, ptr %i.fa, align 1
  %i.fb = zext i8 %.val.prol to i16
  %gep53.prol = getelementptr i8, ptr %invariant.gep52, i64 %.4154.i
  store i16 %i.fb, ptr %gep53.prol, align 2
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.fc = add i64 %.4154.i, 2                     ; 2 uses
  %i.fd = add i64 %.4147.i, 1                     ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.x
  %.lcssa59.unr = phi i64 [ poison, %bb.x ], [ %i.fc, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.x ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %.5155.i.unr = phi i64 [ %.4154.i, %bb.x ], [ %i.fc, %.prol.loopexit.unr-lcssa ]
  %.5148.i.unr = phi i64 [ %.4147.i, %bb.x ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %i.fe = icmp ult i6 %i.ev, 2
  br i1 %i.fe, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.z
  %.5155.i = phi i64 [ %i.fr, %bb.z ], [ %.5155.i.unr, %.prol.loopexit ] ; 4 uses
  %.5148.i = phi i64 [ %i.fs, %bb.z ], [ %.5148.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ff = and i64 %.5155.i, 63
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fg, %i.et
  %.not168.i = icmp eq i64 %i.fh, 0
  br i1 %.not168.i, label %bb.y, label %.preheader

.preheader:                                       ; preds = %.new
  %i.fi = getelementptr inbounds i8, ptr %i.eq, i64 %.5148.i
  %.val = load i8, ptr %i.fi, align 1
  %i.fj = zext i8 %.val to i16
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %.5155.i
  store i16 %i.fj, ptr %gep53, align 2
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %.new
  %i.fk = add i64 %.5155.i, 2                     ; 2 uses
  %i.fl = and i64 %i.fk, 63
  %i.fm = shl nuw i64 1, %i.fl
  %i.fn = and i64 %i.fm, %i.et
  %.not168.i.1 = icmp eq i64 %i.fn, 0
  br i1 %.not168.i.1, label %bb.z, label %.preheader.1

.preheader.1:                                     ; preds = %bb.y
  %i.fo = getelementptr i8, ptr %i.eq, i64 %.5148.i
  %i.fp = getelementptr i8, ptr %i.fo, i64 1
  %.val.1 = load i8, ptr %i.fp, align 1
  %i.fq = zext i8 %.val.1 to i16
  %gep53.1 = getelementptr i8, ptr %invariant.gep52, i64 %i.fk
  store i16 %i.fq, ptr %gep53.1, align 2
  br label %bb.z

bb.z:                                             ; preds = %.preheader.1, %bb.y
  %i.fr = add i64 %.5155.i, 4                     ; 3 uses
  %i.fs = add i64 %.5148.i, 2                     ; 2 uses
  %i.ft = and i64 %i.fr, 63
  %.not169.i.1 = icmp eq i64 %i.ft, 0
  br i1 %.not169.i.1, label %.unr-lcssa, label %.new, !llvm.loop !22

.unr-lcssa:                                       ; preds = %bb.z, %.prol.loopexit
  %.lcssa59 = phi i64 [ %.lcssa59.unr, %.prol.loopexit ], [ %i.fr, %bb.z ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.fs, %bb.z ]
  %.not170.i = icmp sgt i64 %.lcssa59, %i.ep
  br i1 %.not170.i, label %bb.aa, label %bb.x, !llvm.loop !23

bb.aa:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  br label %sve_ldN_r.exit

sve_ldN_r.exit:                                   ; preds = %sve_cont_ldst_elements.exit.preheader, %.preheader10, %bb.v, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bsu_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 27 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i5, %bb.e ]
  %.0.i4 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i4, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 4 uses
  %.1.i5 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = ashr i32 %i.a, 10                       ; 3 uses
  %i.ab = icmp sgt i64 %.178.i, -1
  br i1 %i.ab, label %bb.g, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ad = and i32 %i.aa, 31
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.af, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldN_r.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i64 %.1.i5, %i.h
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = trunc i64 %.178.i to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i16 %i.ah, ptr %i.ai, align 4
  %i.aj = lshr i64 %.178.i, 2
  %i.ak = trunc i64 %i.aj to i16
  store i16 %i.ak, ptr %4, align 8
  %i.al = lshr i64 %.1.i5, 2
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.an = or i64 %i.am, %2                        ; 2 uses
  %i.ao = sub i64 0, %i.an                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.al, %i.ao
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ap = trunc nuw nsw i64 %.1.i5 to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ap, ptr %i.aq, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ar = trunc i64 %i.ao to i16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.ar, ptr %i.as, align 8
  %i.at = shl i64 %i.ao, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.an, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = trunc i64 %i.at to i16
  %i.av = add i16 %i.au, -4
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.av, ptr %i.aw, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.at, i64 noundef %i.h, i32 noundef 2) ; 3 uses
  %i.ay = icmp sle i64 %i.ax, %.1.i5
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = trunc i64 %i.ax to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = lshr i64 %i.ax, 2
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = trunc nuw nsw i64 %.1.i5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.be, ptr %i.bf, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = or i32 %i.bl, %i.bi
  %.not166.i = icmp eq i32 %i.bm, 0
  br i1 %.not166.i, label %.preheader9, label %bb.m, !prof !85

.preheader9:                                      ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.bo = and i32 %i.aa, 31
  %i.bp = zext nneg i32 %i.bo to i64              ; 4 uses
  %i.bq = getelementptr inbounds nuw [256 x i8], ptr %i.bn, i64 %i.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.br = load i16, ptr %4, align 8
  %i.bs = load i16, ptr %i.ai, align 4            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8            ; 2 uses
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i25 = icmp sgt i16 %i.bs, %i.bu
  br i1 %.not167.i25, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.by = load i16, ptr %4, align 8
  %i.bz = sext i16 %i.by to i64
  %i.ca = load i16, ptr %i.ai, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.cf = icmp slt i16 %i.ce, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ch = load i16, ptr %i.cg, align 2            ; 2 uses
  %i.ci = icmp slt i16 %i.ch, 0
  %i.cj = load i16, ptr %i.cc, align 8
  %spec.select.i = select i1 %i.ci, i16 %i.cj, i16 %i.ch
  %.0149.in.i = select i1 %i.cf, i16 %spec.select.i, i16 %i.ce
  %.0149.i = sext i16 %.0149.in.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0150.i = phi i64 [ %i.cb, %bb.m ], [ %i.cw, %bb.q ] ; 2 uses
  %.0143.i = phi i64 [ %i.bz, %bb.m ], [ %i.cx, %bb.q ]
  %i.ck = ashr i64 %.0150.i, 6
  %i.cl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1151.i = phi i64 [ %.0150.i, %bb.n ], [ %i.cw, %bb.p ] ; 3 uses
  %.1144.i = phi i64 [ %.0143.i, %bb.n ], [ %i.cx, %bb.p ] ; 2 uses
  %i.cn = and i64 %.1151.i, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.co, %i.cm
  %.not172.i = icmp eq i64 %i.cp, 0
  br i1 %.not172.i, label %bb.p, label %.preheader11

.preheader11:                                     ; preds = %bb.o
  %invariant.gep = getelementptr i8, ptr %5, i64 %.1151.i
  %i.cq = add i64 %.1144.i, %2                    ; 2 uses
  %i.cr = shl i64 %i.cq, 8
  %i.cs = ashr exact i64 %i.cr, 8
  %i.ct = and i64 %i.cs, %i.cq
  %i.cu = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.ct, i32 noundef 0, i64 noundef %i.z) #26
  %i.cv = zext i8 %i.cu to i32
  store i32 %i.cv, ptr %invariant.gep, align 4
  br label %bb.p

bb.p:                                             ; preds = %.preheader11, %bb.o
  %i.cw = add i64 %.1151.i, 4                     ; 4 uses
  %i.cx = add i64 %.1144.i, 1                     ; 2 uses
  %i.cy = and i64 %i.cw, 63
  %.not173.i = icmp eq i64 %i.cy, 0
  br i1 %.not173.i, label %bb.q, label %bb.o, !llvm.loop !18

bb.q:                                             ; preds = %bb.p
  %.not174.i = icmp sgt i64 %i.cw, %.0149.i
  br i1 %.not174.i, label %.preheader10, label %bb.n, !llvm.loop !19

.preheader10:                                     ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.da = and i32 %i.aa, 31
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [256 x i8], ptr %i.cz, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dc, ptr noundef nonnull align 16 dereferenceable(1) %5, i64 noundef range(i64 -1073741824, 4294967296) %i.h, i1 noundef false) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %sve_ldN_r.exit

.lr.ph:                                           ; preds = %.preheader9
  %i.dd = sext i16 %i.bs to i64
  %i.de = sext i16 %i.br to i64
  %invariant.gep51 = getelementptr [256 x i8], ptr %i.bn, i64 %i.bp
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %.2145.i27 = phi i64 [ %i.de, %.lr.ph ], [ %i.do, %bb.u ]
  %.2152.i26 = phi i64 [ %i.dd, %.lr.ph ], [ %i.dn, %bb.u ] ; 2 uses
  %i.df = ashr i64 %.2152.i26, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.3153.i = phi i64 [ %.2152.i26, %bb.r ], [ %i.dn, %bb.t ] ; 3 uses
  %.3146.i = phi i64 [ %.2145.i27, %bb.r ], [ %i.do, %bb.t ] ; 2 uses
  %i.di = and i64 %.3153.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not171.i = icmp eq i64 %i.dk, 0
  br i1 %.not171.i, label %bb.t, label %.preheader7

.preheader7:                                      ; preds = %bb.s
  %i.dl = getelementptr inbounds i8, ptr %i.bw, i64 %.3146.i
  %.val3 = load i8, ptr %i.dl, align 1
  %i.dm = zext i8 %.val3 to i32
  %gep = getelementptr i8, ptr %invariant.gep51, i64 %.3153.i
  store i32 %i.dm, ptr %gep, align 4
  br label %bb.t

bb.t:                                             ; preds = %.preheader7, %bb.s
  %i.dn = add nsw i64 %.3153.i, 4                 ; 5 uses
  %i.do = add i64 %.3146.i, 1                     ; 2 uses
  %i.dp = icmp sle i64 %i.dn, %i.bv
  %i.dq = and i64 %i.dn, 63
  %i.dr = icmp ne i64 %i.dq, 0
  %i.ds = and i1 %i.dp, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.u, !llvm.loop !20

bb.u:                                             ; preds = %bb.t
  %.not167.i = icmp sgt i64 %i.dn, %i.bv
  br i1 %.not167.i, label %._crit_edge, label %bb.r, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.u, %.preheader9
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.du = load i16, ptr %i.dt, align 4            ; 2 uses
  %i.dv = icmp sgt i16 %i.du, -1
  br i1 %i.dv, label %.loopexit6, label %bb.v, !prof !76

.loopexit6:                                       ; preds = %._crit_edge
  %i.dw = zext nneg i16 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = sext i16 %i.dy to i64
  %i.ea = add i64 %2, %i.dw                       ; 2 uses
  %invariant.gep29 = getelementptr i8, ptr %i.bn, i64 %i.dz
  %i.eb = shl i64 %i.ea, 8
  %i.ec = ashr exact i64 %i.eb, 8
  %i.ed = and i64 %i.ec, %i.ea
  %i.ee = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.ed, i32 noundef 0, i64 noundef %i.z) #26
  %i.ef = zext i8 %i.ee to i32
  %gep30 = getelementptr [256 x i8], ptr %invariant.gep29, i64 %i.bp
  store i32 %i.ef, ptr %gep30, align 4
  br label %bb.v

bb.v:                                             ; preds = %.loopexit6, %._crit_edge
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.eh = load i16, ptr %i.eg, align 2            ; 2 uses
  %i.ei = icmp sgt i16 %i.eh, -1
  br i1 %i.ei, label %bb.w, label %sve_ldN_r.exit, !prof !76

bb.w:                                             ; preds = %bb.v
  %i.ej = zext nneg i16 %i.eh to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = sext i16 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = sext i16 %i.eo to i64
  %i.eq = load ptr, ptr %i.bj, align 8            ; 3 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  %invariant.gep52 = getelementptr [256 x i8], ptr %i.bn, i64 %i.bp ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.unr-lcssa, %bb.w
  %.4154.i = phi i64 [ %i.em, %bb.w ], [ %.lcssa59, %.unr-lcssa ] ; 6 uses
  %.4147.i = phi i64 [ %i.ej, %bb.w ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.er = ashr i64 %.4154.i, 6
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8            ; 3 uses
  %i.eu = trunc i64 %.4154.i to i6
  %i.ev = sub i6 -4, %i.eu                        ; 2 uses
  %i.ew = and i6 %i.ev, 4
  %lcmp.mod.not.not = icmp eq i6 %i.ew, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.x
  %i.ex = and i64 %.4154.i, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ey, %i.et
  %.not168.i.prol = icmp eq i64 %i.ez, 0
  br i1 %.not168.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.fa = getelementptr inbounds i8, ptr %i.eq, i64 %.4147.i
  %.val.prol = load i8, ptr %i.fa, align 1
  %i.fb = zext i8 %.val.prol to i32
  %gep53.prol = getelementptr i8, ptr %invariant.gep52, i64 %.4154.i
  store i32 %i.fb, ptr %gep53.prol, align 4
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.fc = add i64 %.4154.i, 4                     ; 2 uses
  %i.fd = add i64 %.4147.i, 1                     ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.x
  %.lcssa59.unr = phi i64 [ poison, %bb.x ], [ %i.fc, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.x ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %.5155.i.unr = phi i64 [ %.4154.i, %bb.x ], [ %i.fc, %.prol.loopexit.unr-lcssa ]
  %.5148.i.unr = phi i64 [ %.4147.i, %bb.x ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %i.fe = icmp ult i6 %i.ev, 4
  br i1 %i.fe, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.z
  %.5155.i = phi i64 [ %i.fr, %bb.z ], [ %.5155.i.unr, %.prol.loopexit ] ; 4 uses
  %.5148.i = phi i64 [ %i.fs, %bb.z ], [ %.5148.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ff = and i64 %.5155.i, 63
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fg, %i.et
  %.not168.i = icmp eq i64 %i.fh, 0
  br i1 %.not168.i, label %bb.y, label %.preheader

.preheader:                                       ; preds = %.new
  %i.fi = getelementptr inbounds i8, ptr %i.eq, i64 %.5148.i
  %.val = load i8, ptr %i.fi, align 1
  %i.fj = zext i8 %.val to i32
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %.5155.i
  store i32 %i.fj, ptr %gep53, align 4
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %.new
  %i.fk = add i64 %.5155.i, 4                     ; 2 uses
  %i.fl = and i64 %i.fk, 63
  %i.fm = shl nuw i64 1, %i.fl
  %i.fn = and i64 %i.fm, %i.et
  %.not168.i.1 = icmp eq i64 %i.fn, 0
  br i1 %.not168.i.1, label %bb.z, label %.preheader.1

.preheader.1:                                     ; preds = %bb.y
  %i.fo = getelementptr i8, ptr %i.eq, i64 %.5148.i
  %i.fp = getelementptr i8, ptr %i.fo, i64 1
  %.val.1 = load i8, ptr %i.fp, align 1
  %i.fq = zext i8 %.val.1 to i32
  %gep53.1 = getelementptr i8, ptr %invariant.gep52, i64 %i.fk
  store i32 %i.fq, ptr %gep53.1, align 4
  br label %bb.z

bb.z:                                             ; preds = %.preheader.1, %bb.y
  %i.fr = add i64 %.5155.i, 8                     ; 3 uses
  %i.fs = add i64 %.5148.i, 2                     ; 2 uses
  %i.ft = and i64 %i.fr, 63
  %.not169.i.1 = icmp eq i64 %i.ft, 0
  br i1 %.not169.i.1, label %.unr-lcssa, label %.new, !llvm.loop !22

.unr-lcssa:                                       ; preds = %bb.z, %.prol.loopexit
  %.lcssa59 = phi i64 [ %.lcssa59.unr, %.prol.loopexit ], [ %i.fr, %bb.z ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.fs, %bb.z ]
  %.not170.i = icmp sgt i64 %.lcssa59, %i.ep
  br i1 %.not170.i, label %bb.aa, label %bb.x, !llvm.loop !23

bb.aa:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  br label %sve_ldN_r.exit

sve_ldN_r.exit:                                   ; preds = %sve_cont_ldst_elements.exit.preheader, %.preheader10, %bb.v, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bdu_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 27 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i5, %bb.e ]
  %.0.i4 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i4, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 4 uses
  %.1.i5 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = ashr i32 %i.a, 10                       ; 3 uses
  %i.ab = icmp sgt i64 %.178.i, -1
  br i1 %i.ab, label %bb.g, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ad = and i32 %i.aa, 31
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.af, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldN_r.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i64 %.1.i5, %i.h
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = trunc i64 %.178.i to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i16 %i.ah, ptr %i.ai, align 4
  %i.aj = lshr i64 %.178.i, 3
  %i.ak = trunc i64 %i.aj to i16
  store i16 %i.ak, ptr %4, align 8
  %i.al = lshr i64 %.1.i5, 3
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.an = or i64 %i.am, %2                        ; 2 uses
  %i.ao = sub i64 0, %i.an                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.al, %i.ao
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ap = trunc nuw nsw i64 %.1.i5 to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ap, ptr %i.aq, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ar = trunc i64 %i.ao to i16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.ar, ptr %i.as, align 8
  %i.at = shl i64 %i.ao, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.an, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = trunc i64 %i.at to i16
  %i.av = add i16 %i.au, -8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.av, ptr %i.aw, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.at, i64 noundef %i.h, i32 noundef 3) ; 3 uses
  %i.ay = icmp sle i64 %i.ax, %.1.i5
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = trunc i64 %i.ax to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = lshr i64 %i.ax, 3
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = trunc nuw nsw i64 %.1.i5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.be, ptr %i.bf, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = or i32 %i.bl, %i.bi
  %.not166.i = icmp eq i32 %i.bm, 0
  br i1 %.not166.i, label %.preheader9, label %bb.m, !prof !85

.preheader9:                                      ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.bo = and i32 %i.aa, 31
  %i.bp = zext nneg i32 %i.bo to i64              ; 4 uses
  %i.bq = getelementptr inbounds nuw [256 x i8], ptr %i.bn, i64 %i.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.br = load i16, ptr %4, align 8
  %i.bs = load i16, ptr %i.ai, align 4            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8            ; 2 uses
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i25 = icmp sgt i16 %i.bs, %i.bu
  br i1 %.not167.i25, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.by = load i16, ptr %4, align 8
  %i.bz = sext i16 %i.by to i64
  %i.ca = load i16, ptr %i.ai, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.cf = icmp slt i16 %i.ce, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ch = load i16, ptr %i.cg, align 2            ; 2 uses
  %i.ci = icmp slt i16 %i.ch, 0
  %i.cj = load i16, ptr %i.cc, align 8
  %spec.select.i = select i1 %i.ci, i16 %i.cj, i16 %i.ch
  %.0149.in.i = select i1 %i.cf, i16 %spec.select.i, i16 %i.ce
  %.0149.i = sext i16 %.0149.in.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0150.i = phi i64 [ %i.cb, %bb.m ], [ %i.cw, %bb.q ] ; 2 uses
  %.0143.i = phi i64 [ %i.bz, %bb.m ], [ %i.cx, %bb.q ]
  %i.ck = ashr i64 %.0150.i, 6
  %i.cl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1151.i = phi i64 [ %.0150.i, %bb.n ], [ %i.cw, %bb.p ] ; 3 uses
  %.1144.i = phi i64 [ %.0143.i, %bb.n ], [ %i.cx, %bb.p ] ; 2 uses
  %i.cn = and i64 %.1151.i, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.co, %i.cm
  %.not172.i = icmp eq i64 %i.cp, 0
  br i1 %.not172.i, label %bb.p, label %.preheader11

.preheader11:                                     ; preds = %bb.o
  %invariant.gep = getelementptr i8, ptr %5, i64 %.1151.i
  %i.cq = add i64 %.1144.i, %2                    ; 2 uses
  %i.cr = shl i64 %i.cq, 8
  %i.cs = ashr exact i64 %i.cr, 8
  %i.ct = and i64 %i.cs, %i.cq
  %i.cu = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.ct, i32 noundef 0, i64 noundef %i.z) #26
  %i.cv = zext i8 %i.cu to i64
  store i64 %i.cv, ptr %invariant.gep, align 8
  br label %bb.p

bb.p:                                             ; preds = %.preheader11, %bb.o
  %i.cw = add i64 %.1151.i, 8                     ; 4 uses
  %i.cx = add i64 %.1144.i, 1                     ; 2 uses
  %i.cy = and i64 %i.cw, 63
  %.not173.i = icmp eq i64 %i.cy, 0
  br i1 %.not173.i, label %bb.q, label %bb.o, !llvm.loop !18

bb.q:                                             ; preds = %bb.p
  %.not174.i = icmp sgt i64 %i.cw, %.0149.i
  br i1 %.not174.i, label %.preheader10, label %bb.n, !llvm.loop !19

.preheader10:                                     ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.da = and i32 %i.aa, 31
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [256 x i8], ptr %i.cz, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dc, ptr noundef nonnull align 16 dereferenceable(1) %5, i64 noundef range(i64 -1073741824, 4294967296) %i.h, i1 noundef false) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %sve_ldN_r.exit

.lr.ph:                                           ; preds = %.preheader9
  %i.dd = sext i16 %i.bs to i64
  %i.de = sext i16 %i.br to i64
  %invariant.gep51 = getelementptr [256 x i8], ptr %i.bn, i64 %i.bp
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %.2145.i27 = phi i64 [ %i.de, %.lr.ph ], [ %i.do, %bb.u ]
  %.2152.i26 = phi i64 [ %i.dd, %.lr.ph ], [ %i.dn, %bb.u ] ; 2 uses
  %i.df = ashr i64 %.2152.i26, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.3153.i = phi i64 [ %.2152.i26, %bb.r ], [ %i.dn, %bb.t ] ; 3 uses
  %.3146.i = phi i64 [ %.2145.i27, %bb.r ], [ %i.do, %bb.t ] ; 2 uses
  %i.di = and i64 %.3153.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not171.i = icmp eq i64 %i.dk, 0
  br i1 %.not171.i, label %bb.t, label %.preheader7

.preheader7:                                      ; preds = %bb.s
  %i.dl = getelementptr inbounds i8, ptr %i.bw, i64 %.3146.i
  %.val3 = load i8, ptr %i.dl, align 1
  %i.dm = zext i8 %.val3 to i64
  %gep = getelementptr i8, ptr %invariant.gep51, i64 %.3153.i
  store i64 %i.dm, ptr %gep, align 8
  br label %bb.t

bb.t:                                             ; preds = %.preheader7, %bb.s
  %i.dn = add nsw i64 %.3153.i, 8                 ; 5 uses
  %i.do = add i64 %.3146.i, 1                     ; 2 uses
  %i.dp = icmp sle i64 %i.dn, %i.bv
  %i.dq = and i64 %i.dn, 63
  %i.dr = icmp ne i64 %i.dq, 0
  %i.ds = and i1 %i.dp, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.u, !llvm.loop !20

bb.u:                                             ; preds = %bb.t
  %.not167.i = icmp sgt i64 %i.dn, %i.bv
  br i1 %.not167.i, label %._crit_edge, label %bb.r, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.u, %.preheader9
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.du = load i16, ptr %i.dt, align 4            ; 2 uses
  %i.dv = icmp sgt i16 %i.du, -1
  br i1 %i.dv, label %.loopexit6, label %bb.v, !prof !76
end_hunk_1
begin_hunk_2_@helper_sve_ld1bdu_r:bb.a
  %i.fj = and i64 %i.fh, 63
  %.not169.i.1 = icmp eq i64 %i.fj, 0
  br i1 %.not169.i.1, label %bb.an, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fk = and i64 %i.fh, 63
  %i.fl = shl nuw i64 1, %i.fk
  %i.fm = and i64 %i.fl, %i.et
  %.not168.i.2 = icmp eq i64 %i.fm, 0
  br i1 %.not168.i.2, label %bb.ac, label %.preheader.2

.preheader.2:                                     ; preds = %bb.ab
  %i.fn = getelementptr inbounds i8, ptr %i.eq, i64 %i.fi
  %.val.2 = load i8, ptr %i.fn, align 1
  %i.fo = zext i8 %.val.2 to i64
  %gep53.2 = getelementptr i8, ptr %invariant.gep52, i64 %i.fh
  store i64 %i.fo, ptr %gep53.2, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader.2, %bb.ab
  %i.fp = add i64 %.4154.i, 24                    ; 4 uses
  %i.fq = add i64 %.4147.i, 3                     ; 2 uses
  %i.fr = and i64 %i.fp, 63
  %.not169.i.2 = icmp eq i64 %i.fr, 0
  br i1 %.not169.i.2, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = and i64 %i.fp, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = and i64 %i.ft, %i.et
  %.not168.i.3 = icmp eq i64 %i.fu, 0
  br i1 %.not168.i.3, label %bb.ae, label %.preheader.3

.preheader.3:                                     ; preds = %bb.ad
  %i.fv = getelementptr inbounds i8, ptr %i.eq, i64 %i.fq
  %.val.3 = load i8, ptr %i.fv, align 1
  %i.fw = zext i8 %.val.3 to i64
  %gep53.3 = getelementptr i8, ptr %invariant.gep52, i64 %i.fp
  store i64 %i.fw, ptr %gep53.3, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader.3, %bb.ad
  %i.fx = add i64 %.4154.i, 32                    ; 4 uses
  %i.fy = add i64 %.4147.i, 4                     ; 2 uses
  %i.fz = and i64 %i.fx, 63
  %.not169.i.3 = icmp eq i64 %i.fz, 0
  br i1 %.not169.i.3, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ga = and i64 %i.fx, 63
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = and i64 %i.gb, %i.et
  %.not168.i.4 = icmp eq i64 %i.gc, 0
  br i1 %.not168.i.4, label %bb.ag, label %.preheader.4

.preheader.4:                                     ; preds = %bb.af
  %i.gd = getelementptr inbounds i8, ptr %i.eq, i64 %i.fy
  %.val.4 = load i8, ptr %i.gd, align 1
  %i.ge = zext i8 %.val.4 to i64
  %gep53.4 = getelementptr i8, ptr %invariant.gep52, i64 %i.fx
  store i64 %i.ge, ptr %gep53.4, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader.4, %bb.af
  %i.gf = add i64 %.4154.i, 40                    ; 4 uses
  %i.gg = add i64 %.4147.i, 5                     ; 2 uses
  %i.gh = and i64 %i.gf, 63
  %.not169.i.4 = icmp eq i64 %i.gh, 0
  br i1 %.not169.i.4, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = and i64 %i.gf, 63
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = and i64 %i.gj, %i.et
  %.not168.i.5 = icmp eq i64 %i.gk, 0
  br i1 %.not168.i.5, label %bb.ai, label %.preheader.5

.preheader.5:                                     ; preds = %bb.ah
  %i.gl = getelementptr inbounds i8, ptr %i.eq, i64 %i.gg
  %.val.5 = load i8, ptr %i.gl, align 1
  %i.gm = zext i8 %.val.5 to i64
  %gep53.5 = getelementptr i8, ptr %invariant.gep52, i64 %i.gf
  store i64 %i.gm, ptr %gep53.5, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader.5, %bb.ah
  %i.gn = add i64 %.4154.i, 48                    ; 4 uses
  %i.go = add i64 %.4147.i, 6                     ; 2 uses
  %i.gp = and i64 %i.gn, 63
  %.not169.i.5 = icmp eq i64 %i.gp, 0
  br i1 %.not169.i.5, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gq = and i64 %i.gn, 63
  %i.gr = shl nuw i64 1, %i.gq
  %i.gs = and i64 %i.gr, %i.et
  %.not168.i.6 = icmp eq i64 %i.gs, 0
  br i1 %.not168.i.6, label %bb.ak, label %.preheader.6

.preheader.6:                                     ; preds = %bb.aj
  %i.gt = getelementptr inbounds i8, ptr %i.eq, i64 %i.go
  %.val.6 = load i8, ptr %i.gt, align 1
  %i.gu = zext i8 %.val.6 to i64
  %gep53.6 = getelementptr i8, ptr %invariant.gep52, i64 %i.gn
  store i64 %i.gu, ptr %gep53.6, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader.6, %bb.aj
  %i.gv = add i64 %.4154.i, 56                    ; 4 uses
  %i.gw = add i64 %.4147.i, 7                     ; 2 uses
  %i.gx = and i64 %i.gv, 63
  %.not169.i.6 = icmp eq i64 %i.gx, 0
  br i1 %.not169.i.6, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gy = and i64 %i.gv, 63
  %i.gz = shl nuw i64 1, %i.gy
  %i.ha = and i64 %i.gz, %i.et
  %.not168.i.7 = icmp eq i64 %i.ha, 0
  br i1 %.not168.i.7, label %bb.am, label %.preheader.7

.preheader.7:                                     ; preds = %bb.al
  %i.hb = getelementptr inbounds i8, ptr %i.eq, i64 %i.gw
  %.val.7 = load i8, ptr %i.hb, align 1
  %i.hc = zext i8 %.val.7 to i64
  %gep53.7 = getelementptr i8, ptr %invariant.gep52, i64 %i.gv
  store i64 %i.hc, ptr %gep53.7, align 8
  br label %bb.am

bb.am:                                            ; preds = %.preheader.7, %bb.al
  %i.hd = add i64 %.4154.i, 64
  %i.he = add i64 %.4147.i, 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y
  %.lcssa59 = phi i64 [ %i.ez, %bb.y ], [ %i.fh, %bb.aa ], [ %i.fp, %bb.ac ], [ %i.fx, %bb.ae ], [ %i.gf, %bb.ag ], [ %i.gn, %bb.ai ], [ %i.gv, %bb.ak ], [ %i.hd, %bb.am ] ; 2 uses
  %.lcssa = phi i64 [ %i.fa, %bb.y ], [ %i.fi, %bb.aa ], [ %i.fq, %bb.ac ], [ %i.fy, %bb.ae ], [ %i.gg, %bb.ag ], [ %i.go, %bb.ai ], [ %i.gw, %bb.ak ], [ %i.he, %bb.am ]
  %.not170.i = icmp sgt i64 %.lcssa59, %i.ep
  br i1 %.not170.i, label %bb.ao, label %bb.x, !llvm.loop !23

bb.ao:                                            ; preds = %bb.an
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  br label %sve_ldN_r.exit

sve_ldN_r.exit:                                   ; preds = %sve_cont_ldst_elements.exit.preheader, %.preheader10, %bb.v, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bhs_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 27 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i5, %bb.e ]
  %.0.i4 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i4, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 4 uses
  %.1.i5 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = ashr i32 %i.a, 10                       ; 3 uses
  %i.ab = icmp sgt i64 %.178.i, -1
  br i1 %i.ab, label %bb.g, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ad = and i32 %i.aa, 31
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.af, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldN_r.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i64 %.1.i5, %i.h
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = trunc i64 %.178.i to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i16 %i.ah, ptr %i.ai, align 4
  %i.aj = lshr i64 %.178.i, 1
  %i.ak = trunc i64 %i.aj to i16
  store i16 %i.ak, ptr %4, align 8
  %i.al = lshr i64 %.1.i5, 1
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.an = or i64 %i.am, %2                        ; 2 uses
  %i.ao = sub i64 0, %i.an                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.al, %i.ao
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ap = trunc nuw nsw i64 %.1.i5 to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ap, ptr %i.aq, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ar = trunc i64 %i.ao to i16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.ar, ptr %i.as, align 8
  %i.at = shl i64 %i.ao, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.an, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = trunc i64 %i.at to i16
  %i.av = add i16 %i.au, -2
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.av, ptr %i.aw, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.at, i64 noundef %i.h, i32 noundef 1) ; 3 uses
  %i.ay = icmp sle i64 %i.ax, %.1.i5
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = trunc i64 %i.ax to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = lshr i64 %i.ax, 1
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = trunc nuw nsw i64 %.1.i5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.be, ptr %i.bf, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = or i32 %i.bl, %i.bi
  %.not166.i = icmp eq i32 %i.bm, 0
  br i1 %.not166.i, label %.preheader9, label %bb.m, !prof !85

.preheader9:                                      ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.bo = and i32 %i.aa, 31
  %i.bp = zext nneg i32 %i.bo to i64              ; 4 uses
  %i.bq = getelementptr inbounds nuw [256 x i8], ptr %i.bn, i64 %i.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.br = load i16, ptr %4, align 8
  %i.bs = load i16, ptr %i.ai, align 4            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8            ; 2 uses
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i25 = icmp sgt i16 %i.bs, %i.bu
  br i1 %.not167.i25, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.by = load i16, ptr %4, align 8
  %i.bz = sext i16 %i.by to i64
  %i.ca = load i16, ptr %i.ai, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.cf = icmp slt i16 %i.ce, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ch = load i16, ptr %i.cg, align 2            ; 2 uses
  %i.ci = icmp slt i16 %i.ch, 0
  %i.cj = load i16, ptr %i.cc, align 8
  %spec.select.i = select i1 %i.ci, i16 %i.cj, i16 %i.ch
  %.0149.in.i = select i1 %i.cf, i16 %spec.select.i, i16 %i.ce
  %.0149.i = sext i16 %.0149.in.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0150.i = phi i64 [ %i.cb, %bb.m ], [ %i.cw, %bb.q ] ; 2 uses
  %.0143.i = phi i64 [ %i.bz, %bb.m ], [ %i.cx, %bb.q ]
  %i.ck = ashr i64 %.0150.i, 6
  %i.cl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1151.i = phi i64 [ %.0150.i, %bb.n ], [ %i.cw, %bb.p ] ; 3 uses
  %.1144.i = phi i64 [ %.0143.i, %bb.n ], [ %i.cx, %bb.p ] ; 2 uses
  %i.cn = and i64 %.1151.i, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.co, %i.cm
  %.not172.i = icmp eq i64 %i.cp, 0
  br i1 %.not172.i, label %bb.p, label %.preheader11

.preheader11:                                     ; preds = %bb.o
  %invariant.gep = getelementptr i8, ptr %5, i64 %.1151.i
  %i.cq = add i64 %.1144.i, %2                    ; 2 uses
  %i.cr = shl i64 %i.cq, 8
  %i.cs = ashr exact i64 %i.cr, 8
  %i.ct = and i64 %i.cs, %i.cq
  %i.cu = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.ct, i32 noundef 0, i64 noundef %i.z) #26
  %i.cv = sext i8 %i.cu to i16
  store i16 %i.cv, ptr %invariant.gep, align 2
  br label %bb.p

bb.p:                                             ; preds = %.preheader11, %bb.o
  %i.cw = add i64 %.1151.i, 2                     ; 4 uses
  %i.cx = add i64 %.1144.i, 1                     ; 2 uses
  %i.cy = and i64 %i.cw, 63
  %.not173.i = icmp eq i64 %i.cy, 0
  br i1 %.not173.i, label %bb.q, label %bb.o, !llvm.loop !18

bb.q:                                             ; preds = %bb.p
  %.not174.i = icmp sgt i64 %i.cw, %.0149.i
  br i1 %.not174.i, label %.preheader10, label %bb.n, !llvm.loop !19

.preheader10:                                     ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.da = and i32 %i.aa, 31
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [256 x i8], ptr %i.cz, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dc, ptr noundef nonnull align 16 dereferenceable(1) %5, i64 noundef range(i64 -1073741824, 4294967296) %i.h, i1 noundef false) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %sve_ldN_r.exit

.lr.ph:                                           ; preds = %.preheader9
  %i.dd = sext i16 %i.bs to i64
  %i.de = sext i16 %i.br to i64
  %invariant.gep51 = getelementptr [256 x i8], ptr %i.bn, i64 %i.bp
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %.2145.i27 = phi i64 [ %i.de, %.lr.ph ], [ %i.do, %bb.u ]
  %.2152.i26 = phi i64 [ %i.dd, %.lr.ph ], [ %i.dn, %bb.u ] ; 2 uses
  %i.df = ashr i64 %.2152.i26, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.3153.i = phi i64 [ %.2152.i26, %bb.r ], [ %i.dn, %bb.t ] ; 3 uses
  %.3146.i = phi i64 [ %.2145.i27, %bb.r ], [ %i.do, %bb.t ] ; 2 uses
  %i.di = and i64 %.3153.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not171.i = icmp eq i64 %i.dk, 0
  br i1 %.not171.i, label %bb.t, label %.preheader7

.preheader7:                                      ; preds = %bb.s
  %i.dl = getelementptr inbounds i8, ptr %i.bw, i64 %.3146.i
  %.val3 = load i8, ptr %i.dl, align 1
  %i.dm = sext i8 %.val3 to i16
  %gep = getelementptr i8, ptr %invariant.gep51, i64 %.3153.i
  store i16 %i.dm, ptr %gep, align 2
  br label %bb.t

bb.t:                                             ; preds = %.preheader7, %bb.s
  %i.dn = add nsw i64 %.3153.i, 2                 ; 5 uses
  %i.do = add i64 %.3146.i, 1                     ; 2 uses
  %i.dp = icmp sle i64 %i.dn, %i.bv
  %i.dq = and i64 %i.dn, 63
  %i.dr = icmp ne i64 %i.dq, 0
  %i.ds = and i1 %i.dp, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.u, !llvm.loop !20

bb.u:                                             ; preds = %bb.t
  %.not167.i = icmp sgt i64 %i.dn, %i.bv
  br i1 %.not167.i, label %._crit_edge, label %bb.r, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.u, %.preheader9
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.du = load i16, ptr %i.dt, align 4            ; 2 uses
  %i.dv = icmp sgt i16 %i.du, -1
  br i1 %i.dv, label %.loopexit6, label %bb.v, !prof !76

.loopexit6:                                       ; preds = %._crit_edge
  %i.dw = zext nneg i16 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = sext i16 %i.dy to i64
  %i.ea = add i64 %2, %i.dw                       ; 2 uses
  %invariant.gep29 = getelementptr i8, ptr %i.bn, i64 %i.dz
  %i.eb = shl i64 %i.ea, 8
  %i.ec = ashr exact i64 %i.eb, 8
  %i.ed = and i64 %i.ec, %i.ea
  %i.ee = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.ed, i32 noundef 0, i64 noundef %i.z) #26
  %i.ef = sext i8 %i.ee to i16
  %gep30 = getelementptr [256 x i8], ptr %invariant.gep29, i64 %i.bp
  store i16 %i.ef, ptr %gep30, align 2
  br label %bb.v

bb.v:                                             ; preds = %.loopexit6, %._crit_edge
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.eh = load i16, ptr %i.eg, align 2            ; 2 uses
  %i.ei = icmp sgt i16 %i.eh, -1
  br i1 %i.ei, label %bb.w, label %sve_ldN_r.exit, !prof !76

bb.w:                                             ; preds = %bb.v
  %i.ej = zext nneg i16 %i.eh to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = sext i16 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = sext i16 %i.eo to i64
  %i.eq = load ptr, ptr %i.bj, align 8            ; 3 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  %invariant.gep52 = getelementptr [256 x i8], ptr %i.bn, i64 %i.bp ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.unr-lcssa, %bb.w
  %.4154.i = phi i64 [ %i.em, %bb.w ], [ %.lcssa59, %.unr-lcssa ] ; 6 uses
  %.4147.i = phi i64 [ %i.ej, %bb.w ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.er = ashr i64 %.4154.i, 6
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8            ; 3 uses
  %i.eu = trunc i64 %.4154.i to i6
  %i.ev = sub i6 -2, %i.eu                        ; 2 uses
  %i.ew = and i6 %i.ev, 2
  %lcmp.mod.not.not = icmp eq i6 %i.ew, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.x
  %i.ex = and i64 %.4154.i, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ey, %i.et
  %.not168.i.prol = icmp eq i64 %i.ez, 0
  br i1 %.not168.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.fa = getelementptr inbounds i8, ptr %i.eq, i64 %.4147.i
  %.val.prol = load i8, ptr %i.fa, align 1
  %i.fb = sext i8 %.val.prol to i16
  %gep53.prol = getelementptr i8, ptr %invariant.gep52, i64 %.4154.i
  store i16 %i.fb, ptr %gep53.prol, align 2
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.fc = add i64 %.4154.i, 2                     ; 2 uses
  %i.fd = add i64 %.4147.i, 1                     ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.x
  %.lcssa59.unr = phi i64 [ poison, %bb.x ], [ %i.fc, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.x ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %.5155.i.unr = phi i64 [ %.4154.i, %bb.x ], [ %i.fc, %.prol.loopexit.unr-lcssa ]
  %.5148.i.unr = phi i64 [ %.4147.i, %bb.x ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %i.fe = icmp ult i6 %i.ev, 2
  br i1 %i.fe, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.z
  %.5155.i = phi i64 [ %i.fr, %bb.z ], [ %.5155.i.unr, %.prol.loopexit ] ; 4 uses
  %.5148.i = phi i64 [ %i.fs, %bb.z ], [ %.5148.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ff = and i64 %.5155.i, 63
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fg, %i.et
  %.not168.i = icmp eq i64 %i.fh, 0
  br i1 %.not168.i, label %bb.y, label %.preheader

.preheader:                                       ; preds = %.new
  %i.fi = getelementptr inbounds i8, ptr %i.eq, i64 %.5148.i
  %.val = load i8, ptr %i.fi, align 1
  %i.fj = sext i8 %.val to i16
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %.5155.i
  store i16 %i.fj, ptr %gep53, align 2
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %.new
  %i.fk = add i64 %.5155.i, 2                     ; 2 uses
  %i.fl = and i64 %i.fk, 63
  %i.fm = shl nuw i64 1, %i.fl
  %i.fn = and i64 %i.fm, %i.et
  %.not168.i.1 = icmp eq i64 %i.fn, 0
  br i1 %.not168.i.1, label %bb.z, label %.preheader.1

.preheader.1:                                     ; preds = %bb.y
  %i.fo = getelementptr i8, ptr %i.eq, i64 %.5148.i
  %i.fp = getelementptr i8, ptr %i.fo, i64 1
  %.val.1 = load i8, ptr %i.fp, align 1
  %i.fq = sext i8 %.val.1 to i16
  %gep53.1 = getelementptr i8, ptr %invariant.gep52, i64 %i.fk
  store i16 %i.fq, ptr %gep53.1, align 2
  br label %bb.z

bb.z:                                             ; preds = %.preheader.1, %bb.y
  %i.fr = add i64 %.5155.i, 4                     ; 3 uses
  %i.fs = add i64 %.5148.i, 2                     ; 2 uses
  %i.ft = and i64 %i.fr, 63
  %.not169.i.1 = icmp eq i64 %i.ft, 0
  br i1 %.not169.i.1, label %.unr-lcssa, label %.new, !llvm.loop !22

.unr-lcssa:                                       ; preds = %bb.z, %.prol.loopexit
  %.lcssa59 = phi i64 [ %.lcssa59.unr, %.prol.loopexit ], [ %i.fr, %bb.z ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.fs, %bb.z ]
  %.not170.i = icmp sgt i64 %.lcssa59, %i.ep
  br i1 %.not170.i, label %bb.aa, label %bb.x, !llvm.loop !23

bb.aa:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  br label %sve_ldN_r.exit

sve_ldN_r.exit:                                   ; preds = %sve_cont_ldst_elements.exit.preheader, %.preheader10, %bb.v, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bss_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 27 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i5, %bb.e ]
  %.0.i4 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i4, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 4 uses
  %.1.i5 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = ashr i32 %i.a, 10                       ; 3 uses
  %i.ab = icmp sgt i64 %.178.i, -1
  br i1 %i.ab, label %bb.g, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ad = and i32 %i.aa, 31
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.af, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldN_r.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i64 %.1.i5, %i.h
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = trunc i64 %.178.i to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i16 %i.ah, ptr %i.ai, align 4
  %i.aj = lshr i64 %.178.i, 2
  %i.ak = trunc i64 %i.aj to i16
  store i16 %i.ak, ptr %4, align 8
  %i.al = lshr i64 %.1.i5, 2
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.an = or i64 %i.am, %2                        ; 2 uses
  %i.ao = sub i64 0, %i.an                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.al, %i.ao
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ap = trunc nuw nsw i64 %.1.i5 to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ap, ptr %i.aq, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ar = trunc i64 %i.ao to i16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.ar, ptr %i.as, align 8
  %i.at = shl i64 %i.ao, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.an, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = trunc i64 %i.at to i16
  %i.av = add i16 %i.au, -4
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.av, ptr %i.aw, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.at, i64 noundef %i.h, i32 noundef 2) ; 3 uses
  %i.ay = icmp sle i64 %i.ax, %.1.i5
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = trunc i64 %i.ax to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = lshr i64 %i.ax, 2
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = trunc nuw nsw i64 %.1.i5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.be, ptr %i.bf, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = or i32 %i.bl, %i.bi
  %.not166.i = icmp eq i32 %i.bm, 0
  br i1 %.not166.i, label %.preheader9, label %bb.m, !prof !85

.preheader9:                                      ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.bo = and i32 %i.aa, 31
  %i.bp = zext nneg i32 %i.bo to i64              ; 4 uses
  %i.bq = getelementptr inbounds nuw [256 x i8], ptr %i.bn, i64 %i.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.br = load i16, ptr %4, align 8
  %i.bs = load i16, ptr %i.ai, align 4            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8            ; 2 uses
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i25 = icmp sgt i16 %i.bs, %i.bu
  br i1 %.not167.i25, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.by = load i16, ptr %4, align 8
  %i.bz = sext i16 %i.by to i64
  %i.ca = load i16, ptr %i.ai, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.cf = icmp slt i16 %i.ce, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ch = load i16, ptr %i.cg, align 2            ; 2 uses
  %i.ci = icmp slt i16 %i.ch, 0
  %i.cj = load i16, ptr %i.cc, align 8
  %spec.select.i = select i1 %i.ci, i16 %i.cj, i16 %i.ch
  %.0149.in.i = select i1 %i.cf, i16 %spec.select.i, i16 %i.ce
  %.0149.i = sext i16 %.0149.in.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0150.i = phi i64 [ %i.cb, %bb.m ], [ %i.cw, %bb.q ] ; 2 uses
  %.0143.i = phi i64 [ %i.bz, %bb.m ], [ %i.cx, %bb.q ]
  %i.ck = ashr i64 %.0150.i, 6
  %i.cl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1151.i = phi i64 [ %.0150.i, %bb.n ], [ %i.cw, %bb.p ] ; 3 uses
  %.1144.i = phi i64 [ %.0143.i, %bb.n ], [ %i.cx, %bb.p ] ; 2 uses
  %i.cn = and i64 %.1151.i, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.co, %i.cm
  %.not172.i = icmp eq i64 %i.cp, 0
  br i1 %.not172.i, label %bb.p, label %.preheader11

.preheader11:                                     ; preds = %bb.o
  %invariant.gep = getelementptr i8, ptr %5, i64 %.1151.i
  %i.cq = add i64 %.1144.i, %2                    ; 2 uses
  %i.cr = shl i64 %i.cq, 8
  %i.cs = ashr exact i64 %i.cr, 8
  %i.ct = and i64 %i.cs, %i.cq
  %i.cu = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.ct, i32 noundef 0, i64 noundef %i.z) #26
  %i.cv = sext i8 %i.cu to i32
  store i32 %i.cv, ptr %invariant.gep, align 4
  br label %bb.p

bb.p:                                             ; preds = %.preheader11, %bb.o
  %i.cw = add i64 %.1151.i, 4                     ; 4 uses
  %i.cx = add i64 %.1144.i, 1                     ; 2 uses
  %i.cy = and i64 %i.cw, 63
  %.not173.i = icmp eq i64 %i.cy, 0
  br i1 %.not173.i, label %bb.q, label %bb.o, !llvm.loop !18

bb.q:                                             ; preds = %bb.p
  %.not174.i = icmp sgt i64 %i.cw, %.0149.i
  br i1 %.not174.i, label %.preheader10, label %bb.n, !llvm.loop !19

.preheader10:                                     ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.da = and i32 %i.aa, 31
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [256 x i8], ptr %i.cz, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dc, ptr noundef nonnull align 16 dereferenceable(1) %5, i64 noundef range(i64 -1073741824, 4294967296) %i.h, i1 noundef false) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %sve_ldN_r.exit

.lr.ph:                                           ; preds = %.preheader9
  %i.dd = sext i16 %i.bs to i64
  %i.de = sext i16 %i.br to i64
  %invariant.gep51 = getelementptr [256 x i8], ptr %i.bn, i64 %i.bp
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %.2145.i27 = phi i64 [ %i.de, %.lr.ph ], [ %i.do, %bb.u ]
  %.2152.i26 = phi i64 [ %i.dd, %.lr.ph ], [ %i.dn, %bb.u ] ; 2 uses
  %i.df = ashr i64 %.2152.i26, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.3153.i = phi i64 [ %.2152.i26, %bb.r ], [ %i.dn, %bb.t ] ; 3 uses
  %.3146.i = phi i64 [ %.2145.i27, %bb.r ], [ %i.do, %bb.t ] ; 2 uses
  %i.di = and i64 %.3153.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not171.i = icmp eq i64 %i.dk, 0
  br i1 %.not171.i, label %bb.t, label %.preheader7

.preheader7:                                      ; preds = %bb.s
  %i.dl = getelementptr inbounds i8, ptr %i.bw, i64 %.3146.i
  %.val3 = load i8, ptr %i.dl, align 1
  %i.dm = sext i8 %.val3 to i32
  %gep = getelementptr i8, ptr %invariant.gep51, i64 %.3153.i
  store i32 %i.dm, ptr %gep, align 4
  br label %bb.t

bb.t:                                             ; preds = %.preheader7, %bb.s
  %i.dn = add nsw i64 %.3153.i, 4                 ; 5 uses
  %i.do = add i64 %.3146.i, 1                     ; 2 uses
  %i.dp = icmp sle i64 %i.dn, %i.bv
  %i.dq = and i64 %i.dn, 63
  %i.dr = icmp ne i64 %i.dq, 0
  %i.ds = and i1 %i.dp, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.u, !llvm.loop !20

bb.u:                                             ; preds = %bb.t
  %.not167.i = icmp sgt i64 %i.dn, %i.bv
  br i1 %.not167.i, label %._crit_edge, label %bb.r, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.u, %.preheader9
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.du = load i16, ptr %i.dt, align 4            ; 2 uses
  %i.dv = icmp sgt i16 %i.du, -1
  br i1 %i.dv, label %.loopexit6, label %bb.v, !prof !76

.loopexit6:                                       ; preds = %._crit_edge
  %i.dw = zext nneg i16 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = sext i16 %i.dy to i64
  %i.ea = add i64 %2, %i.dw                       ; 2 uses
  %invariant.gep29 = getelementptr i8, ptr %i.bn, i64 %i.dz
  %i.eb = shl i64 %i.ea, 8
  %i.ec = ashr exact i64 %i.eb, 8
  %i.ed = and i64 %i.ec, %i.ea
  %i.ee = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.ed, i32 noundef 0, i64 noundef %i.z) #26
  %i.ef = sext i8 %i.ee to i32
  %gep30 = getelementptr [256 x i8], ptr %invariant.gep29, i64 %i.bp
  store i32 %i.ef, ptr %gep30, align 4
  br label %bb.v

bb.v:                                             ; preds = %.loopexit6, %._crit_edge
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.eh = load i16, ptr %i.eg, align 2            ; 2 uses
  %i.ei = icmp sgt i16 %i.eh, -1
  br i1 %i.ei, label %bb.w, label %sve_ldN_r.exit, !prof !76

bb.w:                                             ; preds = %bb.v
  %i.ej = zext nneg i16 %i.eh to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = sext i16 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = sext i16 %i.eo to i64
  %i.eq = load ptr, ptr %i.bj, align 8            ; 3 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  %invariant.gep52 = getelementptr [256 x i8], ptr %i.bn, i64 %i.bp ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.unr-lcssa, %bb.w
  %.4154.i = phi i64 [ %i.em, %bb.w ], [ %.lcssa59, %.unr-lcssa ] ; 6 uses
  %.4147.i = phi i64 [ %i.ej, %bb.w ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.er = ashr i64 %.4154.i, 6
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8            ; 3 uses
  %i.eu = trunc i64 %.4154.i to i6
  %i.ev = sub i6 -4, %i.eu                        ; 2 uses
  %i.ew = and i6 %i.ev, 4
  %lcmp.mod.not.not = icmp eq i6 %i.ew, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.x
  %i.ex = and i64 %.4154.i, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ey, %i.et
  %.not168.i.prol = icmp eq i64 %i.ez, 0
  br i1 %.not168.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.fa = getelementptr inbounds i8, ptr %i.eq, i64 %.4147.i
  %.val.prol = load i8, ptr %i.fa, align 1
  %i.fb = sext i8 %.val.prol to i32
  %gep53.prol = getelementptr i8, ptr %invariant.gep52, i64 %.4154.i
  store i32 %i.fb, ptr %gep53.prol, align 4
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.fc = add i64 %.4154.i, 4                     ; 2 uses
  %i.fd = add i64 %.4147.i, 1                     ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.x
  %.lcssa59.unr = phi i64 [ poison, %bb.x ], [ %i.fc, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.x ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %.5155.i.unr = phi i64 [ %.4154.i, %bb.x ], [ %i.fc, %.prol.loopexit.unr-lcssa ]
  %.5148.i.unr = phi i64 [ %.4147.i, %bb.x ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %i.fe = icmp ult i6 %i.ev, 4
  br i1 %i.fe, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.z
  %.5155.i = phi i64 [ %i.fr, %bb.z ], [ %.5155.i.unr, %.prol.loopexit ] ; 4 uses
  %.5148.i = phi i64 [ %i.fs, %bb.z ], [ %.5148.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ff = and i64 %.5155.i, 63
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fg, %i.et
  %.not168.i = icmp eq i64 %i.fh, 0
  br i1 %.not168.i, label %bb.y, label %.preheader

.preheader:                                       ; preds = %.new
  %i.fi = getelementptr inbounds i8, ptr %i.eq, i64 %.5148.i
  %.val = load i8, ptr %i.fi, align 1
  %i.fj = sext i8 %.val to i32
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %.5155.i
  store i32 %i.fj, ptr %gep53, align 4
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %.new
  %i.fk = add i64 %.5155.i, 4                     ; 2 uses
  %i.fl = and i64 %i.fk, 63
  %i.fm = shl nuw i64 1, %i.fl
  %i.fn = and i64 %i.fm, %i.et
  %.not168.i.1 = icmp eq i64 %i.fn, 0
  br i1 %.not168.i.1, label %bb.z, label %.preheader.1

.preheader.1:                                     ; preds = %bb.y
  %i.fo = getelementptr i8, ptr %i.eq, i64 %.5148.i
  %i.fp = getelementptr i8, ptr %i.fo, i64 1
  %.val.1 = load i8, ptr %i.fp, align 1
  %i.fq = sext i8 %.val.1 to i32
  %gep53.1 = getelementptr i8, ptr %invariant.gep52, i64 %i.fk
  store i32 %i.fq, ptr %gep53.1, align 4
  br label %bb.z

bb.z:                                             ; preds = %.preheader.1, %bb.y
  %i.fr = add i64 %.5155.i, 8                     ; 3 uses
  %i.fs = add i64 %.5148.i, 2                     ; 2 uses
  %i.ft = and i64 %i.fr, 63
  %.not169.i.1 = icmp eq i64 %i.ft, 0
  br i1 %.not169.i.1, label %.unr-lcssa, label %.new, !llvm.loop !22

.unr-lcssa:                                       ; preds = %bb.z, %.prol.loopexit
  %.lcssa59 = phi i64 [ %.lcssa59.unr, %.prol.loopexit ], [ %i.fr, %bb.z ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.fs, %bb.z ]
  %.not170.i = icmp sgt i64 %.lcssa59, %i.ep
  br i1 %.not170.i, label %bb.aa, label %bb.x, !llvm.loop !23

bb.aa:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  br label %sve_ldN_r.exit

sve_ldN_r.exit:                                   ; preds = %sve_cont_ldst_elements.exit.preheader, %.preheader10, %bb.v, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bds_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 27 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i5, %bb.e ]
  %.0.i4 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i4, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 4 uses
  %.1.i5 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = ashr i32 %i.a, 10                       ; 3 uses
  %i.ab = icmp sgt i64 %.178.i, -1
  br i1 %i.ab, label %bb.g, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ad = and i32 %i.aa, 31
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.ac, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.af, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldN_r.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i64 %.1.i5, %i.h
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = trunc i64 %.178.i to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i16 %i.ah, ptr %i.ai, align 4
  %i.aj = lshr i64 %.178.i, 3
  %i.ak = trunc i64 %i.aj to i16
  store i16 %i.ak, ptr %4, align 8
  %i.al = lshr i64 %.1.i5, 3
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.an = or i64 %i.am, %2                        ; 2 uses
  %i.ao = sub i64 0, %i.an                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.al, %i.ao
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ap = trunc nuw nsw i64 %.1.i5 to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ap, ptr %i.aq, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ar = trunc i64 %i.ao to i16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.ar, ptr %i.as, align 8
  %i.at = shl i64 %i.ao, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.an, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = trunc i64 %i.at to i16
  %i.av = add i16 %i.au, -8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.av, ptr %i.aw, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.at, i64 noundef %i.h, i32 noundef 3) ; 3 uses
  %i.ay = icmp sle i64 %i.ax, %.1.i5
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = trunc i64 %i.ax to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = lshr i64 %i.ax, 3
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = trunc nuw nsw i64 %.1.i5 to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.be, ptr %i.bf, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = or i32 %i.bl, %i.bi
  %.not166.i = icmp eq i32 %i.bm, 0
  br i1 %.not166.i, label %.preheader9, label %bb.m, !prof !85

.preheader9:                                      ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.bo = and i32 %i.aa, 31
  %i.bp = zext nneg i32 %i.bo to i64              ; 4 uses
  %i.bq = getelementptr inbounds nuw [256 x i8], ptr %i.bn, i64 %i.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.br = load i16, ptr %4, align 8
  %i.bs = load i16, ptr %i.ai, align 4            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8            ; 2 uses
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i25 = icmp sgt i16 %i.bs, %i.bu
  br i1 %.not167.i25, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.by = load i16, ptr %4, align 8
  %i.bz = sext i16 %i.by to i64
  %i.ca = load i16, ptr %i.ai, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.cf = icmp slt i16 %i.ce, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ch = load i16, ptr %i.cg, align 2            ; 2 uses
  %i.ci = icmp slt i16 %i.ch, 0
  %i.cj = load i16, ptr %i.cc, align 8
  %spec.select.i = select i1 %i.ci, i16 %i.cj, i16 %i.ch
  %.0149.in.i = select i1 %i.cf, i16 %spec.select.i, i16 %i.ce
  %.0149.i = sext i16 %.0149.in.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0150.i = phi i64 [ %i.cb, %bb.m ], [ %i.cw, %bb.q ] ; 2 uses
  %.0143.i = phi i64 [ %i.bz, %bb.m ], [ %i.cx, %bb.q ]
  %i.ck = ashr i64 %.0150.i, 6
  %i.cl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1151.i = phi i64 [ %.0150.i, %bb.n ], [ %i.cw, %bb.p ] ; 3 uses
  %.1144.i = phi i64 [ %.0143.i, %bb.n ], [ %i.cx, %bb.p ] ; 2 uses
  %i.cn = and i64 %.1151.i, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.co, %i.cm
  %.not172.i = icmp eq i64 %i.cp, 0
  br i1 %.not172.i, label %bb.p, label %.preheader11

.preheader11:                                     ; preds = %bb.o
  %invariant.gep = getelementptr i8, ptr %5, i64 %.1151.i
  %i.cq = add i64 %.1144.i, %2                    ; 2 uses
  %i.cr = shl i64 %i.cq, 8
  %i.cs = ashr exact i64 %i.cr, 8
  %i.ct = and i64 %i.cs, %i.cq
  %i.cu = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.ct, i32 noundef 0, i64 noundef %i.z) #26
  %i.cv = sext i8 %i.cu to i64
  store i64 %i.cv, ptr %invariant.gep, align 8
  br label %bb.p

bb.p:                                             ; preds = %.preheader11, %bb.o
  %i.cw = add i64 %.1151.i, 8                     ; 4 uses
  %i.cx = add i64 %.1144.i, 1                     ; 2 uses
  %i.cy = and i64 %i.cw, 63
  %.not173.i = icmp eq i64 %i.cy, 0
  br i1 %.not173.i, label %bb.q, label %bb.o, !llvm.loop !18

bb.q:                                             ; preds = %bb.p
  %.not174.i = icmp sgt i64 %i.cw, %.0149.i
  br i1 %.not174.i, label %.preheader10, label %bb.n, !llvm.loop !19

.preheader10:                                     ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.da = and i32 %i.aa, 31
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [256 x i8], ptr %i.cz, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dc, ptr noundef nonnull align 16 dereferenceable(1) %5, i64 noundef range(i64 -1073741824, 4294967296) %i.h, i1 noundef false) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %sve_ldN_r.exit

.lr.ph:                                           ; preds = %.preheader9
  %i.dd = sext i16 %i.bs to i64
  %i.de = sext i16 %i.br to i64
  %invariant.gep51 = getelementptr [256 x i8], ptr %i.bn, i64 %i.bp
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.u
  %.2145.i27 = phi i64 [ %i.de, %.lr.ph ], [ %i.do, %bb.u ]
  %.2152.i26 = phi i64 [ %i.dd, %.lr.ph ], [ %i.dn, %bb.u ] ; 2 uses
  %i.df = ashr i64 %.2152.i26, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.3153.i = phi i64 [ %.2152.i26, %bb.r ], [ %i.dn, %bb.t ] ; 3 uses
  %.3146.i = phi i64 [ %.2145.i27, %bb.r ], [ %i.do, %bb.t ] ; 2 uses
  %i.di = and i64 %.3153.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not171.i = icmp eq i64 %i.dk, 0
  br i1 %.not171.i, label %bb.t, label %.preheader7

.preheader7:                                      ; preds = %bb.s
  %i.dl = getelementptr inbounds i8, ptr %i.bw, i64 %.3146.i
  %.val3 = load i8, ptr %i.dl, align 1
  %i.dm = sext i8 %.val3 to i64
  %gep = getelementptr i8, ptr %invariant.gep51, i64 %.3153.i
  store i64 %i.dm, ptr %gep, align 8
  br label %bb.t

bb.t:                                             ; preds = %.preheader7, %bb.s
  %i.dn = add nsw i64 %.3153.i, 8                 ; 5 uses
  %i.do = add i64 %.3146.i, 1                     ; 2 uses
  %i.dp = icmp sle i64 %i.dn, %i.bv
  %i.dq = and i64 %i.dn, 63
  %i.dr = icmp ne i64 %i.dq, 0
  %i.ds = and i1 %i.dp, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.u, !llvm.loop !20

bb.u:                                             ; preds = %bb.t
  %.not167.i = icmp sgt i64 %i.dn, %i.bv
  br i1 %.not167.i, label %._crit_edge, label %bb.r, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.u, %.preheader9
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.du = load i16, ptr %i.dt, align 4            ; 2 uses
  %i.dv = icmp sgt i16 %i.du, -1
  br i1 %i.dv, label %.loopexit6, label %bb.v, !prof !76
end_hunk_2
begin_hunk_3_@helper_sve_ld1dqu_be_r:bb.a
  %i.de = load ptr, ptr %i.t, align 8             ; 4 uses
  store i64 %i.c, ptr %i.aj, align 8
  fence syncscope("singlethread") seq_cst
  %invariant.gep49 = getelementptr [256 x i8], ptr %i.y, i64 %i.aa ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.v, %bb.m
  %.4154.i = phi i64 [ %i.da, %bb.m ], [ %.lcssa56, %bb.v ] ; 7 uses
  %.4147.i = phi i64 [ %i.cx, %bb.m ], [ %.lcssa, %bb.v ] ; 5 uses
  %i.df = ashr i64 %.4154.i, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8            ; 4 uses
  %i.di = and i64 %.4154.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not168.i = icmp eq i64 %i.dk, 0
  br i1 %.not168.i, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.dl = getelementptr inbounds i8, ptr %i.de, i64 %.4147.i
  %.val = load i64, ptr %i.dl, align 1
  %i.dm = call i64 @llvm.bswap.i64(i64 %.val)
  %gep50 = getelementptr i8, ptr %invariant.gep49, i64 %.4154.i ; 2 uses
  store i64 %i.dm, ptr %gep50, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %gep50, i64 8
  store i64 0, ptr %i.dn, align 8
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.n
  %i.do = add i64 %.4154.i, 16                    ; 4 uses
  %i.dp = add i64 %.4147.i, 8                     ; 2 uses
  %i.dq = and i64 %i.do, 63
  %.not169.i = icmp eq i64 %i.dq, 0
  br i1 %.not169.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = and i64 %i.do, 63
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %i.dh
  %.not168.i.1 = icmp eq i64 %i.dt, 0
  br i1 %.not168.i.1, label %bb.q, label %.preheader.1

.preheader.1:                                     ; preds = %bb.p
  %i.du = getelementptr inbounds i8, ptr %i.de, i64 %i.dp
  %.val.1 = load i64, ptr %i.du, align 1
  %i.dv = call i64 @llvm.bswap.i64(i64 %.val.1)
  %gep50.1 = getelementptr i8, ptr %invariant.gep49, i64 %i.do ; 2 uses
  store i64 %i.dv, ptr %gep50.1, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %gep50.1, i64 8
  store i64 0, ptr %i.dw, align 8
  br label %bb.q

bb.q:                                             ; preds = %.preheader.1, %bb.p
  %i.dx = add i64 %.4154.i, 32                    ; 4 uses
  %i.dy = add i64 %.4147.i, 16                    ; 2 uses
  %i.dz = and i64 %i.dx, 63
  %.not169.i.1 = icmp eq i64 %i.dz, 0
  br i1 %.not169.i.1, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = and i64 %i.dx, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.eb, %i.dh
  %.not168.i.2 = icmp eq i64 %i.ec, 0
  br i1 %.not168.i.2, label %bb.s, label %.preheader.2

.preheader.2:                                     ; preds = %bb.r
  %i.ed = getelementptr inbounds i8, ptr %i.de, i64 %i.dy
  %.val.2 = load i64, ptr %i.ed, align 1
  %i.ee = call i64 @llvm.bswap.i64(i64 %.val.2)
  %gep50.2 = getelementptr i8, ptr %invariant.gep49, i64 %i.dx ; 2 uses
  store i64 %i.ee, ptr %gep50.2, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %gep50.2, i64 8
  store i64 0, ptr %i.ef, align 8
  br label %bb.s

bb.s:                                             ; preds = %.preheader.2, %bb.r
  %i.eg = add i64 %.4154.i, 48                    ; 4 uses
  %i.eh = add i64 %.4147.i, 24                    ; 2 uses
  %i.ei = and i64 %i.eg, 63
  %.not169.i.2 = icmp eq i64 %i.ei, 0
  br i1 %.not169.i.2, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = and i64 %i.eg, 63
  %i.ek = shl nuw i64 1, %i.ej
  %i.el = and i64 %i.ek, %i.dh
  %.not168.i.3 = icmp eq i64 %i.el, 0
  br i1 %.not168.i.3, label %bb.u, label %.preheader.3

.preheader.3:                                     ; preds = %bb.t
  %i.em = getelementptr inbounds i8, ptr %i.de, i64 %i.eh
  %.val.3 = load i64, ptr %i.em, align 1
  %i.en = call i64 @llvm.bswap.i64(i64 %.val.3)
  %gep50.3 = getelementptr i8, ptr %invariant.gep49, i64 %i.eg ; 2 uses
  store i64 %i.en, ptr %gep50.3, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %gep50.3, i64 8
  store i64 0, ptr %i.eo, align 8
  br label %bb.u

bb.u:                                             ; preds = %.preheader.3, %bb.t
  %i.ep = add i64 %.4154.i, 64
  %i.eq = add i64 %.4147.i, 32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o
  %.lcssa56 = phi i64 [ %i.do, %bb.o ], [ %i.dx, %bb.q ], [ %i.eg, %bb.s ], [ %i.ep, %bb.u ] ; 2 uses
  %.lcssa = phi i64 [ %i.dp, %bb.o ], [ %i.dy, %bb.q ], [ %i.eh, %bb.s ], [ %i.eq, %bb.u ]
  %.not170.i = icmp sgt i64 %.lcssa56, %i.dd
  br i1 %.not170.i, label %bb.w, label %bb.n, !llvm.loop !23

bb.w:                                             ; preds = %bb.v
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.aj, align 8
  br label %sve_ldN_r.exit

sve_ldN_r.exit:                                   ; preds = %.preheader11, %.preheader8, %bb.l, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bb_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 34 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]   ; 3 uses
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr @pred_esz_masks, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i4 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i4, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 3 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10                       ; 3 uses
  %i.ar = icmp sgt i64 %.178.i, -1
  br i1 %i.ar, label %bb.j, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.at = and i32 %i.aq, 31
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [256 x i8], ptr %i.as, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.av, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldN_r_mte.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = trunc i64 %.178.i to i16                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i16 %i.ax, ptr %i.ay, align 4
  store i16 %i.ax, ptr %4, align 8
  %i.az = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.ba = or i64 %i.az, %2                        ; 3 uses
  %i.bb = sub i64 0, %i.ba                        ; 3 uses
  %.not83.i.not = icmp slt i64 %.1.i, %i.bb
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bc = trunc nuw nsw i64 %.1.i to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bc, ptr %i.bd, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.be = trunc i64 %i.bb to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.be, ptr %i.bf, align 8
  %.not84.i = icmp eq i64 %i.ba, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = trunc i64 %i.ba to i16
  %i.bh = xor i16 %i.bg, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bh, ptr %i.bi, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bb, i64 noundef %i.z, i32 noundef 0) ; 2 uses
  %i.bk = icmp sle i64 %i.bj, %.1.i
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = trunc i64 %i.bj to i16                  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bl, ptr %i.bm, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bl, ptr %i.bn, align 2
  %i.bo = trunc nuw nsw i64 %.1.i to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bo, ptr %i.bp, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bq = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %.not.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i, label %sve_cont_ldst_mte_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bs = load i8, ptr %i.br, align 4, !range !88, !noundef !89
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.q, label %.loopexit55.i

bb.q:                                             ; preds = %bb.p
  %i.bu = load i16, ptr %i.ay, align 4
  %i.bv = sext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.bx = load i16, ptr %i.bw, align 2            ; 2 uses
  %i.by = icmp slt i16 %i.bx, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ca = load i16, ptr %i.bz, align 8
  %.0.in.i = select i1 %i.by, i16 %i.ca, i16 %i.bx
  %.0.i5 = sext i16 %.0.in.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.042.i = phi i64 [ %i.bv, %bb.q ], [ %i.ci, %bb.v ] ; 2 uses
  %i.cb = ashr i64 %.042.i, 6
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.1.i6 = phi i64 [ %.042.i, %bb.r ], [ %i.ci, %bb.u ] ; 3 uses
  %i.ce = and i64 %.1.i6, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.cd
  %.not.i7 = icmp eq i64 %i.cg, 0
  br i1 %.not.i7, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ci = add nsw i64 %.1.i6, 1                   ; 3 uses
  %i.cj = icmp slt i64 %.1.i6, %.0.i5             ; 2 uses
  %i.ck = and i64 %i.ci, 63
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i1 %i.cj, %i.cl
  br i1 %i.cm, label %bb.s, label %bb.v, !llvm.loop !25

bb.v:                                             ; preds = %bb.u
  br i1 %i.cj, label %bb.r, label %.loopexit55.i, !llvm.loop !26

.loopexit55.i:                                    ; preds = %bb.v, %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = icmp sgt i16 %i.co, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.cr = load i8, ptr %i.cq, align 4, !range !88
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %or.cond, label %bb.w, label %sve_cont_ldst_mte_check.exit

bb.w:                                             ; preds = %.loopexit55.i
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = sext i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = sext i16 %i.cx to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %.2.i = phi i64 [ %i.cv, %bb.w ], [ %i.dg, %bb.ab ] ; 2 uses
  %i.cz = ashr i64 %.2.i, 6
  %i.da = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.3.i = phi i64 [ %.2.i, %bb.x ], [ %i.dg, %bb.aa ] ; 2 uses
  %i.dc = and i64 %.3.i, 63
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.dd, %i.db
  %.not52.i = icmp eq i64 %i.de, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dg = add i64 %.3.i, 1                        ; 4 uses
  %i.dh = and i64 %i.dg, 63
  %.not53.i = icmp eq i64 %i.dh, 0
  br i1 %.not53.i, label %bb.ab, label %bb.y, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp sgt i64 %i.dg, %i.cy
  br i1 %.not54.i, label %sve_cont_ldst_mte_check.exit, label %bb.x, !llvm.loop !28

sve_cont_ldst_mte_check.exit:                     ; preds = %bb.ab, %.loopexit55.i, %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = or i32 %i.dm, %i.dj
  %.not166.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not166.i.i, label %.preheader13, label %bb.ac, !prof !85

.preheader13:                                     ; preds = %sve_cont_ldst_mte_check.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.dp = and i32 %i.aq, 31
  %i.dq = zext nneg i32 %i.dp to i64              ; 4 uses
  %i.dr = getelementptr inbounds nuw [256 x i8], ptr %i.do, i64 %i.dq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dr, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.ds = load i16, ptr %4, align 8
  %i.dt = load i16, ptr %i.ay, align 4            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = load i16, ptr %i.du, align 8            ; 2 uses
  %i.dw = sext i16 %i.dv to i64                   ; 2 uses
  %i.dx = load ptr, ptr %i.ab, align 8
  %i.dy = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.b, ptr %i.dy, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i.i32 = icmp sgt i16 %i.dt, %i.dv
  br i1 %.not167.i.i32, label %._crit_edge, label %.lr.ph

bb.ac:                                            ; preds = %sve_cont_ldst_mte_check.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.dz = load i16, ptr %4, align 8
  %i.ea = sext i16 %i.dz to i64
  %i.eb = load i16, ptr %i.ay, align 4
  %i.ec = sext i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ef = load i16, ptr %i.ee, align 2            ; 2 uses
  %i.eg = icmp slt i16 %i.ef, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ei = load i16, ptr %i.eh, align 2            ; 2 uses
  %i.ej = icmp slt i16 %i.ei, 0
  %i.ek = load i16, ptr %i.ed, align 8
  %spec.select.i.i = select i1 %i.ej, i16 %i.ek, i16 %i.ei
  %.0149.in.i.i = select i1 %i.eg, i16 %spec.select.i.i, i16 %i.ef
  %.0149.i.i = sext i16 %.0149.in.i.i to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %bb.ac
  %.0150.i.i = phi i64 [ %i.ec, %bb.ac ], [ %i.ew, %bb.ag ] ; 2 uses
  %.0143.i.i = phi i64 [ %i.ea, %bb.ac ], [ %i.ex, %bb.ag ]
  %i.el = ashr i64 %.0150.i.i, 6
  %i.em = getelementptr inbounds [8 x i8], ptr %1, i64 %i.el
end_hunk_3
begin_hunk_4_@helper_sve_ld4qq_be_r_mte:bb.a
  %invariant.gep35.2 = getelementptr i8, ptr %i.cs, i64 %i.mf ; 4 uses
  %.val5.i4.286 = load i64, ptr %i.ml, align 1
  %i.mm = call i64 @llvm.bswap.i64(i64 %.val5.i4.286)
  %gep36.287 = getelementptr [256 x i8], ptr %invariant.gep35.2, i64 %i.cu ; 2 uses
  %i.mn = getelementptr i8, ptr %gep36.287, i64 8
  store i64 %i.mm, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %.val.i5.288 = load i64, ptr %i.mo, align 1
  %i.mp = call i64 @llvm.bswap.i64(i64 %.val.i5.288)
  store i64 %i.mp, ptr %gep36.287, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %.val5.i4.1.2 = load i64, ptr %i.mq, align 1
  %i.mr = call i64 @llvm.bswap.i64(i64 %.val5.i4.1.2)
  %gep36.1.2 = getelementptr [256 x i8], ptr %invariant.gep35.2, i64 %i.jy ; 2 uses
  %i.ms = getelementptr i8, ptr %gep36.1.2, i64 8
  store i64 %i.mr, ptr %i.ms, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %.val.i5.1.2 = load i64, ptr %i.mt, align 1
  %i.mu = call i64 @llvm.bswap.i64(i64 %.val.i5.1.2)
  store i64 %i.mu, ptr %gep36.1.2, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  %.val5.i4.2.2 = load i64, ptr %i.mv, align 1
  %i.mw = call i64 @llvm.bswap.i64(i64 %.val5.i4.2.2)
  %gep36.2.2 = getelementptr [256 x i8], ptr %invariant.gep35.2, i64 %i.kb ; 2 uses
  %i.mx = getelementptr i8, ptr %gep36.2.2, i64 8
  store i64 %i.mw, ptr %i.mx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  %.val.i5.2.2 = load i64, ptr %i.my, align 1
  %i.mz = call i64 @llvm.bswap.i64(i64 %.val.i5.2.2)
  store i64 %i.mz, ptr %gep36.2.2, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.ml, i64 48
  %.val5.i4.3.2 = load i64, ptr %i.na, align 1
  %i.nb = call i64 @llvm.bswap.i64(i64 %.val5.i4.3.2)
  %gep36.3.2 = getelementptr [256 x i8], ptr %invariant.gep35.2, i64 %i.ke ; 2 uses
  %i.nc = getelementptr i8, ptr %gep36.3.2, i64 8
  store i64 %i.nb, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ml, i64 56
  %.val.i5.3.2 = load i64, ptr %i.nd, align 1
  %i.ne = call i64 @llvm.bswap.i64(i64 %.val.i5.3.2)
  store i64 %i.ne, ptr %gep36.3.2, align 8
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.preheader.2, %bb.ac
  %i.nf = add i64 %.4154.i.i, 48                  ; 4 uses
  %i.ng = add i64 %.4147.i.i, 192                 ; 2 uses
  %i.nh = and i64 %i.nf, 63
  %.not169.i.i.2 = icmp eq i64 %i.nh, 0
  br i1 %.not169.i.i.2, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit.2
  %i.ni = and i64 %i.nf, 63
  %i.nj = shl nuw i64 1, %i.ni
  %i.nk = and i64 %i.nj, %i.kh
  %.not168.i.i.3 = icmp eq i64 %i.nk, 0
  br i1 %.not168.i.i.3, label %.loopexit.3, label %.preheader.3

.preheader.3:                                     ; preds = %bb.ad
  %i.nl = getelementptr inbounds i8, ptr %i.jv, i64 %i.ng ; 8 uses
  %invariant.gep35.3 = getelementptr i8, ptr %i.cs, i64 %i.nf ; 4 uses
  %.val5.i4.389 = load i64, ptr %i.nl, align 1
  %i.nm = call i64 @llvm.bswap.i64(i64 %.val5.i4.389)
  %gep36.390 = getelementptr [256 x i8], ptr %invariant.gep35.3, i64 %i.cu ; 2 uses
  %i.nn = getelementptr i8, ptr %gep36.390, i64 8
  store i64 %i.nm, ptr %i.nn, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %.val.i5.391 = load i64, ptr %i.no, align 1
  %i.np = call i64 @llvm.bswap.i64(i64 %.val.i5.391)
  store i64 %i.np, ptr %gep36.390, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %.val5.i4.1.3 = load i64, ptr %i.nq, align 1
  %i.nr = call i64 @llvm.bswap.i64(i64 %.val5.i4.1.3)
  %gep36.1.3 = getelementptr [256 x i8], ptr %invariant.gep35.3, i64 %i.jy ; 2 uses
  %i.ns = getelementptr i8, ptr %gep36.1.3, i64 8
  store i64 %i.nr, ptr %i.ns, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %.val.i5.1.3 = load i64, ptr %i.nt, align 1
  %i.nu = call i64 @llvm.bswap.i64(i64 %.val.i5.1.3)
  store i64 %i.nu, ptr %gep36.1.3, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nl, i64 32
  %.val5.i4.2.3 = load i64, ptr %i.nv, align 1
  %i.nw = call i64 @llvm.bswap.i64(i64 %.val5.i4.2.3)
  %gep36.2.3 = getelementptr [256 x i8], ptr %invariant.gep35.3, i64 %i.kb ; 2 uses
  %i.nx = getelementptr i8, ptr %gep36.2.3, i64 8
  store i64 %i.nw, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nl, i64 40
  %.val.i5.2.3 = load i64, ptr %i.ny, align 1
  %i.nz = call i64 @llvm.bswap.i64(i64 %.val.i5.2.3)
  store i64 %i.nz, ptr %gep36.2.3, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nl, i64 48
  %.val5.i4.3.3 = load i64, ptr %i.oa, align 1
  %i.ob = call i64 @llvm.bswap.i64(i64 %.val5.i4.3.3)
  %gep36.3.3 = getelementptr [256 x i8], ptr %invariant.gep35.3, i64 %i.ke ; 2 uses
  %i.oc = getelementptr i8, ptr %gep36.3.3, i64 8
  store i64 %i.ob, ptr %i.oc, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.nl, i64 56
  %.val.i5.3.3 = load i64, ptr %i.od, align 1
  %i.oe = call i64 @llvm.bswap.i64(i64 %.val.i5.3.3)
  store i64 %i.oe, ptr %gep36.3.3, align 8
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %.preheader.3, %bb.ad
  %i.of = add i64 %.4154.i.i, 64
  %i.og = add i64 %.4147.i.i, 256
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.3, %.loopexit.2, %.loopexit.1, %.loopexit
  %.lcssa75 = phi i64 [ %i.lf, %.loopexit ], [ %i.mf, %.loopexit.1 ], [ %i.nf, %.loopexit.2 ], [ %i.of, %.loopexit.3 ] ; 2 uses
  %.lcssa = phi i64 [ %i.lg, %.loopexit ], [ %i.mg, %.loopexit.1 ], [ %i.ng, %.loopexit.2 ], [ %i.og, %.loopexit.3 ]
  %.not170.i.i = icmp sgt i64 %.lcssa75, %i.ju
  br i1 %.not170.i.i, label %bb.af, label %bb.aa, !llvm.loop !23

bb.af:                                            ; preds = %bb.ae
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.dp, align 8
  br label %sve_ldN_r_mte.exit

sve_ldN_r_mte.exit:                               ; preds = %.preheader15, %.preheader12, %.loopexit8, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bhu_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 34 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]   ; 3 uses
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i4 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i4, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10                       ; 3 uses
  %i.ar = icmp sgt i64 %.178.i, -1
  br i1 %i.ar, label %bb.j, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.at = and i32 %i.aq, 31
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [256 x i8], ptr %i.as, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.av, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldN_r_mte.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = trunc i64 %.178.i to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i16 %i.ax, ptr %i.ay, align 4
  %i.az = lshr i64 %.178.i, 1
  %i.ba = trunc i64 %i.az to i16
  store i16 %i.ba, ptr %4, align 8
  %i.bb = lshr i64 %.1.i, 1
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bd = or i64 %i.bc, %2                        ; 2 uses
  %i.be = sub i64 0, %i.bd                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.bb, %i.be
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bf = trunc nuw nsw i64 %.1.i to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bf, ptr %i.bg, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bh = trunc i64 %i.be to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bh, ptr %i.bi, align 8
  %i.bj = shl i64 %i.be, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bd, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = trunc i64 %i.bj to i16
  %i.bl = add i16 %i.bk, -2
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bl, ptr %i.bm, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bj, i64 noundef %i.z, i32 noundef 1) ; 3 uses
  %i.bo = icmp sle i64 %i.bn, %.1.i
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = trunc i64 %i.bn to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = lshr i64 %i.bn, 1
  %i.bs = trunc i64 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = trunc nuw nsw i64 %.1.i to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bu, ptr %i.bv, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %.not.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i, label %sve_cont_ldst_mte_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.by = load i8, ptr %i.bx, align 4, !range !88, !noundef !89
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %.loopexit55.i

bb.q:                                             ; preds = %bb.p
  %i.ca = load i16, ptr %i.ay, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cd = load i16, ptr %i.cc, align 2            ; 2 uses
  %i.ce = icmp slt i16 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load i16, ptr %i.cf, align 8
  %.0.in.i = select i1 %i.ce, i16 %i.cg, i16 %i.cd
  %.0.i5 = sext i16 %.0.in.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.042.i = phi i64 [ %i.cb, %bb.q ], [ %i.co, %bb.v ] ; 2 uses
  %i.ch = ashr i64 %.042.i, 6
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.1.i6 = phi i64 [ %.042.i, %bb.r ], [ %i.co, %bb.u ] ; 2 uses
  %i.ck = and i64 %.1.i6, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cj
  %.not.i7 = icmp eq i64 %i.cm, 0
  br i1 %.not.i7, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = add nsw i64 %.1.i6, 2                   ; 4 uses
  %i.cp = icmp sle i64 %i.co, %.0.i5              ; 2 uses
  %i.cq = and i64 %i.co, 63
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = and i1 %i.cp, %i.cr
  br i1 %i.cs, label %bb.s, label %bb.v, !llvm.loop !25

bb.v:                                             ; preds = %bb.u
  br i1 %i.cp, label %bb.r, label %.loopexit55.i, !llvm.loop !26

.loopexit55.i:                                    ; preds = %bb.v, %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp sgt i16 %i.cu, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.cx = load i8, ptr %i.cw, align 4, !range !88
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.w, label %sve_cont_ldst_mte_check.exit

bb.w:                                             ; preds = %.loopexit55.i
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = sext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = sext i16 %i.dd to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %.2.i = phi i64 [ %i.db, %bb.w ], [ %i.dm, %bb.ab ] ; 2 uses
  %i.df = ashr i64 %.2.i, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.3.i = phi i64 [ %.2.i, %bb.x ], [ %i.dm, %bb.aa ] ; 2 uses
  %i.di = and i64 %.3.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not52.i = icmp eq i64 %i.dk, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dm = add i64 %.3.i, 2                        ; 4 uses
  %i.dn = and i64 %i.dm, 63
  %.not53.i = icmp eq i64 %i.dn, 0
  br i1 %.not53.i, label %bb.ab, label %bb.y, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp sgt i64 %i.dm, %i.de
  br i1 %.not54.i, label %sve_cont_ldst_mte_check.exit, label %bb.x, !llvm.loop !28

sve_cont_ldst_mte_check.exit:                     ; preds = %bb.ab, %.loopexit55.i, %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = or i32 %i.ds, %i.dp
  %.not166.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not166.i.i, label %.preheader13, label %bb.ac, !prof !85

.preheader13:                                     ; preds = %sve_cont_ldst_mte_check.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.dv = and i32 %i.aq, 31
  %i.dw = zext nneg i32 %i.dv to i64              ; 4 uses
  %i.dx = getelementptr inbounds nuw [256 x i8], ptr %i.du, i64 %i.dw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dx, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.dy = load i16, ptr %4, align 8
  %i.dz = load i16, ptr %i.ay, align 4            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eb = load i16, ptr %i.ea, align 8            ; 2 uses
  %i.ec = sext i16 %i.eb to i64                   ; 2 uses
  %i.ed = load ptr, ptr %i.ab, align 8
  %i.ee = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.b, ptr %i.ee, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i.i32 = icmp sgt i16 %i.dz, %i.eb
  br i1 %.not167.i.i32, label %._crit_edge, label %.lr.ph

bb.ac:                                            ; preds = %sve_cont_ldst_mte_check.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.ef = load i16, ptr %4, align 8
  %i.eg = sext i16 %i.ef to i64
  %i.eh = load i16, ptr %i.ay, align 4
  %i.ei = sext i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.el = load i16, ptr %i.ek, align 2            ; 2 uses
  %i.em = icmp slt i16 %i.el, 0
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.eo = load i16, ptr %i.en, align 2            ; 2 uses
  %i.ep = icmp slt i16 %i.eo, 0
  %i.eq = load i16, ptr %i.ej, align 8
  %spec.select.i.i = select i1 %i.ep, i16 %i.eq, i16 %i.eo
  %.0149.in.i.i = select i1 %i.em, i16 %spec.select.i.i, i16 %i.el
  %.0149.i.i = sext i16 %.0149.in.i.i to i64
  br label %bb.ad
end_hunk_4
begin_hunk_5_@helper_sve_ld1bhu_r_mte:bb.a
  %gep37 = getelementptr [256 x i8], ptr %invariant.gep36, i64 %i.dw
  store i16 %i.gm, ptr %gep37, align 2
  br label %bb.al

bb.al:                                            ; preds = %.loopexit10, %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.go = load i16, ptr %i.gn, align 2            ; 2 uses
  %i.gp = icmp sgt i16 %i.go, -1
  br i1 %i.gp, label %bb.am, label %sve_ldN_r_mte.exit, !prof !76

bb.am:                                            ; preds = %bb.al
  %i.gq = zext nneg i16 %i.go to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = sext i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gv = load i16, ptr %i.gu, align 2
  %i.gw = sext i16 %i.gv to i64
  %i.gx = load ptr, ptr %i.dq, align 8            ; 3 uses
  store i64 %i.b, ptr %i.ee, align 8
  fence syncscope("singlethread") seq_cst
  %invariant.gep68 = getelementptr [256 x i8], ptr %i.du, i64 %i.dw ; 3 uses
  br label %bb.an

bb.an:                                            ; preds = %.unr-lcssa, %bb.am
  %.4154.i.i = phi i64 [ %i.gt, %bb.am ], [ %.lcssa78, %.unr-lcssa ] ; 6 uses
  %.4147.i.i = phi i64 [ %i.gq, %bb.am ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.gy = ashr i64 %.4154.i.i, 6
  %i.gz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8            ; 3 uses
  %i.hb = trunc i64 %.4154.i.i to i6
  %i.hc = sub i6 -2, %i.hb                        ; 2 uses
  %i.hd = and i6 %i.hc, 2
  %lcmp.mod.not.not = icmp eq i6 %i.hd, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.an
  %i.he = and i64 %.4154.i.i, 63
  %i.hf = shl nuw i64 1, %i.he
  %i.hg = and i64 %i.hf, %i.ha
  %.not168.i.i.prol = icmp eq i64 %i.hg, 0
  br i1 %.not168.i.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.hh = getelementptr inbounds i8, ptr %i.gx, i64 %.4147.i.i
  %.val.prol = load i8, ptr %i.hh, align 1
  %i.hi = zext i8 %.val.prol to i16
  %gep69.prol = getelementptr i8, ptr %invariant.gep68, i64 %.4154.i.i
  store i16 %i.hi, ptr %gep69.prol, align 2
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.hj = add i64 %.4154.i.i, 2                   ; 2 uses
  %i.hk = add i64 %.4147.i.i, 1                   ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.an
  %.lcssa78.unr = phi i64 [ poison, %bb.an ], [ %i.hj, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.an ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %.5155.i.i.unr = phi i64 [ %.4154.i.i, %bb.an ], [ %i.hj, %.prol.loopexit.unr-lcssa ]
  %.5148.i.i.unr = phi i64 [ %.4147.i.i, %bb.an ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %i.hl = icmp ult i6 %i.hc, 2
  br i1 %i.hl, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.ap
  %.5155.i.i = phi i64 [ %i.hy, %bb.ap ], [ %.5155.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.5148.i.i = phi i64 [ %i.hz, %bb.ap ], [ %.5148.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hm = and i64 %.5155.i.i, 63
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = and i64 %i.hn, %i.ha
  %.not168.i.i = icmp eq i64 %i.ho, 0
  br i1 %.not168.i.i, label %bb.ao, label %.preheader

.preheader:                                       ; preds = %.new
  %i.hp = getelementptr inbounds i8, ptr %i.gx, i64 %.5148.i.i
  %.val = load i8, ptr %i.hp, align 1
  %i.hq = zext i8 %.val to i16
  %gep69 = getelementptr i8, ptr %invariant.gep68, i64 %.5155.i.i
  store i16 %i.hq, ptr %gep69, align 2
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader, %.new
  %i.hr = add i64 %.5155.i.i, 2                   ; 2 uses
  %i.hs = and i64 %i.hr, 63
  %i.ht = shl nuw i64 1, %i.hs
  %i.hu = and i64 %i.ht, %i.ha
  %.not168.i.i.1 = icmp eq i64 %i.hu, 0
  br i1 %.not168.i.i.1, label %bb.ap, label %.preheader.1

.preheader.1:                                     ; preds = %bb.ao
  %i.hv = getelementptr i8, ptr %i.gx, i64 %.5148.i.i
  %i.hw = getelementptr i8, ptr %i.hv, i64 1
  %.val.1 = load i8, ptr %i.hw, align 1
  %i.hx = zext i8 %.val.1 to i16
  %gep69.1 = getelementptr i8, ptr %invariant.gep68, i64 %i.hr
  store i16 %i.hx, ptr %gep69.1, align 2
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader.1, %bb.ao
  %i.hy = add i64 %.5155.i.i, 4                   ; 3 uses
  %i.hz = add i64 %.5148.i.i, 2                   ; 2 uses
  %i.ia = and i64 %i.hy, 63
  %.not169.i.i.1 = icmp eq i64 %i.ia, 0
  br i1 %.not169.i.i.1, label %.unr-lcssa, label %.new, !llvm.loop !22

.unr-lcssa:                                       ; preds = %bb.ap, %.prol.loopexit
  %.lcssa78 = phi i64 [ %.lcssa78.unr, %.prol.loopexit ], [ %i.hy, %bb.ap ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.hz, %bb.ap ]
  %.not170.i.i = icmp sgt i64 %.lcssa78, %i.gw
  br i1 %.not170.i.i, label %bb.aq, label %bb.an, !llvm.loop !23

bb.aq:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.ee, align 8
  br label %sve_ldN_r_mte.exit

sve_ldN_r_mte.exit:                               ; preds = %sve_cont_ldst_elements.exit.preheader, %.preheader14, %bb.al, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bsu_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 34 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]   ; 3 uses
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i4 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i4, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10                       ; 3 uses
  %i.ar = icmp sgt i64 %.178.i, -1
  br i1 %i.ar, label %bb.j, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.at = and i32 %i.aq, 31
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [256 x i8], ptr %i.as, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.av, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldN_r_mte.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = trunc i64 %.178.i to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i16 %i.ax, ptr %i.ay, align 4
  %i.az = lshr i64 %.178.i, 2
  %i.ba = trunc i64 %i.az to i16
  store i16 %i.ba, ptr %4, align 8
  %i.bb = lshr i64 %.1.i, 2
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bd = or i64 %i.bc, %2                        ; 2 uses
  %i.be = sub i64 0, %i.bd                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.bb, %i.be
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bf = trunc nuw nsw i64 %.1.i to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bf, ptr %i.bg, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bh = trunc i64 %i.be to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bh, ptr %i.bi, align 8
  %i.bj = shl i64 %i.be, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bd, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = trunc i64 %i.bj to i16
  %i.bl = add i16 %i.bk, -4
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bl, ptr %i.bm, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bj, i64 noundef %i.z, i32 noundef 2) ; 3 uses
  %i.bo = icmp sle i64 %i.bn, %.1.i
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = trunc i64 %i.bn to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = lshr i64 %i.bn, 2
  %i.bs = trunc i64 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = trunc nuw nsw i64 %.1.i to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bu, ptr %i.bv, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %.not.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i, label %sve_cont_ldst_mte_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.by = load i8, ptr %i.bx, align 4, !range !88, !noundef !89
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %.loopexit55.i

bb.q:                                             ; preds = %bb.p
  %i.ca = load i16, ptr %i.ay, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cd = load i16, ptr %i.cc, align 2            ; 2 uses
  %i.ce = icmp slt i16 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load i16, ptr %i.cf, align 8
  %.0.in.i = select i1 %i.ce, i16 %i.cg, i16 %i.cd
  %.0.i5 = sext i16 %.0.in.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.042.i = phi i64 [ %i.cb, %bb.q ], [ %i.co, %bb.v ] ; 2 uses
  %i.ch = ashr i64 %.042.i, 6
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.1.i6 = phi i64 [ %.042.i, %bb.r ], [ %i.co, %bb.u ] ; 2 uses
  %i.ck = and i64 %.1.i6, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cj
  %.not.i7 = icmp eq i64 %i.cm, 0
  br i1 %.not.i7, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = add nsw i64 %.1.i6, 4                   ; 4 uses
  %i.cp = icmp sle i64 %i.co, %.0.i5              ; 2 uses
  %i.cq = and i64 %i.co, 63
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = and i1 %i.cp, %i.cr
  br i1 %i.cs, label %bb.s, label %bb.v, !llvm.loop !25

bb.v:                                             ; preds = %bb.u
  br i1 %i.cp, label %bb.r, label %.loopexit55.i, !llvm.loop !26

.loopexit55.i:                                    ; preds = %bb.v, %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp sgt i16 %i.cu, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.cx = load i8, ptr %i.cw, align 4, !range !88
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.w, label %sve_cont_ldst_mte_check.exit

bb.w:                                             ; preds = %.loopexit55.i
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = sext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = sext i16 %i.dd to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %.2.i = phi i64 [ %i.db, %bb.w ], [ %i.dm, %bb.ab ] ; 2 uses
  %i.df = ashr i64 %.2.i, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.3.i = phi i64 [ %.2.i, %bb.x ], [ %i.dm, %bb.aa ] ; 2 uses
  %i.di = and i64 %.3.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not52.i = icmp eq i64 %i.dk, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dm = add i64 %.3.i, 4                        ; 4 uses
  %i.dn = and i64 %i.dm, 63
  %.not53.i = icmp eq i64 %i.dn, 0
  br i1 %.not53.i, label %bb.ab, label %bb.y, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp sgt i64 %i.dm, %i.de
  br i1 %.not54.i, label %sve_cont_ldst_mte_check.exit, label %bb.x, !llvm.loop !28

sve_cont_ldst_mte_check.exit:                     ; preds = %bb.ab, %.loopexit55.i, %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = or i32 %i.ds, %i.dp
  %.not166.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not166.i.i, label %.preheader13, label %bb.ac, !prof !85

.preheader13:                                     ; preds = %sve_cont_ldst_mte_check.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.dv = and i32 %i.aq, 31
  %i.dw = zext nneg i32 %i.dv to i64              ; 4 uses
  %i.dx = getelementptr inbounds nuw [256 x i8], ptr %i.du, i64 %i.dw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dx, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.dy = load i16, ptr %4, align 8
  %i.dz = load i16, ptr %i.ay, align 4            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eb = load i16, ptr %i.ea, align 8            ; 2 uses
  %i.ec = sext i16 %i.eb to i64                   ; 2 uses
  %i.ed = load ptr, ptr %i.ab, align 8
  %i.ee = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.b, ptr %i.ee, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i.i32 = icmp sgt i16 %i.dz, %i.eb
  br i1 %.not167.i.i32, label %._crit_edge, label %.lr.ph

bb.ac:                                            ; preds = %sve_cont_ldst_mte_check.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.ef = load i16, ptr %4, align 8
  %i.eg = sext i16 %i.ef to i64
  %i.eh = load i16, ptr %i.ay, align 4
  %i.ei = sext i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.el = load i16, ptr %i.ek, align 2            ; 2 uses
  %i.em = icmp slt i16 %i.el, 0
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.eo = load i16, ptr %i.en, align 2            ; 2 uses
  %i.ep = icmp slt i16 %i.eo, 0
  %i.eq = load i16, ptr %i.ej, align 8
  %spec.select.i.i = select i1 %i.ep, i16 %i.eq, i16 %i.eo
  %.0149.in.i.i = select i1 %i.em, i16 %spec.select.i.i, i16 %i.el
  %.0149.i.i = sext i16 %.0149.in.i.i to i64
  br label %bb.ad
end_hunk_5
begin_hunk_6_@helper_sve_ld1bsu_r_mte:bb.a
  %gep37 = getelementptr [256 x i8], ptr %invariant.gep36, i64 %i.dw
  store i32 %i.gm, ptr %gep37, align 4
  br label %bb.al

bb.al:                                            ; preds = %.loopexit10, %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.go = load i16, ptr %i.gn, align 2            ; 2 uses
  %i.gp = icmp sgt i16 %i.go, -1
  br i1 %i.gp, label %bb.am, label %sve_ldN_r_mte.exit, !prof !76

bb.am:                                            ; preds = %bb.al
  %i.gq = zext nneg i16 %i.go to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = sext i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gv = load i16, ptr %i.gu, align 2
  %i.gw = sext i16 %i.gv to i64
  %i.gx = load ptr, ptr %i.dq, align 8            ; 3 uses
  store i64 %i.b, ptr %i.ee, align 8
  fence syncscope("singlethread") seq_cst
  %invariant.gep68 = getelementptr [256 x i8], ptr %i.du, i64 %i.dw ; 3 uses
  br label %bb.an

bb.an:                                            ; preds = %.unr-lcssa, %bb.am
  %.4154.i.i = phi i64 [ %i.gt, %bb.am ], [ %.lcssa78, %.unr-lcssa ] ; 6 uses
  %.4147.i.i = phi i64 [ %i.gq, %bb.am ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.gy = ashr i64 %.4154.i.i, 6
  %i.gz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8            ; 3 uses
  %i.hb = trunc i64 %.4154.i.i to i6
  %i.hc = sub i6 -4, %i.hb                        ; 2 uses
  %i.hd = and i6 %i.hc, 4
  %lcmp.mod.not.not = icmp eq i6 %i.hd, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.an
  %i.he = and i64 %.4154.i.i, 63
  %i.hf = shl nuw i64 1, %i.he
  %i.hg = and i64 %i.hf, %i.ha
  %.not168.i.i.prol = icmp eq i64 %i.hg, 0
  br i1 %.not168.i.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.hh = getelementptr inbounds i8, ptr %i.gx, i64 %.4147.i.i
  %.val.prol = load i8, ptr %i.hh, align 1
  %i.hi = zext i8 %.val.prol to i32
  %gep69.prol = getelementptr i8, ptr %invariant.gep68, i64 %.4154.i.i
  store i32 %i.hi, ptr %gep69.prol, align 4
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.hj = add i64 %.4154.i.i, 4                   ; 2 uses
  %i.hk = add i64 %.4147.i.i, 1                   ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.an
  %.lcssa78.unr = phi i64 [ poison, %bb.an ], [ %i.hj, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.an ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %.5155.i.i.unr = phi i64 [ %.4154.i.i, %bb.an ], [ %i.hj, %.prol.loopexit.unr-lcssa ]
  %.5148.i.i.unr = phi i64 [ %.4147.i.i, %bb.an ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %i.hl = icmp ult i6 %i.hc, 4
  br i1 %i.hl, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.ap
  %.5155.i.i = phi i64 [ %i.hy, %bb.ap ], [ %.5155.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.5148.i.i = phi i64 [ %i.hz, %bb.ap ], [ %.5148.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hm = and i64 %.5155.i.i, 63
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = and i64 %i.hn, %i.ha
  %.not168.i.i = icmp eq i64 %i.ho, 0
  br i1 %.not168.i.i, label %bb.ao, label %.preheader

.preheader:                                       ; preds = %.new
  %i.hp = getelementptr inbounds i8, ptr %i.gx, i64 %.5148.i.i
  %.val = load i8, ptr %i.hp, align 1
  %i.hq = zext i8 %.val to i32
  %gep69 = getelementptr i8, ptr %invariant.gep68, i64 %.5155.i.i
  store i32 %i.hq, ptr %gep69, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader, %.new
  %i.hr = add i64 %.5155.i.i, 4                   ; 2 uses
  %i.hs = and i64 %i.hr, 63
  %i.ht = shl nuw i64 1, %i.hs
  %i.hu = and i64 %i.ht, %i.ha
  %.not168.i.i.1 = icmp eq i64 %i.hu, 0
  br i1 %.not168.i.i.1, label %bb.ap, label %.preheader.1

.preheader.1:                                     ; preds = %bb.ao
  %i.hv = getelementptr i8, ptr %i.gx, i64 %.5148.i.i
  %i.hw = getelementptr i8, ptr %i.hv, i64 1
  %.val.1 = load i8, ptr %i.hw, align 1
  %i.hx = zext i8 %.val.1 to i32
  %gep69.1 = getelementptr i8, ptr %invariant.gep68, i64 %i.hr
  store i32 %i.hx, ptr %gep69.1, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader.1, %bb.ao
  %i.hy = add i64 %.5155.i.i, 8                   ; 3 uses
  %i.hz = add i64 %.5148.i.i, 2                   ; 2 uses
  %i.ia = and i64 %i.hy, 63
  %.not169.i.i.1 = icmp eq i64 %i.ia, 0
  br i1 %.not169.i.i.1, label %.unr-lcssa, label %.new, !llvm.loop !22

.unr-lcssa:                                       ; preds = %bb.ap, %.prol.loopexit
  %.lcssa78 = phi i64 [ %.lcssa78.unr, %.prol.loopexit ], [ %i.hy, %bb.ap ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.hz, %bb.ap ]
  %.not170.i.i = icmp sgt i64 %.lcssa78, %i.gw
  br i1 %.not170.i.i, label %bb.aq, label %bb.an, !llvm.loop !23

bb.aq:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.ee, align 8
  br label %sve_ldN_r_mte.exit

sve_ldN_r_mte.exit:                               ; preds = %sve_cont_ldst_elements.exit.preheader, %.preheader14, %bb.al, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bdu_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 34 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]   ; 3 uses
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i4 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i4, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10                       ; 3 uses
  %i.ar = icmp sgt i64 %.178.i, -1
  br i1 %i.ar, label %bb.j, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.at = and i32 %i.aq, 31
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [256 x i8], ptr %i.as, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.av, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldN_r_mte.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = trunc i64 %.178.i to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i16 %i.ax, ptr %i.ay, align 4
  %i.az = lshr i64 %.178.i, 3
  %i.ba = trunc i64 %i.az to i16
  store i16 %i.ba, ptr %4, align 8
  %i.bb = lshr i64 %.1.i, 3
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bd = or i64 %i.bc, %2                        ; 2 uses
  %i.be = sub i64 0, %i.bd                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.bb, %i.be
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bf = trunc nuw nsw i64 %.1.i to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bf, ptr %i.bg, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bh = trunc i64 %i.be to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bh, ptr %i.bi, align 8
  %i.bj = shl i64 %i.be, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bd, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = trunc i64 %i.bj to i16
  %i.bl = add i16 %i.bk, -8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bl, ptr %i.bm, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bj, i64 noundef %i.z, i32 noundef 3) ; 3 uses
  %i.bo = icmp sle i64 %i.bn, %.1.i
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = trunc i64 %i.bn to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = lshr i64 %i.bn, 3
  %i.bs = trunc i64 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = trunc nuw nsw i64 %.1.i to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bu, ptr %i.bv, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %.not.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i, label %sve_cont_ldst_mte_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.by = load i8, ptr %i.bx, align 4, !range !88, !noundef !89
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %.loopexit55.i

bb.q:                                             ; preds = %bb.p
  %i.ca = load i16, ptr %i.ay, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cd = load i16, ptr %i.cc, align 2            ; 2 uses
  %i.ce = icmp slt i16 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load i16, ptr %i.cf, align 8
  %.0.in.i = select i1 %i.ce, i16 %i.cg, i16 %i.cd
  %.0.i5 = sext i16 %.0.in.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.042.i = phi i64 [ %i.cb, %bb.q ], [ %i.co, %bb.v ] ; 2 uses
  %i.ch = ashr i64 %.042.i, 6
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.1.i6 = phi i64 [ %.042.i, %bb.r ], [ %i.co, %bb.u ] ; 2 uses
  %i.ck = and i64 %.1.i6, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cj
  %.not.i7 = icmp eq i64 %i.cm, 0
  br i1 %.not.i7, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = add nsw i64 %.1.i6, 8                   ; 4 uses
  %i.cp = icmp sle i64 %i.co, %.0.i5              ; 2 uses
  %i.cq = and i64 %i.co, 63
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = and i1 %i.cp, %i.cr
  br i1 %i.cs, label %bb.s, label %bb.v, !llvm.loop !25

bb.v:                                             ; preds = %bb.u
  br i1 %i.cp, label %bb.r, label %.loopexit55.i, !llvm.loop !26

.loopexit55.i:                                    ; preds = %bb.v, %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp sgt i16 %i.cu, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.cx = load i8, ptr %i.cw, align 4, !range !88
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.w, label %sve_cont_ldst_mte_check.exit

bb.w:                                             ; preds = %.loopexit55.i
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = sext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = sext i16 %i.dd to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %.2.i = phi i64 [ %i.db, %bb.w ], [ %i.dm, %bb.ab ] ; 2 uses
  %i.df = ashr i64 %.2.i, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.3.i = phi i64 [ %.2.i, %bb.x ], [ %i.dm, %bb.aa ] ; 2 uses
  %i.di = and i64 %.3.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not52.i = icmp eq i64 %i.dk, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dm = add i64 %.3.i, 8                        ; 4 uses
  %i.dn = and i64 %i.dm, 63
  %.not53.i = icmp eq i64 %i.dn, 0
  br i1 %.not53.i, label %bb.ab, label %bb.y, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp sgt i64 %i.dm, %i.de
  br i1 %.not54.i, label %sve_cont_ldst_mte_check.exit, label %bb.x, !llvm.loop !28

sve_cont_ldst_mte_check.exit:                     ; preds = %bb.ab, %.loopexit55.i, %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = or i32 %i.ds, %i.dp
  %.not166.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not166.i.i, label %.preheader13, label %bb.ac, !prof !85

.preheader13:                                     ; preds = %sve_cont_ldst_mte_check.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.dv = and i32 %i.aq, 31
  %i.dw = zext nneg i32 %i.dv to i64              ; 4 uses
  %i.dx = getelementptr inbounds nuw [256 x i8], ptr %i.du, i64 %i.dw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dx, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.dy = load i16, ptr %4, align 8
  %i.dz = load i16, ptr %i.ay, align 4            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eb = load i16, ptr %i.ea, align 8            ; 2 uses
  %i.ec = sext i16 %i.eb to i64                   ; 2 uses
  %i.ed = load ptr, ptr %i.ab, align 8
  %i.ee = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.b, ptr %i.ee, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i.i32 = icmp sgt i16 %i.dz, %i.eb
  br i1 %.not167.i.i32, label %._crit_edge, label %.lr.ph

bb.ac:                                            ; preds = %sve_cont_ldst_mte_check.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.ef = load i16, ptr %4, align 8
  %i.eg = sext i16 %i.ef to i64
  %i.eh = load i16, ptr %i.ay, align 4
  %i.ei = sext i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.el = load i16, ptr %i.ek, align 2            ; 2 uses
  %i.em = icmp slt i16 %i.el, 0
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.eo = load i16, ptr %i.en, align 2            ; 2 uses
  %i.ep = icmp slt i16 %i.eo, 0
  %i.eq = load i16, ptr %i.ej, align 8
  %spec.select.i.i = select i1 %i.ep, i16 %i.eq, i16 %i.eo
  %.0149.in.i.i = select i1 %i.em, i16 %spec.select.i.i, i16 %i.el
  %.0149.i.i = sext i16 %.0149.in.i.i to i64
  br label %bb.ad
end_hunk_6
begin_hunk_7_@helper_sve_ld1bdu_r_mte:bb.a
  %i.ib = and i64 %i.ia, %i.ha
  %.not168.i.i.3 = icmp eq i64 %i.ib, 0
  br i1 %.not168.i.i.3, label %bb.au, label %.preheader.3

.preheader.3:                                     ; preds = %bb.at
  %i.ic = getelementptr inbounds i8, ptr %i.gx, i64 %i.hx
  %.val.3 = load i8, ptr %i.ic, align 1
  %i.id = zext i8 %.val.3 to i64
  %gep69.3 = getelementptr i8, ptr %invariant.gep68, i64 %i.hw
  store i64 %i.id, ptr %gep69.3, align 8
  br label %bb.au

bb.au:                                            ; preds = %.preheader.3, %bb.at
  %i.ie = add i64 %.4154.i.i, 32                  ; 4 uses
  %i.if = add i64 %.4147.i.i, 4                   ; 2 uses
  %i.ig = and i64 %i.ie, 63
  %.not169.i.i.3 = icmp eq i64 %i.ig, 0
  br i1 %.not169.i.i.3, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ih = and i64 %i.ie, 63
  %i.ii = shl nuw i64 1, %i.ih
  %i.ij = and i64 %i.ii, %i.ha
  %.not168.i.i.4 = icmp eq i64 %i.ij, 0
  br i1 %.not168.i.i.4, label %bb.aw, label %.preheader.4

.preheader.4:                                     ; preds = %bb.av
  %i.ik = getelementptr inbounds i8, ptr %i.gx, i64 %i.if
  %.val.4 = load i8, ptr %i.ik, align 1
  %i.il = zext i8 %.val.4 to i64
  %gep69.4 = getelementptr i8, ptr %invariant.gep68, i64 %i.ie
  store i64 %i.il, ptr %gep69.4, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader.4, %bb.av
  %i.im = add i64 %.4154.i.i, 40                  ; 4 uses
  %i.in = add i64 %.4147.i.i, 5                   ; 2 uses
  %i.io = and i64 %i.im, 63
  %.not169.i.i.4 = icmp eq i64 %i.io, 0
  br i1 %.not169.i.i.4, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ip = and i64 %i.im, 63
  %i.iq = shl nuw i64 1, %i.ip
  %i.ir = and i64 %i.iq, %i.ha
  %.not168.i.i.5 = icmp eq i64 %i.ir, 0
  br i1 %.not168.i.i.5, label %bb.ay, label %.preheader.5

.preheader.5:                                     ; preds = %bb.ax
  %i.is = getelementptr inbounds i8, ptr %i.gx, i64 %i.in
  %.val.5 = load i8, ptr %i.is, align 1
  %i.it = zext i8 %.val.5 to i64
  %gep69.5 = getelementptr i8, ptr %invariant.gep68, i64 %i.im
  store i64 %i.it, ptr %gep69.5, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader.5, %bb.ax
  %i.iu = add i64 %.4154.i.i, 48                  ; 4 uses
  %i.iv = add i64 %.4147.i.i, 6                   ; 2 uses
  %i.iw = and i64 %i.iu, 63
  %.not169.i.i.5 = icmp eq i64 %i.iw, 0
  br i1 %.not169.i.i.5, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ix = and i64 %i.iu, 63
  %i.iy = shl nuw i64 1, %i.ix
  %i.iz = and i64 %i.iy, %i.ha
  %.not168.i.i.6 = icmp eq i64 %i.iz, 0
  br i1 %.not168.i.i.6, label %bb.ba, label %.preheader.6

.preheader.6:                                     ; preds = %bb.az
  %i.ja = getelementptr inbounds i8, ptr %i.gx, i64 %i.iv
  %.val.6 = load i8, ptr %i.ja, align 1
  %i.jb = zext i8 %.val.6 to i64
  %gep69.6 = getelementptr i8, ptr %invariant.gep68, i64 %i.iu
  store i64 %i.jb, ptr %gep69.6, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader.6, %bb.az
  %i.jc = add i64 %.4154.i.i, 56                  ; 4 uses
  %i.jd = add i64 %.4147.i.i, 7                   ; 2 uses
  %i.je = and i64 %i.jc, 63
  %.not169.i.i.6 = icmp eq i64 %i.je, 0
  br i1 %.not169.i.i.6, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jf = and i64 %i.jc, 63
  %i.jg = shl nuw i64 1, %i.jf
  %i.jh = and i64 %i.jg, %i.ha
  %.not168.i.i.7 = icmp eq i64 %i.jh, 0
  br i1 %.not168.i.i.7, label %bb.bc, label %.preheader.7

.preheader.7:                                     ; preds = %bb.bb
  %i.ji = getelementptr inbounds i8, ptr %i.gx, i64 %i.jd
  %.val.7 = load i8, ptr %i.ji, align 1
  %i.jj = zext i8 %.val.7 to i64
  %gep69.7 = getelementptr i8, ptr %invariant.gep68, i64 %i.jc
  store i64 %i.jj, ptr %gep69.7, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader.7, %bb.bb
  %i.jk = add i64 %.4154.i.i, 64
  %i.jl = add i64 %.4147.i.i, 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao
  %.lcssa78 = phi i64 [ %i.hg, %bb.ao ], [ %i.ho, %bb.aq ], [ %i.hw, %bb.as ], [ %i.ie, %bb.au ], [ %i.im, %bb.aw ], [ %i.iu, %bb.ay ], [ %i.jc, %bb.ba ], [ %i.jk, %bb.bc ] ; 2 uses
  %.lcssa = phi i64 [ %i.hh, %bb.ao ], [ %i.hp, %bb.aq ], [ %i.hx, %bb.as ], [ %i.if, %bb.au ], [ %i.in, %bb.aw ], [ %i.iv, %bb.ay ], [ %i.jd, %bb.ba ], [ %i.jl, %bb.bc ]
  %.not170.i.i = icmp sgt i64 %.lcssa78, %i.gw
  br i1 %.not170.i.i, label %bb.be, label %bb.an, !llvm.loop !23

bb.be:                                            ; preds = %bb.bd
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.ee, align 8
  br label %sve_ldN_r_mte.exit

sve_ldN_r_mte.exit:                               ; preds = %sve_cont_ldst_elements.exit.preheader, %.preheader14, %bb.al, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bhs_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 34 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]   ; 3 uses
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i4 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i4, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10                       ; 3 uses
  %i.ar = icmp sgt i64 %.178.i, -1
  br i1 %i.ar, label %bb.j, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.at = and i32 %i.aq, 31
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [256 x i8], ptr %i.as, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.av, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldN_r_mte.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = trunc i64 %.178.i to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i16 %i.ax, ptr %i.ay, align 4
  %i.az = lshr i64 %.178.i, 1
  %i.ba = trunc i64 %i.az to i16
  store i16 %i.ba, ptr %4, align 8
  %i.bb = lshr i64 %.1.i, 1
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bd = or i64 %i.bc, %2                        ; 2 uses
  %i.be = sub i64 0, %i.bd                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.bb, %i.be
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bf = trunc nuw nsw i64 %.1.i to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bf, ptr %i.bg, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bh = trunc i64 %i.be to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bh, ptr %i.bi, align 8
  %i.bj = shl i64 %i.be, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bd, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = trunc i64 %i.bj to i16
  %i.bl = add i16 %i.bk, -2
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bl, ptr %i.bm, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bj, i64 noundef %i.z, i32 noundef 1) ; 3 uses
  %i.bo = icmp sle i64 %i.bn, %.1.i
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = trunc i64 %i.bn to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = lshr i64 %i.bn, 1
  %i.bs = trunc i64 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = trunc nuw nsw i64 %.1.i to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bu, ptr %i.bv, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %.not.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i, label %sve_cont_ldst_mte_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.by = load i8, ptr %i.bx, align 4, !range !88, !noundef !89
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %.loopexit55.i

bb.q:                                             ; preds = %bb.p
  %i.ca = load i16, ptr %i.ay, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cd = load i16, ptr %i.cc, align 2            ; 2 uses
  %i.ce = icmp slt i16 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load i16, ptr %i.cf, align 8
  %.0.in.i = select i1 %i.ce, i16 %i.cg, i16 %i.cd
  %.0.i5 = sext i16 %.0.in.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.042.i = phi i64 [ %i.cb, %bb.q ], [ %i.co, %bb.v ] ; 2 uses
  %i.ch = ashr i64 %.042.i, 6
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.1.i6 = phi i64 [ %.042.i, %bb.r ], [ %i.co, %bb.u ] ; 2 uses
  %i.ck = and i64 %.1.i6, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cj
  %.not.i7 = icmp eq i64 %i.cm, 0
  br i1 %.not.i7, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = add nsw i64 %.1.i6, 2                   ; 4 uses
  %i.cp = icmp sle i64 %i.co, %.0.i5              ; 2 uses
  %i.cq = and i64 %i.co, 63
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = and i1 %i.cp, %i.cr
  br i1 %i.cs, label %bb.s, label %bb.v, !llvm.loop !25

bb.v:                                             ; preds = %bb.u
  br i1 %i.cp, label %bb.r, label %.loopexit55.i, !llvm.loop !26

.loopexit55.i:                                    ; preds = %bb.v, %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp sgt i16 %i.cu, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.cx = load i8, ptr %i.cw, align 4, !range !88
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.w, label %sve_cont_ldst_mte_check.exit

bb.w:                                             ; preds = %.loopexit55.i
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = sext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = sext i16 %i.dd to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %.2.i = phi i64 [ %i.db, %bb.w ], [ %i.dm, %bb.ab ] ; 2 uses
  %i.df = ashr i64 %.2.i, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.3.i = phi i64 [ %.2.i, %bb.x ], [ %i.dm, %bb.aa ] ; 2 uses
  %i.di = and i64 %.3.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not52.i = icmp eq i64 %i.dk, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dm = add i64 %.3.i, 2                        ; 4 uses
  %i.dn = and i64 %i.dm, 63
  %.not53.i = icmp eq i64 %i.dn, 0
  br i1 %.not53.i, label %bb.ab, label %bb.y, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp sgt i64 %i.dm, %i.de
  br i1 %.not54.i, label %sve_cont_ldst_mte_check.exit, label %bb.x, !llvm.loop !28

sve_cont_ldst_mte_check.exit:                     ; preds = %bb.ab, %.loopexit55.i, %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = or i32 %i.ds, %i.dp
  %.not166.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not166.i.i, label %.preheader13, label %bb.ac, !prof !85

.preheader13:                                     ; preds = %sve_cont_ldst_mte_check.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.dv = and i32 %i.aq, 31
  %i.dw = zext nneg i32 %i.dv to i64              ; 4 uses
  %i.dx = getelementptr inbounds nuw [256 x i8], ptr %i.du, i64 %i.dw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dx, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.dy = load i16, ptr %4, align 8
  %i.dz = load i16, ptr %i.ay, align 4            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eb = load i16, ptr %i.ea, align 8            ; 2 uses
  %i.ec = sext i16 %i.eb to i64                   ; 2 uses
  %i.ed = load ptr, ptr %i.ab, align 8
  %i.ee = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.b, ptr %i.ee, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i.i32 = icmp sgt i16 %i.dz, %i.eb
  br i1 %.not167.i.i32, label %._crit_edge, label %.lr.ph

bb.ac:                                            ; preds = %sve_cont_ldst_mte_check.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.ef = load i16, ptr %4, align 8
  %i.eg = sext i16 %i.ef to i64
  %i.eh = load i16, ptr %i.ay, align 4
  %i.ei = sext i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.el = load i16, ptr %i.ek, align 2            ; 2 uses
  %i.em = icmp slt i16 %i.el, 0
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.eo = load i16, ptr %i.en, align 2            ; 2 uses
  %i.ep = icmp slt i16 %i.eo, 0
  %i.eq = load i16, ptr %i.ej, align 8
  %spec.select.i.i = select i1 %i.ep, i16 %i.eq, i16 %i.eo
  %.0149.in.i.i = select i1 %i.em, i16 %spec.select.i.i, i16 %i.el
  %.0149.i.i = sext i16 %.0149.in.i.i to i64
  br label %bb.ad
end_hunk_7
begin_hunk_8_@helper_sve_ld1bhs_r_mte:bb.a
  %gep37 = getelementptr [256 x i8], ptr %invariant.gep36, i64 %i.dw
  store i16 %i.gm, ptr %gep37, align 2
  br label %bb.al

bb.al:                                            ; preds = %.loopexit10, %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.go = load i16, ptr %i.gn, align 2            ; 2 uses
  %i.gp = icmp sgt i16 %i.go, -1
  br i1 %i.gp, label %bb.am, label %sve_ldN_r_mte.exit, !prof !76

bb.am:                                            ; preds = %bb.al
  %i.gq = zext nneg i16 %i.go to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = sext i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gv = load i16, ptr %i.gu, align 2
  %i.gw = sext i16 %i.gv to i64
  %i.gx = load ptr, ptr %i.dq, align 8            ; 3 uses
  store i64 %i.b, ptr %i.ee, align 8
  fence syncscope("singlethread") seq_cst
  %invariant.gep68 = getelementptr [256 x i8], ptr %i.du, i64 %i.dw ; 3 uses
  br label %bb.an

bb.an:                                            ; preds = %.unr-lcssa, %bb.am
  %.4154.i.i = phi i64 [ %i.gt, %bb.am ], [ %.lcssa78, %.unr-lcssa ] ; 6 uses
  %.4147.i.i = phi i64 [ %i.gq, %bb.am ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.gy = ashr i64 %.4154.i.i, 6
  %i.gz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8            ; 3 uses
  %i.hb = trunc i64 %.4154.i.i to i6
  %i.hc = sub i6 -2, %i.hb                        ; 2 uses
  %i.hd = and i6 %i.hc, 2
  %lcmp.mod.not.not = icmp eq i6 %i.hd, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.an
  %i.he = and i64 %.4154.i.i, 63
  %i.hf = shl nuw i64 1, %i.he
  %i.hg = and i64 %i.hf, %i.ha
  %.not168.i.i.prol = icmp eq i64 %i.hg, 0
  br i1 %.not168.i.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.hh = getelementptr inbounds i8, ptr %i.gx, i64 %.4147.i.i
  %.val.prol = load i8, ptr %i.hh, align 1
  %i.hi = sext i8 %.val.prol to i16
  %gep69.prol = getelementptr i8, ptr %invariant.gep68, i64 %.4154.i.i
  store i16 %i.hi, ptr %gep69.prol, align 2
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.hj = add i64 %.4154.i.i, 2                   ; 2 uses
  %i.hk = add i64 %.4147.i.i, 1                   ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.an
  %.lcssa78.unr = phi i64 [ poison, %bb.an ], [ %i.hj, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.an ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %.5155.i.i.unr = phi i64 [ %.4154.i.i, %bb.an ], [ %i.hj, %.prol.loopexit.unr-lcssa ]
  %.5148.i.i.unr = phi i64 [ %.4147.i.i, %bb.an ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %i.hl = icmp ult i6 %i.hc, 2
  br i1 %i.hl, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.ap
  %.5155.i.i = phi i64 [ %i.hy, %bb.ap ], [ %.5155.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.5148.i.i = phi i64 [ %i.hz, %bb.ap ], [ %.5148.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hm = and i64 %.5155.i.i, 63
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = and i64 %i.hn, %i.ha
  %.not168.i.i = icmp eq i64 %i.ho, 0
  br i1 %.not168.i.i, label %bb.ao, label %.preheader

.preheader:                                       ; preds = %.new
  %i.hp = getelementptr inbounds i8, ptr %i.gx, i64 %.5148.i.i
  %.val = load i8, ptr %i.hp, align 1
  %i.hq = sext i8 %.val to i16
  %gep69 = getelementptr i8, ptr %invariant.gep68, i64 %.5155.i.i
  store i16 %i.hq, ptr %gep69, align 2
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader, %.new
  %i.hr = add i64 %.5155.i.i, 2                   ; 2 uses
  %i.hs = and i64 %i.hr, 63
  %i.ht = shl nuw i64 1, %i.hs
  %i.hu = and i64 %i.ht, %i.ha
  %.not168.i.i.1 = icmp eq i64 %i.hu, 0
  br i1 %.not168.i.i.1, label %bb.ap, label %.preheader.1

.preheader.1:                                     ; preds = %bb.ao
  %i.hv = getelementptr i8, ptr %i.gx, i64 %.5148.i.i
  %i.hw = getelementptr i8, ptr %i.hv, i64 1
  %.val.1 = load i8, ptr %i.hw, align 1
  %i.hx = sext i8 %.val.1 to i16
  %gep69.1 = getelementptr i8, ptr %invariant.gep68, i64 %i.hr
  store i16 %i.hx, ptr %gep69.1, align 2
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader.1, %bb.ao
  %i.hy = add i64 %.5155.i.i, 4                   ; 3 uses
  %i.hz = add i64 %.5148.i.i, 2                   ; 2 uses
  %i.ia = and i64 %i.hy, 63
  %.not169.i.i.1 = icmp eq i64 %i.ia, 0
  br i1 %.not169.i.i.1, label %.unr-lcssa, label %.new, !llvm.loop !22

.unr-lcssa:                                       ; preds = %bb.ap, %.prol.loopexit
  %.lcssa78 = phi i64 [ %.lcssa78.unr, %.prol.loopexit ], [ %i.hy, %bb.ap ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.hz, %bb.ap ]
  %.not170.i.i = icmp sgt i64 %.lcssa78, %i.gw
  br i1 %.not170.i.i, label %bb.aq, label %bb.an, !llvm.loop !23

bb.aq:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.ee, align 8
  br label %sve_ldN_r_mte.exit

sve_ldN_r_mte.exit:                               ; preds = %sve_cont_ldst_elements.exit.preheader, %.preheader14, %bb.al, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bss_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 34 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]   ; 3 uses
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i4 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i4, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10                       ; 3 uses
  %i.ar = icmp sgt i64 %.178.i, -1
  br i1 %i.ar, label %bb.j, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.at = and i32 %i.aq, 31
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [256 x i8], ptr %i.as, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.av, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldN_r_mte.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = trunc i64 %.178.i to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i16 %i.ax, ptr %i.ay, align 4
  %i.az = lshr i64 %.178.i, 2
  %i.ba = trunc i64 %i.az to i16
  store i16 %i.ba, ptr %4, align 8
  %i.bb = lshr i64 %.1.i, 2
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bd = or i64 %i.bc, %2                        ; 2 uses
  %i.be = sub i64 0, %i.bd                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.bb, %i.be
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bf = trunc nuw nsw i64 %.1.i to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bf, ptr %i.bg, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bh = trunc i64 %i.be to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bh, ptr %i.bi, align 8
  %i.bj = shl i64 %i.be, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bd, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = trunc i64 %i.bj to i16
  %i.bl = add i16 %i.bk, -4
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bl, ptr %i.bm, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bj, i64 noundef %i.z, i32 noundef 2) ; 3 uses
  %i.bo = icmp sle i64 %i.bn, %.1.i
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = trunc i64 %i.bn to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = lshr i64 %i.bn, 2
  %i.bs = trunc i64 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = trunc nuw nsw i64 %.1.i to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bu, ptr %i.bv, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %.not.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i, label %sve_cont_ldst_mte_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.by = load i8, ptr %i.bx, align 4, !range !88, !noundef !89
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %.loopexit55.i

bb.q:                                             ; preds = %bb.p
  %i.ca = load i16, ptr %i.ay, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cd = load i16, ptr %i.cc, align 2            ; 2 uses
  %i.ce = icmp slt i16 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load i16, ptr %i.cf, align 8
  %.0.in.i = select i1 %i.ce, i16 %i.cg, i16 %i.cd
  %.0.i5 = sext i16 %.0.in.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.042.i = phi i64 [ %i.cb, %bb.q ], [ %i.co, %bb.v ] ; 2 uses
  %i.ch = ashr i64 %.042.i, 6
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.1.i6 = phi i64 [ %.042.i, %bb.r ], [ %i.co, %bb.u ] ; 2 uses
  %i.ck = and i64 %.1.i6, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cj
  %.not.i7 = icmp eq i64 %i.cm, 0
  br i1 %.not.i7, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = add nsw i64 %.1.i6, 4                   ; 4 uses
  %i.cp = icmp sle i64 %i.co, %.0.i5              ; 2 uses
  %i.cq = and i64 %i.co, 63
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = and i1 %i.cp, %i.cr
  br i1 %i.cs, label %bb.s, label %bb.v, !llvm.loop !25

bb.v:                                             ; preds = %bb.u
  br i1 %i.cp, label %bb.r, label %.loopexit55.i, !llvm.loop !26

.loopexit55.i:                                    ; preds = %bb.v, %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp sgt i16 %i.cu, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.cx = load i8, ptr %i.cw, align 4, !range !88
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.w, label %sve_cont_ldst_mte_check.exit

bb.w:                                             ; preds = %.loopexit55.i
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = sext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = sext i16 %i.dd to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %.2.i = phi i64 [ %i.db, %bb.w ], [ %i.dm, %bb.ab ] ; 2 uses
  %i.df = ashr i64 %.2.i, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.3.i = phi i64 [ %.2.i, %bb.x ], [ %i.dm, %bb.aa ] ; 2 uses
  %i.di = and i64 %.3.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not52.i = icmp eq i64 %i.dk, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dm = add i64 %.3.i, 4                        ; 4 uses
  %i.dn = and i64 %i.dm, 63
  %.not53.i = icmp eq i64 %i.dn, 0
  br i1 %.not53.i, label %bb.ab, label %bb.y, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp sgt i64 %i.dm, %i.de
  br i1 %.not54.i, label %sve_cont_ldst_mte_check.exit, label %bb.x, !llvm.loop !28

sve_cont_ldst_mte_check.exit:                     ; preds = %bb.ab, %.loopexit55.i, %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = or i32 %i.ds, %i.dp
  %.not166.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not166.i.i, label %.preheader13, label %bb.ac, !prof !85

.preheader13:                                     ; preds = %sve_cont_ldst_mte_check.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.dv = and i32 %i.aq, 31
  %i.dw = zext nneg i32 %i.dv to i64              ; 4 uses
  %i.dx = getelementptr inbounds nuw [256 x i8], ptr %i.du, i64 %i.dw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dx, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.dy = load i16, ptr %4, align 8
  %i.dz = load i16, ptr %i.ay, align 4            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eb = load i16, ptr %i.ea, align 8            ; 2 uses
  %i.ec = sext i16 %i.eb to i64                   ; 2 uses
  %i.ed = load ptr, ptr %i.ab, align 8
  %i.ee = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.b, ptr %i.ee, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i.i32 = icmp sgt i16 %i.dz, %i.eb
  br i1 %.not167.i.i32, label %._crit_edge, label %.lr.ph

bb.ac:                                            ; preds = %sve_cont_ldst_mte_check.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.ef = load i16, ptr %4, align 8
  %i.eg = sext i16 %i.ef to i64
  %i.eh = load i16, ptr %i.ay, align 4
  %i.ei = sext i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.el = load i16, ptr %i.ek, align 2            ; 2 uses
  %i.em = icmp slt i16 %i.el, 0
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.eo = load i16, ptr %i.en, align 2            ; 2 uses
  %i.ep = icmp slt i16 %i.eo, 0
  %i.eq = load i16, ptr %i.ej, align 8
  %spec.select.i.i = select i1 %i.ep, i16 %i.eq, i16 %i.eo
  %.0149.in.i.i = select i1 %i.em, i16 %spec.select.i.i, i16 %i.el
  %.0149.i.i = sext i16 %.0149.in.i.i to i64
  br label %bb.ad
end_hunk_8
begin_hunk_9_@helper_sve_ld1bss_r_mte:bb.a
  %gep37 = getelementptr [256 x i8], ptr %invariant.gep36, i64 %i.dw
  store i32 %i.gm, ptr %gep37, align 4
  br label %bb.al

bb.al:                                            ; preds = %.loopexit10, %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.go = load i16, ptr %i.gn, align 2            ; 2 uses
  %i.gp = icmp sgt i16 %i.go, -1
  br i1 %i.gp, label %bb.am, label %sve_ldN_r_mte.exit, !prof !76

bb.am:                                            ; preds = %bb.al
  %i.gq = zext nneg i16 %i.go to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = sext i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gv = load i16, ptr %i.gu, align 2
  %i.gw = sext i16 %i.gv to i64
  %i.gx = load ptr, ptr %i.dq, align 8            ; 3 uses
  store i64 %i.b, ptr %i.ee, align 8
  fence syncscope("singlethread") seq_cst
  %invariant.gep68 = getelementptr [256 x i8], ptr %i.du, i64 %i.dw ; 3 uses
  br label %bb.an

bb.an:                                            ; preds = %.unr-lcssa, %bb.am
  %.4154.i.i = phi i64 [ %i.gt, %bb.am ], [ %.lcssa78, %.unr-lcssa ] ; 6 uses
  %.4147.i.i = phi i64 [ %i.gq, %bb.am ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.gy = ashr i64 %.4154.i.i, 6
  %i.gz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8            ; 3 uses
  %i.hb = trunc i64 %.4154.i.i to i6
  %i.hc = sub i6 -4, %i.hb                        ; 2 uses
  %i.hd = and i6 %i.hc, 4
  %lcmp.mod.not.not = icmp eq i6 %i.hd, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.an
  %i.he = and i64 %.4154.i.i, 63
  %i.hf = shl nuw i64 1, %i.he
  %i.hg = and i64 %i.hf, %i.ha
  %.not168.i.i.prol = icmp eq i64 %i.hg, 0
  br i1 %.not168.i.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.hh = getelementptr inbounds i8, ptr %i.gx, i64 %.4147.i.i
  %.val.prol = load i8, ptr %i.hh, align 1
  %i.hi = sext i8 %.val.prol to i32
  %gep69.prol = getelementptr i8, ptr %invariant.gep68, i64 %.4154.i.i
  store i32 %i.hi, ptr %gep69.prol, align 4
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.hj = add i64 %.4154.i.i, 4                   ; 2 uses
  %i.hk = add i64 %.4147.i.i, 1                   ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.an
  %.lcssa78.unr = phi i64 [ poison, %bb.an ], [ %i.hj, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.an ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %.5155.i.i.unr = phi i64 [ %.4154.i.i, %bb.an ], [ %i.hj, %.prol.loopexit.unr-lcssa ]
  %.5148.i.i.unr = phi i64 [ %.4147.i.i, %bb.an ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %i.hl = icmp ult i6 %i.hc, 4
  br i1 %i.hl, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.ap
  %.5155.i.i = phi i64 [ %i.hy, %bb.ap ], [ %.5155.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.5148.i.i = phi i64 [ %i.hz, %bb.ap ], [ %.5148.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hm = and i64 %.5155.i.i, 63
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = and i64 %i.hn, %i.ha
  %.not168.i.i = icmp eq i64 %i.ho, 0
  br i1 %.not168.i.i, label %bb.ao, label %.preheader

.preheader:                                       ; preds = %.new
  %i.hp = getelementptr inbounds i8, ptr %i.gx, i64 %.5148.i.i
  %.val = load i8, ptr %i.hp, align 1
  %i.hq = sext i8 %.val to i32
  %gep69 = getelementptr i8, ptr %invariant.gep68, i64 %.5155.i.i
  store i32 %i.hq, ptr %gep69, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %.preheader, %.new
  %i.hr = add i64 %.5155.i.i, 4                   ; 2 uses
  %i.hs = and i64 %i.hr, 63
  %i.ht = shl nuw i64 1, %i.hs
  %i.hu = and i64 %i.ht, %i.ha
  %.not168.i.i.1 = icmp eq i64 %i.hu, 0
  br i1 %.not168.i.i.1, label %bb.ap, label %.preheader.1

.preheader.1:                                     ; preds = %bb.ao
  %i.hv = getelementptr i8, ptr %i.gx, i64 %.5148.i.i
  %i.hw = getelementptr i8, ptr %i.hv, i64 1
  %.val.1 = load i8, ptr %i.hw, align 1
  %i.hx = sext i8 %.val.1 to i32
  %gep69.1 = getelementptr i8, ptr %invariant.gep68, i64 %i.hr
  store i32 %i.hx, ptr %gep69.1, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader.1, %bb.ao
  %i.hy = add i64 %.5155.i.i, 8                   ; 3 uses
  %i.hz = add i64 %.5148.i.i, 2                   ; 2 uses
  %i.ia = and i64 %i.hy, 63
  %.not169.i.i.1 = icmp eq i64 %i.ia, 0
  br i1 %.not169.i.i.1, label %.unr-lcssa, label %.new, !llvm.loop !22

.unr-lcssa:                                       ; preds = %bb.ap, %.prol.loopexit
  %.lcssa78 = phi i64 [ %.lcssa78.unr, %.prol.loopexit ], [ %i.hy, %bb.ap ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.hz, %bb.ap ]
  %.not170.i.i = icmp sgt i64 %.lcssa78, %i.gw
  br i1 %.not170.i.i, label %bb.aq, label %bb.an, !llvm.loop !23

bb.aq:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.ee, align 8
  br label %sve_ldN_r_mte.exit

sve_ldN_r_mte.exit:                               ; preds = %sve_cont_ldst_elements.exit.preheader, %.preheader14, %bb.al, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ld1bds_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 34 uses
  %5 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]   ; 3 uses
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i4 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i4
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i4, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i4, 1
  %exitcond.not.i = icmp eq i64 %.0.i4, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10                       ; 3 uses
  %i.ar = icmp sgt i64 %.178.i, -1
  br i1 %i.ar, label %bb.j, label %sve_cont_ldst_elements.exit.preheader, !prof !85

sve_cont_ldst_elements.exit.preheader:            ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.at = and i32 %i.aq, 31
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [256 x i8], ptr %i.as, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.av, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldN_r_mte.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = trunc i64 %.178.i to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i16 %i.ax, ptr %i.ay, align 4
  %i.az = lshr i64 %.178.i, 3
  %i.ba = trunc i64 %i.az to i16
  store i16 %i.ba, ptr %4, align 8
  %i.bb = lshr i64 %.1.i, 3
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bd = or i64 %i.bc, %2                        ; 2 uses
  %i.be = sub i64 0, %i.bd                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.bb, %i.be
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bf = trunc nuw nsw i64 %.1.i to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bf, ptr %i.bg, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bh = trunc i64 %i.be to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bh, ptr %i.bi, align 8
  %i.bj = shl i64 %i.be, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bd, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = trunc i64 %i.bj to i16
  %i.bl = add i16 %i.bk, -8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bl, ptr %i.bm, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bj, i64 noundef %i.z, i32 noundef 3) ; 3 uses
  %i.bo = icmp sle i64 %i.bn, %.1.i
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = trunc i64 %i.bn to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = lshr i64 %i.bn, 3
  %i.bs = trunc i64 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = trunc nuw nsw i64 %.1.i to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bu, ptr %i.bv, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %.not.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i, label %sve_cont_ldst_mte_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.by = load i8, ptr %i.bx, align 4, !range !88, !noundef !89
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %.loopexit55.i

bb.q:                                             ; preds = %bb.p
  %i.ca = load i16, ptr %i.ay, align 4
  %i.cb = sext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cd = load i16, ptr %i.cc, align 2            ; 2 uses
  %i.ce = icmp slt i16 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load i16, ptr %i.cf, align 8
  %.0.in.i = select i1 %i.ce, i16 %i.cg, i16 %i.cd
  %.0.i5 = sext i16 %.0.in.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.042.i = phi i64 [ %i.cb, %bb.q ], [ %i.co, %bb.v ] ; 2 uses
  %i.ch = ashr i64 %.042.i, 6
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.1.i6 = phi i64 [ %.042.i, %bb.r ], [ %i.co, %bb.u ] ; 2 uses
  %i.ck = and i64 %.1.i6, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cj
  %.not.i7 = icmp eq i64 %i.cm, 0
  br i1 %.not.i7, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.co = add nsw i64 %.1.i6, 8                   ; 4 uses
  %i.cp = icmp sle i64 %i.co, %.0.i5              ; 2 uses
  %i.cq = and i64 %i.co, 63
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = and i1 %i.cp, %i.cr
  br i1 %i.cs, label %bb.s, label %bb.v, !llvm.loop !25

bb.v:                                             ; preds = %bb.u
  br i1 %i.cp, label %bb.r, label %.loopexit55.i, !llvm.loop !26

.loopexit55.i:                                    ; preds = %bb.v, %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp sgt i16 %i.cu, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.cx = load i8, ptr %i.cw, align 4, !range !88
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.w, label %sve_cont_ldst_mte_check.exit

bb.w:                                             ; preds = %.loopexit55.i
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = sext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = sext i16 %i.dd to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %.2.i = phi i64 [ %i.db, %bb.w ], [ %i.dm, %bb.ab ] ; 2 uses
  %i.df = ashr i64 %.2.i, 6
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.3.i = phi i64 [ %.2.i, %bb.x ], [ %i.dm, %bb.aa ] ; 2 uses
  %i.di = and i64 %.3.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not52.i = icmp eq i64 %i.dk, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dm = add i64 %.3.i, 8                        ; 4 uses
  %i.dn = and i64 %i.dm, 63
  %.not53.i = icmp eq i64 %i.dn, 0
  br i1 %.not53.i, label %bb.ab, label %bb.y, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp sgt i64 %i.dm, %i.de
  br i1 %.not54.i, label %sve_cont_ldst_mte_check.exit, label %bb.x, !llvm.loop !28

sve_cont_ldst_mte_check.exit:                     ; preds = %bb.ab, %.loopexit55.i, %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = or i32 %i.ds, %i.dp
  %.not166.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not166.i.i, label %.preheader13, label %bb.ac, !prof !85

.preheader13:                                     ; preds = %sve_cont_ldst_mte_check.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 4 uses
  %i.dv = and i32 %i.aq, 31
  %i.dw = zext nneg i32 %i.dv to i64              ; 4 uses
  %i.dx = getelementptr inbounds nuw [256 x i8], ptr %i.du, i64 %i.dw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dx, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.dy = load i16, ptr %4, align 8
  %i.dz = load i16, ptr %i.ay, align 4            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eb = load i16, ptr %i.ea, align 8            ; 2 uses
  %i.ec = sext i16 %i.eb to i64                   ; 2 uses
  %i.ed = load ptr, ptr %i.ab, align 8
  %i.ee = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.b, ptr %i.ee, align 8
  fence syncscope("singlethread") seq_cst
  %.not167.i.i32 = icmp sgt i16 %i.dz, %i.eb
  br i1 %.not167.i.i32, label %._crit_edge, label %.lr.ph

bb.ac:                                            ; preds = %sve_cont_ldst_mte_check.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.ef = load i16, ptr %4, align 8
  %i.eg = sext i16 %i.ef to i64
  %i.eh = load i16, ptr %i.ay, align 4
  %i.ei = sext i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.el = load i16, ptr %i.ek, align 2            ; 2 uses
  %i.em = icmp slt i16 %i.el, 0
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.eo = load i16, ptr %i.en, align 2            ; 2 uses
  %i.ep = icmp slt i16 %i.eo, 0
  %i.eq = load i16, ptr %i.ej, align 8
  %spec.select.i.i = select i1 %i.ep, i16 %i.eq, i16 %i.eo
  %.0149.in.i.i = select i1 %i.em, i16 %spec.select.i.i, i16 %i.el
  %.0149.i.i = sext i16 %.0149.in.i.i to i64
  br label %bb.ad
end_hunk_9
begin_hunk_10_@helper_sve_ld1dqu_be_r_mte:bb.a
  %i.es = zext nneg i16 %i.eq to i64
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.eu = load i16, ptr %i.et, align 2
  %i.ev = sext i16 %i.eu to i64
  %i.ew = add i64 %2, %i.es                       ; 2 uses
  %invariant.gep34 = getelementptr i8, ptr %i.cg, i64 %i.ev
  %i.ex = shl i64 %i.ew, 8
  %i.ey = ashr exact i64 %i.ex, 8
  %i.ez = and i64 %i.ey, %i.ew
  %i.fa = call i64 @cpu_ldq_mmu(ptr noundef %0, i64 noundef %i.ez, i32 noundef 608, i64 noundef %i.b) #26
  %gep35 = getelementptr [256 x i8], ptr %invariant.gep34, i64 %i.ci ; 2 uses
  store i64 %i.fa, ptr %gep35, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %gep35, i64 8
  store i64 0, ptr %i.fb, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit7, %._crit_edge
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.fd = load i16, ptr %i.fc, align 2            ; 2 uses
  %i.fe = icmp sgt i16 %i.fd, -1
  br i1 %i.fe, label %bb.ac, label %sve_ldN_r_mte.exit, !prof !76

bb.ac:                                            ; preds = %bb.ab
  %i.ff = zext nneg i16 %i.fd to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.fh = load i16, ptr %i.fg, align 2
  %i.fi = sext i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.fk = load i16, ptr %i.fj, align 2
  %i.fl = sext i16 %i.fk to i64
  %i.fm = load ptr, ptr %i.cb, align 8            ; 4 uses
  store i64 %i.b, ptr %i.cr, align 8
  fence syncscope("singlethread") seq_cst
  %invariant.gep64 = getelementptr [256 x i8], ptr %i.cg, i64 %i.ci ; 4 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.4154.i.i = phi i64 [ %i.fi, %bb.ac ], [ %.lcssa74, %bb.al ] ; 7 uses
  %.4147.i.i = phi i64 [ %i.ff, %bb.ac ], [ %.lcssa, %bb.al ] ; 5 uses
  %i.fn = ashr i64 %.4154.i.i, 6
  %i.fo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8            ; 4 uses
  %i.fq = and i64 %.4154.i.i, 63
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fr, %i.fp
  %.not168.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not168.i.i, label %bb.ae, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.ft = getelementptr inbounds i8, ptr %i.fm, i64 %.4147.i.i
  %.val = load i64, ptr %i.ft, align 1
  %i.fu = call i64 @llvm.bswap.i64(i64 %.val)
  %gep65 = getelementptr i8, ptr %invariant.gep64, i64 %.4154.i.i ; 2 uses
  store i64 %i.fu, ptr %gep65, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %gep65, i64 8
  store i64 0, ptr %i.fv, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader, %bb.ad
  %i.fw = add i64 %.4154.i.i, 16                  ; 4 uses
  %i.fx = add i64 %.4147.i.i, 8                   ; 2 uses
  %i.fy = and i64 %i.fw, 63
  %.not169.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not169.i.i, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fz = and i64 %i.fw, 63
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = and i64 %i.ga, %i.fp
  %.not168.i.i.1 = icmp eq i64 %i.gb, 0
  br i1 %.not168.i.i.1, label %bb.ag, label %.preheader.1

.preheader.1:                                     ; preds = %bb.af
  %i.gc = getelementptr inbounds i8, ptr %i.fm, i64 %i.fx
  %.val.1 = load i64, ptr %i.gc, align 1
  %i.gd = call i64 @llvm.bswap.i64(i64 %.val.1)
  %gep65.1 = getelementptr i8, ptr %invariant.gep64, i64 %i.fw ; 2 uses
  store i64 %i.gd, ptr %gep65.1, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %gep65.1, i64 8
  store i64 0, ptr %i.ge, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader.1, %bb.af
  %i.gf = add i64 %.4154.i.i, 32                  ; 4 uses
  %i.gg = add i64 %.4147.i.i, 16                  ; 2 uses
  %i.gh = and i64 %i.gf, 63
  %.not169.i.i.1 = icmp eq i64 %i.gh, 0
  br i1 %.not169.i.i.1, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = and i64 %i.gf, 63
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = and i64 %i.gj, %i.fp
  %.not168.i.i.2 = icmp eq i64 %i.gk, 0
  br i1 %.not168.i.i.2, label %bb.ai, label %.preheader.2

.preheader.2:                                     ; preds = %bb.ah
  %i.gl = getelementptr inbounds i8, ptr %i.fm, i64 %i.gg
  %.val.2 = load i64, ptr %i.gl, align 1
  %i.gm = call i64 @llvm.bswap.i64(i64 %.val.2)
  %gep65.2 = getelementptr i8, ptr %invariant.gep64, i64 %i.gf ; 2 uses
  store i64 %i.gm, ptr %gep65.2, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %gep65.2, i64 8
  store i64 0, ptr %i.gn, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader.2, %bb.ah
  %i.go = add i64 %.4154.i.i, 48                  ; 4 uses
  %i.gp = add i64 %.4147.i.i, 24                  ; 2 uses
  %i.gq = and i64 %i.go, 63
  %.not169.i.i.2 = icmp eq i64 %i.gq, 0
  br i1 %.not169.i.i.2, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gr = and i64 %i.go, 63
  %i.gs = shl nuw i64 1, %i.gr
  %i.gt = and i64 %i.gs, %i.fp
  %.not168.i.i.3 = icmp eq i64 %i.gt, 0
  br i1 %.not168.i.i.3, label %bb.ak, label %.preheader.3

.preheader.3:                                     ; preds = %bb.aj
  %i.gu = getelementptr inbounds i8, ptr %i.fm, i64 %i.gp
  %.val.3 = load i64, ptr %i.gu, align 1
  %i.gv = call i64 @llvm.bswap.i64(i64 %.val.3)
  %gep65.3 = getelementptr i8, ptr %invariant.gep64, i64 %i.go ; 2 uses
  store i64 %i.gv, ptr %gep65.3, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %gep65.3, i64 8
  store i64 0, ptr %i.gw, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader.3, %bb.aj
  %i.gx = add i64 %.4154.i.i, 64
  %i.gy = add i64 %.4147.i.i, 32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.lcssa74 = phi i64 [ %i.fw, %bb.ae ], [ %i.gf, %bb.ag ], [ %i.go, %bb.ai ], [ %i.gx, %bb.ak ] ; 2 uses
  %.lcssa = phi i64 [ %i.fx, %bb.ae ], [ %i.gg, %bb.ag ], [ %i.gp, %bb.ai ], [ %i.gy, %bb.ak ]
  %.not170.i.i = icmp sgt i64 %.lcssa74, %i.fl
  br i1 %.not170.i.i, label %bb.am, label %bb.ad, !llvm.loop !23

bb.am:                                            ; preds = %bb.al
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cr, align 8
  br label %sve_ldN_r_mte.exit

sve_ldN_r_mte.exit:                               ; preds = %.preheader14, %.preheader11, %bb.ab, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bb_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr @pred_esz_masks, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i3, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 4 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 6 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16                ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  store i16 %i.ag, ptr %4, align 8
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.aj = or i64 %i.ai, %2                        ; 3 uses
  %i.ak = sub i64 0, %i.aj                        ; 3 uses
  %.not83.i.not = icmp slt i64 %.1.i, %i.ak
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.al = trunc nuw nsw i64 %.1.i to i16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.al, ptr %i.am, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.an = trunc i64 %i.ak to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.an, ptr %i.ao, align 8
  %.not84.i = icmp eq i64 %i.aj, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = trunc i64 %i.aj to i16
  %i.aq = xor i16 %i.ap, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.aq, ptr %i.ar, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.ak, i64 noundef %i.h, i32 noundef 0) ; 2 uses
  %i.at = icmp sle i64 %i.as, %.1.i
  tail call void @llvm.assume(i1 %i.at)
  %i.au = trunc i64 %i.as to i16                  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.au, ptr %i.aw, align 2
  %i.ax = trunc nuw nsw i64 %.1.i to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.ax, ptr %i.ay, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.az = ashr exact i64 %sext, 48                ; 4 uses
  %i.ba = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bb = load i16, ptr %4, align 8               ; 2 uses
  %i.bc = sext i16 %i.bb to i64                   ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bg = load i16, ptr %i.bf, align 4
  %i.bh = icmp eq i16 %i.bb, %i.bg                ; 2 uses
  %.not123.i = icmp ne i32 %i.be, 0
  %brmerge.i = select i1 %.not123.i, i1 true, i1 %i.bh, !prof !90
  br i1 %brmerge.i, label %bb.m, label %bb.p, !prof !91

bb.m:                                             ; preds = %bb.l
  %i.bi = add i64 %2, %i.bc                       ; 2 uses
  %i.bj = shl i64 %i.bi, 8
  %i.bk = ashr exact i64 %i.bj, 8
  %i.bl = and i64 %i.bk, %i.bi
  %i.bm = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.bl, i32 noundef 0, i64 noundef %i.z) #26
  %i.bn = getelementptr inbounds i8, ptr %i.ad, i64 %i.az
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = icmp eq i16 %i.ag, 0
  br i1 %i.bo, label %swap_memzero.exit, label %bb.n, !prof !85

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ad, i8 noundef 0, i64 noundef %i.az, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.m, %bb.n
  %i.bp = add nsw i64 %i.az, 1                    ; 4 uses
  %i.bq = add nsw i64 %i.bc, 1
  %i.br = icmp eq i64 %i.bp, %i.h
  br i1 %i.br, label %swap_memzero.exit4, label %bb.o, !prof !85

bb.o:                                             ; preds = %swap_memzero.exit
  %i.bs = sub nsw i64 %i.h, %i.bp
  %i.bt = getelementptr inbounds i8, ptr %i.ad, i64 %i.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bt, i8 noundef 0, i64 noundef %i.bs, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.o
  br i1 %i.bh, label %bb.x, label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.q

bb.q:                                             ; preds = %swap_memzero.exit4, %bb.p
  %.1109.i.ph = phi i64 [ %i.az, %bb.p ], [ %i.bp, %swap_memzero.exit4 ]
  %.1107.i.ph = phi i64 [ %i.bc, %bb.p ], [ %i.bq, %swap_memzero.exit4 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load i16, ptr %i.bu, align 8
  %i.bw = sext i16 %i.bv to i64                   ; 2 uses
  %i.bx = load ptr, ptr %i.j, align 8
  %i.by = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.by, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.3111.i = phi i64 [ %.1109.i.ph, %bb.q ], [ %i.ch, %bb.v ] ; 2 uses
  %.3.i = phi i64 [ %.1107.i.ph, %bb.q ], [ %i.ci, %bb.v ]
  %i.bz = ashr i64 %.3111.i, 3
  %i.ca = getelementptr inbounds i8, ptr %1, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.4112.i = phi i64 [ %.3111.i, %bb.r ], [ %i.ch, %bb.u ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.r ], [ %i.ci, %bb.u ] ; 2 uses
  %i.cc = and i64 %.4112.i, 63
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = and i64 %i.cd, %i.cb
  %.not124.i = icmp eq i64 %i.ce, 0
  br i1 %.not124.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds i8, ptr %i.bx, i64 %.4.i
  %.val = load i8, ptr %i.cf, align 1
  %i.cg = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i8 %.val, ptr %i.cg, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ch = add i64 %.4112.i, 1                     ; 5 uses
  %i.ci = add i64 %.4.i, 1                        ; 2 uses
  %i.cj = icmp sle i64 %i.ch, %i.bw
  %i.ck = and i64 %i.ch, 63
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i1 %i.cj, %i.cl
  br i1 %i.cm, label %bb.s, label %bb.v, !llvm.loop !30

bb.v:                                             ; preds = %bb.u
  %.not126.i = icmp sgt i64 %i.ch, %i.bw
  br i1 %.not126.i, label %bb.w, label %bb.r, !llvm.loop !31

bb.w:                                             ; preds = %bb.v
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.by, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.co = load i16, ptr %i.cn, align 2            ; 2 uses
  %i.cp = icmp sgt i16 %i.co, -1
  br i1 %i.cp, label %bb.y, label %bb.x

bb.x:                                             ; preds = %swap_memzero.exit4, %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cr = load i16, ptr %i.cq, align 2            ; 2 uses
  %i.cs = icmp slt i16 %i.cr, 0
  br i1 %i.cs, label %sve_ldnfff1_r.exit, label %bb.y, !prof !85

bb.y:                                             ; preds = %bb.x, %bb.w
  %.6.i.in = phi i16 [ %i.cr, %bb.x ], [ %i.co, %bb.w ]
  %.6.i = zext nneg i16 %.6.i.in to i64           ; 4 uses
  %i.ct = and i64 %.6.i, 63                       ; 2 uses
  %.not.i5 = icmp eq i64 %i.ct, 0
  br i1 %.not.i5, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.cv = sub nuw nsw i64 64, %i.ct
  %i.cw = lshr i64 -1, %i.cv
  %i.cx = lshr i64 %.6.i, 6
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cx ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = and i64 %i.cz, %i.cw
  store i64 %i.da, ptr %i.cy, align 8
  %i.db = add nuw nsw i64 %.6.i, 63
  %i.dc = and i64 %i.db, 65472
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i6 = phi i64 [ %i.dc, %bb.z ], [ %.6.i, %bb.y ] ; 3 uses
  %i.dd = icmp samesign ult i64 %.0.i6, %i.h
  br i1 %i.dd, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %i.de = lshr i64 %.0.i6, 3
  %i.df = and i64 %i.de, 8184
  %i.dg = getelementptr i8, ptr %0, i64 %i.df
  %scevgep.i = getelementptr i8, ptr %i.dg, i64 12592
  %i.dh = xor i64 %.0.i6, -1
  %i.di = add nsw i64 %i.dh, %i.h
  %i.dj = lshr i64 %i.di, 3
  %i.dk = and i64 %i.dj, 2305843009213693944
  %i.dl = add nuw nsw i64 %i.dk, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dl, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.aa, %sve_cont_ldst_elements.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bhu_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i3, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 6 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 1
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 1
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -2
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 1) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 1
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 4 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bm = load i16, ptr %i.bl, align 4
  %i.bn = icmp eq i16 %i.bh, %i.bm                ; 2 uses
  %.not123.i = icmp ne i32 %i.bk, 0
  %brmerge.i = select i1 %.not123.i, i1 true, i1 %i.bn, !prof !90
  br i1 %brmerge.i, label %bb.m, label %bb.p, !prof !91

bb.m:                                             ; preds = %bb.l
  %i.bo = add i64 %2, %i.bi                       ; 2 uses
  %i.bp = shl i64 %i.bo, 8
  %i.bq = ashr exact i64 %i.bp, 8
  %i.br = and i64 %i.bq, %i.bo
  %i.bs = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.br, i32 noundef 0, i64 noundef %i.z) #26
  %i.bt = zext i8 %i.bs to i16
  %i.bu = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i16 %i.bt, ptr %i.bu, align 2
  %i.bv = icmp eq i16 %i.ag, 0
  br i1 %i.bv, label %swap_memzero.exit, label %bb.n, !prof !85

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ad, i8 noundef 0, i64 noundef %i.bf, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.m, %bb.n
  %i.bw = add nsw i64 %i.bf, 2                    ; 4 uses
  %i.bx = add nsw i64 %i.bi, 1
  %i.by = icmp eq i64 %i.bw, %i.h
  br i1 %i.by, label %swap_memzero.exit4, label %bb.o, !prof !85

bb.o:                                             ; preds = %swap_memzero.exit
  %i.bz = sub nsw i64 %i.h, %i.bw
  %i.ca = getelementptr inbounds i8, ptr %i.ad, i64 %i.bw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ca, i8 noundef 0, i64 noundef %i.bz, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.o
  br i1 %i.bn, label %bb.x, label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.q

bb.q:                                             ; preds = %swap_memzero.exit4, %bb.p
  %.1109.i.ph = phi i64 [ %i.bf, %bb.p ], [ %i.bw, %swap_memzero.exit4 ]
  %.1107.i.ph = phi i64 [ %i.bi, %bb.p ], [ %i.bx, %swap_memzero.exit4 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = load i16, ptr %i.cb, align 8
  %i.cd = sext i16 %i.cc to i64                   ; 2 uses
  %i.ce = load ptr, ptr %i.j, align 8
  %i.cf = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.cf, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.3111.i = phi i64 [ %.1109.i.ph, %bb.q ], [ %i.cp, %bb.v ] ; 2 uses
  %.3.i = phi i64 [ %.1107.i.ph, %bb.q ], [ %i.cq, %bb.v ]
  %i.cg = ashr i64 %.3111.i, 3
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.4112.i = phi i64 [ %.3111.i, %bb.r ], [ %i.cp, %bb.u ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.r ], [ %i.cq, %bb.u ] ; 2 uses
  %i.cj = and i64 %.4112.i, 63
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ck, %i.ci
  %.not124.i = icmp eq i64 %i.cl, 0
  br i1 %.not124.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds i8, ptr %i.ce, i64 %.4.i
  %.val = load i8, ptr %i.cm, align 1
  %i.cn = zext i8 %.val to i16
  %i.co = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i16 %i.cn, ptr %i.co, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cp = add i64 %.4112.i, 2                     ; 5 uses
  %i.cq = add i64 %.4.i, 1                        ; 2 uses
  %i.cr = icmp sle i64 %i.cp, %i.cd
  %i.cs = and i64 %i.cp, 63
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = and i1 %i.cr, %i.ct
  br i1 %i.cu, label %bb.s, label %bb.v, !llvm.loop !30

bb.v:                                             ; preds = %bb.u
  %.not126.i = icmp sgt i64 %i.cp, %i.cd
  br i1 %.not126.i, label %bb.w, label %bb.r, !llvm.loop !31

bb.w:                                             ; preds = %bb.v
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cf, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cw = load i16, ptr %i.cv, align 2            ; 2 uses
  %i.cx = icmp sgt i16 %i.cw, -1
  br i1 %i.cx, label %bb.y, label %bb.x

bb.x:                                             ; preds = %swap_memzero.exit4, %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cz = load i16, ptr %i.cy, align 2            ; 2 uses
  %i.da = icmp slt i16 %i.cz, 0
  br i1 %i.da, label %sve_ldnfff1_r.exit, label %bb.y, !prof !85

bb.y:                                             ; preds = %bb.x, %bb.w
  %.6.i.in = phi i16 [ %i.cz, %bb.x ], [ %i.cw, %bb.w ]
  %.6.i = zext nneg i16 %.6.i.in to i64           ; 4 uses
  %i.db = and i64 %.6.i, 63                       ; 2 uses
  %.not.i5 = icmp eq i64 %i.db, 0
  br i1 %.not.i5, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.dd = sub nuw nsw i64 64, %i.db
  %i.de = lshr i64 -1, %i.dd
  %i.df = lshr i64 %.6.i, 6
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.df ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = and i64 %i.dh, %i.de
  store i64 %i.di, ptr %i.dg, align 8
  %i.dj = add nuw nsw i64 %.6.i, 63
  %i.dk = and i64 %i.dj, 65472
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i6 = phi i64 [ %i.dk, %bb.z ], [ %.6.i, %bb.y ] ; 3 uses
  %i.dl = icmp samesign ult i64 %.0.i6, %i.h
  br i1 %i.dl, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %i.dm = lshr i64 %.0.i6, 3
  %i.dn = and i64 %i.dm, 8184
  %i.do = getelementptr i8, ptr %0, i64 %i.dn
  %scevgep.i = getelementptr i8, ptr %i.do, i64 12592
  %i.dp = xor i64 %.0.i6, -1
  %i.dq = add nsw i64 %i.dp, %i.h
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = and i64 %i.dr, 2305843009213693944
  %i.dt = add nuw nsw i64 %i.ds, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dt, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.aa, %sve_cont_ldst_elements.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bsu_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i3, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 6 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 2
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 2
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -4
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 2) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 2
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 4 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bm = load i16, ptr %i.bl, align 4
  %i.bn = icmp eq i16 %i.bh, %i.bm                ; 2 uses
  %.not123.i = icmp ne i32 %i.bk, 0
  %brmerge.i = select i1 %.not123.i, i1 true, i1 %i.bn, !prof !90
  br i1 %brmerge.i, label %bb.m, label %bb.p, !prof !91

bb.m:                                             ; preds = %bb.l
  %i.bo = add i64 %2, %i.bi                       ; 2 uses
  %i.bp = shl i64 %i.bo, 8
  %i.bq = ashr exact i64 %i.bp, 8
  %i.br = and i64 %i.bq, %i.bo
  %i.bs = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.br, i32 noundef 0, i64 noundef %i.z) #26
  %i.bt = zext i8 %i.bs to i32
  %i.bu = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i32 %i.bt, ptr %i.bu, align 4
  %i.bv = icmp eq i16 %i.ag, 0
  br i1 %i.bv, label %swap_memzero.exit, label %bb.n, !prof !85

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ad, i8 noundef 0, i64 noundef %i.bf, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.m, %bb.n
  %i.bw = add nsw i64 %i.bf, 4                    ; 4 uses
  %i.bx = add nsw i64 %i.bi, 1
  %i.by = icmp eq i64 %i.bw, %i.h
  br i1 %i.by, label %swap_memzero.exit4, label %bb.o, !prof !85

bb.o:                                             ; preds = %swap_memzero.exit
  %i.bz = sub nsw i64 %i.h, %i.bw
  %i.ca = getelementptr inbounds i8, ptr %i.ad, i64 %i.bw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ca, i8 noundef 0, i64 noundef %i.bz, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.o
  br i1 %i.bn, label %bb.x, label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.q

bb.q:                                             ; preds = %swap_memzero.exit4, %bb.p
  %.1109.i.ph = phi i64 [ %i.bf, %bb.p ], [ %i.bw, %swap_memzero.exit4 ]
  %.1107.i.ph = phi i64 [ %i.bi, %bb.p ], [ %i.bx, %swap_memzero.exit4 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = load i16, ptr %i.cb, align 8
  %i.cd = sext i16 %i.cc to i64                   ; 2 uses
  %i.ce = load ptr, ptr %i.j, align 8
  %i.cf = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.cf, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.3111.i = phi i64 [ %.1109.i.ph, %bb.q ], [ %i.cp, %bb.v ] ; 2 uses
  %.3.i = phi i64 [ %.1107.i.ph, %bb.q ], [ %i.cq, %bb.v ]
  %i.cg = ashr i64 %.3111.i, 3
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.4112.i = phi i64 [ %.3111.i, %bb.r ], [ %i.cp, %bb.u ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.r ], [ %i.cq, %bb.u ] ; 2 uses
  %i.cj = and i64 %.4112.i, 63
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ck, %i.ci
  %.not124.i = icmp eq i64 %i.cl, 0
  br i1 %.not124.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds i8, ptr %i.ce, i64 %.4.i
  %.val = load i8, ptr %i.cm, align 1
  %i.cn = zext i8 %.val to i32
  %i.co = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i32 %i.cn, ptr %i.co, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cp = add i64 %.4112.i, 4                     ; 5 uses
  %i.cq = add i64 %.4.i, 1                        ; 2 uses
  %i.cr = icmp sle i64 %i.cp, %i.cd
  %i.cs = and i64 %i.cp, 63
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = and i1 %i.cr, %i.ct
  br i1 %i.cu, label %bb.s, label %bb.v, !llvm.loop !30

bb.v:                                             ; preds = %bb.u
  %.not126.i = icmp sgt i64 %i.cp, %i.cd
  br i1 %.not126.i, label %bb.w, label %bb.r, !llvm.loop !31

bb.w:                                             ; preds = %bb.v
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cf, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cw = load i16, ptr %i.cv, align 2            ; 2 uses
  %i.cx = icmp sgt i16 %i.cw, -1
  br i1 %i.cx, label %bb.y, label %bb.x

bb.x:                                             ; preds = %swap_memzero.exit4, %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cz = load i16, ptr %i.cy, align 2            ; 2 uses
  %i.da = icmp slt i16 %i.cz, 0
  br i1 %i.da, label %sve_ldnfff1_r.exit, label %bb.y, !prof !85

bb.y:                                             ; preds = %bb.x, %bb.w
  %.6.i.in = phi i16 [ %i.cz, %bb.x ], [ %i.cw, %bb.w ]
  %.6.i = zext nneg i16 %.6.i.in to i64           ; 4 uses
  %i.db = and i64 %.6.i, 63                       ; 2 uses
  %.not.i5 = icmp eq i64 %i.db, 0
  br i1 %.not.i5, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.dd = sub nuw nsw i64 64, %i.db
  %i.de = lshr i64 -1, %i.dd
  %i.df = lshr i64 %.6.i, 6
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.df ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = and i64 %i.dh, %i.de
  store i64 %i.di, ptr %i.dg, align 8
  %i.dj = add nuw nsw i64 %.6.i, 63
  %i.dk = and i64 %i.dj, 65472
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i6 = phi i64 [ %i.dk, %bb.z ], [ %.6.i, %bb.y ] ; 3 uses
  %i.dl = icmp samesign ult i64 %.0.i6, %i.h
  br i1 %i.dl, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %i.dm = lshr i64 %.0.i6, 3
  %i.dn = and i64 %i.dm, 8184
  %i.do = getelementptr i8, ptr %0, i64 %i.dn
  %scevgep.i = getelementptr i8, ptr %i.do, i64 12592
  %i.dp = xor i64 %.0.i6, -1
  %i.dq = add nsw i64 %i.dp, %i.h
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = and i64 %i.dr, 2305843009213693944
  %i.dt = add nuw nsw i64 %i.ds, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dt, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.aa, %sve_cont_ldst_elements.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bdu_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i3, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 6 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 3
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 3
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 3) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 3
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 4 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bm = load i16, ptr %i.bl, align 4
  %i.bn = icmp eq i16 %i.bh, %i.bm                ; 2 uses
  %.not123.i = icmp ne i32 %i.bk, 0
  %brmerge.i = select i1 %.not123.i, i1 true, i1 %i.bn, !prof !90
  br i1 %brmerge.i, label %bb.m, label %bb.p, !prof !91

bb.m:                                             ; preds = %bb.l
  %i.bo = add i64 %2, %i.bi                       ; 2 uses
  %i.bp = shl i64 %i.bo, 8
  %i.bq = ashr exact i64 %i.bp, 8
  %i.br = and i64 %i.bq, %i.bo
  %i.bs = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.br, i32 noundef 0, i64 noundef %i.z) #26
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = icmp eq i16 %i.ag, 0
  br i1 %i.bv, label %swap_memzero.exit, label %bb.n, !prof !85

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ad, i8 noundef 0, i64 noundef %i.bf, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.m, %bb.n
  %i.bw = add nsw i64 %i.bf, 8                    ; 4 uses
  %i.bx = add nsw i64 %i.bi, 1
  %i.by = icmp eq i64 %i.bw, %i.h
  br i1 %i.by, label %swap_memzero.exit4, label %bb.o, !prof !85

bb.o:                                             ; preds = %swap_memzero.exit
  %i.bz = sub nsw i64 %i.h, %i.bw
  %i.ca = getelementptr inbounds i8, ptr %i.ad, i64 %i.bw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ca, i8 noundef 0, i64 noundef %i.bz, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.o
  br i1 %i.bn, label %bb.x, label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.q

bb.q:                                             ; preds = %swap_memzero.exit4, %bb.p
  %.1109.i.ph = phi i64 [ %i.bf, %bb.p ], [ %i.bw, %swap_memzero.exit4 ]
  %.1107.i.ph = phi i64 [ %i.bi, %bb.p ], [ %i.bx, %swap_memzero.exit4 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = load i16, ptr %i.cb, align 8
  %i.cd = sext i16 %i.cc to i64                   ; 2 uses
  %i.ce = load ptr, ptr %i.j, align 8
  %i.cf = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.cf, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.3111.i = phi i64 [ %.1109.i.ph, %bb.q ], [ %i.cp, %bb.v ] ; 2 uses
  %.3.i = phi i64 [ %.1107.i.ph, %bb.q ], [ %i.cq, %bb.v ]
  %i.cg = ashr i64 %.3111.i, 3
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.4112.i = phi i64 [ %.3111.i, %bb.r ], [ %i.cp, %bb.u ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.r ], [ %i.cq, %bb.u ] ; 2 uses
  %i.cj = and i64 %.4112.i, 63
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ck, %i.ci
  %.not124.i = icmp eq i64 %i.cl, 0
  br i1 %.not124.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds i8, ptr %i.ce, i64 %.4.i
  %.val = load i8, ptr %i.cm, align 1
  %i.cn = zext i8 %.val to i64
  %i.co = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i64 %i.cn, ptr %i.co, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cp = add i64 %.4112.i, 8                     ; 5 uses
  %i.cq = add i64 %.4.i, 1                        ; 2 uses
  %i.cr = icmp sle i64 %i.cp, %i.cd
  %i.cs = and i64 %i.cp, 63
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = and i1 %i.cr, %i.ct
  br i1 %i.cu, label %bb.s, label %bb.v, !llvm.loop !30

bb.v:                                             ; preds = %bb.u
  %.not126.i = icmp sgt i64 %i.cp, %i.cd
  br i1 %.not126.i, label %bb.w, label %bb.r, !llvm.loop !31

bb.w:                                             ; preds = %bb.v
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cf, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cw = load i16, ptr %i.cv, align 2            ; 2 uses
  %i.cx = icmp sgt i16 %i.cw, -1
  br i1 %i.cx, label %bb.y, label %bb.x

bb.x:                                             ; preds = %swap_memzero.exit4, %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cz = load i16, ptr %i.cy, align 2            ; 2 uses
  %i.da = icmp slt i16 %i.cz, 0
  br i1 %i.da, label %sve_ldnfff1_r.exit, label %bb.y, !prof !85

bb.y:                                             ; preds = %bb.x, %bb.w
  %.6.i.in = phi i16 [ %i.cz, %bb.x ], [ %i.cw, %bb.w ]
  %.6.i = zext nneg i16 %.6.i.in to i64           ; 4 uses
  %i.db = and i64 %.6.i, 63                       ; 2 uses
  %.not.i5 = icmp eq i64 %i.db, 0
  br i1 %.not.i5, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.dd = sub nuw nsw i64 64, %i.db
  %i.de = lshr i64 -1, %i.dd
  %i.df = lshr i64 %.6.i, 6
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.df ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = and i64 %i.dh, %i.de
  store i64 %i.di, ptr %i.dg, align 8
  %i.dj = add nuw nsw i64 %.6.i, 63
  %i.dk = and i64 %i.dj, 65472
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i6 = phi i64 [ %i.dk, %bb.z ], [ %.6.i, %bb.y ] ; 3 uses
  %i.dl = icmp samesign ult i64 %.0.i6, %i.h
  br i1 %i.dl, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %i.dm = lshr i64 %.0.i6, 3
  %i.dn = and i64 %i.dm, 8184
  %i.do = getelementptr i8, ptr %0, i64 %i.dn
  %scevgep.i = getelementptr i8, ptr %i.do, i64 12592
  %i.dp = xor i64 %.0.i6, -1
  %i.dq = add nsw i64 %i.dp, %i.h
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = and i64 %i.dr, 2305843009213693944
  %i.dt = add nuw nsw i64 %i.ds, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dt, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.aa, %sve_cont_ldst_elements.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bhs_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i3, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 6 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 1
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 1
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -2
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 1) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 1
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 4 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bm = load i16, ptr %i.bl, align 4
  %i.bn = icmp eq i16 %i.bh, %i.bm                ; 2 uses
  %.not123.i = icmp ne i32 %i.bk, 0
  %brmerge.i = select i1 %.not123.i, i1 true, i1 %i.bn, !prof !90
  br i1 %brmerge.i, label %bb.m, label %bb.p, !prof !91

bb.m:                                             ; preds = %bb.l
  %i.bo = add i64 %2, %i.bi                       ; 2 uses
  %i.bp = shl i64 %i.bo, 8
  %i.bq = ashr exact i64 %i.bp, 8
  %i.br = and i64 %i.bq, %i.bo
  %i.bs = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.br, i32 noundef 0, i64 noundef %i.z) #26
  %i.bt = sext i8 %i.bs to i16
  %i.bu = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i16 %i.bt, ptr %i.bu, align 2
  %i.bv = icmp eq i16 %i.ag, 0
  br i1 %i.bv, label %swap_memzero.exit, label %bb.n, !prof !85

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ad, i8 noundef 0, i64 noundef %i.bf, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.m, %bb.n
  %i.bw = add nsw i64 %i.bf, 2                    ; 4 uses
  %i.bx = add nsw i64 %i.bi, 1
  %i.by = icmp eq i64 %i.bw, %i.h
  br i1 %i.by, label %swap_memzero.exit4, label %bb.o, !prof !85

bb.o:                                             ; preds = %swap_memzero.exit
  %i.bz = sub nsw i64 %i.h, %i.bw
  %i.ca = getelementptr inbounds i8, ptr %i.ad, i64 %i.bw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ca, i8 noundef 0, i64 noundef %i.bz, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.o
  br i1 %i.bn, label %bb.x, label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.q

bb.q:                                             ; preds = %swap_memzero.exit4, %bb.p
  %.1109.i.ph = phi i64 [ %i.bf, %bb.p ], [ %i.bw, %swap_memzero.exit4 ]
  %.1107.i.ph = phi i64 [ %i.bi, %bb.p ], [ %i.bx, %swap_memzero.exit4 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = load i16, ptr %i.cb, align 8
  %i.cd = sext i16 %i.cc to i64                   ; 2 uses
  %i.ce = load ptr, ptr %i.j, align 8
  %i.cf = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.cf, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.3111.i = phi i64 [ %.1109.i.ph, %bb.q ], [ %i.cp, %bb.v ] ; 2 uses
  %.3.i = phi i64 [ %.1107.i.ph, %bb.q ], [ %i.cq, %bb.v ]
  %i.cg = ashr i64 %.3111.i, 3
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.4112.i = phi i64 [ %.3111.i, %bb.r ], [ %i.cp, %bb.u ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.r ], [ %i.cq, %bb.u ] ; 2 uses
  %i.cj = and i64 %.4112.i, 63
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ck, %i.ci
  %.not124.i = icmp eq i64 %i.cl, 0
  br i1 %.not124.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds i8, ptr %i.ce, i64 %.4.i
  %.val = load i8, ptr %i.cm, align 1
  %i.cn = sext i8 %.val to i16
  %i.co = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i16 %i.cn, ptr %i.co, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cp = add i64 %.4112.i, 2                     ; 5 uses
  %i.cq = add i64 %.4.i, 1                        ; 2 uses
  %i.cr = icmp sle i64 %i.cp, %i.cd
  %i.cs = and i64 %i.cp, 63
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = and i1 %i.cr, %i.ct
  br i1 %i.cu, label %bb.s, label %bb.v, !llvm.loop !30

bb.v:                                             ; preds = %bb.u
  %.not126.i = icmp sgt i64 %i.cp, %i.cd
  br i1 %.not126.i, label %bb.w, label %bb.r, !llvm.loop !31

bb.w:                                             ; preds = %bb.v
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cf, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cw = load i16, ptr %i.cv, align 2            ; 2 uses
  %i.cx = icmp sgt i16 %i.cw, -1
  br i1 %i.cx, label %bb.y, label %bb.x

bb.x:                                             ; preds = %swap_memzero.exit4, %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cz = load i16, ptr %i.cy, align 2            ; 2 uses
  %i.da = icmp slt i16 %i.cz, 0
  br i1 %i.da, label %sve_ldnfff1_r.exit, label %bb.y, !prof !85

bb.y:                                             ; preds = %bb.x, %bb.w
  %.6.i.in = phi i16 [ %i.cz, %bb.x ], [ %i.cw, %bb.w ]
  %.6.i = zext nneg i16 %.6.i.in to i64           ; 4 uses
  %i.db = and i64 %.6.i, 63                       ; 2 uses
  %.not.i5 = icmp eq i64 %i.db, 0
  br i1 %.not.i5, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.dd = sub nuw nsw i64 64, %i.db
  %i.de = lshr i64 -1, %i.dd
  %i.df = lshr i64 %.6.i, 6
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.df ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = and i64 %i.dh, %i.de
  store i64 %i.di, ptr %i.dg, align 8
  %i.dj = add nuw nsw i64 %.6.i, 63
  %i.dk = and i64 %i.dj, 65472
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i6 = phi i64 [ %i.dk, %bb.z ], [ %.6.i, %bb.y ] ; 3 uses
  %i.dl = icmp samesign ult i64 %.0.i6, %i.h
  br i1 %i.dl, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %i.dm = lshr i64 %.0.i6, 3
  %i.dn = and i64 %i.dm, 8184
  %i.do = getelementptr i8, ptr %0, i64 %i.dn
  %scevgep.i = getelementptr i8, ptr %i.do, i64 12592
  %i.dp = xor i64 %.0.i6, -1
  %i.dq = add nsw i64 %i.dp, %i.h
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = and i64 %i.dr, 2305843009213693944
  %i.dt = add nuw nsw i64 %i.ds, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dt, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.aa, %sve_cont_ldst_elements.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bss_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i3, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 6 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 2
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 2
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -4
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 2) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 2
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 4 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bm = load i16, ptr %i.bl, align 4
  %i.bn = icmp eq i16 %i.bh, %i.bm                ; 2 uses
  %.not123.i = icmp ne i32 %i.bk, 0
  %brmerge.i = select i1 %.not123.i, i1 true, i1 %i.bn, !prof !90
  br i1 %brmerge.i, label %bb.m, label %bb.p, !prof !91

bb.m:                                             ; preds = %bb.l
  %i.bo = add i64 %2, %i.bi                       ; 2 uses
  %i.bp = shl i64 %i.bo, 8
  %i.bq = ashr exact i64 %i.bp, 8
  %i.br = and i64 %i.bq, %i.bo
  %i.bs = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.br, i32 noundef 0, i64 noundef %i.z) #26
  %i.bt = sext i8 %i.bs to i32
  %i.bu = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i32 %i.bt, ptr %i.bu, align 4
  %i.bv = icmp eq i16 %i.ag, 0
  br i1 %i.bv, label %swap_memzero.exit, label %bb.n, !prof !85

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ad, i8 noundef 0, i64 noundef %i.bf, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.m, %bb.n
  %i.bw = add nsw i64 %i.bf, 4                    ; 4 uses
  %i.bx = add nsw i64 %i.bi, 1
  %i.by = icmp eq i64 %i.bw, %i.h
  br i1 %i.by, label %swap_memzero.exit4, label %bb.o, !prof !85

bb.o:                                             ; preds = %swap_memzero.exit
  %i.bz = sub nsw i64 %i.h, %i.bw
  %i.ca = getelementptr inbounds i8, ptr %i.ad, i64 %i.bw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ca, i8 noundef 0, i64 noundef %i.bz, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.o
  br i1 %i.bn, label %bb.x, label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.q

bb.q:                                             ; preds = %swap_memzero.exit4, %bb.p
  %.1109.i.ph = phi i64 [ %i.bf, %bb.p ], [ %i.bw, %swap_memzero.exit4 ]
  %.1107.i.ph = phi i64 [ %i.bi, %bb.p ], [ %i.bx, %swap_memzero.exit4 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = load i16, ptr %i.cb, align 8
  %i.cd = sext i16 %i.cc to i64                   ; 2 uses
  %i.ce = load ptr, ptr %i.j, align 8
  %i.cf = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.cf, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.3111.i = phi i64 [ %.1109.i.ph, %bb.q ], [ %i.cp, %bb.v ] ; 2 uses
  %.3.i = phi i64 [ %.1107.i.ph, %bb.q ], [ %i.cq, %bb.v ]
  %i.cg = ashr i64 %.3111.i, 3
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.4112.i = phi i64 [ %.3111.i, %bb.r ], [ %i.cp, %bb.u ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.r ], [ %i.cq, %bb.u ] ; 2 uses
  %i.cj = and i64 %.4112.i, 63
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ck, %i.ci
  %.not124.i = icmp eq i64 %i.cl, 0
  br i1 %.not124.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds i8, ptr %i.ce, i64 %.4.i
  %.val = load i8, ptr %i.cm, align 1
  %i.cn = sext i8 %.val to i32
  %i.co = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i32 %i.cn, ptr %i.co, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cp = add i64 %.4112.i, 4                     ; 5 uses
  %i.cq = add i64 %.4.i, 1                        ; 2 uses
  %i.cr = icmp sle i64 %i.cp, %i.cd
  %i.cs = and i64 %i.cp, 63
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = and i1 %i.cr, %i.ct
  br i1 %i.cu, label %bb.s, label %bb.v, !llvm.loop !30

bb.v:                                             ; preds = %bb.u
  %.not126.i = icmp sgt i64 %i.cp, %i.cd
  br i1 %.not126.i, label %bb.w, label %bb.r, !llvm.loop !31

bb.w:                                             ; preds = %bb.v
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cf, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cw = load i16, ptr %i.cv, align 2            ; 2 uses
  %i.cx = icmp sgt i16 %i.cw, -1
  br i1 %i.cx, label %bb.y, label %bb.x

bb.x:                                             ; preds = %swap_memzero.exit4, %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cz = load i16, ptr %i.cy, align 2            ; 2 uses
  %i.da = icmp slt i16 %i.cz, 0
  br i1 %i.da, label %sve_ldnfff1_r.exit, label %bb.y, !prof !85

bb.y:                                             ; preds = %bb.x, %bb.w
  %.6.i.in = phi i16 [ %i.cz, %bb.x ], [ %i.cw, %bb.w ]
  %.6.i = zext nneg i16 %.6.i.in to i64           ; 4 uses
  %i.db = and i64 %.6.i, 63                       ; 2 uses
  %.not.i5 = icmp eq i64 %i.db, 0
  br i1 %.not.i5, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.dd = sub nuw nsw i64 64, %i.db
  %i.de = lshr i64 -1, %i.dd
  %i.df = lshr i64 %.6.i, 6
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.df ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = and i64 %i.dh, %i.de
  store i64 %i.di, ptr %i.dg, align 8
  %i.dj = add nuw nsw i64 %.6.i, 63
  %i.dk = and i64 %i.dj, 65472
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i6 = phi i64 [ %i.dk, %bb.z ], [ %.6.i, %bb.y ] ; 3 uses
  %i.dl = icmp samesign ult i64 %.0.i6, %i.h
  br i1 %i.dl, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %i.dm = lshr i64 %.0.i6, 3
  %i.dn = and i64 %i.dm, 8184
  %i.do = getelementptr i8, ptr %0, i64 %i.dn
  %scevgep.i = getelementptr i8, ptr %i.do, i64 12592
  %i.dp = xor i64 %.0.i6, -1
  %i.dq = add nsw i64 %i.dp, %i.h
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = and i64 %i.dr, 2305843009213693944
  %i.dt = add nuw nsw i64 %i.ds, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dt, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.aa, %sve_cont_ldst_elements.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bds_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i3, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 6 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 3
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 3
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 3) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 3
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 4 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z) ; 0 uses
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bm = load i16, ptr %i.bl, align 4
  %i.bn = icmp eq i16 %i.bh, %i.bm                ; 2 uses
  %.not123.i = icmp ne i32 %i.bk, 0
  %brmerge.i = select i1 %.not123.i, i1 true, i1 %i.bn, !prof !90
  br i1 %brmerge.i, label %bb.m, label %bb.p, !prof !91

bb.m:                                             ; preds = %bb.l
  %i.bo = add i64 %2, %i.bi                       ; 2 uses
  %i.bp = shl i64 %i.bo, 8
  %i.bq = ashr exact i64 %i.bp, 8
  %i.br = and i64 %i.bq, %i.bo
  %i.bs = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.br, i32 noundef 0, i64 noundef %i.z) #26
  %i.bt = sext i8 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = icmp eq i16 %i.ag, 0
  br i1 %i.bv, label %swap_memzero.exit, label %bb.n, !prof !85

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ad, i8 noundef 0, i64 noundef %i.bf, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.m, %bb.n
  %i.bw = add nsw i64 %i.bf, 8                    ; 4 uses
  %i.bx = add nsw i64 %i.bi, 1
  %i.by = icmp eq i64 %i.bw, %i.h
  br i1 %i.by, label %swap_memzero.exit4, label %bb.o, !prof !85

bb.o:                                             ; preds = %swap_memzero.exit
  %i.bz = sub nsw i64 %i.h, %i.bw
  %i.ca = getelementptr inbounds i8, ptr %i.ad, i64 %i.bw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ca, i8 noundef 0, i64 noundef %i.bz, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.o
  br i1 %i.bn, label %bb.x, label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.q

bb.q:                                             ; preds = %swap_memzero.exit4, %bb.p
  %.1109.i.ph = phi i64 [ %i.bf, %bb.p ], [ %i.bw, %swap_memzero.exit4 ]
  %.1107.i.ph = phi i64 [ %i.bi, %bb.p ], [ %i.bx, %swap_memzero.exit4 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = load i16, ptr %i.cb, align 8
  %i.cd = sext i16 %i.cc to i64                   ; 2 uses
  %i.ce = load ptr, ptr %i.j, align 8
  %i.cf = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.cf, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.3111.i = phi i64 [ %.1109.i.ph, %bb.q ], [ %i.cp, %bb.v ] ; 2 uses
  %.3.i = phi i64 [ %.1107.i.ph, %bb.q ], [ %i.cq, %bb.v ]
  %i.cg = ashr i64 %.3111.i, 3
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.4112.i = phi i64 [ %.3111.i, %bb.r ], [ %i.cp, %bb.u ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.r ], [ %i.cq, %bb.u ] ; 2 uses
  %i.cj = and i64 %.4112.i, 63
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ck, %i.ci
  %.not124.i = icmp eq i64 %i.cl, 0
  br i1 %.not124.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds i8, ptr %i.ce, i64 %.4.i
  %.val = load i8, ptr %i.cm, align 1
  %i.cn = sext i8 %.val to i64
  %i.co = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i64 %i.cn, ptr %i.co, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cp = add i64 %.4112.i, 8                     ; 5 uses
  %i.cq = add i64 %.4.i, 1                        ; 2 uses
  %i.cr = icmp sle i64 %i.cp, %i.cd
  %i.cs = and i64 %i.cp, 63
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = and i1 %i.cr, %i.ct
  br i1 %i.cu, label %bb.s, label %bb.v, !llvm.loop !30

bb.v:                                             ; preds = %bb.u
  %.not126.i = icmp sgt i64 %i.cp, %i.cd
  br i1 %.not126.i, label %bb.w, label %bb.r, !llvm.loop !31

bb.w:                                             ; preds = %bb.v
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cf, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cw = load i16, ptr %i.cv, align 2            ; 2 uses
  %i.cx = icmp sgt i16 %i.cw, -1
  br i1 %i.cx, label %bb.y, label %bb.x

bb.x:                                             ; preds = %swap_memzero.exit4, %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cz = load i16, ptr %i.cy, align 2            ; 2 uses
  %i.da = icmp slt i16 %i.cz, 0
  br i1 %i.da, label %sve_ldnfff1_r.exit, label %bb.y, !prof !85

bb.y:                                             ; preds = %bb.x, %bb.w
  %.6.i.in = phi i16 [ %i.cz, %bb.x ], [ %i.cw, %bb.w ]
  %.6.i = zext nneg i16 %.6.i.in to i64           ; 4 uses
  %i.db = and i64 %.6.i, 63                       ; 2 uses
  %.not.i5 = icmp eq i64 %i.db, 0
  br i1 %.not.i5, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.dd = sub nuw nsw i64 64, %i.db
  %i.de = lshr i64 -1, %i.dd
  %i.df = lshr i64 %.6.i, 6
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.df ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = and i64 %i.dh, %i.de
  store i64 %i.di, ptr %i.dg, align 8
  %i.dj = add nuw nsw i64 %.6.i, 63
  %i.dk = and i64 %i.dj, 65472
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i6 = phi i64 [ %i.dk, %bb.z ], [ %.6.i, %bb.y ] ; 3 uses
  %i.dl = icmp samesign ult i64 %.0.i6, %i.h
  br i1 %i.dl, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %i.dm = lshr i64 %.0.i6, 3
  %i.dn = and i64 %i.dm, 8184
  %i.do = getelementptr i8, ptr %0, i64 %i.dn
  %scevgep.i = getelementptr i8, ptr %i.do, i64 12592
end_hunk_10
begin_hunk_11_@helper_sve_ldff1dd_be_r:bb.a
  br i1 %i.ak, label %swap_memzero.exit3, label %bb.f, !prof !85

bb.f:                                             ; preds = %swap_memzero.exit
  %i.al = sub nsw i64 %i.n, %i.ai
  %i.am = getelementptr inbounds i8, ptr %i.g, i64 %i.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.am, i8 noundef 0, i64 noundef %i.al, i1 noundef false) #26
  br label %swap_memzero.exit3

swap_memzero.exit3:                               ; preds = %swap_memzero.exit, %bb.f
  br i1 %i.aa, label %bb.o, label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i8 noundef 0, i64 noundef %i.n, i1 noundef false) #26
  br label %bb.h

bb.h:                                             ; preds = %swap_memzero.exit3, %bb.g
  %.1109.i.ph = phi i64 [ %i.r, %bb.g ], [ %i.ai, %swap_memzero.exit3 ]
  %.1107.i.ph = phi i64 [ %i.u, %bb.g ], [ %i.aj, %swap_memzero.exit3 ]
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = sext i16 %i.ao to i64                   ; 2 uses
  %i.aq = load ptr, ptr %i.v, align 8
  %i.ar = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.c, ptr %i.ar, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.h
  %.3111.i = phi i64 [ %.1109.i.ph, %bb.h ], [ %i.bb, %bb.m ] ; 2 uses
  %.3.i = phi i64 [ %.1107.i.ph, %bb.h ], [ %i.bc, %bb.m ]
  %i.as = ashr i64 %.3111.i, 3
  %i.at = getelementptr inbounds i8, ptr %1, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.4112.i = phi i64 [ %.3111.i, %bb.i ], [ %i.bb, %bb.l ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.i ], [ %i.bc, %bb.l ] ; 2 uses
  %i.av = and i64 %.4112.i, 63
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = and i64 %i.aw, %i.au
  %.not124.i = icmp eq i64 %i.ax, 0
  br i1 %.not124.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds i8, ptr %i.aq, i64 %.4.i
  %.val = load i64, ptr %i.ay, align 1
  %i.az = call i64 @llvm.bswap.i64(i64 %.val)
  %i.ba = getelementptr inbounds i8, ptr %i.g, i64 %.4112.i
  store i64 %i.az, ptr %i.ba, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bb = add nsw i64 %.4112.i, 8                 ; 5 uses
  %i.bc = add i64 %.4.i, 8                        ; 2 uses
  %i.bd = icmp sle i64 %i.bb, %i.ap
  %i.be = and i64 %i.bb, 63
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = and i1 %i.bd, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.m, !llvm.loop !30

bb.m:                                             ; preds = %bb.l
  %.not126.i = icmp sgt i64 %i.bb, %i.ap
  br i1 %.not126.i, label %bb.n, label %bb.i, !llvm.loop !31

bb.n:                                             ; preds = %bb.m
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.ar, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.bi = load i16, ptr %i.bh, align 2            ; 2 uses
  %i.bj = icmp sgt i16 %i.bi, -1
  br i1 %i.bj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %swap_memzero.exit3, %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.bl = load i16, ptr %i.bk, align 2            ; 2 uses
  %i.bm = icmp slt i16 %i.bl, 0
  br i1 %i.bm, label %sve_ldnfff1_r.exit, label %bb.p, !prof !85

bb.p:                                             ; preds = %bb.o, %bb.n
  %.6.i.in = phi i16 [ %i.bl, %bb.o ], [ %i.bi, %bb.n ]
  %.6.i = zext nneg i16 %.6.i.in to i64           ; 4 uses
  %i.bn = and i64 %.6.i, 63                       ; 2 uses
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.bp = sub nuw nsw i64 64, %i.bn
  %i.bq = lshr i64 -1, %i.bp
  %i.br = lshr i64 %.6.i, 6
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, %i.bq
  store i64 %i.bu, ptr %i.bs, align 8
  %i.bv = add nuw nsw i64 %.6.i, 63
  %i.bw = and i64 %i.bv, 65472
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i4 = phi i64 [ %i.bw, %bb.q ], [ %.6.i, %bb.p ] ; 3 uses
  %i.bx = icmp samesign ult i64 %.0.i4, %i.n
  br i1 %i.bx, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.by = lshr i64 %.0.i4, 3
  %i.bz = and i64 %i.by, 8184
  %i.ca = getelementptr i8, ptr %0, i64 %i.bz
  %scevgep.i = getelementptr i8, ptr %i.ca, i64 12592
  %i.cb = xor i64 %.0.i4, -1
  %i.cc = add nsw i64 %i.cb, %i.n
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 2305843009213693944
  %i.cf = add nuw nsw i64 %i.ce, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.cf, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.r, %bb.b, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bb_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 20 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr @pred_esz_masks, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 7 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16                ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  store i16 %i.aw, ptr %4, align 8
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.az = or i64 %i.ay, %2                        ; 3 uses
  %i.ba = sub i64 0, %i.az                        ; 3 uses
  %.not83.i.not = icmp slt i64 %.1.i, %i.ba
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bb = trunc nuw nsw i64 %.1.i to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bb, ptr %i.bc, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bd = trunc i64 %i.ba to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bd, ptr %i.be, align 8
  %.not84.i = icmp eq i64 %i.az, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = trunc i64 %i.az to i16
  %i.bg = xor i16 %i.bf, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bg, ptr %i.bh, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.ba, i64 noundef %i.z, i32 noundef 0) ; 2 uses
  %i.bj = icmp sle i64 %i.bi, %.1.i
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = trunc i64 %i.bi to i16                  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bk, ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bk, ptr %i.bm, align 2
  %i.bn = trunc nuw nsw i64 %.1.i to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bn, ptr %i.bo, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bp = ashr exact i64 %sext, 48                ; 4 uses
  %i.bq = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %i.br = load i16, ptr %4, align 8               ; 2 uses
  %i.bs = sext i16 %i.br to i64                   ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bw = load i8, ptr %i.bv, align 4, !range !88, !noundef !89
  %i.bx = trunc nuw i8 %i.bw to i1
  %spec.select.i.i = select i1 %i.bx, i32 %.0.i, i32 0 ; 3 uses
  %.not122.i.i = icmp eq i32 %spec.select.i.i, 0  ; 2 uses
  br i1 %.not122.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = add i64 %2, %i.bs
  %i.bz = call i64 @mte_check(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.by, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cb = load i16, ptr %i.ca, align 4
  %i.cc = icmp eq i16 %i.br, %i.cb                ; 2 uses
  %.not123.i.i = icmp ne i32 %i.bu, 0
  %brmerge.i.i = select i1 %.not123.i.i, i1 true, i1 %i.cc, !prof !90
  br i1 %brmerge.i.i, label %bb.r, label %bb.u, !prof !91

bb.r:                                             ; preds = %bb.q
  %i.cd = add i64 %2, %i.bs                       ; 2 uses
  %i.ce = shl i64 %i.cd, 8
  %i.cf = ashr exact i64 %i.ce, 8
  %i.cg = and i64 %i.cf, %i.cd
  %i.ch = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.cg, i32 noundef 0, i64 noundef %i.b) #26
  %i.ci = getelementptr inbounds i8, ptr %i.at, i64 %i.bp
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = icmp eq i16 %i.aw, 0
  br i1 %i.cj, label %swap_memzero.exit, label %bb.s, !prof !85

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.at, i8 noundef 0, i64 noundef %i.bp, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.r, %bb.s
  %i.ck = add nsw i64 %i.bp, 1                    ; 4 uses
  %i.cl = add nsw i64 %i.bs, 1
  %i.cm = icmp eq i64 %i.ck, %i.z
  br i1 %i.cm, label %swap_memzero.exit4, label %bb.t, !prof !85

bb.t:                                             ; preds = %swap_memzero.exit
  %i.cn = sub nsw i64 %i.z, %i.ck
  %i.co = getelementptr inbounds i8, ptr %i.at, i64 %i.ck
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.co, i8 noundef 0, i64 noundef %i.cn, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.t
  br i1 %i.cc, label %bb.ae, label %bb.v

bb.u:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.v

bb.v:                                             ; preds = %swap_memzero.exit4, %bb.u
  %.1109.i.i.ph = phi i64 [ %i.bp, %bb.u ], [ %i.ck, %swap_memzero.exit4 ] ; 2 uses
  %.1107.i.i.ph = phi i64 [ %i.bs, %bb.u ], [ %i.cl, %swap_memzero.exit4 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = load i16, ptr %i.cp, align 8
  %i.cr = sext i16 %i.cq to i64                   ; 4 uses
  %i.cs = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ct = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.ct, align 8
  fence syncscope("singlethread") seq_cst
  br i1 %.not122.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.v, %.split21.us.us
  %.3111.i.i.us = phi i64 [ %i.dc, %.split21.us.us ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.dd, %.split21.us.us ], [ %.1107.i.i.ph, %bb.v ]
  %i.cu = ashr i64 %.3111.i.i.us, 3
  %i.cv = getelementptr inbounds i8, ptr %1, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.dc, %bb.y ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.dd, %bb.y ] ; 2 uses
  %i.cx = and i64 %.4112.i.i.us.us, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cy, %i.cw
  %.not124.i.i.us.us = icmp eq i64 %i.cz, 0
  br i1 %.not124.i.i.us.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds i8, ptr %i.cs, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.da, align 1
  %i.db = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i8 %.val.us.us, ptr %i.db, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dc = add i64 %.4112.i.i.us.us, 1             ; 5 uses
  %i.dd = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.de = icmp sle i64 %i.dc, %i.cr
  %i.df = and i64 %i.dc, 63
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = and i1 %i.de, %i.dg
  br i1 %i.dh, label %bb.w, label %.split21.us.us, !llvm.loop !30

.split21.us.us:                                   ; preds = %bb.y
  %.not126.i.i.us = icmp sgt i64 %i.dc, %i.cr
  br i1 %.not126.i.i.us, label %.split25.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.v, %.split21
  %.3111.i.i = phi i64 [ %i.ds, %.split21 ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i = phi i64 [ %i.dt, %.split21 ], [ %.1107.i.i.ph, %bb.v ]
  %i.di = ashr i64 %.3111.i.i, 3
  %i.dj = getelementptr inbounds i8, ptr %1, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.ds, %bb.ac ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.dt, %bb.ac ] ; 3 uses
  %i.dl = and i64 %.4112.i.i, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.dk
  %.not124.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not124.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = add i64 %.4.i.i, %2
  %i.dp = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.do) #26
  br i1 %i.dp, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dq = getelementptr inbounds i8, ptr %i.cs, i64 %.4.i.i
  %.val = load i8, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i8 %.val, ptr %i.dr, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.ds = add i64 %.4112.i.i, 1                   ; 5 uses
  %i.dt = add i64 %.4.i.i, 1                      ; 2 uses
  %i.du = icmp sle i64 %i.ds, %i.cr
  %i.dv = and i64 %i.ds, 63
  %i.dw = icmp ne i64 %i.dv, 0
  %i.dx = and i1 %i.du, %i.dw
  br i1 %i.dx, label %bb.z, label %.split21, !llvm.loop !30

bb.ad:                                            ; preds = %bb.aa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.ct, align 8
  br label %bb.af

.split21:                                         ; preds = %bb.ac
  %.not126.i.i = icmp sgt i64 %i.ds, %i.cr
  br i1 %.not126.i.i, label %.split25.us, label %.split, !llvm.loop !31

.split25.us:                                      ; preds = %.split21, %.split21.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.ct, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dz = load i16, ptr %i.dy, align 2            ; 2 uses
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = icmp sgt i16 %i.dz, -1
  br i1 %i.eb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %swap_memzero.exit4, %.split25.us
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ed = load i16, ptr %i.ec, align 2            ; 2 uses
  %i.ee = zext nneg i16 %i.ed to i64
  %i.ef = icmp slt i16 %i.ed, 0
  br i1 %i.ef, label %sve_ldnfff1_r_mte.exit, label %bb.af, !prof !85

bb.af:                                            ; preds = %bb.ad, %bb.ae, %.split25.us
  %.6.i.i = phi i64 [ %.4112.i.i, %bb.ad ], [ %i.ea, %.split25.us ], [ %i.ee, %bb.ae ] ; 4 uses
  %i.eg = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i5 = icmp eq i64 %i.eg, 0
  br i1 %.not.i5, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.ei = sub nuw nsw i64 64, %i.eg
  %i.ej = lshr i64 -1, %i.ei
  %i.ek = lshr i64 %.6.i.i, 6
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ek ; 2 uses
  %i.em = load i64, ptr %i.el, align 8
  %i.en = and i64 %i.em, %i.ej
  store i64 %i.en, ptr %i.el, align 8
  %i.eo = add i64 %.6.i.i, 63
  %i.ep = and i64 %i.eo, -64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i6 = phi i64 [ %i.ep, %bb.ag ], [ %.6.i.i, %bb.af ] ; 3 uses
  %i.eq = icmp ult i64 %.0.i6, %i.z
  br i1 %i.eq, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.ah
  %i.er = lshr i64 %.0.i6, 3
  %i.es = and i64 %i.er, 2305843009213693944
  %i.et = getelementptr i8, ptr %0, i64 %i.es
  %scevgep.i = getelementptr i8, ptr %i.et, i64 12592
  %i.eu = xor i64 %.0.i6, -1
  %i.ev = add nsw i64 %i.eu, %i.z
  %i.ew = lshr i64 %i.ev, 3
  %i.ex = and i64 %i.ew, 2305843009213693944
  %i.ey = add nuw nsw i64 %i.ex, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ey, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.ah, %sve_cont_ldst_elements.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bhu_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 20 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 7 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 1
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 1
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -2
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 1) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 1
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 4 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.cc = load i8, ptr %i.cb, align 4, !range !88, !noundef !89
  %i.cd = trunc nuw i8 %i.cc to i1
  %spec.select.i.i = select i1 %i.cd, i32 %.0.i, i32 0 ; 3 uses
  %.not122.i.i = icmp eq i32 %spec.select.i.i, 0  ; 2 uses
  br i1 %.not122.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = add i64 %2, %i.by
  %i.cf = call i64 @mte_check(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.ce, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ch = load i16, ptr %i.cg, align 4
  %i.ci = icmp eq i16 %i.bx, %i.ch                ; 2 uses
  %.not123.i.i = icmp ne i32 %i.ca, 0
  %brmerge.i.i = select i1 %.not123.i.i, i1 true, i1 %i.ci, !prof !90
  br i1 %brmerge.i.i, label %bb.r, label %bb.u, !prof !91

bb.r:                                             ; preds = %bb.q
  %i.cj = add i64 %2, %i.by                       ; 2 uses
  %i.ck = shl i64 %i.cj, 8
  %i.cl = ashr exact i64 %i.ck, 8
  %i.cm = and i64 %i.cl, %i.cj
  %i.cn = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.cm, i32 noundef 0, i64 noundef %i.b) #26
  %i.co = zext i8 %i.cn to i16
  %i.cp = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i16 %i.co, ptr %i.cp, align 2
  %i.cq = icmp eq i16 %i.aw, 0
  br i1 %i.cq, label %swap_memzero.exit, label %bb.s, !prof !85

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.at, i8 noundef 0, i64 noundef %i.bv, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.r, %bb.s
  %i.cr = add nsw i64 %i.bv, 2                    ; 4 uses
  %i.cs = add nsw i64 %i.by, 1
  %i.ct = icmp eq i64 %i.cr, %i.z
  br i1 %i.ct, label %swap_memzero.exit4, label %bb.t, !prof !85

bb.t:                                             ; preds = %swap_memzero.exit
  %i.cu = sub nsw i64 %i.z, %i.cr
  %i.cv = getelementptr inbounds i8, ptr %i.at, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cv, i8 noundef 0, i64 noundef %i.cu, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.t
  br i1 %i.ci, label %bb.ae, label %bb.v

bb.u:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.v

bb.v:                                             ; preds = %swap_memzero.exit4, %bb.u
  %.1109.i.i.ph = phi i64 [ %i.bv, %bb.u ], [ %i.cr, %swap_memzero.exit4 ] ; 2 uses
  %.1107.i.i.ph = phi i64 [ %i.by, %bb.u ], [ %i.cs, %swap_memzero.exit4 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load i16, ptr %i.cw, align 8
  %i.cy = sext i16 %i.cx to i64                   ; 4 uses
  %i.cz = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.da = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.da, align 8
  fence syncscope("singlethread") seq_cst
  br i1 %.not122.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.v, %.split21.us.us
  %.3111.i.i.us = phi i64 [ %i.dk, %.split21.us.us ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.dl, %.split21.us.us ], [ %.1107.i.i.ph, %bb.v ]
  %i.db = ashr i64 %.3111.i.i.us, 3
  %i.dc = getelementptr inbounds i8, ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.dk, %bb.y ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.dl, %bb.y ] ; 2 uses
  %i.de = and i64 %.4112.i.i.us.us, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not124.i.i.us.us = icmp eq i64 %i.dg, 0
  br i1 %.not124.i.i.us.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.dh, align 1
  %i.di = zext i8 %.val.us.us to i16
  %i.dj = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i16 %i.di, ptr %i.dj, align 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dk = add i64 %.4112.i.i.us.us, 2             ; 5 uses
  %i.dl = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dm = icmp sle i64 %i.dk, %i.cy
  %i.dn = and i64 %i.dk, 63
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = and i1 %i.dm, %i.do
  br i1 %i.dp, label %bb.w, label %.split21.us.us, !llvm.loop !30

.split21.us.us:                                   ; preds = %bb.y
  %.not126.i.i.us = icmp sgt i64 %i.dk, %i.cy
  br i1 %.not126.i.i.us, label %.split25.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.v, %.split21
  %.3111.i.i = phi i64 [ %i.eb, %.split21 ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ec, %.split21 ], [ %.1107.i.i.ph, %bb.v ]
  %i.dq = ashr i64 %.3111.i.i, 3
  %i.dr = getelementptr inbounds i8, ptr %1, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.eb, %bb.ac ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ec, %bb.ac ] ; 3 uses
  %i.dt = and i64 %.4112.i.i, 63
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.du, %i.ds
  %.not124.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not124.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = add i64 %.4.i.i, %2
  %i.dx = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.dw) #26
  br i1 %i.dx, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i
  %.val = load i8, ptr %i.dy, align 1
  %i.dz = zext i8 %.val to i16
  %i.ea = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i16 %i.dz, ptr %i.ea, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.eb = add i64 %.4112.i.i, 2                   ; 5 uses
  %i.ec = add i64 %.4.i.i, 1                      ; 2 uses
  %i.ed = icmp sle i64 %i.eb, %i.cy
  %i.ee = and i64 %i.eb, 63
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = and i1 %i.ed, %i.ef
  br i1 %i.eg, label %bb.z, label %.split21, !llvm.loop !30

bb.ad:                                            ; preds = %bb.aa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.da, align 8
  br label %bb.af

.split21:                                         ; preds = %bb.ac
  %.not126.i.i = icmp sgt i64 %i.eb, %i.cy
  br i1 %.not126.i.i, label %.split25.us, label %.split, !llvm.loop !31

.split25.us:                                      ; preds = %.split21, %.split21.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.da, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ei = load i16, ptr %i.eh, align 2            ; 2 uses
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = icmp sgt i16 %i.ei, -1
  br i1 %i.ek, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %swap_memzero.exit4, %.split25.us
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.em = load i16, ptr %i.el, align 2            ; 2 uses
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = icmp slt i16 %i.em, 0
  br i1 %i.eo, label %sve_ldnfff1_r_mte.exit, label %bb.af, !prof !85

bb.af:                                            ; preds = %bb.ad, %bb.ae, %.split25.us
  %.6.i.i = phi i64 [ %.4112.i.i, %bb.ad ], [ %i.ej, %.split25.us ], [ %i.en, %bb.ae ] ; 4 uses
  %i.ep = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i5 = icmp eq i64 %i.ep, 0
  br i1 %.not.i5, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.er = sub nuw nsw i64 64, %i.ep
  %i.es = lshr i64 -1, %i.er
  %i.et = lshr i64 %.6.i.i, 6
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.et ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = and i64 %i.ev, %i.es
  store i64 %i.ew, ptr %i.eu, align 8
  %i.ex = add i64 %.6.i.i, 63
  %i.ey = and i64 %i.ex, -64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i6 = phi i64 [ %i.ey, %bb.ag ], [ %.6.i.i, %bb.af ] ; 3 uses
  %i.ez = icmp ult i64 %.0.i6, %i.z
  br i1 %i.ez, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.ah
  %i.fa = lshr i64 %.0.i6, 3
  %i.fb = and i64 %i.fa, 2305843009213693944
  %i.fc = getelementptr i8, ptr %0, i64 %i.fb
  %scevgep.i = getelementptr i8, ptr %i.fc, i64 12592
  %i.fd = xor i64 %.0.i6, -1
  %i.fe = add nsw i64 %i.fd, %i.z
  %i.ff = lshr i64 %i.fe, 3
  %i.fg = and i64 %i.ff, 2305843009213693944
  %i.fh = add nuw nsw i64 %i.fg, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.fh, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.ah, %sve_cont_ldst_elements.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bsu_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 20 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 7 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 2
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 2
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -4
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 2) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 2
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 4 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.cc = load i8, ptr %i.cb, align 4, !range !88, !noundef !89
  %i.cd = trunc nuw i8 %i.cc to i1
  %spec.select.i.i = select i1 %i.cd, i32 %.0.i, i32 0 ; 3 uses
  %.not122.i.i = icmp eq i32 %spec.select.i.i, 0  ; 2 uses
  br i1 %.not122.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = add i64 %2, %i.by
  %i.cf = call i64 @mte_check(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.ce, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ch = load i16, ptr %i.cg, align 4
  %i.ci = icmp eq i16 %i.bx, %i.ch                ; 2 uses
  %.not123.i.i = icmp ne i32 %i.ca, 0
  %brmerge.i.i = select i1 %.not123.i.i, i1 true, i1 %i.ci, !prof !90
  br i1 %brmerge.i.i, label %bb.r, label %bb.u, !prof !91

bb.r:                                             ; preds = %bb.q
  %i.cj = add i64 %2, %i.by                       ; 2 uses
  %i.ck = shl i64 %i.cj, 8
  %i.cl = ashr exact i64 %i.ck, 8
  %i.cm = and i64 %i.cl, %i.cj
  %i.cn = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.cm, i32 noundef 0, i64 noundef %i.b) #26
  %i.co = zext i8 %i.cn to i32
  %i.cp = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i32 %i.co, ptr %i.cp, align 4
  %i.cq = icmp eq i16 %i.aw, 0
  br i1 %i.cq, label %swap_memzero.exit, label %bb.s, !prof !85

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.at, i8 noundef 0, i64 noundef %i.bv, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.r, %bb.s
  %i.cr = add nsw i64 %i.bv, 4                    ; 4 uses
  %i.cs = add nsw i64 %i.by, 1
  %i.ct = icmp eq i64 %i.cr, %i.z
  br i1 %i.ct, label %swap_memzero.exit4, label %bb.t, !prof !85

bb.t:                                             ; preds = %swap_memzero.exit
  %i.cu = sub nsw i64 %i.z, %i.cr
  %i.cv = getelementptr inbounds i8, ptr %i.at, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cv, i8 noundef 0, i64 noundef %i.cu, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.t
  br i1 %i.ci, label %bb.ae, label %bb.v

bb.u:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.v

bb.v:                                             ; preds = %swap_memzero.exit4, %bb.u
  %.1109.i.i.ph = phi i64 [ %i.bv, %bb.u ], [ %i.cr, %swap_memzero.exit4 ] ; 2 uses
  %.1107.i.i.ph = phi i64 [ %i.by, %bb.u ], [ %i.cs, %swap_memzero.exit4 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load i16, ptr %i.cw, align 8
  %i.cy = sext i16 %i.cx to i64                   ; 4 uses
  %i.cz = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.da = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.da, align 8
  fence syncscope("singlethread") seq_cst
  br i1 %.not122.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.v, %.split21.us.us
  %.3111.i.i.us = phi i64 [ %i.dk, %.split21.us.us ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.dl, %.split21.us.us ], [ %.1107.i.i.ph, %bb.v ]
  %i.db = ashr i64 %.3111.i.i.us, 3
  %i.dc = getelementptr inbounds i8, ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.dk, %bb.y ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.dl, %bb.y ] ; 2 uses
  %i.de = and i64 %.4112.i.i.us.us, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not124.i.i.us.us = icmp eq i64 %i.dg, 0
  br i1 %.not124.i.i.us.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.dh, align 1
  %i.di = zext i8 %.val.us.us to i32
  %i.dj = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i32 %i.di, ptr %i.dj, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dk = add i64 %.4112.i.i.us.us, 4             ; 5 uses
  %i.dl = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dm = icmp sle i64 %i.dk, %i.cy
  %i.dn = and i64 %i.dk, 63
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = and i1 %i.dm, %i.do
  br i1 %i.dp, label %bb.w, label %.split21.us.us, !llvm.loop !30

.split21.us.us:                                   ; preds = %bb.y
  %.not126.i.i.us = icmp sgt i64 %i.dk, %i.cy
  br i1 %.not126.i.i.us, label %.split25.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.v, %.split21
  %.3111.i.i = phi i64 [ %i.eb, %.split21 ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ec, %.split21 ], [ %.1107.i.i.ph, %bb.v ]
  %i.dq = ashr i64 %.3111.i.i, 3
  %i.dr = getelementptr inbounds i8, ptr %1, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.eb, %bb.ac ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ec, %bb.ac ] ; 3 uses
  %i.dt = and i64 %.4112.i.i, 63
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.du, %i.ds
  %.not124.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not124.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = add i64 %.4.i.i, %2
  %i.dx = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.dw) #26
  br i1 %i.dx, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i
  %.val = load i8, ptr %i.dy, align 1
  %i.dz = zext i8 %.val to i32
  %i.ea = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i32 %i.dz, ptr %i.ea, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.eb = add i64 %.4112.i.i, 4                   ; 5 uses
  %i.ec = add i64 %.4.i.i, 1                      ; 2 uses
  %i.ed = icmp sle i64 %i.eb, %i.cy
  %i.ee = and i64 %i.eb, 63
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = and i1 %i.ed, %i.ef
  br i1 %i.eg, label %bb.z, label %.split21, !llvm.loop !30

bb.ad:                                            ; preds = %bb.aa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.da, align 8
  br label %bb.af

.split21:                                         ; preds = %bb.ac
  %.not126.i.i = icmp sgt i64 %i.eb, %i.cy
  br i1 %.not126.i.i, label %.split25.us, label %.split, !llvm.loop !31

.split25.us:                                      ; preds = %.split21, %.split21.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.da, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ei = load i16, ptr %i.eh, align 2            ; 2 uses
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = icmp sgt i16 %i.ei, -1
  br i1 %i.ek, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %swap_memzero.exit4, %.split25.us
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.em = load i16, ptr %i.el, align 2            ; 2 uses
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = icmp slt i16 %i.em, 0
  br i1 %i.eo, label %sve_ldnfff1_r_mte.exit, label %bb.af, !prof !85

bb.af:                                            ; preds = %bb.ad, %bb.ae, %.split25.us
  %.6.i.i = phi i64 [ %.4112.i.i, %bb.ad ], [ %i.ej, %.split25.us ], [ %i.en, %bb.ae ] ; 4 uses
  %i.ep = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i5 = icmp eq i64 %i.ep, 0
  br i1 %.not.i5, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.er = sub nuw nsw i64 64, %i.ep
  %i.es = lshr i64 -1, %i.er
  %i.et = lshr i64 %.6.i.i, 6
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.et ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = and i64 %i.ev, %i.es
  store i64 %i.ew, ptr %i.eu, align 8
  %i.ex = add i64 %.6.i.i, 63
  %i.ey = and i64 %i.ex, -64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i6 = phi i64 [ %i.ey, %bb.ag ], [ %.6.i.i, %bb.af ] ; 3 uses
  %i.ez = icmp ult i64 %.0.i6, %i.z
  br i1 %i.ez, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.ah
  %i.fa = lshr i64 %.0.i6, 3
  %i.fb = and i64 %i.fa, 2305843009213693944
  %i.fc = getelementptr i8, ptr %0, i64 %i.fb
  %scevgep.i = getelementptr i8, ptr %i.fc, i64 12592
  %i.fd = xor i64 %.0.i6, -1
  %i.fe = add nsw i64 %i.fd, %i.z
  %i.ff = lshr i64 %i.fe, 3
  %i.fg = and i64 %i.ff, 2305843009213693944
  %i.fh = add nuw nsw i64 %i.fg, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.fh, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.ah, %sve_cont_ldst_elements.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bdu_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 20 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 7 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 3
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 3
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 3) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 3
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 4 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.cc = load i8, ptr %i.cb, align 4, !range !88, !noundef !89
  %i.cd = trunc nuw i8 %i.cc to i1
  %spec.select.i.i = select i1 %i.cd, i32 %.0.i, i32 0 ; 3 uses
  %.not122.i.i = icmp eq i32 %spec.select.i.i, 0  ; 2 uses
  br i1 %.not122.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = add i64 %2, %i.by
  %i.cf = call i64 @mte_check(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.ce, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ch = load i16, ptr %i.cg, align 4
  %i.ci = icmp eq i16 %i.bx, %i.ch                ; 2 uses
  %.not123.i.i = icmp ne i32 %i.ca, 0
  %brmerge.i.i = select i1 %.not123.i.i, i1 true, i1 %i.ci, !prof !90
  br i1 %brmerge.i.i, label %bb.r, label %bb.u, !prof !91

bb.r:                                             ; preds = %bb.q
  %i.cj = add i64 %2, %i.by                       ; 2 uses
  %i.ck = shl i64 %i.cj, 8
  %i.cl = ashr exact i64 %i.ck, 8
  %i.cm = and i64 %i.cl, %i.cj
  %i.cn = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.cm, i32 noundef 0, i64 noundef %i.b) #26
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i64 %i.co, ptr %i.cp, align 8
  %i.cq = icmp eq i16 %i.aw, 0
  br i1 %i.cq, label %swap_memzero.exit, label %bb.s, !prof !85

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.at, i8 noundef 0, i64 noundef %i.bv, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.r, %bb.s
  %i.cr = add nsw i64 %i.bv, 8                    ; 4 uses
  %i.cs = add nsw i64 %i.by, 1
  %i.ct = icmp eq i64 %i.cr, %i.z
  br i1 %i.ct, label %swap_memzero.exit4, label %bb.t, !prof !85

bb.t:                                             ; preds = %swap_memzero.exit
  %i.cu = sub nsw i64 %i.z, %i.cr
  %i.cv = getelementptr inbounds i8, ptr %i.at, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cv, i8 noundef 0, i64 noundef %i.cu, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.t
  br i1 %i.ci, label %bb.ae, label %bb.v

bb.u:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.v

bb.v:                                             ; preds = %swap_memzero.exit4, %bb.u
  %.1109.i.i.ph = phi i64 [ %i.bv, %bb.u ], [ %i.cr, %swap_memzero.exit4 ] ; 2 uses
  %.1107.i.i.ph = phi i64 [ %i.by, %bb.u ], [ %i.cs, %swap_memzero.exit4 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load i16, ptr %i.cw, align 8
  %i.cy = sext i16 %i.cx to i64                   ; 4 uses
  %i.cz = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.da = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.da, align 8
  fence syncscope("singlethread") seq_cst
  br i1 %.not122.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.v, %.split21.us.us
  %.3111.i.i.us = phi i64 [ %i.dk, %.split21.us.us ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.dl, %.split21.us.us ], [ %.1107.i.i.ph, %bb.v ]
  %i.db = ashr i64 %.3111.i.i.us, 3
  %i.dc = getelementptr inbounds i8, ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.dk, %bb.y ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.dl, %bb.y ] ; 2 uses
  %i.de = and i64 %.4112.i.i.us.us, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not124.i.i.us.us = icmp eq i64 %i.dg, 0
  br i1 %.not124.i.i.us.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.dh, align 1
  %i.di = zext i8 %.val.us.us to i64
  %i.dj = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i64 %i.di, ptr %i.dj, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dk = add i64 %.4112.i.i.us.us, 8             ; 5 uses
  %i.dl = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dm = icmp sle i64 %i.dk, %i.cy
  %i.dn = and i64 %i.dk, 63
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = and i1 %i.dm, %i.do
  br i1 %i.dp, label %bb.w, label %.split21.us.us, !llvm.loop !30

.split21.us.us:                                   ; preds = %bb.y
  %.not126.i.i.us = icmp sgt i64 %i.dk, %i.cy
  br i1 %.not126.i.i.us, label %.split25.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.v, %.split21
  %.3111.i.i = phi i64 [ %i.eb, %.split21 ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ec, %.split21 ], [ %.1107.i.i.ph, %bb.v ]
  %i.dq = ashr i64 %.3111.i.i, 3
  %i.dr = getelementptr inbounds i8, ptr %1, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.eb, %bb.ac ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ec, %bb.ac ] ; 3 uses
  %i.dt = and i64 %.4112.i.i, 63
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.du, %i.ds
  %.not124.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not124.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = add i64 %.4.i.i, %2
  %i.dx = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.dw) #26
  br i1 %i.dx, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i
  %.val = load i8, ptr %i.dy, align 1
  %i.dz = zext i8 %.val to i64
  %i.ea = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i64 %i.dz, ptr %i.ea, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.eb = add i64 %.4112.i.i, 8                   ; 5 uses
  %i.ec = add i64 %.4.i.i, 1                      ; 2 uses
  %i.ed = icmp sle i64 %i.eb, %i.cy
  %i.ee = and i64 %i.eb, 63
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = and i1 %i.ed, %i.ef
  br i1 %i.eg, label %bb.z, label %.split21, !llvm.loop !30

bb.ad:                                            ; preds = %bb.aa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.da, align 8
  br label %bb.af

.split21:                                         ; preds = %bb.ac
  %.not126.i.i = icmp sgt i64 %i.eb, %i.cy
  br i1 %.not126.i.i, label %.split25.us, label %.split, !llvm.loop !31

.split25.us:                                      ; preds = %.split21, %.split21.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.da, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ei = load i16, ptr %i.eh, align 2            ; 2 uses
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = icmp sgt i16 %i.ei, -1
  br i1 %i.ek, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %swap_memzero.exit4, %.split25.us
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.em = load i16, ptr %i.el, align 2            ; 2 uses
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = icmp slt i16 %i.em, 0
  br i1 %i.eo, label %sve_ldnfff1_r_mte.exit, label %bb.af, !prof !85

bb.af:                                            ; preds = %bb.ad, %bb.ae, %.split25.us
  %.6.i.i = phi i64 [ %.4112.i.i, %bb.ad ], [ %i.ej, %.split25.us ], [ %i.en, %bb.ae ] ; 4 uses
  %i.ep = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i5 = icmp eq i64 %i.ep, 0
  br i1 %.not.i5, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.er = sub nuw nsw i64 64, %i.ep
  %i.es = lshr i64 -1, %i.er
  %i.et = lshr i64 %.6.i.i, 6
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.et ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = and i64 %i.ev, %i.es
  store i64 %i.ew, ptr %i.eu, align 8
  %i.ex = add i64 %.6.i.i, 63
  %i.ey = and i64 %i.ex, -64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i6 = phi i64 [ %i.ey, %bb.ag ], [ %.6.i.i, %bb.af ] ; 3 uses
  %i.ez = icmp ult i64 %.0.i6, %i.z
  br i1 %i.ez, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.ah
  %i.fa = lshr i64 %.0.i6, 3
  %i.fb = and i64 %i.fa, 2305843009213693944
  %i.fc = getelementptr i8, ptr %0, i64 %i.fb
  %scevgep.i = getelementptr i8, ptr %i.fc, i64 12592
  %i.fd = xor i64 %.0.i6, -1
  %i.fe = add nsw i64 %i.fd, %i.z
  %i.ff = lshr i64 %i.fe, 3
  %i.fg = and i64 %i.ff, 2305843009213693944
  %i.fh = add nuw nsw i64 %i.fg, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.fh, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.ah, %sve_cont_ldst_elements.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bhs_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 20 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 7 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 1
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 1
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -2
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 1) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 1
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 4 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.cc = load i8, ptr %i.cb, align 4, !range !88, !noundef !89
  %i.cd = trunc nuw i8 %i.cc to i1
  %spec.select.i.i = select i1 %i.cd, i32 %.0.i, i32 0 ; 3 uses
  %.not122.i.i = icmp eq i32 %spec.select.i.i, 0  ; 2 uses
  br i1 %.not122.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = add i64 %2, %i.by
  %i.cf = call i64 @mte_check(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.ce, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ch = load i16, ptr %i.cg, align 4
  %i.ci = icmp eq i16 %i.bx, %i.ch                ; 2 uses
  %.not123.i.i = icmp ne i32 %i.ca, 0
  %brmerge.i.i = select i1 %.not123.i.i, i1 true, i1 %i.ci, !prof !90
  br i1 %brmerge.i.i, label %bb.r, label %bb.u, !prof !91

bb.r:                                             ; preds = %bb.q
  %i.cj = add i64 %2, %i.by                       ; 2 uses
  %i.ck = shl i64 %i.cj, 8
  %i.cl = ashr exact i64 %i.ck, 8
  %i.cm = and i64 %i.cl, %i.cj
  %i.cn = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.cm, i32 noundef 0, i64 noundef %i.b) #26
  %i.co = sext i8 %i.cn to i16
  %i.cp = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i16 %i.co, ptr %i.cp, align 2
  %i.cq = icmp eq i16 %i.aw, 0
  br i1 %i.cq, label %swap_memzero.exit, label %bb.s, !prof !85

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.at, i8 noundef 0, i64 noundef %i.bv, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.r, %bb.s
  %i.cr = add nsw i64 %i.bv, 2                    ; 4 uses
  %i.cs = add nsw i64 %i.by, 1
  %i.ct = icmp eq i64 %i.cr, %i.z
  br i1 %i.ct, label %swap_memzero.exit4, label %bb.t, !prof !85

bb.t:                                             ; preds = %swap_memzero.exit
  %i.cu = sub nsw i64 %i.z, %i.cr
  %i.cv = getelementptr inbounds i8, ptr %i.at, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cv, i8 noundef 0, i64 noundef %i.cu, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.t
  br i1 %i.ci, label %bb.ae, label %bb.v

bb.u:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.v

bb.v:                                             ; preds = %swap_memzero.exit4, %bb.u
  %.1109.i.i.ph = phi i64 [ %i.bv, %bb.u ], [ %i.cr, %swap_memzero.exit4 ] ; 2 uses
  %.1107.i.i.ph = phi i64 [ %i.by, %bb.u ], [ %i.cs, %swap_memzero.exit4 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load i16, ptr %i.cw, align 8
  %i.cy = sext i16 %i.cx to i64                   ; 4 uses
  %i.cz = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.da = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.da, align 8
  fence syncscope("singlethread") seq_cst
  br i1 %.not122.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.v, %.split21.us.us
  %.3111.i.i.us = phi i64 [ %i.dk, %.split21.us.us ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.dl, %.split21.us.us ], [ %.1107.i.i.ph, %bb.v ]
  %i.db = ashr i64 %.3111.i.i.us, 3
  %i.dc = getelementptr inbounds i8, ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.dk, %bb.y ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.dl, %bb.y ] ; 2 uses
  %i.de = and i64 %.4112.i.i.us.us, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not124.i.i.us.us = icmp eq i64 %i.dg, 0
  br i1 %.not124.i.i.us.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.dh, align 1
  %i.di = sext i8 %.val.us.us to i16
  %i.dj = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i16 %i.di, ptr %i.dj, align 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dk = add i64 %.4112.i.i.us.us, 2             ; 5 uses
  %i.dl = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dm = icmp sle i64 %i.dk, %i.cy
  %i.dn = and i64 %i.dk, 63
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = and i1 %i.dm, %i.do
  br i1 %i.dp, label %bb.w, label %.split21.us.us, !llvm.loop !30

.split21.us.us:                                   ; preds = %bb.y
  %.not126.i.i.us = icmp sgt i64 %i.dk, %i.cy
  br i1 %.not126.i.i.us, label %.split25.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.v, %.split21
  %.3111.i.i = phi i64 [ %i.eb, %.split21 ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ec, %.split21 ], [ %.1107.i.i.ph, %bb.v ]
  %i.dq = ashr i64 %.3111.i.i, 3
  %i.dr = getelementptr inbounds i8, ptr %1, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.eb, %bb.ac ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ec, %bb.ac ] ; 3 uses
  %i.dt = and i64 %.4112.i.i, 63
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.du, %i.ds
  %.not124.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not124.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = add i64 %.4.i.i, %2
  %i.dx = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.dw) #26
  br i1 %i.dx, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i
  %.val = load i8, ptr %i.dy, align 1
  %i.dz = sext i8 %.val to i16
  %i.ea = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i16 %i.dz, ptr %i.ea, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.eb = add i64 %.4112.i.i, 2                   ; 5 uses
  %i.ec = add i64 %.4.i.i, 1                      ; 2 uses
  %i.ed = icmp sle i64 %i.eb, %i.cy
  %i.ee = and i64 %i.eb, 63
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = and i1 %i.ed, %i.ef
  br i1 %i.eg, label %bb.z, label %.split21, !llvm.loop !30

bb.ad:                                            ; preds = %bb.aa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.da, align 8
  br label %bb.af

.split21:                                         ; preds = %bb.ac
  %.not126.i.i = icmp sgt i64 %i.eb, %i.cy
  br i1 %.not126.i.i, label %.split25.us, label %.split, !llvm.loop !31

.split25.us:                                      ; preds = %.split21, %.split21.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.da, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ei = load i16, ptr %i.eh, align 2            ; 2 uses
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = icmp sgt i16 %i.ei, -1
  br i1 %i.ek, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %swap_memzero.exit4, %.split25.us
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.em = load i16, ptr %i.el, align 2            ; 2 uses
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = icmp slt i16 %i.em, 0
  br i1 %i.eo, label %sve_ldnfff1_r_mte.exit, label %bb.af, !prof !85

bb.af:                                            ; preds = %bb.ad, %bb.ae, %.split25.us
  %.6.i.i = phi i64 [ %.4112.i.i, %bb.ad ], [ %i.ej, %.split25.us ], [ %i.en, %bb.ae ] ; 4 uses
  %i.ep = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i5 = icmp eq i64 %i.ep, 0
  br i1 %.not.i5, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.er = sub nuw nsw i64 64, %i.ep
  %i.es = lshr i64 -1, %i.er
  %i.et = lshr i64 %.6.i.i, 6
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.et ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = and i64 %i.ev, %i.es
  store i64 %i.ew, ptr %i.eu, align 8
  %i.ex = add i64 %.6.i.i, 63
  %i.ey = and i64 %i.ex, -64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i6 = phi i64 [ %i.ey, %bb.ag ], [ %.6.i.i, %bb.af ] ; 3 uses
  %i.ez = icmp ult i64 %.0.i6, %i.z
  br i1 %i.ez, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.ah
  %i.fa = lshr i64 %.0.i6, 3
  %i.fb = and i64 %i.fa, 2305843009213693944
  %i.fc = getelementptr i8, ptr %0, i64 %i.fb
  %scevgep.i = getelementptr i8, ptr %i.fc, i64 12592
  %i.fd = xor i64 %.0.i6, -1
  %i.fe = add nsw i64 %i.fd, %i.z
  %i.ff = lshr i64 %i.fe, 3
  %i.fg = and i64 %i.ff, 2305843009213693944
  %i.fh = add nuw nsw i64 %i.fg, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.fh, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.ah, %sve_cont_ldst_elements.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bss_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 20 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 7 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 2
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 2
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -4
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 2) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 2
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 4 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.cc = load i8, ptr %i.cb, align 4, !range !88, !noundef !89
  %i.cd = trunc nuw i8 %i.cc to i1
  %spec.select.i.i = select i1 %i.cd, i32 %.0.i, i32 0 ; 3 uses
  %.not122.i.i = icmp eq i32 %spec.select.i.i, 0  ; 2 uses
  br i1 %.not122.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = add i64 %2, %i.by
  %i.cf = call i64 @mte_check(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.ce, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ch = load i16, ptr %i.cg, align 4
  %i.ci = icmp eq i16 %i.bx, %i.ch                ; 2 uses
  %.not123.i.i = icmp ne i32 %i.ca, 0
  %brmerge.i.i = select i1 %.not123.i.i, i1 true, i1 %i.ci, !prof !90
  br i1 %brmerge.i.i, label %bb.r, label %bb.u, !prof !91

bb.r:                                             ; preds = %bb.q
  %i.cj = add i64 %2, %i.by                       ; 2 uses
  %i.ck = shl i64 %i.cj, 8
  %i.cl = ashr exact i64 %i.ck, 8
  %i.cm = and i64 %i.cl, %i.cj
  %i.cn = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.cm, i32 noundef 0, i64 noundef %i.b) #26
  %i.co = sext i8 %i.cn to i32
  %i.cp = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i32 %i.co, ptr %i.cp, align 4
  %i.cq = icmp eq i16 %i.aw, 0
  br i1 %i.cq, label %swap_memzero.exit, label %bb.s, !prof !85

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.at, i8 noundef 0, i64 noundef %i.bv, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.r, %bb.s
  %i.cr = add nsw i64 %i.bv, 4                    ; 4 uses
  %i.cs = add nsw i64 %i.by, 1
  %i.ct = icmp eq i64 %i.cr, %i.z
  br i1 %i.ct, label %swap_memzero.exit4, label %bb.t, !prof !85

bb.t:                                             ; preds = %swap_memzero.exit
  %i.cu = sub nsw i64 %i.z, %i.cr
  %i.cv = getelementptr inbounds i8, ptr %i.at, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cv, i8 noundef 0, i64 noundef %i.cu, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.t
  br i1 %i.ci, label %bb.ae, label %bb.v

bb.u:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.v

bb.v:                                             ; preds = %swap_memzero.exit4, %bb.u
  %.1109.i.i.ph = phi i64 [ %i.bv, %bb.u ], [ %i.cr, %swap_memzero.exit4 ] ; 2 uses
  %.1107.i.i.ph = phi i64 [ %i.by, %bb.u ], [ %i.cs, %swap_memzero.exit4 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load i16, ptr %i.cw, align 8
  %i.cy = sext i16 %i.cx to i64                   ; 4 uses
  %i.cz = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.da = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.da, align 8
  fence syncscope("singlethread") seq_cst
  br i1 %.not122.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.v, %.split21.us.us
  %.3111.i.i.us = phi i64 [ %i.dk, %.split21.us.us ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.dl, %.split21.us.us ], [ %.1107.i.i.ph, %bb.v ]
  %i.db = ashr i64 %.3111.i.i.us, 3
  %i.dc = getelementptr inbounds i8, ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.dk, %bb.y ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.dl, %bb.y ] ; 2 uses
  %i.de = and i64 %.4112.i.i.us.us, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not124.i.i.us.us = icmp eq i64 %i.dg, 0
  br i1 %.not124.i.i.us.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.dh, align 1
  %i.di = sext i8 %.val.us.us to i32
  %i.dj = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i32 %i.di, ptr %i.dj, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dk = add i64 %.4112.i.i.us.us, 4             ; 5 uses
  %i.dl = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dm = icmp sle i64 %i.dk, %i.cy
  %i.dn = and i64 %i.dk, 63
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = and i1 %i.dm, %i.do
  br i1 %i.dp, label %bb.w, label %.split21.us.us, !llvm.loop !30

.split21.us.us:                                   ; preds = %bb.y
  %.not126.i.i.us = icmp sgt i64 %i.dk, %i.cy
  br i1 %.not126.i.i.us, label %.split25.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.v, %.split21
  %.3111.i.i = phi i64 [ %i.eb, %.split21 ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ec, %.split21 ], [ %.1107.i.i.ph, %bb.v ]
  %i.dq = ashr i64 %.3111.i.i, 3
  %i.dr = getelementptr inbounds i8, ptr %1, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.eb, %bb.ac ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ec, %bb.ac ] ; 3 uses
  %i.dt = and i64 %.4112.i.i, 63
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.du, %i.ds
  %.not124.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not124.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = add i64 %.4.i.i, %2
  %i.dx = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.dw) #26
  br i1 %i.dx, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i
  %.val = load i8, ptr %i.dy, align 1
  %i.dz = sext i8 %.val to i32
  %i.ea = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i32 %i.dz, ptr %i.ea, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.eb = add i64 %.4112.i.i, 4                   ; 5 uses
  %i.ec = add i64 %.4.i.i, 1                      ; 2 uses
  %i.ed = icmp sle i64 %i.eb, %i.cy
  %i.ee = and i64 %i.eb, 63
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = and i1 %i.ed, %i.ef
  br i1 %i.eg, label %bb.z, label %.split21, !llvm.loop !30

bb.ad:                                            ; preds = %bb.aa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.da, align 8
  br label %bb.af

.split21:                                         ; preds = %bb.ac
  %.not126.i.i = icmp sgt i64 %i.eb, %i.cy
  br i1 %.not126.i.i, label %.split25.us, label %.split, !llvm.loop !31

.split25.us:                                      ; preds = %.split21, %.split21.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.da, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ei = load i16, ptr %i.eh, align 2            ; 2 uses
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = icmp sgt i16 %i.ei, -1
  br i1 %i.ek, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %swap_memzero.exit4, %.split25.us
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.em = load i16, ptr %i.el, align 2            ; 2 uses
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = icmp slt i16 %i.em, 0
  br i1 %i.eo, label %sve_ldnfff1_r_mte.exit, label %bb.af, !prof !85

bb.af:                                            ; preds = %bb.ad, %bb.ae, %.split25.us
  %.6.i.i = phi i64 [ %.4112.i.i, %bb.ad ], [ %i.ej, %.split25.us ], [ %i.en, %bb.ae ] ; 4 uses
  %i.ep = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i5 = icmp eq i64 %i.ep, 0
  br i1 %.not.i5, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.er = sub nuw nsw i64 64, %i.ep
  %i.es = lshr i64 -1, %i.er
  %i.et = lshr i64 %.6.i.i, 6
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.et ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = and i64 %i.ev, %i.es
  store i64 %i.ew, ptr %i.eu, align 8
  %i.ex = add i64 %.6.i.i, 63
  %i.ey = and i64 %i.ex, -64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i6 = phi i64 [ %i.ey, %bb.ag ], [ %.6.i.i, %bb.af ] ; 3 uses
  %i.ez = icmp ult i64 %.0.i6, %i.z
  br i1 %i.ez, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.ah
  %i.fa = lshr i64 %.0.i6, 3
  %i.fb = and i64 %i.fa, 2305843009213693944
  %i.fc = getelementptr i8, ptr %0, i64 %i.fb
  %scevgep.i = getelementptr i8, ptr %i.fc, i64 12592
  %i.fd = xor i64 %.0.i6, -1
  %i.fe = add nsw i64 %i.fd, %i.z
  %i.ff = lshr i64 %i.fe, 3
  %i.fg = and i64 %i.ff, 2305843009213693944
  %i.fh = add nuw nsw i64 %i.fg, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.fh, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.ah, %sve_cont_ldst_elements.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldff1bds_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 20 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 7 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 3
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 3
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 3) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 3
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 4 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 1, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b) ; 0 uses
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.cc = load i8, ptr %i.cb, align 4, !range !88, !noundef !89
  %i.cd = trunc nuw i8 %i.cc to i1
  %spec.select.i.i = select i1 %i.cd, i32 %.0.i, i32 0 ; 3 uses
  %.not122.i.i = icmp eq i32 %spec.select.i.i, 0  ; 2 uses
  br i1 %.not122.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = add i64 %2, %i.by
  %i.cf = call i64 @mte_check(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.ce, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ch = load i16, ptr %i.cg, align 4
  %i.ci = icmp eq i16 %i.bx, %i.ch                ; 2 uses
  %.not123.i.i = icmp ne i32 %i.ca, 0
  %brmerge.i.i = select i1 %.not123.i.i, i1 true, i1 %i.ci, !prof !90
  br i1 %brmerge.i.i, label %bb.r, label %bb.u, !prof !91

bb.r:                                             ; preds = %bb.q
  %i.cj = add i64 %2, %i.by                       ; 2 uses
  %i.ck = shl i64 %i.cj, 8
  %i.cl = ashr exact i64 %i.ck, 8
  %i.cm = and i64 %i.cl, %i.cj
  %i.cn = call zeroext i8 @cpu_ldb_mmu(ptr noundef %0, i64 noundef %i.cm, i32 noundef 0, i64 noundef %i.b) #26
  %i.co = sext i8 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i64 %i.co, ptr %i.cp, align 8
  %i.cq = icmp eq i16 %i.aw, 0
  br i1 %i.cq, label %swap_memzero.exit, label %bb.s, !prof !85

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.at, i8 noundef 0, i64 noundef %i.bv, i1 noundef false) #26
  br label %swap_memzero.exit

swap_memzero.exit:                                ; preds = %bb.r, %bb.s
  %i.cr = add nsw i64 %i.bv, 8                    ; 4 uses
  %i.cs = add nsw i64 %i.by, 1
  %i.ct = icmp eq i64 %i.cr, %i.z
  br i1 %i.ct, label %swap_memzero.exit4, label %bb.t, !prof !85

bb.t:                                             ; preds = %swap_memzero.exit
  %i.cu = sub nsw i64 %i.z, %i.cr
  %i.cv = getelementptr inbounds i8, ptr %i.at, i64 %i.cr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.cv, i8 noundef 0, i64 noundef %i.cu, i1 noundef false) #26
  br label %swap_memzero.exit4

swap_memzero.exit4:                               ; preds = %swap_memzero.exit, %bb.t
  br i1 %i.ci, label %bb.ae, label %bb.v

bb.u:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.v

bb.v:                                             ; preds = %swap_memzero.exit4, %bb.u
  %.1109.i.i.ph = phi i64 [ %i.bv, %bb.u ], [ %i.cr, %swap_memzero.exit4 ] ; 2 uses
  %.1107.i.i.ph = phi i64 [ %i.by, %bb.u ], [ %i.cs, %swap_memzero.exit4 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load i16, ptr %i.cw, align 8
  %i.cy = sext i16 %i.cx to i64                   ; 4 uses
  %i.cz = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.da = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.da, align 8
  fence syncscope("singlethread") seq_cst
  br i1 %.not122.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.v, %.split21.us.us
  %.3111.i.i.us = phi i64 [ %i.dk, %.split21.us.us ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.dl, %.split21.us.us ], [ %.1107.i.i.ph, %bb.v ]
  %i.db = ashr i64 %.3111.i.i.us, 3
  %i.dc = getelementptr inbounds i8, ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.dk, %bb.y ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.dl, %bb.y ] ; 2 uses
  %i.de = and i64 %.4112.i.i.us.us, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not124.i.i.us.us = icmp eq i64 %i.dg, 0
  br i1 %.not124.i.i.us.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.dh, align 1
  %i.di = sext i8 %.val.us.us to i64
  %i.dj = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i64 %i.di, ptr %i.dj, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dk = add i64 %.4112.i.i.us.us, 8             ; 5 uses
  %i.dl = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dm = icmp sle i64 %i.dk, %i.cy
  %i.dn = and i64 %i.dk, 63
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = and i1 %i.dm, %i.do
  br i1 %i.dp, label %bb.w, label %.split21.us.us, !llvm.loop !30

.split21.us.us:                                   ; preds = %bb.y
  %.not126.i.i.us = icmp sgt i64 %i.dk, %i.cy
  br i1 %.not126.i.i.us, label %.split25.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.v, %.split21
  %.3111.i.i = phi i64 [ %i.eb, %.split21 ], [ %.1109.i.i.ph, %bb.v ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ec, %.split21 ], [ %.1107.i.i.ph, %bb.v ]
  %i.dq = ashr i64 %.3111.i.i, 3
  %i.dr = getelementptr inbounds i8, ptr %1, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.eb, %bb.ac ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ec, %bb.ac ] ; 3 uses
  %i.dt = and i64 %.4112.i.i, 63
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = and i64 %i.du, %i.ds
  %.not124.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not124.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = add i64 %.4.i.i, %2
  %i.dx = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.dw) #26
  br i1 %i.dx, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds i8, ptr %i.cz, i64 %.4.i.i
  %.val = load i8, ptr %i.dy, align 1
  %i.dz = sext i8 %.val to i64
  %i.ea = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i64 %i.dz, ptr %i.ea, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
end_hunk_11
begin_hunk_12_@helper_sve_ldff1dd_be_r_mte:bb.a
  %i.bk = sext i16 %i.bj to i64                   ; 4 uses
  %i.bl = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.bm = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.bm, align 8
  fence syncscope("singlethread") seq_cst
  br i1 %.not122.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.m, %.split19.us.us
  %.3111.i.i.us = phi i64 [ %i.bw, %.split19.us.us ], [ %.1109.i.i.ph, %bb.m ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.bx, %.split19.us.us ], [ %.1107.i.i.ph, %bb.m ]
  %i.bn = ashr i64 %.3111.i.i.us, 3
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.bw, %bb.p ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.bx, %bb.p ] ; 2 uses
  %i.bq = and i64 %.4112.i.i.us.us, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, %i.bp
  %.not124.i.i.us.us = icmp eq i64 %i.bs, 0
  br i1 %.not124.i.i.us.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds i8, ptr %i.bl, i64 %.4.i.i.us.us
  %.val.us.us = load i64, ptr %i.bt, align 1
  %i.bu = call i64 @llvm.bswap.i64(i64 %.val.us.us)
  %i.bv = getelementptr inbounds i8, ptr %i.w, i64 %.4112.i.i.us.us
  store i64 %i.bu, ptr %i.bv, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bw = add nsw i64 %.4112.i.i.us.us, 8         ; 5 uses
  %i.bx = add i64 %.4.i.i.us.us, 8                ; 2 uses
  %i.by = icmp sle i64 %i.bw, %i.bk
  %i.bz = and i64 %i.bw, 63
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = and i1 %i.by, %i.ca
  br i1 %i.cb, label %bb.n, label %.split19.us.us, !llvm.loop !30

.split19.us.us:                                   ; preds = %bb.p
  %.not126.i.i.us = icmp sgt i64 %i.bw, %i.bk
  br i1 %.not126.i.i.us, label %.split23.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.m, %.split19
  %.3111.i.i = phi i64 [ %i.cn, %.split19 ], [ %.1109.i.i.ph, %bb.m ] ; 2 uses
  %.3.i.i = phi i64 [ %i.co, %.split19 ], [ %.1107.i.i.ph, %bb.m ]
  %i.cc = ashr i64 %.3111.i.i, 3
  %i.cd = getelementptr inbounds i8, ptr %1, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.cn, %bb.t ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.co, %bb.t ] ; 3 uses
  %i.cf = and i64 %.4112.i.i, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.cg, %i.ce
  %.not124.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not124.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = add i64 %.4.i.i, %2
  %i.cj = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i, i64 noundef %i.ci) #26
  br i1 %i.cj, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds i8, ptr %i.bl, i64 %.4.i.i
  %.val = load i64, ptr %i.ck, align 1
  %i.cl = call i64 @llvm.bswap.i64(i64 %.val)
  %i.cm = getelementptr inbounds i8, ptr %i.w, i64 %.4112.i.i
  store i64 %i.cl, ptr %i.cm, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.cn = add nsw i64 %.4112.i.i, 8               ; 5 uses
  %i.co = add i64 %.4.i.i, 8                      ; 2 uses
  %i.cp = icmp sle i64 %i.cn, %i.bk
  %i.cq = and i64 %i.cn, 63
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = and i1 %i.cp, %i.cr
  br i1 %i.cs, label %bb.q, label %.split19, !llvm.loop !30

bb.u:                                             ; preds = %bb.r
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bm, align 8
  br label %bb.w

.split19:                                         ; preds = %bb.t
  %.not126.i.i = icmp sgt i64 %i.cn, %i.bk
  br i1 %.not126.i.i, label %.split23.us, label %.split, !llvm.loop !31

.split23.us:                                      ; preds = %.split19, %.split19.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bm, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cu = load i16, ptr %i.ct, align 2            ; 2 uses
  %i.cv = zext nneg i16 %i.cu to i64
  %i.cw = icmp sgt i16 %i.cu, -1
  br i1 %i.cw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %swap_memzero.exit3, %.split23.us
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cy = load i16, ptr %i.cx, align 2            ; 2 uses
  %i.cz = zext nneg i16 %i.cy to i64
  %i.da = icmp slt i16 %i.cy, 0
  br i1 %i.da, label %sve_ldnfff1_r_mte.exit, label %bb.w, !prof !85

bb.w:                                             ; preds = %bb.u, %bb.v, %.split23.us
  %.6.i.i = phi i64 [ %.4112.i.i, %bb.u ], [ %i.cv, %.split23.us ], [ %i.cz, %bb.v ] ; 4 uses
  %i.db = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i = icmp eq i64 %i.db, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.dd = sub nuw nsw i64 64, %i.db
  %i.de = lshr i64 -1, %i.dd
  %i.df = lshr i64 %.6.i.i, 6
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.df ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = and i64 %i.dh, %i.de
  store i64 %i.di, ptr %i.dg, align 8
  %i.dj = add nsw i64 %.6.i.i, 63
  %i.dk = and i64 %i.dj, -64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i4 = phi i64 [ %i.dk, %bb.x ], [ %.6.i.i, %bb.w ] ; 3 uses
  %i.dl = icmp ult i64 %.0.i4, %i.ad
  br i1 %i.dl, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.y
  %i.dm = lshr i64 %.0.i4, 3
  %i.dn = and i64 %i.dm, 2305843009213693944
  %i.do = getelementptr i8, ptr %0, i64 %i.dn
  %scevgep.i = getelementptr i8, ptr %i.do, i64 12592
  %i.dp = xor i64 %.0.i4, -1
  %i.dq = add nsw i64 %i.dp, %i.ad
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = and i64 %i.dr, 2305843009213693944
  %i.dt = add nuw nsw i64 %i.ds, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dt, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.y, %bb.e, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bb_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 18 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr @pred_esz_masks, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]   ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i, 6                 ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 4 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i, 1
  %exitcond.not.i = icmp eq i64 %.0.i, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 5 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  store i16 %i.ag, ptr %4, align 8
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.aj = or i64 %i.ai, %2                        ; 3 uses
  %i.ak = sub i64 0, %i.aj                        ; 3 uses
  %.not83.i.not = icmp slt i64 %.1.i, %i.ak
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.al = trunc nuw nsw i64 %.1.i to i16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.al, ptr %i.am, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.an = trunc i64 %i.ak to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.an, ptr %i.ao, align 8
  %.not84.i = icmp eq i64 %i.aj, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = trunc i64 %i.aj to i16
  %i.aq = xor i16 %i.ap, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.aq, ptr %i.ar, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.ak, i64 noundef %i.h, i32 noundef 0) ; 2 uses
  %i.at = icmp sle i64 %i.as, %.1.i
  tail call void @llvm.assume(i1 %i.at)
  %i.au = trunc i64 %i.as to i16                  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.au, ptr %i.aw, align 2
  %i.ax = trunc nuw nsw i64 %.1.i to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.ax, ptr %i.ay, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.az = ashr exact i64 %sext, 48                ; 3 uses
  %i.ba = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z)
  br i1 %i.ba, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bb = load i16, ptr %4, align 8               ; 2 uses
  %i.bc = sext i16 %i.bb to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.be = load i16, ptr %i.bd, align 4
  %i.bf = icmp eq i16 %i.bb, %i.be
  br i1 %i.bf, label %bb.o, label %bb.p, !prof !76

bb.o:                                             ; preds = %bb.n
  %i.bg = add i64 %2, %i.bc                       ; 2 uses
  %i.bh = shl i64 %i.bg, 8
  %i.bi = ashr exact i64 %i.bh, 8
  %i.bj = and i64 %i.bi, %i.bg
  %i.bk = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.bj, i32 noundef 0, i64 noundef %i.z) #26
  %i.bl = getelementptr inbounds i8, ptr %i.ad, i64 %i.az
  store i8 %i.bk, ptr %i.bl, align 1
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = sext i16 %i.bn to i64                   ; 2 uses
  %i.bp = load ptr, ptr %i.j, align 8
  %i.bq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.bq, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.3111.i = phi i64 [ %i.az, %bb.p ], [ %i.bz, %bb.u ] ; 2 uses
  %.3.i = phi i64 [ %i.bc, %bb.p ], [ %i.ca, %bb.u ]
  %i.br = ashr i64 %.3111.i, 3
  %i.bs = getelementptr inbounds i8, ptr %1, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.4112.i = phi i64 [ %.3111.i, %bb.q ], [ %i.bz, %bb.t ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.q ], [ %i.ca, %bb.t ] ; 2 uses
  %i.bu = and i64 %.4112.i, 63
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bv, %i.bt
  %.not124.i = icmp eq i64 %i.bw, 0
  br i1 %.not124.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds i8, ptr %i.bp, i64 %.4.i
  %.val = load i8, ptr %i.bx, align 1
  %i.by = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i8 %.val, ptr %i.by, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bz = add i64 %.4112.i, 1                     ; 5 uses
  %i.ca = add i64 %.4.i, 1                        ; 2 uses
  %i.cb = icmp sle i64 %i.bz, %i.bo
  %i.cc = and i64 %i.bz, 63
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = and i1 %i.cb, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.u, !llvm.loop !30

bb.u:                                             ; preds = %bb.t
  %.not126.i = icmp sgt i64 %i.bz, %i.bo
  br i1 %.not126.i, label %bb.v, label %bb.q, !llvm.loop !31

bb.v:                                             ; preds = %bb.u
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bq, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cg = load i16, ptr %i.cf, align 2            ; 2 uses
  %i.ch = zext nneg i16 %i.cg to i64
  %i.ci = icmp sgt i16 %i.cg, -1
  br i1 %i.ci, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ck = load i16, ptr %i.cj, align 2            ; 2 uses
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = icmp slt i16 %i.ck, 0
  br i1 %i.cm, label %sve_ldnfff1_r.exit, label %bb.x, !prof !85

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.m
  %.6.i = phi i64 [ %i.az, %bb.m ], [ %i.ch, %bb.v ], [ %i.cl, %bb.w ] ; 4 uses
  %i.cn = and i64 %.6.i, 63                       ; 2 uses
  %.not.i3 = icmp eq i64 %i.cn, 0
  br i1 %.not.i3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.cp = sub nuw nsw i64 64, %i.cn
  %i.cq = lshr i64 -1, %i.cp
  %i.cr = lshr i64 %.6.i, 6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cr ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = and i64 %i.ct, %i.cq
  store i64 %i.cu, ptr %i.cs, align 8
  %i.cv = add nsw i64 %.6.i, 63
  %i.cw = and i64 %i.cv, -64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i4 = phi i64 [ %i.cw, %bb.y ], [ %.6.i, %bb.x ] ; 3 uses
  %i.cx = icmp ult i64 %.0.i4, %i.h
  br i1 %i.cx, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.z
  %i.cy = lshr i64 %.0.i4, 3
  %i.cz = and i64 %i.cy, 2305843009213693944
  %i.da = getelementptr i8, ptr %0, i64 %i.cz
  %scevgep.i = getelementptr i8, ptr %i.da, i64 12592
  %i.db = xor i64 %.0.i4, -1
  %i.dc = add nsw i64 %i.db, %i.h
  %i.dd = lshr i64 %i.dc, 3
  %i.de = and i64 %i.dd, 2305843009213693944
  %i.df = add nuw nsw i64 %i.de, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.df, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.z, %sve_cont_ldst_elements.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bhu_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 18 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]   ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i, 6                 ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i, 1
  %exitcond.not.i = icmp eq i64 %.0.i, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 5 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 1
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 1
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -2
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 1) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 1
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 3 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z)
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = icmp eq i16 %i.bh, %i.bk
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !76

bb.o:                                             ; preds = %bb.n
  %i.bm = add i64 %2, %i.bi                       ; 2 uses
  %i.bn = shl i64 %i.bm, 8
  %i.bo = ashr exact i64 %i.bn, 8
  %i.bp = and i64 %i.bo, %i.bm
  %i.bq = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.bp, i32 noundef 0, i64 noundef %i.z) #26
  %i.br = zext i8 %i.bq to i16
  %i.bs = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i16 %i.br, ptr %i.bs, align 2
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.3111.i = phi i64 [ %i.bf, %bb.p ], [ %i.ch, %bb.u ] ; 2 uses
  %.3.i = phi i64 [ %i.bi, %bb.p ], [ %i.ci, %bb.u ]
  %i.by = ashr i64 %.3111.i, 3
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.4112.i = phi i64 [ %.3111.i, %bb.q ], [ %i.ch, %bb.t ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.q ], [ %i.ci, %bb.t ] ; 2 uses
  %i.cb = and i64 %.4112.i, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.ca
  %.not124.i = icmp eq i64 %i.cd, 0
  br i1 %.not124.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 %.4.i
  %.val = load i8, ptr %i.ce, align 1
  %i.cf = zext i8 %.val to i16
  %i.cg = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i16 %i.cf, ptr %i.cg, align 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ch = add i64 %.4112.i, 2                     ; 5 uses
  %i.ci = add i64 %.4.i, 1                        ; 2 uses
  %i.cj = icmp sle i64 %i.ch, %i.bv
  %i.ck = and i64 %i.ch, 63
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i1 %i.cj, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.u, !llvm.loop !30

bb.u:                                             ; preds = %bb.t
  %.not126.i = icmp sgt i64 %i.ch, %i.bv
  br i1 %.not126.i, label %bb.v, label %bb.q, !llvm.loop !31

bb.v:                                             ; preds = %bb.u
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.co = load i16, ptr %i.cn, align 2            ; 2 uses
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = icmp sgt i16 %i.co, -1
  br i1 %i.cq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cs = load i16, ptr %i.cr, align 2            ; 2 uses
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = icmp slt i16 %i.cs, 0
  br i1 %i.cu, label %sve_ldnfff1_r.exit, label %bb.x, !prof !85

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.m
  %.6.i = phi i64 [ %i.bf, %bb.m ], [ %i.cp, %bb.v ], [ %i.ct, %bb.w ] ; 4 uses
  %i.cv = and i64 %.6.i, 63                       ; 2 uses
  %.not.i3 = icmp eq i64 %i.cv, 0
  br i1 %.not.i3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.cx = sub nuw nsw i64 64, %i.cv
  %i.cy = lshr i64 -1, %i.cx
  %i.cz = lshr i64 %.6.i, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = and i64 %i.db, %i.cy
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = add nsw i64 %.6.i, 63
  %i.de = and i64 %i.dd, -64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i4 = phi i64 [ %i.de, %bb.y ], [ %.6.i, %bb.x ] ; 3 uses
  %i.df = icmp ult i64 %.0.i4, %i.h
  br i1 %i.df, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.z
  %i.dg = lshr i64 %.0.i4, 3
  %i.dh = and i64 %i.dg, 2305843009213693944
  %i.di = getelementptr i8, ptr %0, i64 %i.dh
  %scevgep.i = getelementptr i8, ptr %i.di, i64 12592
  %i.dj = xor i64 %.0.i4, -1
  %i.dk = add nsw i64 %i.dj, %i.h
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = and i64 %i.dl, 2305843009213693944
  %i.dn = add nuw nsw i64 %i.dm, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dn, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.z, %sve_cont_ldst_elements.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bsu_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 18 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]   ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i, 6                 ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i, 1
  %exitcond.not.i = icmp eq i64 %.0.i, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 5 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 2
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 2
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -4
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 2) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 2
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 3 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z)
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = icmp eq i16 %i.bh, %i.bk
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !76

bb.o:                                             ; preds = %bb.n
  %i.bm = add i64 %2, %i.bi                       ; 2 uses
  %i.bn = shl i64 %i.bm, 8
  %i.bo = ashr exact i64 %i.bn, 8
  %i.bp = and i64 %i.bo, %i.bm
  %i.bq = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.bp, i32 noundef 0, i64 noundef %i.z) #26
  %i.br = zext i8 %i.bq to i32
  %i.bs = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i32 %i.br, ptr %i.bs, align 4
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.3111.i = phi i64 [ %i.bf, %bb.p ], [ %i.ch, %bb.u ] ; 2 uses
  %.3.i = phi i64 [ %i.bi, %bb.p ], [ %i.ci, %bb.u ]
  %i.by = ashr i64 %.3111.i, 3
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.4112.i = phi i64 [ %.3111.i, %bb.q ], [ %i.ch, %bb.t ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.q ], [ %i.ci, %bb.t ] ; 2 uses
  %i.cb = and i64 %.4112.i, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.ca
  %.not124.i = icmp eq i64 %i.cd, 0
  br i1 %.not124.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 %.4.i
  %.val = load i8, ptr %i.ce, align 1
  %i.cf = zext i8 %.val to i32
  %i.cg = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i32 %i.cf, ptr %i.cg, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ch = add i64 %.4112.i, 4                     ; 5 uses
  %i.ci = add i64 %.4.i, 1                        ; 2 uses
  %i.cj = icmp sle i64 %i.ch, %i.bv
  %i.ck = and i64 %i.ch, 63
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i1 %i.cj, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.u, !llvm.loop !30

bb.u:                                             ; preds = %bb.t
  %.not126.i = icmp sgt i64 %i.ch, %i.bv
  br i1 %.not126.i, label %bb.v, label %bb.q, !llvm.loop !31

bb.v:                                             ; preds = %bb.u
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.co = load i16, ptr %i.cn, align 2            ; 2 uses
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = icmp sgt i16 %i.co, -1
  br i1 %i.cq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cs = load i16, ptr %i.cr, align 2            ; 2 uses
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = icmp slt i16 %i.cs, 0
  br i1 %i.cu, label %sve_ldnfff1_r.exit, label %bb.x, !prof !85

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.m
  %.6.i = phi i64 [ %i.bf, %bb.m ], [ %i.cp, %bb.v ], [ %i.ct, %bb.w ] ; 4 uses
  %i.cv = and i64 %.6.i, 63                       ; 2 uses
  %.not.i3 = icmp eq i64 %i.cv, 0
  br i1 %.not.i3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.cx = sub nuw nsw i64 64, %i.cv
  %i.cy = lshr i64 -1, %i.cx
  %i.cz = lshr i64 %.6.i, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = and i64 %i.db, %i.cy
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = add nsw i64 %.6.i, 63
  %i.de = and i64 %i.dd, -64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i4 = phi i64 [ %i.de, %bb.y ], [ %.6.i, %bb.x ] ; 3 uses
  %i.df = icmp ult i64 %.0.i4, %i.h
  br i1 %i.df, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.z
  %i.dg = lshr i64 %.0.i4, 3
  %i.dh = and i64 %i.dg, 2305843009213693944
  %i.di = getelementptr i8, ptr %0, i64 %i.dh
  %scevgep.i = getelementptr i8, ptr %i.di, i64 12592
  %i.dj = xor i64 %.0.i4, -1
  %i.dk = add nsw i64 %i.dj, %i.h
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = and i64 %i.dl, 2305843009213693944
  %i.dn = add nuw nsw i64 %i.dm, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dn, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.z, %sve_cont_ldst_elements.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bdu_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 18 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]   ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i, 6                 ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i, 1
  %exitcond.not.i = icmp eq i64 %.0.i, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 5 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 3
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 3
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 3) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 3
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 3 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z)
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = icmp eq i16 %i.bh, %i.bk
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !76

bb.o:                                             ; preds = %bb.n
  %i.bm = add i64 %2, %i.bi                       ; 2 uses
  %i.bn = shl i64 %i.bm, 8
  %i.bo = ashr exact i64 %i.bn, 8
  %i.bp = and i64 %i.bo, %i.bm
  %i.bq = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.bp, i32 noundef 0, i64 noundef %i.z) #26
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i64 %i.br, ptr %i.bs, align 8
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.3111.i = phi i64 [ %i.bf, %bb.p ], [ %i.ch, %bb.u ] ; 2 uses
  %.3.i = phi i64 [ %i.bi, %bb.p ], [ %i.ci, %bb.u ]
  %i.by = ashr i64 %.3111.i, 3
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.4112.i = phi i64 [ %.3111.i, %bb.q ], [ %i.ch, %bb.t ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.q ], [ %i.ci, %bb.t ] ; 2 uses
  %i.cb = and i64 %.4112.i, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.ca
  %.not124.i = icmp eq i64 %i.cd, 0
  br i1 %.not124.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 %.4.i
  %.val = load i8, ptr %i.ce, align 1
  %i.cf = zext i8 %.val to i64
  %i.cg = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i64 %i.cf, ptr %i.cg, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ch = add i64 %.4112.i, 8                     ; 5 uses
  %i.ci = add i64 %.4.i, 1                        ; 2 uses
  %i.cj = icmp sle i64 %i.ch, %i.bv
  %i.ck = and i64 %i.ch, 63
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i1 %i.cj, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.u, !llvm.loop !30

bb.u:                                             ; preds = %bb.t
  %.not126.i = icmp sgt i64 %i.ch, %i.bv
  br i1 %.not126.i, label %bb.v, label %bb.q, !llvm.loop !31

bb.v:                                             ; preds = %bb.u
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.co = load i16, ptr %i.cn, align 2            ; 2 uses
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = icmp sgt i16 %i.co, -1
  br i1 %i.cq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cs = load i16, ptr %i.cr, align 2            ; 2 uses
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = icmp slt i16 %i.cs, 0
  br i1 %i.cu, label %sve_ldnfff1_r.exit, label %bb.x, !prof !85

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.m
  %.6.i = phi i64 [ %i.bf, %bb.m ], [ %i.cp, %bb.v ], [ %i.ct, %bb.w ] ; 4 uses
  %i.cv = and i64 %.6.i, 63                       ; 2 uses
  %.not.i3 = icmp eq i64 %i.cv, 0
  br i1 %.not.i3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.cx = sub nuw nsw i64 64, %i.cv
  %i.cy = lshr i64 -1, %i.cx
  %i.cz = lshr i64 %.6.i, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = and i64 %i.db, %i.cy
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = add nsw i64 %.6.i, 63
  %i.de = and i64 %i.dd, -64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i4 = phi i64 [ %i.de, %bb.y ], [ %.6.i, %bb.x ] ; 3 uses
  %i.df = icmp ult i64 %.0.i4, %i.h
  br i1 %i.df, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.z
  %i.dg = lshr i64 %.0.i4, 3
  %i.dh = and i64 %i.dg, 2305843009213693944
  %i.di = getelementptr i8, ptr %0, i64 %i.dh
  %scevgep.i = getelementptr i8, ptr %i.di, i64 12592
  %i.dj = xor i64 %.0.i4, -1
  %i.dk = add nsw i64 %i.dj, %i.h
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = and i64 %i.dl, 2305843009213693944
  %i.dn = add nuw nsw i64 %i.dm, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dn, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.z, %sve_cont_ldst_elements.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bhs_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 18 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]   ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i, 6                 ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i, 1
  %exitcond.not.i = icmp eq i64 %.0.i, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 5 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 1
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 1
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -2
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 1) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 1
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 3 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z)
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = icmp eq i16 %i.bh, %i.bk
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !76

bb.o:                                             ; preds = %bb.n
  %i.bm = add i64 %2, %i.bi                       ; 2 uses
  %i.bn = shl i64 %i.bm, 8
  %i.bo = ashr exact i64 %i.bn, 8
  %i.bp = and i64 %i.bo, %i.bm
  %i.bq = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.bp, i32 noundef 0, i64 noundef %i.z) #26
  %i.br = sext i8 %i.bq to i16
  %i.bs = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i16 %i.br, ptr %i.bs, align 2
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.3111.i = phi i64 [ %i.bf, %bb.p ], [ %i.ch, %bb.u ] ; 2 uses
  %.3.i = phi i64 [ %i.bi, %bb.p ], [ %i.ci, %bb.u ]
  %i.by = ashr i64 %.3111.i, 3
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.4112.i = phi i64 [ %.3111.i, %bb.q ], [ %i.ch, %bb.t ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.q ], [ %i.ci, %bb.t ] ; 2 uses
  %i.cb = and i64 %.4112.i, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.ca
  %.not124.i = icmp eq i64 %i.cd, 0
  br i1 %.not124.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 %.4.i
  %.val = load i8, ptr %i.ce, align 1
  %i.cf = sext i8 %.val to i16
  %i.cg = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i16 %i.cf, ptr %i.cg, align 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ch = add i64 %.4112.i, 2                     ; 5 uses
  %i.ci = add i64 %.4.i, 1                        ; 2 uses
  %i.cj = icmp sle i64 %i.ch, %i.bv
  %i.ck = and i64 %i.ch, 63
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i1 %i.cj, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.u, !llvm.loop !30

bb.u:                                             ; preds = %bb.t
  %.not126.i = icmp sgt i64 %i.ch, %i.bv
  br i1 %.not126.i, label %bb.v, label %bb.q, !llvm.loop !31

bb.v:                                             ; preds = %bb.u
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.co = load i16, ptr %i.cn, align 2            ; 2 uses
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = icmp sgt i16 %i.co, -1
  br i1 %i.cq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cs = load i16, ptr %i.cr, align 2            ; 2 uses
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = icmp slt i16 %i.cs, 0
  br i1 %i.cu, label %sve_ldnfff1_r.exit, label %bb.x, !prof !85

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.m
  %.6.i = phi i64 [ %i.bf, %bb.m ], [ %i.cp, %bb.v ], [ %i.ct, %bb.w ] ; 4 uses
  %i.cv = and i64 %.6.i, 63                       ; 2 uses
  %.not.i3 = icmp eq i64 %i.cv, 0
  br i1 %.not.i3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.cx = sub nuw nsw i64 64, %i.cv
  %i.cy = lshr i64 -1, %i.cx
  %i.cz = lshr i64 %.6.i, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = and i64 %i.db, %i.cy
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = add nsw i64 %.6.i, 63
  %i.de = and i64 %i.dd, -64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i4 = phi i64 [ %i.de, %bb.y ], [ %.6.i, %bb.x ] ; 3 uses
  %i.df = icmp ult i64 %.0.i4, %i.h
  br i1 %i.df, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.z
  %i.dg = lshr i64 %.0.i4, 3
  %i.dh = and i64 %i.dg, 2305843009213693944
  %i.di = getelementptr i8, ptr %0, i64 %i.dh
  %scevgep.i = getelementptr i8, ptr %i.di, i64 12592
  %i.dj = xor i64 %.0.i4, -1
  %i.dk = add nsw i64 %i.dj, %i.h
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = and i64 %i.dl, 2305843009213693944
  %i.dn = add nuw nsw i64 %i.dm, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dn, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.z, %sve_cont_ldst_elements.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bss_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 18 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]   ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i, 6                 ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i, 1
  %exitcond.not.i = icmp eq i64 %.0.i, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 5 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 2
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 2
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -4
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 2) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 2
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 3 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z)
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = icmp eq i16 %i.bh, %i.bk
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !76

bb.o:                                             ; preds = %bb.n
  %i.bm = add i64 %2, %i.bi                       ; 2 uses
  %i.bn = shl i64 %i.bm, 8
  %i.bo = ashr exact i64 %i.bn, 8
  %i.bp = and i64 %i.bo, %i.bm
  %i.bq = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.bp, i32 noundef 0, i64 noundef %i.z) #26
  %i.br = sext i8 %i.bq to i32
  %i.bs = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i32 %i.br, ptr %i.bs, align 4
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.3111.i = phi i64 [ %i.bf, %bb.p ], [ %i.ch, %bb.u ] ; 2 uses
  %.3.i = phi i64 [ %i.bi, %bb.p ], [ %i.ci, %bb.u ]
  %i.by = ashr i64 %.3111.i, 3
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.4112.i = phi i64 [ %.3111.i, %bb.q ], [ %i.ch, %bb.t ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.q ], [ %i.ci, %bb.t ] ; 2 uses
  %i.cb = and i64 %.4112.i, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.ca
  %.not124.i = icmp eq i64 %i.cd, 0
  br i1 %.not124.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 %.4.i
  %.val = load i8, ptr %i.ce, align 1
  %i.cf = sext i8 %.val to i32
  %i.cg = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i32 %i.cf, ptr %i.cg, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ch = add i64 %.4112.i, 4                     ; 5 uses
  %i.ci = add i64 %.4.i, 1                        ; 2 uses
  %i.cj = icmp sle i64 %i.ch, %i.bv
  %i.ck = and i64 %i.ch, 63
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i1 %i.cj, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.u, !llvm.loop !30

bb.u:                                             ; preds = %bb.t
  %.not126.i = icmp sgt i64 %i.ch, %i.bv
  br i1 %.not126.i, label %bb.v, label %bb.q, !llvm.loop !31

bb.v:                                             ; preds = %bb.u
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.co = load i16, ptr %i.cn, align 2            ; 2 uses
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = icmp sgt i16 %i.co, -1
  br i1 %i.cq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cs = load i16, ptr %i.cr, align 2            ; 2 uses
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = icmp slt i16 %i.cs, 0
  br i1 %i.cu, label %sve_ldnfff1_r.exit, label %bb.x, !prof !85

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.m
  %.6.i = phi i64 [ %i.bf, %bb.m ], [ %i.cp, %bb.v ], [ %i.ct, %bb.w ] ; 4 uses
  %i.cv = and i64 %.6.i, 63                       ; 2 uses
  %.not.i3 = icmp eq i64 %i.cv, 0
  br i1 %.not.i3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.cx = sub nuw nsw i64 64, %i.cv
  %i.cy = lshr i64 -1, %i.cx
  %i.cz = lshr i64 %.6.i, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = and i64 %i.db, %i.cy
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = add nsw i64 %.6.i, 63
  %i.de = and i64 %i.dd, -64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i4 = phi i64 [ %i.de, %bb.y ], [ %.6.i, %bb.x ] ; 3 uses
  %i.df = icmp ult i64 %.0.i4, %i.h
  br i1 %i.df, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.z
  %i.dg = lshr i64 %.0.i4, 3
  %i.dh = and i64 %i.dg, 2305843009213693944
  %i.di = getelementptr i8, ptr %0, i64 %i.dh
  %scevgep.i = getelementptr i8, ptr %i.di, i64 12592
  %i.dj = xor i64 %.0.i4, -1
  %i.dk = add nsw i64 %i.dj, %i.h
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = and i64 %i.dl, 2305843009213693944
  %i.dn = add nuw nsw i64 %i.dm, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dn, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.z, %sve_cont_ldst_elements.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bds_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 18 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i, %bb.e ]
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]   ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i, 6                 ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 5 uses
  %.1.i = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i, 1
  %exitcond.not.i = icmp eq i64 %.0.i, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = ashr i32 %i.a, 10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %i.ac ; 5 uses
  %i.ae = icmp sgt i64 %.178.i, -1
  br i1 %i.ae, label %bb.g, label %sve_cont_ldst_elements.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.af = icmp samesign ult i64 %.1.i, %i.h
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc i64 %.178.i to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ag, ptr %i.ah, align 4
  %i.ai = lshr i64 %.178.i, 3
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %4, align 8
  %i.ak = lshr i64 %.1.i, 3
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.am = or i64 %i.al, %2                        ; 2 uses
  %i.an = sub i64 0, %i.am                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ak, %i.an
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ao = trunc nuw nsw i64 %.1.i to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ao, ptr %i.ap, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i64 %i.an to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = shl i64 %i.an, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.am, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i16
  %i.au = add i16 %i.at, -8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.au, ptr %i.av, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.as, i64 noundef %i.h, i32 noundef 3) ; 3 uses
  %i.ax = icmp sle i64 %i.aw, %.1.i
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc i64 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = lshr i64 %i.aw, 3
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = trunc nuw nsw i64 %.1.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  br label %bb.l

sve_cont_ldst_elements.exit:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %sve_ldnfff1_r.exit

bb.l:                                             ; preds = %bb.h, %bb.k
  %sext = shl i64 %.178.i, 48
  %i.bf = ashr exact i64 %sext, 48                ; 3 uses
  %i.bg = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.z)
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bh = load i16, ptr %4, align 8               ; 2 uses
  %i.bi = sext i16 %i.bh to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 noundef 0, i64 noundef %i.h, i1 noundef false) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = icmp eq i16 %i.bh, %i.bk
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !76

bb.o:                                             ; preds = %bb.n
  %i.bm = add i64 %2, %i.bi                       ; 2 uses
  %i.bn = shl i64 %i.bm, 8
  %i.bo = ashr exact i64 %i.bn, 8
  %i.bp = and i64 %i.bo, %i.bm
  %i.bq = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.bp, i32 noundef 0, i64 noundef %i.z) #26
  %i.br = sext i8 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.ad, i64 %i.bf
  store i64 %i.br, ptr %i.bs, align 8
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = load i16, ptr %i.bt, align 8
  %i.bv = sext i16 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.j, align 8
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.z, ptr %i.bx, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.3111.i = phi i64 [ %i.bf, %bb.p ], [ %i.ch, %bb.u ] ; 2 uses
  %.3.i = phi i64 [ %i.bi, %bb.p ], [ %i.ci, %bb.u ]
  %i.by = ashr i64 %.3111.i, 3
  %i.bz = getelementptr inbounds i8, ptr %1, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.4112.i = phi i64 [ %.3111.i, %bb.q ], [ %i.ch, %bb.t ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.q ], [ %i.ci, %bb.t ] ; 2 uses
  %i.cb = and i64 %.4112.i, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.ca
  %.not124.i = icmp eq i64 %i.cd, 0
  br i1 %.not124.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 %.4.i
  %.val = load i8, ptr %i.ce, align 1
  %i.cf = sext i8 %.val to i64
  %i.cg = getelementptr inbounds i8, ptr %i.ad, i64 %.4112.i
  store i64 %i.cf, ptr %i.cg, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ch = add i64 %.4112.i, 8                     ; 5 uses
  %i.ci = add i64 %.4.i, 1                        ; 2 uses
  %i.cj = icmp sle i64 %i.ch, %i.bv
  %i.ck = and i64 %i.ch, 63
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i1 %i.cj, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.u, !llvm.loop !30

bb.u:                                             ; preds = %bb.t
  %.not126.i = icmp sgt i64 %i.ch, %i.bv
  br i1 %.not126.i, label %bb.v, label %bb.q, !llvm.loop !31

bb.v:                                             ; preds = %bb.u
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.co = load i16, ptr %i.cn, align 2            ; 2 uses
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = icmp sgt i16 %i.co, -1
  br i1 %i.cq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cs = load i16, ptr %i.cr, align 2            ; 2 uses
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = icmp slt i16 %i.cs, 0
  br i1 %i.cu, label %sve_ldnfff1_r.exit, label %bb.x, !prof !85

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.m
  %.6.i = phi i64 [ %i.bf, %bb.m ], [ %i.cp, %bb.v ], [ %i.ct, %bb.w ] ; 4 uses
  %i.cv = and i64 %.6.i, 63                       ; 2 uses
  %.not.i3 = icmp eq i64 %i.cv, 0
  br i1 %.not.i3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.cx = sub nuw nsw i64 64, %i.cv
  %i.cy = lshr i64 -1, %i.cx
  %i.cz = lshr i64 %.6.i, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = and i64 %i.db, %i.cy
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = add nsw i64 %.6.i, 63
  %i.de = and i64 %i.dd, -64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i4 = phi i64 [ %i.de, %bb.y ], [ %.6.i, %bb.x ] ; 3 uses
  %i.df = icmp ult i64 %.0.i4, %i.h
  br i1 %i.df, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.z
  %i.dg = lshr i64 %.0.i4, 3
  %i.dh = and i64 %i.dg, 2305843009213693944
  %i.di = getelementptr i8, ptr %0, i64 %i.dh
  %scevgep.i = getelementptr i8, ptr %i.di, i64 12592
  %i.dj = xor i64 %.0.i4, -1
  %i.dk = add nsw i64 %i.dj, %i.h
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = and i64 %i.dl, 2305843009213693944
  %i.dn = add nuw nsw i64 %i.dm, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dn, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.z, %sve_cont_ldst_elements.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1hh_le_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 12 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = ashr i32 %i.a, 10
end_hunk_12
begin_hunk_13_@helper_sve_ldnf1dd_be_r:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.w = load i16, ptr %i.v, align 4
  %i.x = icmp eq i16 %i.t, %i.w
  br i1 %i.x, label %bb.f, label %bb.g, !prof !76

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %2, %i.u                         ; 2 uses
  %i.z = shl i64 %i.y, 8
  %i.aa = ashr exact i64 %i.z, 8
  %i.ab = and i64 %i.aa, %i.y
  %i.ac = call i64 @cpu_ldq_mmu(ptr noundef nonnull %0, i64 noundef %i.ab, i32 noundef 608, i64 noundef %i.c) #26
  %i.ad = getelementptr inbounds i8, ptr %i.g, i64 %i.r
  store i64 %i.ac, ptr %i.ad, align 8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = sext i16 %i.ag to i64                   ; 2 uses
  %i.ai = load ptr, ptr %i.ae, align 8
  %i.aj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 2 uses
  store i64 %i.c, ptr %i.aj, align 8
  fence syncscope("singlethread") seq_cst
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %.3111.i = phi i64 [ %i.r, %bb.g ], [ %i.at, %bb.l ] ; 2 uses
  %.3.i = phi i64 [ %i.u, %bb.g ], [ %i.au, %bb.l ]
  %i.ak = ashr i64 %.3111.i, 3
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.4112.i = phi i64 [ %.3111.i, %bb.h ], [ %i.at, %bb.k ] ; 3 uses
  %.4.i = phi i64 [ %.3.i, %bb.h ], [ %i.au, %bb.k ] ; 2 uses
  %i.an = and i64 %.4112.i, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not124.i = icmp eq i64 %i.ap, 0
  br i1 %.not124.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 %.4.i
  %.val = load i64, ptr %i.aq, align 1
  %i.ar = call i64 @llvm.bswap.i64(i64 %.val)
  %i.as = getelementptr inbounds i8, ptr %i.g, i64 %.4112.i
  store i64 %i.ar, ptr %i.as, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = add nsw i64 %.4112.i, 8                 ; 5 uses
  %i.au = add i64 %.4.i, 8                        ; 2 uses
  %i.av = icmp sle i64 %i.at, %i.ah
  %i.aw = and i64 %i.at, 63
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = and i1 %i.av, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.l, !llvm.loop !30

bb.l:                                             ; preds = %bb.k
  %.not126.i = icmp sgt i64 %i.at, %i.ah
  br i1 %.not126.i, label %bb.m, label %bb.h, !llvm.loop !31

bb.m:                                             ; preds = %bb.l
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.aj, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = icmp sgt i16 %i.ba, -1
  br i1 %i.bc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.be = load i16, ptr %i.bd, align 2            ; 2 uses
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = icmp slt i16 %i.be, 0
  br i1 %i.bg, label %sve_ldnfff1_r.exit, label %bb.o, !prof !85

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.d
  %.6.i = phi i64 [ %i.r, %bb.d ], [ %i.bb, %bb.m ], [ %i.bf, %bb.n ] ; 4 uses
  %i.bh = and i64 %.6.i, 63                       ; 2 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.bj = sub nuw nsw i64 64, %i.bh
  %i.bk = lshr i64 -1, %i.bj
  %i.bl = lshr i64 %.6.i, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, %i.bk
  store i64 %i.bo, ptr %i.bm, align 8
  %i.bp = add nsw i64 %.6.i, 63
  %i.bq = and i64 %i.bp, -64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i64 [ %i.bq, %bb.p ], [ %.6.i, %bb.o ] ; 3 uses
  %i.br = icmp ult i64 %.0.i, %i.n
  br i1 %i.br, label %.lr.ph.preheader.i, label %sve_ldnfff1_r.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.bs = lshr i64 %.0.i, 3
  %i.bt = and i64 %i.bs, 2305843009213693944
  %i.bu = getelementptr i8, ptr %0, i64 %i.bt
  %scevgep.i = getelementptr i8, ptr %i.bu, i64 12592
  %i.bv = xor i64 %.0.i, -1
  %i.bw = add nsw i64 %i.bv, %i.n
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 2305843009213693944
  %i.bz = add nuw nsw i64 %i.by, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bz, i1 false)
  br label %sve_ldnfff1_r.exit

sve_ldnfff1_r.exit:                               ; preds = %.lr.ph.preheader.i, %bb.q, %bb.b, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bb_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr @pred_esz_masks, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 6 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  store i16 %i.aw, ptr %4, align 8
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.az = or i64 %i.ay, %2                        ; 3 uses
  %i.ba = sub i64 0, %i.az                        ; 3 uses
  %.not83.i.not = icmp slt i64 %.1.i, %i.ba
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bb = trunc nuw nsw i64 %.1.i to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bb, ptr %i.bc, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bd = trunc i64 %i.ba to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bd, ptr %i.be, align 8
  %.not84.i = icmp eq i64 %i.az, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = trunc i64 %i.az to i16
  %i.bg = xor i16 %i.bf, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bg, ptr %i.bh, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.ba, i64 noundef %i.z, i32 noundef 0) ; 2 uses
  %i.bj = icmp sle i64 %i.bi, %.1.i
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = trunc i64 %i.bi to i16                  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bk, ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bk, ptr %i.bm, align 2
  %i.bn = trunc nuw nsw i64 %.1.i to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bn, ptr %i.bo, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bp = ashr exact i64 %sext, 48                ; 5 uses
  %i.bq = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b)
  br i1 %i.bq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.br = load i16, ptr %4, align 8               ; 2 uses
  %i.bs = sext i16 %i.br to i64                   ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bu = load i8, ptr %i.bt, align 4, !range !88, !noundef !89
  %i.bv = trunc nuw i8 %i.bu to i1
  %spec.select.i.i = select i1 %i.bv, i32 %.0.i, i32 0
  %spec.select.i.i.fr = freeze i32 %spec.select.i.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bx = load i16, ptr %i.bw, align 4
  %i.by = icmp eq i16 %i.br, %i.bx
  br i1 %i.by, label %bb.r, label %bb.t, !prof !76

bb.r:                                             ; preds = %bb.q
  %.not121.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  %.pre = add i64 %2, %i.bs                       ; 3 uses
  br i1 %.not121.i.i, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = call zeroext i1 @mte_probe(ptr noundef nonnull %0, i32 noundef %spec.select.i.i.fr, i64 noundef %.pre) #26
  br i1 %i.bz, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.ca = shl i64 %.pre, 8
  %i.cb = ashr exact i64 %i.ca, 8
  %i.cc = and i64 %i.cb, %.pre
  %i.cd = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.cc, i32 noundef 0, i64 noundef %i.b) #26
  %i.ce = getelementptr inbounds i8, ptr %i.at, i64 %i.bp
  store i8 %i.cd, ptr %i.ce, align 1
  br label %bb.ac

bb.t:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load i16, ptr %i.cf, align 8
  %i.ch = sext i16 %i.cg to i64                   ; 4 uses
  %i.ci = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.cj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.cj, align 8
  fence syncscope("singlethread") seq_cst
  %.not125.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  br i1 %.not125.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.t, %.split14.us.us
  %.3111.i.i.us = phi i64 [ %i.cs, %.split14.us.us ], [ %i.bp, %bb.t ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.ct, %.split14.us.us ], [ %i.bs, %bb.t ]
  %i.ck = ashr i64 %.3111.i.i.us, 3
  %i.cl = getelementptr inbounds i8, ptr %1, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.cs, %bb.w ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.ct, %bb.w ] ; 2 uses
  %i.cn = and i64 %.4112.i.i.us.us, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.co, %i.cm
  %.not124.i.i.us.us = icmp eq i64 %i.cp, 0
  br i1 %.not124.i.i.us.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr inbounds i8, ptr %i.ci, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i8 %.val.us.us, ptr %i.cr, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cs = add i64 %.4112.i.i.us.us, 1             ; 5 uses
  %i.ct = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.cu = icmp sle i64 %i.cs, %i.ch
  %i.cv = and i64 %i.cs, 63
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = and i1 %i.cu, %i.cw
  br i1 %i.cx, label %bb.u, label %.split14.us.us, !llvm.loop !30

.split14.us.us:                                   ; preds = %bb.w
  %.not126.i.i.us = icmp sgt i64 %i.cs, %i.ch
  br i1 %.not126.i.i.us, label %.split18.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.t, %.split14
  %.3111.i.i = phi i64 [ %i.di, %.split14 ], [ %i.bp, %bb.t ] ; 2 uses
  %.3.i.i = phi i64 [ %i.dj, %.split14 ], [ %i.bs, %bb.t ]
  %i.cy = ashr i64 %.3111.i.i, 3
  %i.cz = getelementptr inbounds i8, ptr %1, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.di, %bb.aa ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.dj, %bb.aa ] ; 3 uses
  %i.db = and i64 %.4112.i.i, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.da
  %.not124.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not124.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = add i64 %.4.i.i, %2
  %i.df = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i.fr, i64 noundef %i.de) #26
  br i1 %i.df, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds i8, ptr %i.ci, i64 %.4.i.i
  %.val = load i8, ptr %i.dg, align 1
  %i.dh = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i8 %.val, ptr %i.dh, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.di = add i64 %.4112.i.i, 1                   ; 5 uses
  %i.dj = add i64 %.4.i.i, 1                      ; 2 uses
  %i.dk = icmp sle i64 %i.di, %i.ch
  %i.dl = and i64 %i.di, 63
  %i.dm = icmp ne i64 %i.dl, 0
  %i.dn = and i1 %i.dk, %i.dm
  br i1 %i.dn, label %bb.x, label %.split14, !llvm.loop !30

bb.ab:                                            ; preds = %bb.y
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cj, align 8
  br label %bb.ad

.split14:                                         ; preds = %bb.aa
  %.not126.i.i = icmp sgt i64 %i.di, %i.ch
  br i1 %.not126.i.i, label %.split18.us, label %.split, !llvm.loop !31

.split18.us:                                      ; preds = %.split14, %.split14.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cj, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dp = load i16, ptr %i.do, align 2            ; 2 uses
  %i.dq = zext nneg i16 %i.dp to i64
  %i.dr = icmp sgt i16 %i.dp, -1
  br i1 %i.dr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.split18.us, %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.dt = load i16, ptr %i.ds, align 2            ; 2 uses
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = icmp slt i16 %i.dt, 0
  br i1 %i.dv, label %sve_ldnfff1_r_mte.exit, label %bb.ad, !prof !85

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.split18.us, %bb.s, %bb.p
  %.6.i.i = phi i64 [ %i.bp, %bb.p ], [ %i.dq, %.split18.us ], [ %i.du, %bb.ac ], [ %.4112.i.i, %bb.ab ], [ %i.bp, %bb.s ] ; 4 uses
  %i.dw = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i4 = icmp eq i64 %i.dw, 0
  br i1 %.not.i4, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.dy = sub nuw nsw i64 64, %i.dw
  %i.dz = lshr i64 -1, %i.dy
  %i.ea = lshr i64 %.6.i.i, 6
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.ea ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = and i64 %i.ec, %i.dz
  store i64 %i.ed, ptr %i.eb, align 8
  %i.ee = add i64 %.6.i.i, 63
  %i.ef = and i64 %i.ee, -64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i5 = phi i64 [ %i.ef, %bb.ae ], [ %.6.i.i, %bb.ad ] ; 3 uses
  %i.eg = icmp ult i64 %.0.i5, %i.z
  br i1 %i.eg, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.af
  %i.eh = lshr i64 %.0.i5, 3
  %i.ei = and i64 %i.eh, 2305843009213693944
  %i.ej = getelementptr i8, ptr %0, i64 %i.ei
  %scevgep.i = getelementptr i8, ptr %i.ej, i64 12592
  %i.ek = xor i64 %.0.i5, -1
  %i.el = add nsw i64 %i.ek, %i.z
  %i.em = lshr i64 %i.el, 3
  %i.en = and i64 %i.em, 2305843009213693944
  %i.eo = add nuw nsw i64 %i.en, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.eo, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.af, %sve_cont_ldst_elements.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bhu_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 6 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 1
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 1
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -2
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 1) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 1
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 5 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b)
  br i1 %i.bw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ca = load i8, ptr %i.bz, align 4, !range !88, !noundef !89
  %i.cb = trunc nuw i8 %i.ca to i1
  %spec.select.i.i = select i1 %i.cb, i32 %.0.i, i32 0
  %spec.select.i.i.fr = freeze i32 %spec.select.i.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = icmp eq i16 %i.bx, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.t, !prof !76

bb.r:                                             ; preds = %bb.q
  %.not121.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  %.pre = add i64 %2, %i.by                       ; 3 uses
  br i1 %.not121.i.i, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call zeroext i1 @mte_probe(ptr noundef nonnull %0, i32 noundef %spec.select.i.i.fr, i64 noundef %.pre) #26
  br i1 %i.cf, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.cg = shl i64 %.pre, 8
  %i.ch = ashr exact i64 %i.cg, 8
  %i.ci = and i64 %i.ch, %.pre
  %i.cj = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.ci, i32 noundef 0, i64 noundef %i.b) #26
  %i.ck = zext i8 %i.cj to i16
  %i.cl = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i16 %i.ck, ptr %i.cl, align 2
  br label %bb.ac

bb.t:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load i16, ptr %i.cm, align 8
  %i.co = sext i16 %i.cn to i64                   ; 4 uses
  %i.cp = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.cq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.cq, align 8
  fence syncscope("singlethread") seq_cst
  %.not125.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  br i1 %.not125.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.t, %.split14.us.us
  %.3111.i.i.us = phi i64 [ %i.da, %.split14.us.us ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.db, %.split14.us.us ], [ %i.by, %bb.t ]
  %i.cr = ashr i64 %.3111.i.i.us, 3
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.da, %bb.w ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.db, %bb.w ] ; 2 uses
  %i.cu = and i64 %.4112.i.i.us.us, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not124.i.i.us.us = icmp eq i64 %i.cw, 0
  br i1 %.not124.i.i.us.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.cx, align 1
  %i.cy = zext i8 %.val.us.us to i16
  %i.cz = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i16 %i.cy, ptr %i.cz, align 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = add i64 %.4112.i.i.us.us, 2             ; 5 uses
  %i.db = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dc = icmp sle i64 %i.da, %i.co
  %i.dd = and i64 %i.da, 63
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = and i1 %i.dc, %i.de
  br i1 %i.df, label %bb.u, label %.split14.us.us, !llvm.loop !30

.split14.us.us:                                   ; preds = %bb.w
  %.not126.i.i.us = icmp sgt i64 %i.da, %i.co
  br i1 %.not126.i.i.us, label %.split18.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.t, %.split14
  %.3111.i.i = phi i64 [ %i.dr, %.split14 ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ds, %.split14 ], [ %i.by, %bb.t ]
  %i.dg = ashr i64 %.3111.i.i, 3
  %i.dh = getelementptr inbounds i8, ptr %1, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.dr, %bb.aa ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.dj = and i64 %.4112.i.i, 63
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.di
  %.not124.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not124.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = add i64 %.4.i.i, %2
  %i.dn = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i.fr, i64 noundef %i.dm) #26
  br i1 %i.dn, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i
  %.val = load i8, ptr %i.do, align 1
  %i.dp = zext i8 %.val to i16
  %i.dq = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i16 %i.dp, ptr %i.dq, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.dr = add i64 %.4112.i.i, 2                   ; 5 uses
  %i.ds = add i64 %.4.i.i, 1                      ; 2 uses
  %i.dt = icmp sle i64 %i.dr, %i.co
  %i.du = and i64 %i.dr, 63
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = and i1 %i.dt, %i.dv
  br i1 %i.dw, label %bb.x, label %.split14, !llvm.loop !30

bb.ab:                                            ; preds = %bb.y
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  br label %bb.ad

.split14:                                         ; preds = %bb.aa
  %.not126.i.i = icmp sgt i64 %i.dr, %i.co
  br i1 %.not126.i.i, label %.split18.us, label %.split, !llvm.loop !31

.split18.us:                                      ; preds = %.split14, %.split14.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dy = load i16, ptr %i.dx, align 2            ; 2 uses
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = icmp sgt i16 %i.dy, -1
  br i1 %i.ea, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.split18.us, %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ec = load i16, ptr %i.eb, align 2            ; 2 uses
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = icmp slt i16 %i.ec, 0
  br i1 %i.ee, label %sve_ldnfff1_r_mte.exit, label %bb.ad, !prof !85

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.split18.us, %bb.s, %bb.p
  %.6.i.i = phi i64 [ %i.bv, %bb.p ], [ %i.dz, %.split18.us ], [ %i.ed, %bb.ac ], [ %.4112.i.i, %bb.ab ], [ %i.bv, %bb.s ] ; 4 uses
  %i.ef = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i4 = icmp eq i64 %i.ef, 0
  br i1 %.not.i4, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.eh = sub nuw nsw i64 64, %i.ef
  %i.ei = lshr i64 -1, %i.eh
  %i.ej = lshr i64 %.6.i.i, 6
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ej ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = and i64 %i.el, %i.ei
  store i64 %i.em, ptr %i.ek, align 8
  %i.en = add i64 %.6.i.i, 63
  %i.eo = and i64 %i.en, -64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i5 = phi i64 [ %i.eo, %bb.ae ], [ %.6.i.i, %bb.ad ] ; 3 uses
  %i.ep = icmp ult i64 %.0.i5, %i.z
  br i1 %i.ep, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.af
  %i.eq = lshr i64 %.0.i5, 3
  %i.er = and i64 %i.eq, 2305843009213693944
  %i.es = getelementptr i8, ptr %0, i64 %i.er
  %scevgep.i = getelementptr i8, ptr %i.es, i64 12592
  %i.et = xor i64 %.0.i5, -1
  %i.eu = add nsw i64 %i.et, %i.z
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = and i64 %i.ev, 2305843009213693944
  %i.ex = add nuw nsw i64 %i.ew, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ex, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.af, %sve_cont_ldst_elements.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bsu_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 6 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 2
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 2
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -4
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 2) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 2
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 5 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b)
  br i1 %i.bw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ca = load i8, ptr %i.bz, align 4, !range !88, !noundef !89
  %i.cb = trunc nuw i8 %i.ca to i1
  %spec.select.i.i = select i1 %i.cb, i32 %.0.i, i32 0
  %spec.select.i.i.fr = freeze i32 %spec.select.i.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = icmp eq i16 %i.bx, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.t, !prof !76

bb.r:                                             ; preds = %bb.q
  %.not121.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  %.pre = add i64 %2, %i.by                       ; 3 uses
  br i1 %.not121.i.i, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call zeroext i1 @mte_probe(ptr noundef nonnull %0, i32 noundef %spec.select.i.i.fr, i64 noundef %.pre) #26
  br i1 %i.cf, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.cg = shl i64 %.pre, 8
  %i.ch = ashr exact i64 %i.cg, 8
  %i.ci = and i64 %i.ch, %.pre
  %i.cj = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.ci, i32 noundef 0, i64 noundef %i.b) #26
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i32 %i.ck, ptr %i.cl, align 4
  br label %bb.ac

bb.t:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load i16, ptr %i.cm, align 8
  %i.co = sext i16 %i.cn to i64                   ; 4 uses
  %i.cp = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.cq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.cq, align 8
  fence syncscope("singlethread") seq_cst
  %.not125.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  br i1 %.not125.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.t, %.split14.us.us
  %.3111.i.i.us = phi i64 [ %i.da, %.split14.us.us ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.db, %.split14.us.us ], [ %i.by, %bb.t ]
  %i.cr = ashr i64 %.3111.i.i.us, 3
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.da, %bb.w ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.db, %bb.w ] ; 2 uses
  %i.cu = and i64 %.4112.i.i.us.us, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not124.i.i.us.us = icmp eq i64 %i.cw, 0
  br i1 %.not124.i.i.us.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.cx, align 1
  %i.cy = zext i8 %.val.us.us to i32
  %i.cz = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i32 %i.cy, ptr %i.cz, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = add i64 %.4112.i.i.us.us, 4             ; 5 uses
  %i.db = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dc = icmp sle i64 %i.da, %i.co
  %i.dd = and i64 %i.da, 63
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = and i1 %i.dc, %i.de
  br i1 %i.df, label %bb.u, label %.split14.us.us, !llvm.loop !30

.split14.us.us:                                   ; preds = %bb.w
  %.not126.i.i.us = icmp sgt i64 %i.da, %i.co
  br i1 %.not126.i.i.us, label %.split18.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.t, %.split14
  %.3111.i.i = phi i64 [ %i.dr, %.split14 ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ds, %.split14 ], [ %i.by, %bb.t ]
  %i.dg = ashr i64 %.3111.i.i, 3
  %i.dh = getelementptr inbounds i8, ptr %1, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.dr, %bb.aa ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.dj = and i64 %.4112.i.i, 63
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.di
  %.not124.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not124.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = add i64 %.4.i.i, %2
  %i.dn = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i.fr, i64 noundef %i.dm) #26
  br i1 %i.dn, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i
  %.val = load i8, ptr %i.do, align 1
  %i.dp = zext i8 %.val to i32
  %i.dq = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i32 %i.dp, ptr %i.dq, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.dr = add i64 %.4112.i.i, 4                   ; 5 uses
  %i.ds = add i64 %.4.i.i, 1                      ; 2 uses
  %i.dt = icmp sle i64 %i.dr, %i.co
  %i.du = and i64 %i.dr, 63
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = and i1 %i.dt, %i.dv
  br i1 %i.dw, label %bb.x, label %.split14, !llvm.loop !30

bb.ab:                                            ; preds = %bb.y
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  br label %bb.ad

.split14:                                         ; preds = %bb.aa
  %.not126.i.i = icmp sgt i64 %i.dr, %i.co
  br i1 %.not126.i.i, label %.split18.us, label %.split, !llvm.loop !31

.split18.us:                                      ; preds = %.split14, %.split14.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dy = load i16, ptr %i.dx, align 2            ; 2 uses
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = icmp sgt i16 %i.dy, -1
  br i1 %i.ea, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.split18.us, %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ec = load i16, ptr %i.eb, align 2            ; 2 uses
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = icmp slt i16 %i.ec, 0
  br i1 %i.ee, label %sve_ldnfff1_r_mte.exit, label %bb.ad, !prof !85

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.split18.us, %bb.s, %bb.p
  %.6.i.i = phi i64 [ %i.bv, %bb.p ], [ %i.dz, %.split18.us ], [ %i.ed, %bb.ac ], [ %.4112.i.i, %bb.ab ], [ %i.bv, %bb.s ] ; 4 uses
  %i.ef = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i4 = icmp eq i64 %i.ef, 0
  br i1 %.not.i4, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.eh = sub nuw nsw i64 64, %i.ef
  %i.ei = lshr i64 -1, %i.eh
  %i.ej = lshr i64 %.6.i.i, 6
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ej ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = and i64 %i.el, %i.ei
  store i64 %i.em, ptr %i.ek, align 8
  %i.en = add i64 %.6.i.i, 63
  %i.eo = and i64 %i.en, -64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i5 = phi i64 [ %i.eo, %bb.ae ], [ %.6.i.i, %bb.ad ] ; 3 uses
  %i.ep = icmp ult i64 %.0.i5, %i.z
  br i1 %i.ep, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.af
  %i.eq = lshr i64 %.0.i5, 3
  %i.er = and i64 %i.eq, 2305843009213693944
  %i.es = getelementptr i8, ptr %0, i64 %i.er
  %scevgep.i = getelementptr i8, ptr %i.es, i64 12592
  %i.et = xor i64 %.0.i5, -1
  %i.eu = add nsw i64 %i.et, %i.z
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = and i64 %i.ev, 2305843009213693944
  %i.ex = add nuw nsw i64 %i.ew, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ex, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.af, %sve_cont_ldst_elements.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bdu_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 6 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 3
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 3
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 3) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 3
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 5 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b)
  br i1 %i.bw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ca = load i8, ptr %i.bz, align 4, !range !88, !noundef !89
  %i.cb = trunc nuw i8 %i.ca to i1
  %spec.select.i.i = select i1 %i.cb, i32 %.0.i, i32 0
  %spec.select.i.i.fr = freeze i32 %spec.select.i.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = icmp eq i16 %i.bx, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.t, !prof !76

bb.r:                                             ; preds = %bb.q
  %.not121.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  %.pre = add i64 %2, %i.by                       ; 3 uses
  br i1 %.not121.i.i, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call zeroext i1 @mte_probe(ptr noundef nonnull %0, i32 noundef %spec.select.i.i.fr, i64 noundef %.pre) #26
  br i1 %i.cf, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.cg = shl i64 %.pre, 8
  %i.ch = ashr exact i64 %i.cg, 8
  %i.ci = and i64 %i.ch, %.pre
  %i.cj = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.ci, i32 noundef 0, i64 noundef %i.b) #26
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i64 %i.ck, ptr %i.cl, align 8
  br label %bb.ac

bb.t:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load i16, ptr %i.cm, align 8
  %i.co = sext i16 %i.cn to i64                   ; 4 uses
  %i.cp = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.cq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.cq, align 8
  fence syncscope("singlethread") seq_cst
  %.not125.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  br i1 %.not125.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.t, %.split14.us.us
  %.3111.i.i.us = phi i64 [ %i.da, %.split14.us.us ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.db, %.split14.us.us ], [ %i.by, %bb.t ]
  %i.cr = ashr i64 %.3111.i.i.us, 3
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.da, %bb.w ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.db, %bb.w ] ; 2 uses
  %i.cu = and i64 %.4112.i.i.us.us, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not124.i.i.us.us = icmp eq i64 %i.cw, 0
  br i1 %.not124.i.i.us.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.cx, align 1
  %i.cy = zext i8 %.val.us.us to i64
  %i.cz = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i64 %i.cy, ptr %i.cz, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = add i64 %.4112.i.i.us.us, 8             ; 5 uses
  %i.db = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dc = icmp sle i64 %i.da, %i.co
  %i.dd = and i64 %i.da, 63
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = and i1 %i.dc, %i.de
  br i1 %i.df, label %bb.u, label %.split14.us.us, !llvm.loop !30

.split14.us.us:                                   ; preds = %bb.w
  %.not126.i.i.us = icmp sgt i64 %i.da, %i.co
  br i1 %.not126.i.i.us, label %.split18.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.t, %.split14
  %.3111.i.i = phi i64 [ %i.dr, %.split14 ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ds, %.split14 ], [ %i.by, %bb.t ]
  %i.dg = ashr i64 %.3111.i.i, 3
  %i.dh = getelementptr inbounds i8, ptr %1, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.dr, %bb.aa ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.dj = and i64 %.4112.i.i, 63
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.di
  %.not124.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not124.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = add i64 %.4.i.i, %2
  %i.dn = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i.fr, i64 noundef %i.dm) #26
  br i1 %i.dn, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i
  %.val = load i8, ptr %i.do, align 1
  %i.dp = zext i8 %.val to i64
  %i.dq = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i64 %i.dp, ptr %i.dq, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.dr = add i64 %.4112.i.i, 8                   ; 5 uses
  %i.ds = add i64 %.4.i.i, 1                      ; 2 uses
  %i.dt = icmp sle i64 %i.dr, %i.co
  %i.du = and i64 %i.dr, 63
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = and i1 %i.dt, %i.dv
  br i1 %i.dw, label %bb.x, label %.split14, !llvm.loop !30

bb.ab:                                            ; preds = %bb.y
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  br label %bb.ad

.split14:                                         ; preds = %bb.aa
  %.not126.i.i = icmp sgt i64 %i.dr, %i.co
  br i1 %.not126.i.i, label %.split18.us, label %.split, !llvm.loop !31

.split18.us:                                      ; preds = %.split14, %.split14.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dy = load i16, ptr %i.dx, align 2            ; 2 uses
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = icmp sgt i16 %i.dy, -1
  br i1 %i.ea, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.split18.us, %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ec = load i16, ptr %i.eb, align 2            ; 2 uses
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = icmp slt i16 %i.ec, 0
  br i1 %i.ee, label %sve_ldnfff1_r_mte.exit, label %bb.ad, !prof !85

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.split18.us, %bb.s, %bb.p
  %.6.i.i = phi i64 [ %i.bv, %bb.p ], [ %i.dz, %.split18.us ], [ %i.ed, %bb.ac ], [ %.4112.i.i, %bb.ab ], [ %i.bv, %bb.s ] ; 4 uses
  %i.ef = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i4 = icmp eq i64 %i.ef, 0
  br i1 %.not.i4, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.eh = sub nuw nsw i64 64, %i.ef
  %i.ei = lshr i64 -1, %i.eh
  %i.ej = lshr i64 %.6.i.i, 6
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ej ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = and i64 %i.el, %i.ei
  store i64 %i.em, ptr %i.ek, align 8
  %i.en = add i64 %.6.i.i, 63
  %i.eo = and i64 %i.en, -64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i5 = phi i64 [ %i.eo, %bb.ae ], [ %.6.i.i, %bb.ad ] ; 3 uses
  %i.ep = icmp ult i64 %.0.i5, %i.z
  br i1 %i.ep, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.af
  %i.eq = lshr i64 %.0.i5, 3
  %i.er = and i64 %i.eq, 2305843009213693944
  %i.es = getelementptr i8, ptr %0, i64 %i.er
  %scevgep.i = getelementptr i8, ptr %i.es, i64 12592
  %i.et = xor i64 %.0.i5, -1
  %i.eu = add nsw i64 %i.et, %i.z
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = and i64 %i.ev, 2305843009213693944
  %i.ex = add nuw nsw i64 %i.ew, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ex, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.af, %sve_cont_ldst_elements.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bhs_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 6 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 1
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 1
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -2
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 1) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 1
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 5 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b)
  br i1 %i.bw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ca = load i8, ptr %i.bz, align 4, !range !88, !noundef !89
  %i.cb = trunc nuw i8 %i.ca to i1
  %spec.select.i.i = select i1 %i.cb, i32 %.0.i, i32 0
  %spec.select.i.i.fr = freeze i32 %spec.select.i.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = icmp eq i16 %i.bx, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.t, !prof !76

bb.r:                                             ; preds = %bb.q
  %.not121.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  %.pre = add i64 %2, %i.by                       ; 3 uses
  br i1 %.not121.i.i, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call zeroext i1 @mte_probe(ptr noundef nonnull %0, i32 noundef %spec.select.i.i.fr, i64 noundef %.pre) #26
  br i1 %i.cf, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.cg = shl i64 %.pre, 8
  %i.ch = ashr exact i64 %i.cg, 8
  %i.ci = and i64 %i.ch, %.pre
  %i.cj = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.ci, i32 noundef 0, i64 noundef %i.b) #26
  %i.ck = sext i8 %i.cj to i16
  %i.cl = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i16 %i.ck, ptr %i.cl, align 2
  br label %bb.ac

bb.t:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load i16, ptr %i.cm, align 8
  %i.co = sext i16 %i.cn to i64                   ; 4 uses
  %i.cp = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.cq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.cq, align 8
  fence syncscope("singlethread") seq_cst
  %.not125.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  br i1 %.not125.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.t, %.split14.us.us
  %.3111.i.i.us = phi i64 [ %i.da, %.split14.us.us ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.db, %.split14.us.us ], [ %i.by, %bb.t ]
  %i.cr = ashr i64 %.3111.i.i.us, 3
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.da, %bb.w ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.db, %bb.w ] ; 2 uses
  %i.cu = and i64 %.4112.i.i.us.us, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not124.i.i.us.us = icmp eq i64 %i.cw, 0
  br i1 %.not124.i.i.us.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.cx, align 1
  %i.cy = sext i8 %.val.us.us to i16
  %i.cz = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i16 %i.cy, ptr %i.cz, align 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = add i64 %.4112.i.i.us.us, 2             ; 5 uses
  %i.db = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dc = icmp sle i64 %i.da, %i.co
  %i.dd = and i64 %i.da, 63
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = and i1 %i.dc, %i.de
  br i1 %i.df, label %bb.u, label %.split14.us.us, !llvm.loop !30

.split14.us.us:                                   ; preds = %bb.w
  %.not126.i.i.us = icmp sgt i64 %i.da, %i.co
  br i1 %.not126.i.i.us, label %.split18.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.t, %.split14
  %.3111.i.i = phi i64 [ %i.dr, %.split14 ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ds, %.split14 ], [ %i.by, %bb.t ]
  %i.dg = ashr i64 %.3111.i.i, 3
  %i.dh = getelementptr inbounds i8, ptr %1, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.dr, %bb.aa ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.dj = and i64 %.4112.i.i, 63
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.di
  %.not124.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not124.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = add i64 %.4.i.i, %2
  %i.dn = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i.fr, i64 noundef %i.dm) #26
  br i1 %i.dn, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i
  %.val = load i8, ptr %i.do, align 1
  %i.dp = sext i8 %.val to i16
  %i.dq = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i16 %i.dp, ptr %i.dq, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.dr = add i64 %.4112.i.i, 2                   ; 5 uses
  %i.ds = add i64 %.4.i.i, 1                      ; 2 uses
  %i.dt = icmp sle i64 %i.dr, %i.co
  %i.du = and i64 %i.dr, 63
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = and i1 %i.dt, %i.dv
  br i1 %i.dw, label %bb.x, label %.split14, !llvm.loop !30

bb.ab:                                            ; preds = %bb.y
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  br label %bb.ad

.split14:                                         ; preds = %bb.aa
  %.not126.i.i = icmp sgt i64 %i.dr, %i.co
  br i1 %.not126.i.i, label %.split18.us, label %.split, !llvm.loop !31

.split18.us:                                      ; preds = %.split14, %.split14.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dy = load i16, ptr %i.dx, align 2            ; 2 uses
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = icmp sgt i16 %i.dy, -1
  br i1 %i.ea, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.split18.us, %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ec = load i16, ptr %i.eb, align 2            ; 2 uses
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = icmp slt i16 %i.ec, 0
  br i1 %i.ee, label %sve_ldnfff1_r_mte.exit, label %bb.ad, !prof !85

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.split18.us, %bb.s, %bb.p
  %.6.i.i = phi i64 [ %i.bv, %bb.p ], [ %i.dz, %.split18.us ], [ %i.ed, %bb.ac ], [ %.4112.i.i, %bb.ab ], [ %i.bv, %bb.s ] ; 4 uses
  %i.ef = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i4 = icmp eq i64 %i.ef, 0
  br i1 %.not.i4, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.eh = sub nuw nsw i64 64, %i.ef
  %i.ei = lshr i64 -1, %i.eh
  %i.ej = lshr i64 %.6.i.i, 6
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ej ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = and i64 %i.el, %i.ei
  store i64 %i.em, ptr %i.ek, align 8
  %i.en = add i64 %.6.i.i, 63
  %i.eo = and i64 %i.en, -64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i5 = phi i64 [ %i.eo, %bb.ae ], [ %.6.i.i, %bb.ad ] ; 3 uses
  %i.ep = icmp ult i64 %.0.i5, %i.z
  br i1 %i.ep, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.af
  %i.eq = lshr i64 %.0.i5, 3
  %i.er = and i64 %i.eq, 2305843009213693944
  %i.es = getelementptr i8, ptr %0, i64 %i.er
  %scevgep.i = getelementptr i8, ptr %i.es, i64 12592
  %i.et = xor i64 %.0.i5, -1
  %i.eu = add nsw i64 %i.et, %i.z
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = and i64 %i.ev, 2305843009213693944
  %i.ex = add nuw nsw i64 %i.ew, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ex, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.af, %sve_cont_ldst_elements.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bss_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 6 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 2
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 2
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -4
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 2) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 2
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 5 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b)
  br i1 %i.bw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ca = load i8, ptr %i.bz, align 4, !range !88, !noundef !89
  %i.cb = trunc nuw i8 %i.ca to i1
  %spec.select.i.i = select i1 %i.cb, i32 %.0.i, i32 0
  %spec.select.i.i.fr = freeze i32 %spec.select.i.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = icmp eq i16 %i.bx, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.t, !prof !76

bb.r:                                             ; preds = %bb.q
  %.not121.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  %.pre = add i64 %2, %i.by                       ; 3 uses
  br i1 %.not121.i.i, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call zeroext i1 @mte_probe(ptr noundef nonnull %0, i32 noundef %spec.select.i.i.fr, i64 noundef %.pre) #26
  br i1 %i.cf, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.cg = shl i64 %.pre, 8
  %i.ch = ashr exact i64 %i.cg, 8
  %i.ci = and i64 %i.ch, %.pre
  %i.cj = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.ci, i32 noundef 0, i64 noundef %i.b) #26
  %i.ck = sext i8 %i.cj to i32
  %i.cl = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i32 %i.ck, ptr %i.cl, align 4
  br label %bb.ac

bb.t:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load i16, ptr %i.cm, align 8
  %i.co = sext i16 %i.cn to i64                   ; 4 uses
  %i.cp = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.cq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.cq, align 8
  fence syncscope("singlethread") seq_cst
  %.not125.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  br i1 %.not125.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.t, %.split14.us.us
  %.3111.i.i.us = phi i64 [ %i.da, %.split14.us.us ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.db, %.split14.us.us ], [ %i.by, %bb.t ]
  %i.cr = ashr i64 %.3111.i.i.us, 3
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.da, %bb.w ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.db, %bb.w ] ; 2 uses
  %i.cu = and i64 %.4112.i.i.us.us, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not124.i.i.us.us = icmp eq i64 %i.cw, 0
  br i1 %.not124.i.i.us.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.cx, align 1
  %i.cy = sext i8 %.val.us.us to i32
  %i.cz = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i32 %i.cy, ptr %i.cz, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = add i64 %.4112.i.i.us.us, 4             ; 5 uses
  %i.db = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dc = icmp sle i64 %i.da, %i.co
  %i.dd = and i64 %i.da, 63
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = and i1 %i.dc, %i.de
  br i1 %i.df, label %bb.u, label %.split14.us.us, !llvm.loop !30

.split14.us.us:                                   ; preds = %bb.w
  %.not126.i.i.us = icmp sgt i64 %i.da, %i.co
  br i1 %.not126.i.i.us, label %.split18.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.t, %.split14
  %.3111.i.i = phi i64 [ %i.dr, %.split14 ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ds, %.split14 ], [ %i.by, %bb.t ]
  %i.dg = ashr i64 %.3111.i.i, 3
  %i.dh = getelementptr inbounds i8, ptr %1, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.dr, %bb.aa ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.dj = and i64 %.4112.i.i, 63
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.di
  %.not124.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not124.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = add i64 %.4.i.i, %2
  %i.dn = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i.fr, i64 noundef %i.dm) #26
  br i1 %i.dn, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i
  %.val = load i8, ptr %i.do, align 1
  %i.dp = sext i8 %.val to i32
  %i.dq = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i32 %i.dp, ptr %i.dq, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.dr = add i64 %.4112.i.i, 4                   ; 5 uses
  %i.ds = add i64 %.4.i.i, 1                      ; 2 uses
  %i.dt = icmp sle i64 %i.dr, %i.co
  %i.du = and i64 %i.dr, 63
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = and i1 %i.dt, %i.dv
  br i1 %i.dw, label %bb.x, label %.split14, !llvm.loop !30

bb.ab:                                            ; preds = %bb.y
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  br label %bb.ad

.split14:                                         ; preds = %bb.aa
  %.not126.i.i = icmp sgt i64 %i.dr, %i.co
  br i1 %.not126.i.i, label %.split18.us, label %.split, !llvm.loop !31

.split18.us:                                      ; preds = %.split14, %.split14.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dy = load i16, ptr %i.dx, align 2            ; 2 uses
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = icmp sgt i16 %i.dy, -1
  br i1 %i.ea, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.split18.us, %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ec = load i16, ptr %i.eb, align 2            ; 2 uses
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = icmp slt i16 %i.ec, 0
  br i1 %i.ee, label %sve_ldnfff1_r_mte.exit, label %bb.ad, !prof !85

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.split18.us, %bb.s, %bb.p
  %.6.i.i = phi i64 [ %i.bv, %bb.p ], [ %i.dz, %.split18.us ], [ %i.ed, %bb.ac ], [ %.4112.i.i, %bb.ab ], [ %i.bv, %bb.s ] ; 4 uses
  %i.ef = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i4 = icmp eq i64 %i.ef, 0
  br i1 %.not.i4, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.eh = sub nuw nsw i64 64, %i.ef
  %i.ei = lshr i64 -1, %i.eh
  %i.ej = lshr i64 %.6.i.i, 6
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ej ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = and i64 %i.el, %i.ei
  store i64 %i.em, ptr %i.ek, align 8
  %i.en = add i64 %.6.i.i, 63
  %i.eo = and i64 %i.en, -64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i5 = phi i64 [ %i.eo, %bb.ae ], [ %.6.i.i, %bb.ad ] ; 3 uses
  %i.ep = icmp ult i64 %.0.i5, %i.z
  br i1 %i.ep, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.af
  %i.eq = lshr i64 %.0.i5, 3
  %i.er = and i64 %i.eq, 2305843009213693944
  %i.es = getelementptr i8, ptr %0, i64 %i.er
  %scevgep.i = getelementptr i8, ptr %i.es, i64 12592
  %i.et = xor i64 %.0.i5, -1
  %i.eu = add nsw i64 %i.et, %i.z
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = and i64 %i.ev, 2305843009213693944
  %i.ex = add nuw nsw i64 %i.ew, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ex, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.af, %sve_cont_ldst_elements.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_ldnf1bds_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 19 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 5 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.as ; 6 uses
  %i.au = icmp sgt i64 %.178.i, -1
  br i1 %i.au, label %bb.j, label %sve_cont_ldst_elements.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.av = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = trunc i64 %.178.i to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.aw, ptr %i.ax, align 4
  %i.ay = lshr i64 %.178.i, 3
  %i.az = trunc i64 %i.ay to i16
  store i16 %i.az, ptr %4, align 8
  %i.ba = lshr i64 %.1.i, 3
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.bc = or i64 %i.bb, %2                        ; 2 uses
  %i.bd = sub i64 0, %i.bc                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ba, %i.bd
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %.1.i to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.be, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.bd to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i64 %i.bd, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.bc, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = add i16 %i.bj, -8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bi, i64 noundef %i.z, i32 noundef 3) ; 3 uses
  %i.bn = icmp sle i64 %i.bm, %.1.i
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc i64 %i.bm to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = lshr i64 %i.bm, 3
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = trunc nuw nsw i64 %.1.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bt, ptr %i.bu, align 2
  br label %bb.o

sve_cont_ldst_elements.exit:                      ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %sve_ldnfff1_r_mte.exit

bb.o:                                             ; preds = %bb.k, %bb.n
  %sext = shl i64 %.178.i, 48
  %i.bv = ashr exact i64 %sext, 48                ; 5 uses
  %i.bw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef range(i32 0, 2) 0, ptr noundef %0, i64 noundef %2, i32 noundef 0, i64 noundef %i.b)
  br i1 %i.bw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.bx = load i16, ptr %4, align 8               ; 2 uses
  %i.by = sext i16 %i.bx to i64                   ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ca = load i8, ptr %i.bz, align 4, !range !88, !noundef !89
  %i.cb = trunc nuw i8 %i.ca to i1
  %spec.select.i.i = select i1 %i.cb, i32 %.0.i, i32 0
  %spec.select.i.i.fr = freeze i32 %spec.select.i.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef 0, i64 noundef %i.z, i1 noundef false) #26
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = icmp eq i16 %i.bx, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.t, !prof !76

bb.r:                                             ; preds = %bb.q
  %.not121.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  %.pre = add i64 %2, %i.by                       ; 3 uses
  br i1 %.not121.i.i, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call zeroext i1 @mte_probe(ptr noundef nonnull %0, i32 noundef %spec.select.i.i.fr, i64 noundef %.pre) #26
  br i1 %i.cf, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.cg = shl i64 %.pre, 8
  %i.ch = ashr exact i64 %i.cg, 8
  %i.ci = and i64 %i.ch, %.pre
  %i.cj = call zeroext i8 @cpu_ldb_mmu(ptr noundef nonnull %0, i64 noundef %i.ci, i32 noundef 0, i64 noundef %i.b) #26
  %i.ck = sext i8 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.at, i64 %i.bv
  store i64 %i.ck, ptr %i.cl, align 8
  br label %bb.ac

bb.t:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load i16, ptr %i.cm, align 8
  %i.co = sext i16 %i.cn to i64                   ; 4 uses
  %i.cp = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.cq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.cq, align 8
  fence syncscope("singlethread") seq_cst
  %.not125.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  br i1 %.not125.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.t, %.split14.us.us
  %.3111.i.i.us = phi i64 [ %i.da, %.split14.us.us ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.db, %.split14.us.us ], [ %i.by, %bb.t ]
  %i.cr = ashr i64 %.3111.i.i.us, 3
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.da, %bb.w ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.db, %bb.w ] ; 2 uses
  %i.cu = and i64 %.4112.i.i.us.us, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not124.i.i.us.us = icmp eq i64 %i.cw, 0
  br i1 %.not124.i.i.us.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i.us.us
  %.val.us.us = load i8, ptr %i.cx, align 1
  %i.cy = sext i8 %.val.us.us to i64
  %i.cz = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i.us.us
  store i64 %i.cy, ptr %i.cz, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = add i64 %.4112.i.i.us.us, 8             ; 5 uses
  %i.db = add i64 %.4.i.i.us.us, 1                ; 2 uses
  %i.dc = icmp sle i64 %i.da, %i.co
  %i.dd = and i64 %i.da, 63
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = and i1 %i.dc, %i.de
  br i1 %i.df, label %bb.u, label %.split14.us.us, !llvm.loop !30

.split14.us.us:                                   ; preds = %bb.w
  %.not126.i.i.us = icmp sgt i64 %i.da, %i.co
  br i1 %.not126.i.i.us, label %.split18.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.t, %.split14
  %.3111.i.i = phi i64 [ %i.dr, %.split14 ], [ %i.bv, %bb.t ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ds, %.split14 ], [ %i.by, %bb.t ]
  %i.dg = ashr i64 %.3111.i.i, 3
  %i.dh = getelementptr inbounds i8, ptr %1, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.dr, %bb.aa ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.dj = and i64 %.4112.i.i, 63
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.di
  %.not124.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not124.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = add i64 %.4.i.i, %2
  %i.dn = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i.fr, i64 noundef %i.dm) #26
  br i1 %i.dn, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds i8, ptr %i.cp, i64 %.4.i.i
  %.val = load i8, ptr %i.do, align 1
  %i.dp = sext i8 %.val to i64
  %i.dq = getelementptr inbounds i8, ptr %i.at, i64 %.4112.i.i
  store i64 %i.dp, ptr %i.dq, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.dr = add i64 %.4112.i.i, 8                   ; 5 uses
  %i.ds = add i64 %.4.i.i, 1                      ; 2 uses
  %i.dt = icmp sle i64 %i.dr, %i.co
  %i.du = and i64 %i.dr, 63
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = and i1 %i.dt, %i.dv
  br i1 %i.dw, label %bb.x, label %.split14, !llvm.loop !30

bb.ab:                                            ; preds = %bb.y
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  br label %bb.ad

.split14:                                         ; preds = %bb.aa
  %.not126.i.i = icmp sgt i64 %i.dr, %i.co
  br i1 %.not126.i.i, label %.split18.us, label %.split, !llvm.loop !31

.split18.us:                                      ; preds = %.split14, %.split14.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cq, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 14
end_hunk_13
begin_hunk_14_@helper_sve_ldnf1dd_be_r_mte:bb.a
  %i.bb = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.bc = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 3 uses
  store i64 %i.b, ptr %i.bc, align 8
  fence syncscope("singlethread") seq_cst
  %.not125.i.i = icmp eq i32 %spec.select.i.i.fr, 0
  br i1 %.not125.i.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.k, %.split12.us.us
  %.3111.i.i.us = phi i64 [ %i.bm, %.split12.us.us ], [ %i.ah, %bb.k ] ; 2 uses
  %.3.i.i.us = phi i64 [ %i.bn, %.split12.us.us ], [ %i.ak, %bb.k ]
  %i.bd = ashr i64 %.3111.i.i.us, 3
  %i.be = getelementptr inbounds i8, ptr %1, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.split.us.us
  %.4112.i.i.us.us = phi i64 [ %.3111.i.i.us, %.split.us.us ], [ %i.bm, %bb.n ] ; 3 uses
  %.4.i.i.us.us = phi i64 [ %.3.i.i.us, %.split.us.us ], [ %i.bn, %bb.n ] ; 2 uses
  %i.bg = and i64 %.4112.i.i.us.us, 63
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bh, %i.bf
  %.not124.i.i.us.us = icmp eq i64 %i.bi, 0
  br i1 %.not124.i.i.us.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds i8, ptr %i.bb, i64 %.4.i.i.us.us
  %.val.us.us = load i64, ptr %i.bj, align 1
  %i.bk = call i64 @llvm.bswap.i64(i64 %.val.us.us)
  %i.bl = getelementptr inbounds i8, ptr %i.w, i64 %.4112.i.i.us.us
  store i64 %i.bk, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = add nsw i64 %.4112.i.i.us.us, 8         ; 5 uses
  %i.bn = add i64 %.4.i.i.us.us, 8                ; 2 uses
  %i.bo = icmp sle i64 %i.bm, %i.ba
  %i.bp = and i64 %i.bm, 63
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = and i1 %i.bo, %i.bq
  br i1 %i.br, label %bb.l, label %.split12.us.us, !llvm.loop !30

.split12.us.us:                                   ; preds = %bb.n
  %.not126.i.i.us = icmp sgt i64 %i.bm, %i.ba
  br i1 %.not126.i.i.us, label %.split16.us, label %.split.us.us, !llvm.loop !31

.split:                                           ; preds = %bb.k, %.split12
  %.3111.i.i = phi i64 [ %i.cd, %.split12 ], [ %i.ah, %bb.k ] ; 2 uses
  %.3.i.i = phi i64 [ %i.ce, %.split12 ], [ %i.ak, %bb.k ]
  %i.bs = ashr i64 %.3111.i.i, 3
  %i.bt = getelementptr inbounds i8, ptr %1, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.split
  %.4112.i.i = phi i64 [ %.3111.i.i, %.split ], [ %i.cd, %bb.r ] ; 4 uses
  %.4.i.i = phi i64 [ %.3.i.i, %.split ], [ %i.ce, %bb.r ] ; 3 uses
  %i.bv = and i64 %.4112.i.i, 63
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %.not124.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not124.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = add i64 %.4.i.i, %2
  %i.bz = call zeroext i1 @mte_probe(ptr noundef %0, i32 noundef %spec.select.i.i.fr, i64 noundef %i.by) #26
  br i1 %i.bz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds i8, ptr %i.bb, i64 %.4.i.i
  %.val = load i64, ptr %i.ca, align 1
  %i.cb = call i64 @llvm.bswap.i64(i64 %.val)
  %i.cc = getelementptr inbounds i8, ptr %i.w, i64 %.4112.i.i
  store i64 %i.cb, ptr %i.cc, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.cd = add nsw i64 %.4112.i.i, 8               ; 5 uses
  %i.ce = add i64 %.4.i.i, 8                      ; 2 uses
  %i.cf = icmp sle i64 %i.cd, %i.ba
  %i.cg = and i64 %i.cd, 63
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = and i1 %i.cf, %i.ch
  br i1 %i.ci, label %bb.o, label %.split12, !llvm.loop !30

bb.s:                                             ; preds = %bb.p
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bc, align 8
  br label %bb.u

.split12:                                         ; preds = %bb.r
  %.not126.i.i = icmp sgt i64 %i.cd, %i.ba
  br i1 %.not126.i.i, label %.split16.us, label %.split, !llvm.loop !31

.split16.us:                                      ; preds = %.split12, %.split12.us.us
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bc, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ck = load i16, ptr %i.cj, align 2            ; 2 uses
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = icmp sgt i16 %i.ck, -1
  br i1 %i.cm, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.split16.us, %._crit_edge
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.co = load i16, ptr %i.cn, align 2            ; 2 uses
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = icmp slt i16 %i.co, 0
  br i1 %i.cq, label %sve_ldnfff1_r_mte.exit, label %bb.u, !prof !85

bb.u:                                             ; preds = %bb.s, %bb.t, %.split16.us, %bb.j, %bb.g
  %.6.i.i = phi i64 [ %i.ah, %bb.g ], [ %i.cl, %.split16.us ], [ %i.cp, %bb.t ], [ %.4112.i.i, %bb.s ], [ %i.ah, %bb.j ] ; 4 uses
  %i.cr = and i64 %.6.i.i, 63                     ; 2 uses
  %.not.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.ct = sub nuw nsw i64 64, %i.cr
  %i.cu = lshr i64 -1, %i.ct
  %i.cv = lshr i64 %.6.i.i, 6
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cv ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = and i64 %i.cx, %i.cu
  store i64 %i.cy, ptr %i.cw, align 8
  %i.cz = add nsw i64 %.6.i.i, 63
  %i.da = and i64 %i.cz, -64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i3 = phi i64 [ %i.da, %bb.v ], [ %.6.i.i, %bb.u ] ; 3 uses
  %i.db = icmp ult i64 %.0.i3, %i.ad
  br i1 %i.db, label %.lr.ph.preheader.i, label %sve_ldnfff1_r_mte.exit

.lr.ph.preheader.i:                               ; preds = %bb.w
  %i.dc = lshr i64 %.0.i3, 3
  %i.dd = and i64 %i.dc, 2305843009213693944
  %i.de = getelementptr i8, ptr %0, i64 %i.dd
  %scevgep.i = getelementptr i8, ptr %i.de, i64 12592
  %i.df = xor i64 %.0.i3, -1
  %i.dg = add nsw i64 %i.df, %i.ad
  %i.dh = lshr i64 %i.dg, 3
  %i.di = and i64 %i.dh, 2305843009213693944
  %i.dj = add nuw nsw i64 %i.di, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dj, i1 false)
  br label %sve_ldnfff1_r_mte.exit

sve_ldnfff1_r_mte.exit:                           ; preds = %.lr.ph.preheader.i, %bb.w, %bb.e, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_st1bb_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 26 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr @pred_esz_masks, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i4, %bb.e ]
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i3, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 3 uses
  %.1.i4 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = ashr i32 %i.a, 10                       ; 4 uses
  %i.ab = icmp sgt i64 %.178.i, -1
  br i1 %i.ab, label %bb.g, label %sve_stN_r.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp samesign ult i64 %.1.i4, %i.h
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc i64 %.178.i to i16                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i16 %i.ad, ptr %i.ae, align 4
  store i16 %i.ad, ptr %4, align 8
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.ag = or i64 %i.af, %2                        ; 3 uses
  %i.ah = sub i64 0, %i.ag                        ; 3 uses
  %.not83.i.not = icmp slt i64 %.1.i4, %i.ah
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.ai = trunc nuw nsw i64 %.1.i4 to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ai, ptr %i.aj, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ak = trunc i64 %i.ah to i16
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.ak, ptr %i.al, align 8
  %.not84.i = icmp eq i64 %i.ag, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = trunc i64 %i.ag to i16
  %i.an = xor i16 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.an, ptr %i.ao, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.ah, i64 noundef %i.h, i32 noundef 0) ; 2 uses
  %i.aq = icmp sle i64 %i.ap, %.1.i4
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = trunc i64 %i.ap to i16                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.ar, ptr %i.as, align 2
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.ar, ptr %i.at, align 2
  %i.au = trunc nuw nsw i64 %.1.i4 to i16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.au, ptr %i.av, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %i.aw = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 1, i64 noundef %i.z) ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = or i32 %i.bb, %i.ay
  %.not143.i = icmp eq i32 %i.bc, 0
  %i.bd = load i16, ptr %4, align 8               ; 2 uses
  br i1 %.not143.i, label %bb.r, label %bb.m, !prof !85

bb.m:                                             ; preds = %bb.l
  %i.be = sext i16 %i.bd to i64
  %i.bf = load i16, ptr %i.ae, align 4
  %i.bg = sext i16 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.bj = load i16, ptr %i.bi, align 2            ; 2 uses
  %i.bk = icmp slt i16 %i.bj, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.bm = load i16, ptr %i.bl, align 2            ; 2 uses
  %i.bn = icmp slt i16 %i.bm, 0
  %i.bo = load i16, ptr %i.bh, align 8
  %spec.select.i = select i1 %i.bn, i16 %i.bo, i16 %i.bm
  %.0127.in.i = select i1 %i.bk, i16 %spec.select.i, i16 %i.bj
  %.0127.i = sext i16 %.0127.in.i to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.bq = and i32 %i.aa, 31
  %i.br = zext nneg i32 %i.bq to i64
  %invariant.gep48 = getelementptr [256 x i8], ptr %i.bp, i64 %i.br
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0128.i = phi i64 [ %i.bg, %bb.m ], [ %i.cd, %bb.q ] ; 2 uses
  %.0123.i = phi i64 [ %i.be, %bb.m ], [ %i.ce, %bb.q ]
  %i.bs = ashr i64 %.0128.i, 6
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1129.i = phi i64 [ %.0128.i, %bb.n ], [ %i.cd, %bb.p ] ; 3 uses
  %.1124.i = phi i64 [ %.0123.i, %bb.n ], [ %i.ce, %bb.p ] ; 2 uses
  %i.bv = and i64 %.1129.i, 63
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %.not149.i = icmp eq i64 %i.bx, 0
  br i1 %.not149.i, label %bb.p, label %.preheader8

.preheader8:                                      ; preds = %bb.o
  %i.by = add i64 %.1124.i, %2                    ; 2 uses
  %gep49 = getelementptr i8, ptr %invariant.gep48, i64 %.1129.i
  %i.bz = load i8, ptr %gep49, align 1
  %i.ca = shl i64 %i.by, 8
  %i.cb = ashr exact i64 %i.ca, 8
  %i.cc = and i64 %i.cb, %i.by
  call void @cpu_stb_mmu(ptr noundef %0, i64 noundef %i.cc, i8 noundef zeroext %i.bz, i32 noundef 0, i64 noundef %i.z) #26
  br label %bb.p

bb.p:                                             ; preds = %.preheader8, %bb.o
  %i.cd = add i64 %.1129.i, 1                     ; 4 uses
  %i.ce = add i64 %.1124.i, 1                     ; 2 uses
  %i.cf = and i64 %i.cd, 63
  %.not150.i = icmp eq i64 %i.cf, 0
  br i1 %.not150.i, label %bb.q, label %bb.o, !llvm.loop !32

bb.q:                                             ; preds = %bb.p
  %.not151.i = icmp sgt i64 %i.cd, %.0127.i
  br i1 %.not151.i, label %sve_stN_r.exit, label %bb.n, !llvm.loop !33

bb.r:                                             ; preds = %bb.l
  %i.cg = load i16, ptr %i.ae, align 4            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ci = load i16, ptr %i.ch, align 8            ; 2 uses
  %i.cj = sext i16 %i.ci to i64                   ; 2 uses
  %i.ck = load ptr, ptr %i.j, align 8
  %i.cl = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.z, ptr %i.cl, align 8
  fence syncscope("singlethread") seq_cst
  %.not144.i19 = icmp sgt i16 %i.cg, %i.ci
  br i1 %.not144.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.cm = sext i16 %i.cg to i64
  %i.cn = sext i16 %i.bd to i64
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.cp = and i32 %i.aa, 31
  %i.cq = zext nneg i32 %i.cp to i64
  %invariant.gep = getelementptr [256 x i8], ptr %i.co, i64 %i.cq
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.v
  %.2125.i21 = phi i64 [ %i.cn, %.lr.ph ], [ %i.da, %bb.v ]
  %.2130.i20 = phi i64 [ %i.cm, %.lr.ph ], [ %i.cz, %bb.v ] ; 2 uses
  %i.cr = ashr i64 %.2130.i20, 6
  %i.cs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.3131.i = phi i64 [ %.2130.i20, %bb.s ], [ %i.cz, %bb.u ] ; 5 uses
  %.3126.i = phi i64 [ %.2125.i21, %bb.s ], [ %i.da, %bb.u ] ; 2 uses
  %i.cu = and i64 %.3131.i, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not148.i = icmp eq i64 %i.cw, 0
  br i1 %.not148.i, label %bb.u, label %.preheader6

.preheader6:                                      ; preds = %bb.t
  %i.cx = getelementptr inbounds i8, ptr %i.ck, i64 %.3126.i
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.3131.i
  %i.cy = load i8, ptr %gep, align 1
  store i8 %i.cy, ptr %i.cx, align 1
  br label %bb.u

bb.u:                                             ; preds = %.preheader6, %bb.t
  %i.cz = add nsw i64 %.3131.i, 1                 ; 3 uses
  %i.da = add i64 %.3126.i, 1                     ; 2 uses
  %i.db = icmp slt i64 %.3131.i, %i.cj
  %i.dc = and i64 %i.cz, 63
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = and i1 %i.db, %i.dd
  br i1 %i.de, label %bb.t, label %bb.v, !llvm.loop !34

bb.v:                                             ; preds = %bb.u
  %.not144.i.not = icmp slt i64 %.3131.i, %i.cj
  br i1 %.not144.i.not, label %bb.s, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.v, %bb.r
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cl, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dg = load i16, ptr %i.df, align 4            ; 2 uses
  %i.dh = icmp sgt i16 %i.dg, -1
  br i1 %i.dh, label %.loopexit5, label %bb.w, !prof !76

.loopexit5:                                       ; preds = %._crit_edge
  %i.di = zext nneg i16 %i.dg to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = sext i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.dn = add i64 %2, %i.di                       ; 2 uses
  %invariant.gep23 = getelementptr i8, ptr %i.dm, i64 %i.dl
  %i.do = and i32 %i.aa, 31
  %i.dp = zext nneg i32 %i.do to i64
  %gep24 = getelementptr [256 x i8], ptr %invariant.gep23, i64 %i.dp
  %i.dq = load i8, ptr %gep24, align 1
  %i.dr = shl i64 %i.dn, 8
  %i.ds = ashr exact i64 %i.dr, 8
  %i.dt = and i64 %i.ds, %i.dn
  call void @cpu_stb_mmu(ptr noundef %0, i64 noundef %i.dt, i8 noundef zeroext %i.dq, i32 noundef 0, i64 noundef %i.z) #26
  br label %bb.w
end_hunk_14
begin_hunk_15_@helper_sve_st4qq_be_r:bb.a
  %i.ji = call i64 @llvm.bswap.i64(i64 %i.jh)
  store i64 %i.ji, ptr %i.jg, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %gep22.3.1 = getelementptr [256 x i8], ptr %invariant.gep21.1, i64 %i.gz ; 2 uses
  %i.jk = getelementptr i8, ptr %gep22.3.1, i64 8
  %i.jl = load i64, ptr %i.jk, align 8
  %i.jm = call i64 @llvm.bswap.i64(i64 %i.jl)
  store i64 %i.jm, ptr %i.jj, align 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  %i.jo = load i64, ptr %gep22.3.1, align 8
  %i.jp = call i64 @llvm.bswap.i64(i64 %i.jo)
  store i64 %i.jp, ptr %i.jn, align 1
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader.1, %bb.m
  %i.jq = add i64 %.4132.i, 32                    ; 4 uses
  %i.jr = add i64 %.4.i, 128                      ; 2 uses
  %i.js = and i64 %i.jq, 63
  %.not146.i.1 = icmp eq i64 %i.js, 0
  br i1 %.not146.i.1, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.loopexit.1
  %i.jt = and i64 %i.jq, 63
  %i.ju = shl nuw i64 1, %i.jt
  %i.jv = and i64 %i.ju, %i.hc
  %.not145.i.2 = icmp eq i64 %i.jv, 0
  br i1 %.not145.i.2, label %.loopexit.2, label %.preheader.2

.preheader.2:                                     ; preds = %bb.n
  %i.jw = getelementptr inbounds i8, ptr %i.gn, i64 %i.jr ; 8 uses
  %invariant.gep21.2 = getelementptr i8, ptr %i.go, i64 %i.jq ; 4 uses
  %gep22.254 = getelementptr [256 x i8], ptr %invariant.gep21.2, i64 %i.gq ; 2 uses
  %i.jx = getelementptr i8, ptr %gep22.254, i64 8
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = call i64 @llvm.bswap.i64(i64 %i.jy)
  store i64 %i.jz, ptr %i.jw, align 1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.kb = load i64, ptr %gep22.254, align 8
  %i.kc = call i64 @llvm.bswap.i64(i64 %i.kb)
  store i64 %i.kc, ptr %i.ka, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %gep22.1.2 = getelementptr [256 x i8], ptr %invariant.gep21.2, i64 %i.gt ; 2 uses
  %i.ke = getelementptr i8, ptr %gep22.1.2, i64 8
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = call i64 @llvm.bswap.i64(i64 %i.kf)
  store i64 %i.kg, ptr %i.kd, align 1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.ki = load i64, ptr %gep22.1.2, align 8
  %i.kj = call i64 @llvm.bswap.i64(i64 %i.ki)
  store i64 %i.kj, ptr %i.kh, align 1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %gep22.2.2 = getelementptr [256 x i8], ptr %invariant.gep21.2, i64 %i.gw ; 2 uses
  %i.kl = getelementptr i8, ptr %gep22.2.2, i64 8
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = call i64 @llvm.bswap.i64(i64 %i.km)
  store i64 %i.kn, ptr %i.kk, align 1
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jw, i64 40
  %i.kp = load i64, ptr %gep22.2.2, align 8
  %i.kq = call i64 @llvm.bswap.i64(i64 %i.kp)
  store i64 %i.kq, ptr %i.ko, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jw, i64 48
  %gep22.3.2 = getelementptr [256 x i8], ptr %invariant.gep21.2, i64 %i.gz ; 2 uses
  %i.ks = getelementptr i8, ptr %gep22.3.2, i64 8
  %i.kt = load i64, ptr %i.ks, align 8
  %i.ku = call i64 @llvm.bswap.i64(i64 %i.kt)
  store i64 %i.ku, ptr %i.kr, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jw, i64 56
  %i.kw = load i64, ptr %gep22.3.2, align 8
  %i.kx = call i64 @llvm.bswap.i64(i64 %i.kw)
  store i64 %i.kx, ptr %i.kv, align 1
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.preheader.2, %bb.n
  %i.ky = add i64 %.4132.i, 48                    ; 4 uses
  %i.kz = add i64 %.4.i, 192                      ; 2 uses
  %i.la = and i64 %i.ky, 63
  %.not146.i.2 = icmp eq i64 %i.la, 0
  br i1 %.not146.i.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit.2
  %i.lb = and i64 %i.ky, 63
  %i.lc = shl nuw i64 1, %i.lb
  %i.ld = and i64 %i.lc, %i.hc
  %.not145.i.3 = icmp eq i64 %i.ld, 0
  br i1 %.not145.i.3, label %.loopexit.3, label %.preheader.3

.preheader.3:                                     ; preds = %bb.o
  %i.le = getelementptr inbounds i8, ptr %i.gn, i64 %i.kz ; 8 uses
  %invariant.gep21.3 = getelementptr i8, ptr %i.go, i64 %i.ky ; 4 uses
  %gep22.355 = getelementptr [256 x i8], ptr %invariant.gep21.3, i64 %i.gq ; 2 uses
  %i.lf = getelementptr i8, ptr %gep22.355, i64 8
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = call i64 @llvm.bswap.i64(i64 %i.lg)
  store i64 %i.lh, ptr %i.le, align 1
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lj = load i64, ptr %gep22.355, align 8
  %i.lk = call i64 @llvm.bswap.i64(i64 %i.lj)
  store i64 %i.lk, ptr %i.li, align 1
  %i.ll = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %gep22.1.3 = getelementptr [256 x i8], ptr %invariant.gep21.3, i64 %i.gt ; 2 uses
  %i.lm = getelementptr i8, ptr %gep22.1.3, i64 8
  %i.ln = load i64, ptr %i.lm, align 8
  %i.lo = call i64 @llvm.bswap.i64(i64 %i.ln)
  store i64 %i.lo, ptr %i.ll, align 1
  %i.lp = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lq = load i64, ptr %gep22.1.3, align 8
  %i.lr = call i64 @llvm.bswap.i64(i64 %i.lq)
  store i64 %i.lr, ptr %i.lp, align 1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %gep22.2.3 = getelementptr [256 x i8], ptr %invariant.gep21.3, i64 %i.gw ; 2 uses
  %i.lt = getelementptr i8, ptr %gep22.2.3, i64 8
  %i.lu = load i64, ptr %i.lt, align 8
  %i.lv = call i64 @llvm.bswap.i64(i64 %i.lu)
  store i64 %i.lv, ptr %i.ls, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %i.lx = load i64, ptr %gep22.2.3, align 8
  %i.ly = call i64 @llvm.bswap.i64(i64 %i.lx)
  store i64 %i.ly, ptr %i.lw, align 1
  %i.lz = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %gep22.3.3 = getelementptr [256 x i8], ptr %invariant.gep21.3, i64 %i.gz ; 2 uses
  %i.ma = getelementptr i8, ptr %gep22.3.3, i64 8
  %i.mb = load i64, ptr %i.ma, align 8
  %i.mc = call i64 @llvm.bswap.i64(i64 %i.mb)
  store i64 %i.mc, ptr %i.lz, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %i.le, i64 56
  %i.me = load i64, ptr %gep22.3.3, align 8
  %i.mf = call i64 @llvm.bswap.i64(i64 %i.me)
  store i64 %i.mf, ptr %i.md, align 1
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %.preheader.3, %bb.o
  %i.mg = add i64 %.4132.i, 64
  %i.mh = add i64 %.4.i, 256
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.3, %.loopexit.2, %.loopexit.1, %.loopexit
  %.lcssa48 = phi i64 [ %i.ii, %.loopexit ], [ %i.jq, %.loopexit.1 ], [ %i.ky, %.loopexit.2 ], [ %i.mg, %.loopexit.3 ] ; 2 uses
  %.lcssa = phi i64 [ %i.ij, %.loopexit ], [ %i.jr, %.loopexit.1 ], [ %i.kz, %.loopexit.2 ], [ %i.mh, %.loopexit.3 ]
  %.not147.i = icmp sgt i64 %.lcssa48, %i.gm
  br i1 %.not147.i, label %bb.q, label %bb.l, !llvm.loop !37

bb.q:                                             ; preds = %bb.p
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cz, align 8
  br label %sve_stN_r.exit

sve_stN_r.exit:                                   ; preds = %bb.f, %bb.a, %.loopexit3, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_st1bh_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 26 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i4, %bb.e ]
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i3, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 4 uses
  %.1.i4 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = ashr i32 %i.a, 10                       ; 4 uses
  %i.ab = icmp sgt i64 %.178.i, -1
  br i1 %i.ab, label %bb.g, label %sve_stN_r.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp samesign ult i64 %.1.i4, %i.h
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc i64 %.178.i to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i16 %i.ad, ptr %i.ae, align 4
  %i.af = lshr i64 %.178.i, 1
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %4, align 8
  %i.ah = lshr i64 %.1.i4, 1
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.aj = or i64 %i.ai, %2                        ; 2 uses
  %i.ak = sub i64 0, %i.aj                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ah, %i.ak
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.al = trunc nuw nsw i64 %.1.i4 to i16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.al, ptr %i.am, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.an = trunc i64 %i.ak to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.an, ptr %i.ao, align 8
  %i.ap = shl i64 %i.ak, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.aj, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = add i16 %i.aq, -2
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ar, ptr %i.as, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.ap, i64 noundef %i.h, i32 noundef 1) ; 3 uses
  %i.au = icmp sle i64 %i.at, %.1.i4
  tail call void @llvm.assume(i1 %i.au)
  %i.av = trunc i64 %i.at to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.av, ptr %i.aw, align 2
  %i.ax = lshr i64 %i.at, 1
  %i.ay = trunc i64 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = trunc nuw nsw i64 %.1.i4 to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.ba, ptr %i.bb, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %i.bc = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 1, i64 noundef %i.z) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = or i32 %i.bh, %i.be
  %.not143.i = icmp eq i32 %i.bi, 0
  %i.bj = load i16, ptr %4, align 8               ; 2 uses
  br i1 %.not143.i, label %bb.r, label %bb.m, !prof !85

bb.m:                                             ; preds = %bb.l
  %i.bk = sext i16 %i.bj to i64
  %i.bl = load i16, ptr %i.ae, align 4
  %i.bm = sext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.bp = load i16, ptr %i.bo, align 2            ; 2 uses
  %i.bq = icmp slt i16 %i.bp, 0
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.bs = load i16, ptr %i.br, align 2            ; 2 uses
  %i.bt = icmp slt i16 %i.bs, 0
  %i.bu = load i16, ptr %i.bn, align 8
  %spec.select.i = select i1 %i.bt, i16 %i.bu, i16 %i.bs
  %.0127.in.i = select i1 %i.bq, i16 %spec.select.i, i16 %i.bp
  %.0127.i = sext i16 %.0127.in.i to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.bw = and i32 %i.aa, 31
  %i.bx = zext nneg i32 %i.bw to i64
  %invariant.gep45 = getelementptr [256 x i8], ptr %i.bv, i64 %i.bx
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0128.i = phi i64 [ %i.bm, %bb.m ], [ %i.ck, %bb.q ] ; 2 uses
  %.0123.i = phi i64 [ %i.bk, %bb.m ], [ %i.cl, %bb.q ]
  %i.by = ashr i64 %.0128.i, 6
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1129.i = phi i64 [ %.0128.i, %bb.n ], [ %i.ck, %bb.p ] ; 3 uses
  %.1124.i = phi i64 [ %.0123.i, %bb.n ], [ %i.cl, %bb.p ] ; 2 uses
  %i.cb = and i64 %.1129.i, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.ca
  %.not149.i = icmp eq i64 %i.cd, 0
  br i1 %.not149.i, label %bb.p, label %.preheader8

.preheader8:                                      ; preds = %bb.o
  %i.ce = add i64 %.1124.i, %2                    ; 2 uses
  %gep46 = getelementptr i8, ptr %invariant.gep45, i64 %.1129.i
  %i.cf = load i16, ptr %gep46, align 2
  %i.cg = shl i64 %i.ce, 8
  %i.ch = ashr exact i64 %i.cg, 8
  %i.ci = and i64 %i.ch, %i.ce
  %i.cj = trunc i16 %i.cf to i8
  call void @cpu_stb_mmu(ptr noundef %0, i64 noundef %i.ci, i8 noundef zeroext %i.cj, i32 noundef 0, i64 noundef %i.z) #26
  br label %bb.p

bb.p:                                             ; preds = %.preheader8, %bb.o
  %i.ck = add i64 %.1129.i, 2                     ; 4 uses
  %i.cl = add i64 %.1124.i, 1                     ; 2 uses
  %i.cm = and i64 %i.ck, 63
  %.not150.i = icmp eq i64 %i.cm, 0
  br i1 %.not150.i, label %bb.q, label %bb.o, !llvm.loop !32

bb.q:                                             ; preds = %bb.p
  %.not151.i = icmp sgt i64 %i.ck, %.0127.i
  br i1 %.not151.i, label %sve_stN_r.exit, label %bb.n, !llvm.loop !33

bb.r:                                             ; preds = %bb.l
  %i.cn = load i16, ptr %i.ae, align 4            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cp = load i16, ptr %i.co, align 8            ; 2 uses
  %i.cq = sext i16 %i.cp to i64                   ; 2 uses
  %i.cr = load ptr, ptr %i.j, align 8
  %i.cs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.z, ptr %i.cs, align 8
  fence syncscope("singlethread") seq_cst
  %.not144.i19 = icmp sgt i16 %i.cn, %i.cp
  br i1 %.not144.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.ct = sext i16 %i.cn to i64
  %i.cu = sext i16 %i.bj to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.cw = and i32 %i.aa, 31
  %i.cx = zext nneg i32 %i.cw to i64
  %invariant.gep = getelementptr [256 x i8], ptr %i.cv, i64 %i.cx
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.v
  %.2125.i21 = phi i64 [ %i.cu, %.lr.ph ], [ %i.di, %bb.v ]
  %.2130.i20 = phi i64 [ %i.ct, %.lr.ph ], [ %i.dh, %bb.v ] ; 2 uses
  %i.cy = ashr i64 %.2130.i20, 6
  %i.cz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.3131.i = phi i64 [ %.2130.i20, %bb.s ], [ %i.dh, %bb.u ] ; 3 uses
  %.3126.i = phi i64 [ %.2125.i21, %bb.s ], [ %i.di, %bb.u ] ; 2 uses
  %i.db = and i64 %.3131.i, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.da
  %.not148.i = icmp eq i64 %i.dd, 0
  br i1 %.not148.i, label %bb.u, label %.preheader6

.preheader6:                                      ; preds = %bb.t
  %i.de = getelementptr inbounds i8, ptr %i.cr, i64 %.3126.i
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.3131.i
  %i.df = load i16, ptr %gep, align 2
  %i.dg = trunc i16 %i.df to i8
  store i8 %i.dg, ptr %i.de, align 1
  br label %bb.u

bb.u:                                             ; preds = %.preheader6, %bb.t
  %i.dh = add nsw i64 %.3131.i, 2                 ; 5 uses
  %i.di = add i64 %.3126.i, 1                     ; 2 uses
  %i.dj = icmp sle i64 %i.dh, %i.cq
  %i.dk = and i64 %i.dh, 63
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = and i1 %i.dj, %i.dl
  br i1 %i.dm, label %bb.t, label %bb.v, !llvm.loop !34

bb.v:                                             ; preds = %bb.u
  %.not144.i = icmp sgt i64 %i.dh, %i.cq
  br i1 %.not144.i, label %._crit_edge, label %bb.s, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.v, %bb.r
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cs, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.do = load i16, ptr %i.dn, align 4            ; 2 uses
  %i.dp = icmp sgt i16 %i.do, -1
  br i1 %i.dp, label %.loopexit5, label %bb.w, !prof !76

.loopexit5:                                       ; preds = %._crit_edge
  %i.dq = zext nneg i16 %i.do to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = sext i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.dv = add i64 %2, %i.dq                       ; 2 uses
  %invariant.gep23 = getelementptr i8, ptr %i.du, i64 %i.dt
  %i.dw = and i32 %i.aa, 31
  %i.dx = zext nneg i32 %i.dw to i64
  %gep24 = getelementptr [256 x i8], ptr %invariant.gep23, i64 %i.dx
  %i.dy = load i16, ptr %gep24, align 2
  %i.dz = shl i64 %i.dv, 8
  %i.ea = ashr exact i64 %i.dz, 8
  %i.eb = and i64 %i.ea, %i.dv
  %i.ec = trunc i16 %i.dy to i8
  call void @cpu_stb_mmu(ptr noundef %0, i64 noundef %i.eb, i8 noundef zeroext %i.ec, i32 noundef 0, i64 noundef %i.z) #26
  br label %bb.w

bb.w:                                             ; preds = %.loopexit5, %._crit_edge
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ee = load i16, ptr %i.ed, align 2            ; 2 uses
  %i.ef = icmp sgt i16 %i.ee, -1
  br i1 %i.ef, label %bb.x, label %sve_stN_r.exit, !prof !76

bb.x:                                             ; preds = %bb.w
  %i.eg = zext nneg i16 %i.ee to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = sext i16 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = sext i16 %i.el to i64
  %i.en = load ptr, ptr %i.bf, align 8            ; 3 uses
  store i64 %i.z, ptr %i.cs, align 8
  fence syncscope("singlethread") seq_cst
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ep = and i32 %i.aa, 31
  %i.eq = zext nneg i32 %i.ep to i64
  %invariant.gep47 = getelementptr [256 x i8], ptr %i.eo, i64 %i.eq ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %.unr-lcssa, %bb.x
  %.4132.i = phi i64 [ %i.ej, %bb.x ], [ %.lcssa54, %.unr-lcssa ] ; 6 uses
  %.4.i = phi i64 [ %i.eg, %bb.x ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.er = ashr i64 %.4132.i, 6
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8            ; 3 uses
  %i.eu = trunc i64 %.4132.i to i6
  %i.ev = sub i6 -2, %i.eu                        ; 2 uses
  %i.ew = and i6 %i.ev, 2
  %lcmp.mod.not.not = icmp eq i6 %i.ew, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.y
  %i.ex = and i64 %.4132.i, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ey, %i.et
  %.not145.i.prol = icmp eq i64 %i.ez, 0
  br i1 %.not145.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.fa = getelementptr inbounds i8, ptr %i.en, i64 %.4.i
  %gep48.prol = getelementptr i8, ptr %invariant.gep47, i64 %.4132.i
  %i.fb = load i16, ptr %gep48.prol, align 2
  %i.fc = trunc i16 %i.fb to i8
  store i8 %i.fc, ptr %i.fa, align 1
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.fd = add i64 %.4132.i, 2                     ; 2 uses
  %i.fe = add i64 %.4.i, 1                        ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.y
  %.lcssa54.unr = phi i64 [ poison, %bb.y ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.y ], [ %i.fe, %.prol.loopexit.unr-lcssa ]
  %.5133.i.unr = phi i64 [ %.4132.i, %bb.y ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %.5.i.unr = phi i64 [ %.4.i, %bb.y ], [ %i.fe, %.prol.loopexit.unr-lcssa ]
  %i.ff = icmp ult i6 %i.ev, 2
  br i1 %i.ff, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.aa
  %.5133.i = phi i64 [ %i.fu, %bb.aa ], [ %.5133.i.unr, %.prol.loopexit ] ; 4 uses
  %.5.i = phi i64 [ %i.fv, %bb.aa ], [ %.5.i.unr, %.prol.loopexit ] ; 3 uses
  %i.fg = and i64 %.5133.i, 63
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = and i64 %i.fh, %i.et
  %.not145.i = icmp eq i64 %i.fi, 0
  br i1 %.not145.i, label %bb.z, label %.preheader

.preheader:                                       ; preds = %.new
  %i.fj = getelementptr inbounds i8, ptr %i.en, i64 %.5.i
  %gep48 = getelementptr i8, ptr %invariant.gep47, i64 %.5133.i
  %i.fk = load i16, ptr %gep48, align 2
  %i.fl = trunc i16 %i.fk to i8
  store i8 %i.fl, ptr %i.fj, align 1
  br label %bb.z

bb.z:                                             ; preds = %.preheader, %.new
  %i.fm = add i64 %.5133.i, 2                     ; 2 uses
  %i.fn = and i64 %i.fm, 63
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = and i64 %i.fo, %i.et
  %.not145.i.1 = icmp eq i64 %i.fp, 0
  br i1 %.not145.i.1, label %bb.aa, label %.preheader.1

.preheader.1:                                     ; preds = %bb.z
  %i.fq = getelementptr i8, ptr %i.en, i64 %.5.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 1
  %gep48.1 = getelementptr i8, ptr %invariant.gep47, i64 %i.fm
  %i.fs = load i16, ptr %gep48.1, align 2
  %i.ft = trunc i16 %i.fs to i8
  store i8 %i.ft, ptr %i.fr, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader.1, %bb.z
  %i.fu = add i64 %.5133.i, 4                     ; 3 uses
  %i.fv = add i64 %.5.i, 2                        ; 2 uses
  %i.fw = and i64 %i.fu, 63
  %.not146.i.1 = icmp eq i64 %i.fw, 0
  br i1 %.not146.i.1, label %.unr-lcssa, label %.new, !llvm.loop !36

.unr-lcssa:                                       ; preds = %bb.aa, %.prol.loopexit
  %.lcssa54 = phi i64 [ %.lcssa54.unr, %.prol.loopexit ], [ %i.fu, %bb.aa ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.fv, %bb.aa ]
  %.not147.i = icmp sgt i64 %.lcssa54, %i.em
  br i1 %.not147.i, label %bb.ab, label %bb.y, !llvm.loop !37

bb.ab:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cs, align 8
  br label %sve_stN_r.exit

sve_stN_r.exit:                                   ; preds = %bb.q, %bb.f, %bb.w, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_st1bs_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 26 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i4, %bb.e ]
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i3, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 4 uses
  %.1.i4 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = ashr i32 %i.a, 10                       ; 4 uses
  %i.ab = icmp sgt i64 %.178.i, -1
  br i1 %i.ab, label %bb.g, label %sve_stN_r.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp samesign ult i64 %.1.i4, %i.h
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc i64 %.178.i to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i16 %i.ad, ptr %i.ae, align 4
  %i.af = lshr i64 %.178.i, 2
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %4, align 8
  %i.ah = lshr i64 %.1.i4, 2
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.aj = or i64 %i.ai, %2                        ; 2 uses
  %i.ak = sub i64 0, %i.aj                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ah, %i.ak
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.al = trunc nuw nsw i64 %.1.i4 to i16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.al, ptr %i.am, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.an = trunc i64 %i.ak to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.an, ptr %i.ao, align 8
  %i.ap = shl i64 %i.ak, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.aj, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = add i16 %i.aq, -4
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ar, ptr %i.as, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.ap, i64 noundef %i.h, i32 noundef 2) ; 3 uses
  %i.au = icmp sle i64 %i.at, %.1.i4
  tail call void @llvm.assume(i1 %i.au)
  %i.av = trunc i64 %i.at to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.av, ptr %i.aw, align 2
  %i.ax = lshr i64 %i.at, 2
  %i.ay = trunc i64 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = trunc nuw nsw i64 %.1.i4 to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.ba, ptr %i.bb, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %i.bc = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 1, i64 noundef %i.z) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = or i32 %i.bh, %i.be
  %.not143.i = icmp eq i32 %i.bi, 0
  %i.bj = load i16, ptr %4, align 8               ; 2 uses
  br i1 %.not143.i, label %bb.r, label %bb.m, !prof !85

bb.m:                                             ; preds = %bb.l
  %i.bk = sext i16 %i.bj to i64
  %i.bl = load i16, ptr %i.ae, align 4
  %i.bm = sext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.bp = load i16, ptr %i.bo, align 2            ; 2 uses
  %i.bq = icmp slt i16 %i.bp, 0
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.bs = load i16, ptr %i.br, align 2            ; 2 uses
  %i.bt = icmp slt i16 %i.bs, 0
  %i.bu = load i16, ptr %i.bn, align 8
  %spec.select.i = select i1 %i.bt, i16 %i.bu, i16 %i.bs
  %.0127.in.i = select i1 %i.bq, i16 %spec.select.i, i16 %i.bp
  %.0127.i = sext i16 %.0127.in.i to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.bw = and i32 %i.aa, 31
  %i.bx = zext nneg i32 %i.bw to i64
  %invariant.gep45 = getelementptr [256 x i8], ptr %i.bv, i64 %i.bx
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0128.i = phi i64 [ %i.bm, %bb.m ], [ %i.ck, %bb.q ] ; 2 uses
  %.0123.i = phi i64 [ %i.bk, %bb.m ], [ %i.cl, %bb.q ]
  %i.by = ashr i64 %.0128.i, 6
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1129.i = phi i64 [ %.0128.i, %bb.n ], [ %i.ck, %bb.p ] ; 3 uses
  %.1124.i = phi i64 [ %.0123.i, %bb.n ], [ %i.cl, %bb.p ] ; 2 uses
  %i.cb = and i64 %.1129.i, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.ca
  %.not149.i = icmp eq i64 %i.cd, 0
  br i1 %.not149.i, label %bb.p, label %.preheader8

.preheader8:                                      ; preds = %bb.o
  %i.ce = add i64 %.1124.i, %2                    ; 2 uses
  %gep46 = getelementptr i8, ptr %invariant.gep45, i64 %.1129.i
  %i.cf = load i32, ptr %gep46, align 4
  %i.cg = shl i64 %i.ce, 8
  %i.ch = ashr exact i64 %i.cg, 8
  %i.ci = and i64 %i.ch, %i.ce
  %i.cj = trunc i32 %i.cf to i8
  call void @cpu_stb_mmu(ptr noundef %0, i64 noundef %i.ci, i8 noundef zeroext %i.cj, i32 noundef 0, i64 noundef %i.z) #26
  br label %bb.p

bb.p:                                             ; preds = %.preheader8, %bb.o
  %i.ck = add i64 %.1129.i, 4                     ; 4 uses
  %i.cl = add i64 %.1124.i, 1                     ; 2 uses
  %i.cm = and i64 %i.ck, 63
  %.not150.i = icmp eq i64 %i.cm, 0
  br i1 %.not150.i, label %bb.q, label %bb.o, !llvm.loop !32

bb.q:                                             ; preds = %bb.p
  %.not151.i = icmp sgt i64 %i.ck, %.0127.i
  br i1 %.not151.i, label %sve_stN_r.exit, label %bb.n, !llvm.loop !33

bb.r:                                             ; preds = %bb.l
  %i.cn = load i16, ptr %i.ae, align 4            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cp = load i16, ptr %i.co, align 8            ; 2 uses
  %i.cq = sext i16 %i.cp to i64                   ; 2 uses
  %i.cr = load ptr, ptr %i.j, align 8
  %i.cs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.z, ptr %i.cs, align 8
  fence syncscope("singlethread") seq_cst
  %.not144.i19 = icmp sgt i16 %i.cn, %i.cp
  br i1 %.not144.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.ct = sext i16 %i.cn to i64
  %i.cu = sext i16 %i.bj to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.cw = and i32 %i.aa, 31
  %i.cx = zext nneg i32 %i.cw to i64
  %invariant.gep = getelementptr [256 x i8], ptr %i.cv, i64 %i.cx
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.v
  %.2125.i21 = phi i64 [ %i.cu, %.lr.ph ], [ %i.di, %bb.v ]
  %.2130.i20 = phi i64 [ %i.ct, %.lr.ph ], [ %i.dh, %bb.v ] ; 2 uses
  %i.cy = ashr i64 %.2130.i20, 6
  %i.cz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.3131.i = phi i64 [ %.2130.i20, %bb.s ], [ %i.dh, %bb.u ] ; 3 uses
  %.3126.i = phi i64 [ %.2125.i21, %bb.s ], [ %i.di, %bb.u ] ; 2 uses
  %i.db = and i64 %.3131.i, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.da
  %.not148.i = icmp eq i64 %i.dd, 0
  br i1 %.not148.i, label %bb.u, label %.preheader6

.preheader6:                                      ; preds = %bb.t
  %i.de = getelementptr inbounds i8, ptr %i.cr, i64 %.3126.i
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.3131.i
  %i.df = load i32, ptr %gep, align 4
  %i.dg = trunc i32 %i.df to i8
  store i8 %i.dg, ptr %i.de, align 1
  br label %bb.u

bb.u:                                             ; preds = %.preheader6, %bb.t
  %i.dh = add nsw i64 %.3131.i, 4                 ; 5 uses
  %i.di = add i64 %.3126.i, 1                     ; 2 uses
  %i.dj = icmp sle i64 %i.dh, %i.cq
  %i.dk = and i64 %i.dh, 63
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = and i1 %i.dj, %i.dl
  br i1 %i.dm, label %bb.t, label %bb.v, !llvm.loop !34

bb.v:                                             ; preds = %bb.u
  %.not144.i = icmp sgt i64 %i.dh, %i.cq
  br i1 %.not144.i, label %._crit_edge, label %bb.s, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.v, %bb.r
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cs, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.do = load i16, ptr %i.dn, align 4            ; 2 uses
  %i.dp = icmp sgt i16 %i.do, -1
  br i1 %i.dp, label %.loopexit5, label %bb.w, !prof !76

.loopexit5:                                       ; preds = %._crit_edge
  %i.dq = zext nneg i16 %i.do to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = sext i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.dv = add i64 %2, %i.dq                       ; 2 uses
  %invariant.gep23 = getelementptr i8, ptr %i.du, i64 %i.dt
  %i.dw = and i32 %i.aa, 31
  %i.dx = zext nneg i32 %i.dw to i64
  %gep24 = getelementptr [256 x i8], ptr %invariant.gep23, i64 %i.dx
  %i.dy = load i32, ptr %gep24, align 4
  %i.dz = shl i64 %i.dv, 8
  %i.ea = ashr exact i64 %i.dz, 8
  %i.eb = and i64 %i.ea, %i.dv
  %i.ec = trunc i32 %i.dy to i8
  call void @cpu_stb_mmu(ptr noundef %0, i64 noundef %i.eb, i8 noundef zeroext %i.ec, i32 noundef 0, i64 noundef %i.z) #26
  br label %bb.w

bb.w:                                             ; preds = %.loopexit5, %._crit_edge
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ee = load i16, ptr %i.ed, align 2            ; 2 uses
  %i.ef = icmp sgt i16 %i.ee, -1
  br i1 %i.ef, label %bb.x, label %sve_stN_r.exit, !prof !76

bb.x:                                             ; preds = %bb.w
  %i.eg = zext nneg i16 %i.ee to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = sext i16 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = sext i16 %i.el to i64
  %i.en = load ptr, ptr %i.bf, align 8            ; 3 uses
  store i64 %i.z, ptr %i.cs, align 8
  fence syncscope("singlethread") seq_cst
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ep = and i32 %i.aa, 31
  %i.eq = zext nneg i32 %i.ep to i64
  %invariant.gep47 = getelementptr [256 x i8], ptr %i.eo, i64 %i.eq ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %.unr-lcssa, %bb.x
  %.4132.i = phi i64 [ %i.ej, %bb.x ], [ %.lcssa54, %.unr-lcssa ] ; 6 uses
  %.4.i = phi i64 [ %i.eg, %bb.x ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.er = ashr i64 %.4132.i, 6
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8            ; 3 uses
  %i.eu = trunc i64 %.4132.i to i6
  %i.ev = sub i6 -4, %i.eu                        ; 2 uses
  %i.ew = and i6 %i.ev, 4
  %lcmp.mod.not.not = icmp eq i6 %i.ew, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.y
  %i.ex = and i64 %.4132.i, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ey, %i.et
  %.not145.i.prol = icmp eq i64 %i.ez, 0
  br i1 %.not145.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.fa = getelementptr inbounds i8, ptr %i.en, i64 %.4.i
  %gep48.prol = getelementptr i8, ptr %invariant.gep47, i64 %.4132.i
  %i.fb = load i32, ptr %gep48.prol, align 4
  %i.fc = trunc i32 %i.fb to i8
  store i8 %i.fc, ptr %i.fa, align 1
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.fd = add i64 %.4132.i, 4                     ; 2 uses
  %i.fe = add i64 %.4.i, 1                        ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.y
  %.lcssa54.unr = phi i64 [ poison, %bb.y ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.y ], [ %i.fe, %.prol.loopexit.unr-lcssa ]
  %.5133.i.unr = phi i64 [ %.4132.i, %bb.y ], [ %i.fd, %.prol.loopexit.unr-lcssa ]
  %.5.i.unr = phi i64 [ %.4.i, %bb.y ], [ %i.fe, %.prol.loopexit.unr-lcssa ]
  %i.ff = icmp ult i6 %i.ev, 4
  br i1 %i.ff, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.aa
  %.5133.i = phi i64 [ %i.fu, %bb.aa ], [ %.5133.i.unr, %.prol.loopexit ] ; 4 uses
  %.5.i = phi i64 [ %i.fv, %bb.aa ], [ %.5.i.unr, %.prol.loopexit ] ; 3 uses
  %i.fg = and i64 %.5133.i, 63
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = and i64 %i.fh, %i.et
  %.not145.i = icmp eq i64 %i.fi, 0
  br i1 %.not145.i, label %bb.z, label %.preheader

.preheader:                                       ; preds = %.new
  %i.fj = getelementptr inbounds i8, ptr %i.en, i64 %.5.i
  %gep48 = getelementptr i8, ptr %invariant.gep47, i64 %.5133.i
  %i.fk = load i32, ptr %gep48, align 4
  %i.fl = trunc i32 %i.fk to i8
  store i8 %i.fl, ptr %i.fj, align 1
  br label %bb.z

bb.z:                                             ; preds = %.preheader, %.new
  %i.fm = add i64 %.5133.i, 4                     ; 2 uses
  %i.fn = and i64 %i.fm, 63
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = and i64 %i.fo, %i.et
  %.not145.i.1 = icmp eq i64 %i.fp, 0
  br i1 %.not145.i.1, label %bb.aa, label %.preheader.1

.preheader.1:                                     ; preds = %bb.z
  %i.fq = getelementptr i8, ptr %i.en, i64 %.5.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 1
  %gep48.1 = getelementptr i8, ptr %invariant.gep47, i64 %i.fm
  %i.fs = load i32, ptr %gep48.1, align 4
  %i.ft = trunc i32 %i.fs to i8
  store i8 %i.ft, ptr %i.fr, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader.1, %bb.z
  %i.fu = add i64 %.5133.i, 8                     ; 3 uses
  %i.fv = add i64 %.5.i, 2                        ; 2 uses
  %i.fw = and i64 %i.fu, 63
  %.not146.i.1 = icmp eq i64 %i.fw, 0
  br i1 %.not146.i.1, label %.unr-lcssa, label %.new, !llvm.loop !36

.unr-lcssa:                                       ; preds = %bb.aa, %.prol.loopexit
  %.lcssa54 = phi i64 [ %.lcssa54.unr, %.prol.loopexit ], [ %i.fu, %bb.aa ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.fv, %bb.aa ]
  %.not147.i = icmp sgt i64 %.lcssa54, %i.em
  br i1 %.not147.i, label %bb.ab, label %bb.y, !llvm.loop !37

bb.ab:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cs, align 8
  br label %sve_stN_r.exit

sve_stN_r.exit:                                   ; preds = %bb.q, %bb.f, %bb.w, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_st1bd_r(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 26 uses
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %i.a, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.h = zext nneg i32 %.v.i to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64)
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077.i = phi i64 [ -1, %bb.a ], [ %.178.i, %bb.e ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.a ], [ %.1.i4, %bb.e ]
  %.0.i3 = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ]  ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, %i.i                       ; 3 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %.0.i3, 6                ; 2 uses
  %i.r = or disjoint i64 %i.q, 63
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.t = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i64 %.077.i, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.p, i1 true)
  %i.w = or disjoint i64 %i.v, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.178.i = phi i64 [ %i.w, %bb.d ], [ %.077.i, %bb.c ], [ %.077.i, %bb.b ] ; 4 uses
  %.1.i4 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.c ], [ %.076.i, %bb.b ] ; 6 uses
  %i.x = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.m
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.y = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.z = ptrtoint ptr %i.y to i64                 ; 5 uses
  %i.aa = ashr i32 %i.a, 10                       ; 4 uses
  %i.ab = icmp sgt i64 %.178.i, -1
  br i1 %i.ab, label %bb.g, label %sve_stN_r.exit, !prof !85

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp samesign ult i64 %.1.i4, %i.h
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc i64 %.178.i to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i16 %i.ad, ptr %i.ae, align 4
  %i.af = lshr i64 %.178.i, 3
  %i.ag = trunc i64 %i.af to i16
  store i16 %i.ag, ptr %4, align 8
  %i.ah = lshr i64 %.1.i4, 3
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.aj = or i64 %i.ai, %2                        ; 2 uses
  %i.ak = sub i64 0, %i.aj                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ah, %i.ak
  br i1 %.not83.i.not, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %bb.g
  %i.al = trunc nuw nsw i64 %.1.i4 to i16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.al, ptr %i.am, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.an = trunc i64 %i.ak to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.an, ptr %i.ao, align 8
  %i.ap = shl i64 %i.ak, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.aj, 0
  br i1 %.not84.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = add i16 %i.aq, -8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ar, ptr %i.as, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.ap, i64 noundef %i.h, i32 noundef 3) ; 3 uses
  %i.au = icmp sle i64 %i.at, %.1.i4
  tail call void @llvm.assume(i1 %i.au)
  %i.av = trunc i64 %i.at to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.av, ptr %i.aw, align 2
  %i.ax = lshr i64 %i.at, 3
  %i.ay = trunc i64 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = trunc nuw nsw i64 %.1.i4 to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.ba, ptr %i.bb, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %i.bc = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 1, i64 noundef %i.z) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = or i32 %i.bh, %i.be
  %.not143.i = icmp eq i32 %i.bi, 0
  %i.bj = load i16, ptr %4, align 8               ; 2 uses
  br i1 %.not143.i, label %bb.r, label %bb.m, !prof !85

bb.m:                                             ; preds = %bb.l
  %i.bk = sext i16 %i.bj to i64
  %i.bl = load i16, ptr %i.ae, align 4
  %i.bm = sext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.bp = load i16, ptr %i.bo, align 2            ; 2 uses
  %i.bq = icmp slt i16 %i.bp, 0
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.bs = load i16, ptr %i.br, align 2            ; 2 uses
  %i.bt = icmp slt i16 %i.bs, 0
  %i.bu = load i16, ptr %i.bn, align 8
  %spec.select.i = select i1 %i.bt, i16 %i.bu, i16 %i.bs
  %.0127.in.i = select i1 %i.bq, i16 %spec.select.i, i16 %i.bp
  %.0127.i = sext i16 %.0127.in.i to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.bw = and i32 %i.aa, 31
  %i.bx = zext nneg i32 %i.bw to i64
  %invariant.gep45 = getelementptr [256 x i8], ptr %i.bv, i64 %i.bx
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.0128.i = phi i64 [ %i.bm, %bb.m ], [ %i.ck, %bb.q ] ; 2 uses
  %.0123.i = phi i64 [ %i.bk, %bb.m ], [ %i.cl, %bb.q ]
  %i.by = ashr i64 %.0128.i, 6
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.1129.i = phi i64 [ %.0128.i, %bb.n ], [ %i.ck, %bb.p ] ; 3 uses
  %.1124.i = phi i64 [ %.0123.i, %bb.n ], [ %i.cl, %bb.p ] ; 2 uses
  %i.cb = and i64 %.1129.i, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.ca
  %.not149.i = icmp eq i64 %i.cd, 0
  br i1 %.not149.i, label %bb.p, label %.preheader8

.preheader8:                                      ; preds = %bb.o
  %i.ce = add i64 %.1124.i, %2                    ; 2 uses
  %gep46 = getelementptr i8, ptr %invariant.gep45, i64 %.1129.i
  %i.cf = load i64, ptr %gep46, align 8
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = shl i64 %i.ce, 8
  %i.ci = ashr exact i64 %i.ch, 8
  %i.cj = and i64 %i.ci, %i.ce
  call void @cpu_stb_mmu(ptr noundef %0, i64 noundef %i.cj, i8 noundef zeroext %i.cg, i32 noundef 0, i64 noundef %i.z) #26
  br label %bb.p

bb.p:                                             ; preds = %.preheader8, %bb.o
  %i.ck = add i64 %.1129.i, 8                     ; 4 uses
  %i.cl = add i64 %.1124.i, 1                     ; 2 uses
  %i.cm = and i64 %i.ck, 63
  %.not150.i = icmp eq i64 %i.cm, 0
  br i1 %.not150.i, label %bb.q, label %bb.o, !llvm.loop !32

bb.q:                                             ; preds = %bb.p
  %.not151.i = icmp sgt i64 %i.ck, %.0127.i
  br i1 %.not151.i, label %sve_stN_r.exit, label %bb.n, !llvm.loop !33

bb.r:                                             ; preds = %bb.l
  %i.cn = load i16, ptr %i.ae, align 4            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cp = load i16, ptr %i.co, align 8            ; 2 uses
  %i.cq = sext i16 %i.cp to i64                   ; 2 uses
  %i.cr = load ptr, ptr %i.j, align 8
  %i.cs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @helper_retaddr) ; 4 uses
  store i64 %i.z, ptr %i.cs, align 8
  fence syncscope("singlethread") seq_cst
  %.not144.i19 = icmp sgt i16 %i.cn, %i.cp
  br i1 %.not144.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.ct = sext i16 %i.cn to i64
  %i.cu = sext i16 %i.bj to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.cw = and i32 %i.aa, 31
  %i.cx = zext nneg i32 %i.cw to i64
  %invariant.gep = getelementptr [256 x i8], ptr %i.cv, i64 %i.cx
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.v
  %.2125.i21 = phi i64 [ %i.cu, %.lr.ph ], [ %i.di, %bb.v ]
  %.2130.i20 = phi i64 [ %i.ct, %.lr.ph ], [ %i.dh, %bb.v ] ; 2 uses
  %i.cy = ashr i64 %.2130.i20, 6
  %i.cz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.3131.i = phi i64 [ %.2130.i20, %bb.s ], [ %i.dh, %bb.u ] ; 3 uses
  %.3126.i = phi i64 [ %.2125.i21, %bb.s ], [ %i.di, %bb.u ] ; 2 uses
  %i.db = and i64 %.3131.i, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.da
  %.not148.i = icmp eq i64 %i.dd, 0
  br i1 %.not148.i, label %bb.u, label %.preheader6

.preheader6:                                      ; preds = %bb.t
  %i.de = getelementptr inbounds i8, ptr %i.cr, i64 %.3126.i
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.3131.i
  %i.df = load i64, ptr %gep, align 8
  %i.dg = trunc i64 %i.df to i8
  store i8 %i.dg, ptr %i.de, align 1
  br label %bb.u

bb.u:                                             ; preds = %.preheader6, %bb.t
  %i.dh = add nsw i64 %.3131.i, 8                 ; 5 uses
  %i.di = add i64 %.3126.i, 1                     ; 2 uses
  %i.dj = icmp sle i64 %i.dh, %i.cq
  %i.dk = and i64 %i.dh, 63
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = and i1 %i.dj, %i.dl
  br i1 %i.dm, label %bb.t, label %bb.v, !llvm.loop !34

bb.v:                                             ; preds = %bb.u
  %.not144.i = icmp sgt i64 %i.dh, %i.cq
  br i1 %.not144.i, label %._crit_edge, label %bb.s, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.v, %bb.r
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.cs, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.do = load i16, ptr %i.dn, align 4            ; 2 uses
  %i.dp = icmp sgt i16 %i.do, -1
  br i1 %i.dp, label %.loopexit5, label %bb.w, !prof !76

.loopexit5:                                       ; preds = %._crit_edge
  %i.dq = zext nneg i16 %i.do to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = sext i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.dv = add i64 %2, %i.dq                       ; 2 uses
  %invariant.gep23 = getelementptr i8, ptr %i.du, i64 %i.dt
  %i.dw = and i32 %i.aa, 31
end_hunk_15
begin_hunk_16_@helper_sve_st1dq_be_r:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = sext i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = sext i16 %i.cv to i64
  %i.cx = load ptr, ptr %i.p, align 8             ; 4 uses
  store i64 %i.c, ptr %i.bd, align 8
  fence syncscope("singlethread") seq_cst
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.cz = and i32 %i.d, 31
  %i.da = zext nneg i32 %i.cz to i64
  %invariant.gep43 = getelementptr [256 x i8], ptr %i.cy, i64 %i.da ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %bb.n
  %.4132.i = phi i64 [ %i.ct, %bb.n ], [ %.lcssa50, %bb.w ] ; 7 uses
  %.4.i = phi i64 [ %i.cq, %bb.n ], [ %.lcssa, %bb.w ] ; 5 uses
  %i.db = ashr i64 %.4132.i, 6
  %i.dc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8            ; 4 uses
  %i.de = and i64 %.4132.i, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not145.i = icmp eq i64 %i.dg, 0
  br i1 %.not145.i, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.dh = getelementptr inbounds i8, ptr %i.cx, i64 %.4.i
  %gep44 = getelementptr i8, ptr %invariant.gep43, i64 %.4132.i
  %i.di = load i64, ptr %gep44, align 8
  %i.dj = call i64 @llvm.bswap.i64(i64 %i.di)
  store i64 %i.dj, ptr %i.dh, align 1
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.o
  %i.dk = add i64 %.4132.i, 16                    ; 4 uses
  %i.dl = add i64 %.4.i, 8                        ; 2 uses
  %i.dm = and i64 %i.dk, 63
  %.not146.i = icmp eq i64 %i.dm, 0
  br i1 %.not146.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = and i64 %i.dk, 63
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = and i64 %i.do, %i.dd
  %.not145.i.1 = icmp eq i64 %i.dp, 0
  br i1 %.not145.i.1, label %bb.r, label %.preheader.1

.preheader.1:                                     ; preds = %bb.q
  %i.dq = getelementptr inbounds i8, ptr %i.cx, i64 %i.dl
  %gep44.1 = getelementptr i8, ptr %invariant.gep43, i64 %i.dk
  %i.dr = load i64, ptr %gep44.1, align 8
  %i.ds = call i64 @llvm.bswap.i64(i64 %i.dr)
  store i64 %i.ds, ptr %i.dq, align 1
  br label %bb.r

bb.r:                                             ; preds = %.preheader.1, %bb.q
  %i.dt = add i64 %.4132.i, 32                    ; 4 uses
  %i.du = add i64 %.4.i, 16                       ; 2 uses
  %i.dv = and i64 %i.dt, 63
  %.not146.i.1 = icmp eq i64 %i.dv, 0
  br i1 %.not146.i.1, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = and i64 %i.dt, 63
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = and i64 %i.dx, %i.dd
  %.not145.i.2 = icmp eq i64 %i.dy, 0
  br i1 %.not145.i.2, label %bb.t, label %.preheader.2

.preheader.2:                                     ; preds = %bb.s
  %i.dz = getelementptr inbounds i8, ptr %i.cx, i64 %i.du
  %gep44.2 = getelementptr i8, ptr %invariant.gep43, i64 %i.dt
  %i.ea = load i64, ptr %gep44.2, align 8
  %i.eb = call i64 @llvm.bswap.i64(i64 %i.ea)
  store i64 %i.eb, ptr %i.dz, align 1
  br label %bb.t

bb.t:                                             ; preds = %.preheader.2, %bb.s
  %i.ec = add i64 %.4132.i, 48                    ; 4 uses
  %i.ed = add i64 %.4.i, 24                       ; 2 uses
  %i.ee = and i64 %i.ec, 63
  %.not146.i.2 = icmp eq i64 %i.ee, 0
  br i1 %.not146.i.2, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ef = and i64 %i.ec, 63
  %i.eg = shl nuw i64 1, %i.ef
  %i.eh = and i64 %i.eg, %i.dd
  %.not145.i.3 = icmp eq i64 %i.eh, 0
  br i1 %.not145.i.3, label %bb.v, label %.preheader.3

.preheader.3:                                     ; preds = %bb.u
  %i.ei = getelementptr inbounds i8, ptr %i.cx, i64 %i.ed
  %gep44.3 = getelementptr i8, ptr %invariant.gep43, i64 %i.ec
  %i.ej = load i64, ptr %gep44.3, align 8
  %i.ek = call i64 @llvm.bswap.i64(i64 %i.ej)
  store i64 %i.ek, ptr %i.ei, align 1
  br label %bb.v

bb.v:                                             ; preds = %.preheader.3, %bb.u
  %i.el = add i64 %.4132.i, 64
  %i.em = add i64 %.4.i, 32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.r, %bb.p
  %.lcssa50 = phi i64 [ %i.dk, %bb.p ], [ %i.dt, %bb.r ], [ %i.ec, %bb.t ], [ %i.el, %bb.v ] ; 2 uses
  %.lcssa = phi i64 [ %i.dl, %bb.p ], [ %i.du, %bb.r ], [ %i.ed, %bb.t ], [ %i.em, %bb.v ]
  %.not147.i = icmp sgt i64 %.lcssa50, %i.cw
  br i1 %.not147.i, label %bb.x, label %bb.o, !llvm.loop !37

bb.x:                                             ; preds = %bb.w
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.bd, align 8
  br label %sve_stN_r.exit

sve_stN_r.exit:                                   ; preds = %bb.g, %bb.a, %bb.m, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_st1bb_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 33 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]   ; 3 uses
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr @pred_esz_masks, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 3 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10                       ; 4 uses
  %i.ar = icmp sgt i64 %.178.i, -1
  br i1 %i.ar, label %bb.j, label %sve_stN_r_mte.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.as = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.as)
  %i.at = trunc i64 %.178.i to i16                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i16 %i.at, ptr %i.au, align 4
  store i16 %i.at, ptr %4, align 8
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.aw = or i64 %i.av, %2                        ; 3 uses
  %i.ax = sub i64 0, %i.aw                        ; 3 uses
  %.not83.i.not = icmp slt i64 %.1.i, %i.ax
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.ay = trunc nuw nsw i64 %.1.i to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.ay, ptr %i.az, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ba = trunc i64 %i.ax to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.ba, ptr %i.bb, align 8
  %.not84.i = icmp eq i64 %i.aw, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = trunc i64 %i.aw to i16
  %i.bd = xor i16 %i.bc, -1
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bd, ptr %i.be, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bf = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.ax, i64 noundef %i.z, i32 noundef 0) ; 2 uses
  %i.bg = icmp sle i64 %i.bf, %.1.i
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = trunc i64 %i.bf to i16                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bh, ptr %i.bj, align 2
  %i.bk = trunc nuw nsw i64 %.1.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bk, ptr %i.bl, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bm = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 1, i64 noundef %i.b) ; 0 uses
  %.not.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i, label %sve_cont_ldst_mte_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bo = load i8, ptr %i.bn, align 4, !range !88, !noundef !89
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.q, label %.loopexit55.i

bb.q:                                             ; preds = %bb.p
  %i.bq = load i16, ptr %i.au, align 4
  %i.br = sext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.bt = load i16, ptr %i.bs, align 2            ; 2 uses
  %i.bu = icmp slt i16 %i.bt, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = load i16, ptr %i.bv, align 8
  %.0.in.i = select i1 %i.bu, i16 %i.bw, i16 %i.bt
  %.0.i4 = sext i16 %.0.in.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.042.i = phi i64 [ %i.br, %bb.q ], [ %i.ce, %bb.v ] ; 2 uses
  %i.bx = ashr i64 %.042.i, 6
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.1.i5 = phi i64 [ %.042.i, %bb.r ], [ %i.ce, %bb.u ] ; 3 uses
  %i.ca = and i64 %.1.i5, 63
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = and i64 %i.cb, %i.bz
  %.not.i6 = icmp eq i64 %i.cc, 0
  br i1 %.not.i6, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ce = add nsw i64 %.1.i5, 1                   ; 3 uses
  %i.cf = icmp slt i64 %.1.i5, %.0.i4             ; 2 uses
  %i.cg = and i64 %i.ce, 63
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = and i1 %i.cf, %i.ch
  br i1 %i.ci, label %bb.s, label %bb.v, !llvm.loop !25

bb.v:                                             ; preds = %bb.u
  br i1 %i.cf, label %bb.r, label %.loopexit55.i, !llvm.loop !26

.loopexit55.i:                                    ; preds = %bb.v, %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = icmp sgt i16 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.cn = load i8, ptr %i.cm, align 4, !range !88
  %i.co = trunc nuw i8 %i.cn to i1
  %or.cond = select i1 %i.cl, i1 %i.co, i1 false
  br i1 %or.cond, label %bb.w, label %sve_cont_ldst_mte_check.exit

bb.w:                                             ; preds = %.loopexit55.i
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = sext i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = sext i16 %i.ct to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %.2.i = phi i64 [ %i.cr, %bb.w ], [ %i.dc, %bb.ab ] ; 2 uses
  %i.cv = ashr i64 %.2.i, 6
  %i.cw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.3.i = phi i64 [ %.2.i, %bb.x ], [ %i.dc, %bb.aa ] ; 2 uses
  %i.cy = and i64 %.3.i, 63
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = and i64 %i.cz, %i.cx
  %.not52.i = icmp eq i64 %i.da, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dc = add i64 %.3.i, 1                        ; 4 uses
  %i.dd = and i64 %i.dc, 63
  %.not53.i = icmp eq i64 %i.dd, 0
  br i1 %.not53.i, label %bb.ab, label %bb.y, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp sgt i64 %i.dc, %i.cu
  br i1 %.not54.i, label %sve_cont_ldst_mte_check.exit, label %bb.x, !llvm.loop !28

sve_cont_ldst_mte_check.exit:                     ; preds = %bb.ab, %.loopexit55.i, %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = or i32 %i.di, %i.df
  %.not143.i.i = icmp eq i32 %i.dj, 0
  %i.dk = load i16, ptr %4, align 8               ; 2 uses
  br i1 %.not143.i.i, label %bb.ah, label %bb.ac, !prof !85

bb.ac:                                            ; preds = %sve_cont_ldst_mte_check.exit
  %i.dl = sext i16 %i.dk to i64
  %i.dm = load i16, ptr %i.au, align 4
  %i.dn = sext i16 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.dq = load i16, ptr %i.dp, align 2            ; 2 uses
  %i.dr = icmp slt i16 %i.dq, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dt = load i16, ptr %i.ds, align 2            ; 2 uses
  %i.du = icmp slt i16 %i.dt, 0
  %i.dv = load i16, ptr %i.do, align 8
  %spec.select.i.i = select i1 %i.du, i16 %i.dv, i16 %i.dt
  %.0127.in.i.i = select i1 %i.dr, i16 %spec.select.i.i, i16 %i.dq
  %.0127.i.i = sext i16 %.0127.in.i.i to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.dx = and i32 %i.aq, 31
  %i.dy = zext nneg i32 %i.dx to i64
  %invariant.gep64 = getelementptr [256 x i8], ptr %i.dw, i64 %i.dy
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %bb.ac
  %.0128.i.i = phi i64 [ %i.dn, %bb.ac ], [ %i.ek, %bb.ag ] ; 2 uses
  %.0123.i.i = phi i64 [ %i.dl, %bb.ac ], [ %i.el, %bb.ag ]
  %i.dz = ashr i64 %.0128.i.i, 6
  %i.ea = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.1129.i.i = phi i64 [ %.0128.i.i, %bb.ad ], [ %i.ek, %bb.af ] ; 3 uses
  %.1124.i.i = phi i64 [ %.0123.i.i, %bb.ad ], [ %i.el, %bb.af ] ; 2 uses
  %i.ec = and i64 %.1129.i.i, 63
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.ed, %i.eb
  %.not149.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not149.i.i, label %bb.af, label %.preheader12

.preheader12:                                     ; preds = %bb.ae
  %i.ef = add i64 %.1124.i.i, %2                  ; 2 uses
  %gep65 = getelementptr i8, ptr %invariant.gep64, i64 %.1129.i.i
  %i.eg = load i8, ptr %gep65, align 1
end_hunk_16
begin_hunk_17_@helper_sve_st4qq_be_r_mte:bb.a
  %i.me = getelementptr inbounds i8, ptr %i.iv, i64 %i.lz ; 8 uses
  %invariant.gep27.2 = getelementptr i8, ptr %i.iw, i64 %i.ly ; 4 uses
  %gep28.275 = getelementptr [256 x i8], ptr %invariant.gep27.2, i64 %i.iy ; 2 uses
  %i.mf = getelementptr i8, ptr %gep28.275, i64 8
  %i.mg = load i64, ptr %i.mf, align 8
  %i.mh = call i64 @llvm.bswap.i64(i64 %i.mg)
  store i64 %i.mh, ptr %i.me, align 1
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mj = load i64, ptr %gep28.275, align 8
  %i.mk = call i64 @llvm.bswap.i64(i64 %i.mj)
  store i64 %i.mk, ptr %i.mi, align 1
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %gep28.1.2 = getelementptr [256 x i8], ptr %invariant.gep27.2, i64 %i.jb ; 2 uses
  %i.mm = getelementptr i8, ptr %gep28.1.2, i64 8
  %i.mn = load i64, ptr %i.mm, align 8
  %i.mo = call i64 @llvm.bswap.i64(i64 %i.mn)
  store i64 %i.mo, ptr %i.ml, align 1
  %i.mp = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mq = load i64, ptr %gep28.1.2, align 8
  %i.mr = call i64 @llvm.bswap.i64(i64 %i.mq)
  store i64 %i.mr, ptr %i.mp, align 1
  %i.ms = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %gep28.2.2 = getelementptr [256 x i8], ptr %invariant.gep27.2, i64 %i.je ; 2 uses
  %i.mt = getelementptr i8, ptr %gep28.2.2, i64 8
  %i.mu = load i64, ptr %i.mt, align 8
  %i.mv = call i64 @llvm.bswap.i64(i64 %i.mu)
  store i64 %i.mv, ptr %i.ms, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.mx = load i64, ptr %gep28.2.2, align 8
  %i.my = call i64 @llvm.bswap.i64(i64 %i.mx)
  store i64 %i.my, ptr %i.mw, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %gep28.3.2 = getelementptr [256 x i8], ptr %invariant.gep27.2, i64 %i.jh ; 2 uses
  %i.na = getelementptr i8, ptr %gep28.3.2, i64 8
  %i.nb = load i64, ptr %i.na, align 8
  %i.nc = call i64 @llvm.bswap.i64(i64 %i.nb)
  store i64 %i.nc, ptr %i.mz, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.me, i64 56
  %i.ne = load i64, ptr %gep28.3.2, align 8
  %i.nf = call i64 @llvm.bswap.i64(i64 %i.ne)
  store i64 %i.nf, ptr %i.nd, align 1
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.preheader.2, %bb.ad
  %i.ng = add i64 %.4132.i.i, 48                  ; 4 uses
  %i.nh = add i64 %.4.i.i, 192                    ; 2 uses
  %i.ni = and i64 %i.ng, 63
  %.not146.i.i.2 = icmp eq i64 %i.ni, 0
  br i1 %.not146.i.i.2, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.2
  %i.nj = and i64 %i.ng, 63
  %i.nk = shl nuw i64 1, %i.nj
  %i.nl = and i64 %i.nk, %i.jk
  %.not145.i.i.3 = icmp eq i64 %i.nl, 0
  br i1 %.not145.i.i.3, label %.loopexit.3, label %.preheader.3

.preheader.3:                                     ; preds = %bb.ae
  %i.nm = getelementptr inbounds i8, ptr %i.iv, i64 %i.nh ; 8 uses
  %invariant.gep27.3 = getelementptr i8, ptr %i.iw, i64 %i.ng ; 4 uses
  %gep28.376 = getelementptr [256 x i8], ptr %invariant.gep27.3, i64 %i.iy ; 2 uses
  %i.nn = getelementptr i8, ptr %gep28.376, i64 8
  %i.no = load i64, ptr %i.nn, align 8
  %i.np = call i64 @llvm.bswap.i64(i64 %i.no)
  store i64 %i.np, ptr %i.nm, align 1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.nr = load i64, ptr %gep28.376, align 8
  %i.ns = call i64 @llvm.bswap.i64(i64 %i.nr)
  store i64 %i.ns, ptr %i.nq, align 1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %gep28.1.3 = getelementptr [256 x i8], ptr %invariant.gep27.3, i64 %i.jb ; 2 uses
  %i.nu = getelementptr i8, ptr %gep28.1.3, i64 8
  %i.nv = load i64, ptr %i.nu, align 8
  %i.nw = call i64 @llvm.bswap.i64(i64 %i.nv)
  store i64 %i.nw, ptr %i.nt, align 1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.ny = load i64, ptr %gep28.1.3, align 8
  %i.nz = call i64 @llvm.bswap.i64(i64 %i.ny)
  store i64 %i.nz, ptr %i.nx, align 1
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %gep28.2.3 = getelementptr [256 x i8], ptr %invariant.gep27.3, i64 %i.je ; 2 uses
  %i.ob = getelementptr i8, ptr %gep28.2.3, i64 8
  %i.oc = load i64, ptr %i.ob, align 8
  %i.od = call i64 @llvm.bswap.i64(i64 %i.oc)
  store i64 %i.od, ptr %i.oa, align 1
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nm, i64 40
  %i.of = load i64, ptr %gep28.2.3, align 8
  %i.og = call i64 @llvm.bswap.i64(i64 %i.of)
  store i64 %i.og, ptr %i.oe, align 1
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
  %gep28.3.3 = getelementptr [256 x i8], ptr %invariant.gep27.3, i64 %i.jh ; 2 uses
  %i.oi = getelementptr i8, ptr %gep28.3.3, i64 8
  %i.oj = load i64, ptr %i.oi, align 8
  %i.ok = call i64 @llvm.bswap.i64(i64 %i.oj)
  store i64 %i.ok, ptr %i.oh, align 1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nm, i64 56
  %i.om = load i64, ptr %gep28.3.3, align 8
  %i.on = call i64 @llvm.bswap.i64(i64 %i.om)
  store i64 %i.on, ptr %i.ol, align 1
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %.preheader.3, %bb.ae
  %i.oo = add i64 %.4132.i.i, 64
  %i.op = add i64 %.4.i.i, 256
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.3, %.loopexit.2, %.loopexit.1, %.loopexit
  %.lcssa66 = phi i64 [ %i.kq, %.loopexit ], [ %i.ly, %.loopexit.1 ], [ %i.ng, %.loopexit.2 ], [ %i.oo, %.loopexit.3 ] ; 2 uses
  %.lcssa = phi i64 [ %i.kr, %.loopexit ], [ %i.lz, %.loopexit.1 ], [ %i.nh, %.loopexit.2 ], [ %i.op, %.loopexit.3 ]
  %.not147.i.i = icmp sgt i64 %.lcssa66, %i.iu
  br i1 %.not147.i.i, label %bb.ag, label %bb.ab, !llvm.loop !37

bb.ag:                                            ; preds = %bb.af
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.fh, align 8
  br label %sve_stN_r_mte.exit

sve_stN_r_mte.exit:                               ; preds = %bb.v, %bb.d, %.loopexit6, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_st1bh_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 33 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]   ; 3 uses
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 8), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10                       ; 4 uses
  %i.ar = icmp sgt i64 %.178.i, -1
  br i1 %i.ar, label %bb.j, label %sve_stN_r_mte.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.as = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.as)
  %i.at = trunc i64 %.178.i to i16
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i16 %i.at, ptr %i.au, align 4
  %i.av = lshr i64 %.178.i, 1
  %i.aw = trunc i64 %i.av to i16
  store i16 %i.aw, ptr %4, align 8
  %i.ax = lshr i64 %.1.i, 1
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.az = or i64 %i.ay, %2                        ; 2 uses
  %i.ba = sub i64 0, %i.az                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ax, %i.ba
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bb = trunc nuw nsw i64 %.1.i to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bb, ptr %i.bc, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bd = trunc i64 %i.ba to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bd, ptr %i.be, align 8
  %i.bf = shl i64 %i.ba, 1                        ; 2 uses
  %.not84.i = icmp eq i64 %i.az, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = trunc i64 %i.bf to i16
  %i.bh = add i16 %i.bg, -2
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bh, ptr %i.bi, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bf, i64 noundef %i.z, i32 noundef 1) ; 3 uses
  %i.bk = icmp sle i64 %i.bj, %.1.i
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = trunc i64 %i.bj to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bl, ptr %i.bm, align 2
  %i.bn = lshr i64 %i.bj, 1
  %i.bo = trunc i64 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = trunc nuw nsw i64 %.1.i to i16
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bq, ptr %i.br, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bs = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 1, i64 noundef %i.b) ; 0 uses
  %.not.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i, label %sve_cont_ldst_mte_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bu = load i8, ptr %i.bt, align 4, !range !88, !noundef !89
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.q, label %.loopexit55.i

bb.q:                                             ; preds = %bb.p
  %i.bw = load i16, ptr %i.au, align 4
  %i.bx = sext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.bz = load i16, ptr %i.by, align 2            ; 2 uses
  %i.ca = icmp slt i16 %i.bz, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = load i16, ptr %i.cb, align 8
  %.0.in.i = select i1 %i.ca, i16 %i.cc, i16 %i.bz
  %.0.i4 = sext i16 %.0.in.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.042.i = phi i64 [ %i.bx, %bb.q ], [ %i.ck, %bb.v ] ; 2 uses
  %i.cd = ashr i64 %.042.i, 6
  %i.ce = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.1.i5 = phi i64 [ %.042.i, %bb.r ], [ %i.ck, %bb.u ] ; 2 uses
  %i.cg = and i64 %.1.i5, 63
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ch, %i.cf
  %.not.i6 = icmp eq i64 %i.ci, 0
  br i1 %.not.i6, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ck = add nsw i64 %.1.i5, 2                   ; 4 uses
  %i.cl = icmp sle i64 %i.ck, %.0.i4              ; 2 uses
  %i.cm = and i64 %i.ck, 63
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = and i1 %i.cl, %i.cn
  br i1 %i.co, label %bb.s, label %bb.v, !llvm.loop !25

bb.v:                                             ; preds = %bb.u
  br i1 %i.cl, label %bb.r, label %.loopexit55.i, !llvm.loop !26

.loopexit55.i:                                    ; preds = %bb.v, %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = icmp sgt i16 %i.cq, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.ct = load i8, ptr %i.cs, align 4, !range !88
  %i.cu = trunc nuw i8 %i.ct to i1
  %or.cond = select i1 %i.cr, i1 %i.cu, i1 false
  br i1 %or.cond, label %bb.w, label %sve_cont_ldst_mte_check.exit

bb.w:                                             ; preds = %.loopexit55.i
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = sext i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = sext i16 %i.cz to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %.2.i = phi i64 [ %i.cx, %bb.w ], [ %i.di, %bb.ab ] ; 2 uses
  %i.db = ashr i64 %.2.i, 6
  %i.dc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.3.i = phi i64 [ %.2.i, %bb.x ], [ %i.di, %bb.aa ] ; 2 uses
  %i.de = and i64 %.3.i, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not52.i = icmp eq i64 %i.dg, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.di = add i64 %.3.i, 2                        ; 4 uses
  %i.dj = and i64 %i.di, 63
  %.not53.i = icmp eq i64 %i.dj, 0
  br i1 %.not53.i, label %bb.ab, label %bb.y, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp sgt i64 %i.di, %i.da
  br i1 %.not54.i, label %sve_cont_ldst_mte_check.exit, label %bb.x, !llvm.loop !28

sve_cont_ldst_mte_check.exit:                     ; preds = %bb.ab, %.loopexit55.i, %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = or i32 %i.do, %i.dl
  %.not143.i.i = icmp eq i32 %i.dp, 0
  %i.dq = load i16, ptr %4, align 8               ; 2 uses
  br i1 %.not143.i.i, label %bb.ah, label %bb.ac, !prof !85

bb.ac:                                            ; preds = %sve_cont_ldst_mte_check.exit
  %i.dr = sext i16 %i.dq to i64
  %i.ds = load i16, ptr %i.au, align 4
  %i.dt = sext i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.dw = load i16, ptr %i.dv, align 2            ; 2 uses
  %i.dx = icmp slt i16 %i.dw, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dz = load i16, ptr %i.dy, align 2            ; 2 uses
  %i.ea = icmp slt i16 %i.dz, 0
  %i.eb = load i16, ptr %i.du, align 8
  %spec.select.i.i = select i1 %i.ea, i16 %i.eb, i16 %i.dz
  %.0127.in.i.i = select i1 %i.dx, i16 %spec.select.i.i, i16 %i.dw
  %.0127.i.i = sext i16 %.0127.in.i.i to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ed = and i32 %i.aq, 31
  %i.ee = zext nneg i32 %i.ed to i64
  %invariant.gep61 = getelementptr [256 x i8], ptr %i.ec, i64 %i.ee
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %bb.ac
  %.0128.i.i = phi i64 [ %i.dt, %bb.ac ], [ %i.er, %bb.ag ] ; 2 uses
  %.0123.i.i = phi i64 [ %i.dr, %bb.ac ], [ %i.es, %bb.ag ]
  %i.ef = ashr i64 %.0128.i.i, 6
  %i.eg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.1129.i.i = phi i64 [ %.0128.i.i, %bb.ad ], [ %i.er, %bb.af ] ; 3 uses
  %.1124.i.i = phi i64 [ %.0123.i.i, %bb.ad ], [ %i.es, %bb.af ] ; 2 uses
  %i.ei = and i64 %.1129.i.i, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.ej, %i.eh
  %.not149.i.i = icmp eq i64 %i.ek, 0
end_hunk_17
begin_hunk_18_@helper_sve_st1bh_r_mte:bb.a
  br label %bb.am

bb.am:                                            ; preds = %.loopexit9, %._crit_edge
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.gl = load i16, ptr %i.gk, align 2            ; 2 uses
  %i.gm = icmp sgt i16 %i.gl, -1
  br i1 %i.gm, label %bb.an, label %sve_stN_r_mte.exit, !prof !76

bb.an:                                            ; preds = %bb.am
  %i.gn = zext nneg i16 %i.gl to i64
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.gp = load i16, ptr %i.go, align 2
  %i.gq = sext i16 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = sext i16 %i.gs to i64
  %i.gu = load ptr, ptr %i.dm, align 8            ; 3 uses
  store i64 %i.b, ptr %i.ez, align 8
  fence syncscope("singlethread") seq_cst
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.gw = and i32 %i.aq, 31
  %i.gx = zext nneg i32 %i.gw to i64
  %invariant.gep63 = getelementptr [256 x i8], ptr %i.gv, i64 %i.gx ; 3 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.unr-lcssa, %bb.an
  %.4132.i.i = phi i64 [ %i.gq, %bb.an ], [ %.lcssa73, %.unr-lcssa ] ; 6 uses
  %.4.i.i = phi i64 [ %i.gn, %bb.an ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.gy = ashr i64 %.4132.i.i, 6
  %i.gz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8            ; 3 uses
  %i.hb = trunc i64 %.4132.i.i to i6
  %i.hc = sub i6 -2, %i.hb                        ; 2 uses
  %i.hd = and i6 %i.hc, 2
  %lcmp.mod.not.not = icmp eq i6 %i.hd, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.ao
  %i.he = and i64 %.4132.i.i, 63
  %i.hf = shl nuw i64 1, %i.he
  %i.hg = and i64 %i.hf, %i.ha
  %.not145.i.i.prol = icmp eq i64 %i.hg, 0
  br i1 %.not145.i.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.hh = getelementptr inbounds i8, ptr %i.gu, i64 %.4.i.i
  %gep64.prol = getelementptr i8, ptr %invariant.gep63, i64 %.4132.i.i
  %i.hi = load i16, ptr %gep64.prol, align 2
  %i.hj = trunc i16 %i.hi to i8
  store i8 %i.hj, ptr %i.hh, align 1
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.hk = add i64 %.4132.i.i, 2                   ; 2 uses
  %i.hl = add i64 %.4.i.i, 1                      ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ao
  %.lcssa73.unr = phi i64 [ poison, %bb.ao ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.ao ], [ %i.hl, %.prol.loopexit.unr-lcssa ]
  %.5133.i.i.unr = phi i64 [ %.4132.i.i, %bb.ao ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %.5.i.i.unr = phi i64 [ %.4.i.i, %bb.ao ], [ %i.hl, %.prol.loopexit.unr-lcssa ]
  %i.hm = icmp ult i6 %i.hc, 2
  br i1 %i.hm, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.aq
  %.5133.i.i = phi i64 [ %i.ib, %bb.aq ], [ %.5133.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.5.i.i = phi i64 [ %i.ic, %bb.aq ], [ %.5.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hn = and i64 %.5133.i.i, 63
  %i.ho = shl nuw i64 1, %i.hn
  %i.hp = and i64 %i.ho, %i.ha
  %.not145.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not145.i.i, label %bb.ap, label %.preheader

.preheader:                                       ; preds = %.new
  %i.hq = getelementptr inbounds i8, ptr %i.gu, i64 %.5.i.i
  %gep64 = getelementptr i8, ptr %invariant.gep63, i64 %.5133.i.i
  %i.hr = load i16, ptr %gep64, align 2
  %i.hs = trunc i16 %i.hr to i8
  store i8 %i.hs, ptr %i.hq, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader, %.new
  %i.ht = add i64 %.5133.i.i, 2                   ; 2 uses
  %i.hu = and i64 %i.ht, 63
  %i.hv = shl nuw i64 1, %i.hu
  %i.hw = and i64 %i.hv, %i.ha
  %.not145.i.i.1 = icmp eq i64 %i.hw, 0
  br i1 %.not145.i.i.1, label %bb.aq, label %.preheader.1

.preheader.1:                                     ; preds = %bb.ap
  %i.hx = getelementptr i8, ptr %i.gu, i64 %.5.i.i
  %i.hy = getelementptr i8, ptr %i.hx, i64 1
  %gep64.1 = getelementptr i8, ptr %invariant.gep63, i64 %i.ht
  %i.hz = load i16, ptr %gep64.1, align 2
  %i.ia = trunc i16 %i.hz to i8
  store i8 %i.ia, ptr %i.hy, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader.1, %bb.ap
  %i.ib = add i64 %.5133.i.i, 4                   ; 3 uses
  %i.ic = add i64 %.5.i.i, 2                      ; 2 uses
  %i.id = and i64 %i.ib, 63
  %.not146.i.i.1 = icmp eq i64 %i.id, 0
  br i1 %.not146.i.i.1, label %.unr-lcssa, label %.new, !llvm.loop !36

.unr-lcssa:                                       ; preds = %bb.aq, %.prol.loopexit
  %.lcssa73 = phi i64 [ %.lcssa73.unr, %.prol.loopexit ], [ %i.ib, %bb.aq ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ic, %bb.aq ]
  %.not147.i.i = icmp sgt i64 %.lcssa73, %i.gt
  br i1 %.not147.i.i, label %bb.ar, label %bb.ao, !llvm.loop !37

bb.ar:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.ez, align 8
  br label %sve_stN_r_mte.exit

sve_stN_r_mte.exit:                               ; preds = %bb.ag, %bb.i, %bb.am, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_st1bs_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 33 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]   ; 3 uses
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 16), align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10                       ; 4 uses
  %i.ar = icmp sgt i64 %.178.i, -1
  br i1 %i.ar, label %bb.j, label %sve_stN_r_mte.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.as = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.as)
  %i.at = trunc i64 %.178.i to i16
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i16 %i.at, ptr %i.au, align 4
  %i.av = lshr i64 %.178.i, 2
  %i.aw = trunc i64 %i.av to i16
  store i16 %i.aw, ptr %4, align 8
  %i.ax = lshr i64 %.1.i, 2
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.az = or i64 %i.ay, %2                        ; 2 uses
  %i.ba = sub i64 0, %i.az                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ax, %i.ba
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bb = trunc nuw nsw i64 %.1.i to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bb, ptr %i.bc, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bd = trunc i64 %i.ba to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bd, ptr %i.be, align 8
  %i.bf = shl i64 %i.ba, 2                        ; 2 uses
  %.not84.i = icmp eq i64 %i.az, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = trunc i64 %i.bf to i16
  %i.bh = add i16 %i.bg, -4
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bh, ptr %i.bi, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bf, i64 noundef %i.z, i32 noundef 2) ; 3 uses
  %i.bk = icmp sle i64 %i.bj, %.1.i
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = trunc i64 %i.bj to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bl, ptr %i.bm, align 2
  %i.bn = lshr i64 %i.bj, 2
  %i.bo = trunc i64 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = trunc nuw nsw i64 %.1.i to i16
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bq, ptr %i.br, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bs = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 1, i64 noundef %i.b) ; 0 uses
  %.not.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i, label %sve_cont_ldst_mte_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bu = load i8, ptr %i.bt, align 4, !range !88, !noundef !89
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.q, label %.loopexit55.i

bb.q:                                             ; preds = %bb.p
  %i.bw = load i16, ptr %i.au, align 4
  %i.bx = sext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.bz = load i16, ptr %i.by, align 2            ; 2 uses
  %i.ca = icmp slt i16 %i.bz, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = load i16, ptr %i.cb, align 8
  %.0.in.i = select i1 %i.ca, i16 %i.cc, i16 %i.bz
  %.0.i4 = sext i16 %.0.in.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.042.i = phi i64 [ %i.bx, %bb.q ], [ %i.ck, %bb.v ] ; 2 uses
  %i.cd = ashr i64 %.042.i, 6
  %i.ce = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.1.i5 = phi i64 [ %.042.i, %bb.r ], [ %i.ck, %bb.u ] ; 2 uses
  %i.cg = and i64 %.1.i5, 63
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ch, %i.cf
  %.not.i6 = icmp eq i64 %i.ci, 0
  br i1 %.not.i6, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ck = add nsw i64 %.1.i5, 4                   ; 4 uses
  %i.cl = icmp sle i64 %i.ck, %.0.i4              ; 2 uses
  %i.cm = and i64 %i.ck, 63
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = and i1 %i.cl, %i.cn
  br i1 %i.co, label %bb.s, label %bb.v, !llvm.loop !25

bb.v:                                             ; preds = %bb.u
  br i1 %i.cl, label %bb.r, label %.loopexit55.i, !llvm.loop !26

.loopexit55.i:                                    ; preds = %bb.v, %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = icmp sgt i16 %i.cq, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.ct = load i8, ptr %i.cs, align 4, !range !88
  %i.cu = trunc nuw i8 %i.ct to i1
  %or.cond = select i1 %i.cr, i1 %i.cu, i1 false
  br i1 %or.cond, label %bb.w, label %sve_cont_ldst_mte_check.exit

bb.w:                                             ; preds = %.loopexit55.i
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = sext i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = sext i16 %i.cz to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %.2.i = phi i64 [ %i.cx, %bb.w ], [ %i.di, %bb.ab ] ; 2 uses
  %i.db = ashr i64 %.2.i, 6
  %i.dc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.3.i = phi i64 [ %.2.i, %bb.x ], [ %i.di, %bb.aa ] ; 2 uses
  %i.de = and i64 %.3.i, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not52.i = icmp eq i64 %i.dg, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.di = add i64 %.3.i, 4                        ; 4 uses
  %i.dj = and i64 %i.di, 63
  %.not53.i = icmp eq i64 %i.dj, 0
  br i1 %.not53.i, label %bb.ab, label %bb.y, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp sgt i64 %i.di, %i.da
  br i1 %.not54.i, label %sve_cont_ldst_mte_check.exit, label %bb.x, !llvm.loop !28

sve_cont_ldst_mte_check.exit:                     ; preds = %bb.ab, %.loopexit55.i, %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = or i32 %i.do, %i.dl
  %.not143.i.i = icmp eq i32 %i.dp, 0
  %i.dq = load i16, ptr %4, align 8               ; 2 uses
  br i1 %.not143.i.i, label %bb.ah, label %bb.ac, !prof !85

bb.ac:                                            ; preds = %sve_cont_ldst_mte_check.exit
  %i.dr = sext i16 %i.dq to i64
  %i.ds = load i16, ptr %i.au, align 4
  %i.dt = sext i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.dw = load i16, ptr %i.dv, align 2            ; 2 uses
  %i.dx = icmp slt i16 %i.dw, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dz = load i16, ptr %i.dy, align 2            ; 2 uses
  %i.ea = icmp slt i16 %i.dz, 0
  %i.eb = load i16, ptr %i.du, align 8
  %spec.select.i.i = select i1 %i.ea, i16 %i.eb, i16 %i.dz
  %.0127.in.i.i = select i1 %i.dx, i16 %spec.select.i.i, i16 %i.dw
  %.0127.i.i = sext i16 %.0127.in.i.i to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ed = and i32 %i.aq, 31
  %i.ee = zext nneg i32 %i.ed to i64
  %invariant.gep61 = getelementptr [256 x i8], ptr %i.ec, i64 %i.ee
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %bb.ac
  %.0128.i.i = phi i64 [ %i.dt, %bb.ac ], [ %i.er, %bb.ag ] ; 2 uses
  %.0123.i.i = phi i64 [ %i.dr, %bb.ac ], [ %i.es, %bb.ag ]
  %i.ef = ashr i64 %.0128.i.i, 6
  %i.eg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.1129.i.i = phi i64 [ %.0128.i.i, %bb.ad ], [ %i.er, %bb.af ] ; 3 uses
  %.1124.i.i = phi i64 [ %.0123.i.i, %bb.ad ], [ %i.es, %bb.af ] ; 2 uses
  %i.ei = and i64 %.1129.i.i, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.ej, %i.eh
  %.not149.i.i = icmp eq i64 %i.ek, 0
end_hunk_18
begin_hunk_19_@helper_sve_st1bs_r_mte:bb.a
  br label %bb.am

bb.am:                                            ; preds = %.loopexit9, %._crit_edge
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.gl = load i16, ptr %i.gk, align 2            ; 2 uses
  %i.gm = icmp sgt i16 %i.gl, -1
  br i1 %i.gm, label %bb.an, label %sve_stN_r_mte.exit, !prof !76

bb.an:                                            ; preds = %bb.am
  %i.gn = zext nneg i16 %i.gl to i64
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.gp = load i16, ptr %i.go, align 2
  %i.gq = sext i16 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = sext i16 %i.gs to i64
  %i.gu = load ptr, ptr %i.dm, align 8            ; 3 uses
  store i64 %i.b, ptr %i.ez, align 8
  fence syncscope("singlethread") seq_cst
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.gw = and i32 %i.aq, 31
  %i.gx = zext nneg i32 %i.gw to i64
  %invariant.gep63 = getelementptr [256 x i8], ptr %i.gv, i64 %i.gx ; 3 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.unr-lcssa, %bb.an
  %.4132.i.i = phi i64 [ %i.gq, %bb.an ], [ %.lcssa73, %.unr-lcssa ] ; 6 uses
  %.4.i.i = phi i64 [ %i.gn, %bb.an ], [ %.lcssa, %.unr-lcssa ] ; 3 uses
  %i.gy = ashr i64 %.4132.i.i, 6
  %i.gz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8            ; 3 uses
  %i.hb = trunc i64 %.4132.i.i to i6
  %i.hc = sub i6 -4, %i.hb                        ; 2 uses
  %i.hd = and i6 %i.hc, 4
  %lcmp.mod.not.not = icmp eq i6 %i.hd, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %bb.ao
  %i.he = and i64 %.4132.i.i, 63
  %i.hf = shl nuw i64 1, %i.he
  %i.hg = and i64 %i.hf, %i.ha
  %.not145.i.i.prol = icmp eq i64 %i.hg, 0
  br i1 %.not145.i.i.prol, label %.prol.loopexit.unr-lcssa, label %.preheader.prol

.preheader.prol:                                  ; preds = %.prol.preheader
  %i.hh = getelementptr inbounds i8, ptr %i.gu, i64 %.4.i.i
  %gep64.prol = getelementptr i8, ptr %invariant.gep63, i64 %.4132.i.i
  %i.hi = load i32, ptr %gep64.prol, align 4
  %i.hj = trunc i32 %i.hi to i8
  store i8 %i.hj, ptr %i.hh, align 1
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.prol, %.prol.preheader
  %i.hk = add i64 %.4132.i.i, 4                   ; 2 uses
  %i.hl = add i64 %.4.i.i, 1                      ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ao
  %.lcssa73.unr = phi i64 [ poison, %bb.ao ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.ao ], [ %i.hl, %.prol.loopexit.unr-lcssa ]
  %.5133.i.i.unr = phi i64 [ %.4132.i.i, %bb.ao ], [ %i.hk, %.prol.loopexit.unr-lcssa ]
  %.5.i.i.unr = phi i64 [ %.4.i.i, %bb.ao ], [ %i.hl, %.prol.loopexit.unr-lcssa ]
  %i.hm = icmp ult i6 %i.hc, 4
  br i1 %i.hm, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %bb.aq
  %.5133.i.i = phi i64 [ %i.ib, %bb.aq ], [ %.5133.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.5.i.i = phi i64 [ %i.ic, %bb.aq ], [ %.5.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hn = and i64 %.5133.i.i, 63
  %i.ho = shl nuw i64 1, %i.hn
  %i.hp = and i64 %i.ho, %i.ha
  %.not145.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not145.i.i, label %bb.ap, label %.preheader

.preheader:                                       ; preds = %.new
  %i.hq = getelementptr inbounds i8, ptr %i.gu, i64 %.5.i.i
  %gep64 = getelementptr i8, ptr %invariant.gep63, i64 %.5133.i.i
  %i.hr = load i32, ptr %gep64, align 4
  %i.hs = trunc i32 %i.hr to i8
  store i8 %i.hs, ptr %i.hq, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader, %.new
  %i.ht = add i64 %.5133.i.i, 4                   ; 2 uses
  %i.hu = and i64 %i.ht, 63
  %i.hv = shl nuw i64 1, %i.hu
  %i.hw = and i64 %i.hv, %i.ha
  %.not145.i.i.1 = icmp eq i64 %i.hw, 0
  br i1 %.not145.i.i.1, label %bb.aq, label %.preheader.1

.preheader.1:                                     ; preds = %bb.ap
  %i.hx = getelementptr i8, ptr %i.gu, i64 %.5.i.i
  %i.hy = getelementptr i8, ptr %i.hx, i64 1
  %gep64.1 = getelementptr i8, ptr %invariant.gep63, i64 %i.ht
  %i.hz = load i32, ptr %gep64.1, align 4
  %i.ia = trunc i32 %i.hz to i8
  store i8 %i.ia, ptr %i.hy, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader.1, %bb.ap
  %i.ib = add i64 %.5133.i.i, 8                   ; 3 uses
  %i.ic = add i64 %.5.i.i, 2                      ; 2 uses
  %i.id = and i64 %i.ib, 63
  %.not146.i.i.1 = icmp eq i64 %i.id, 0
  br i1 %.not146.i.i.1, label %.unr-lcssa, label %.new, !llvm.loop !36

.unr-lcssa:                                       ; preds = %bb.aq, %.prol.loopexit
  %.lcssa73 = phi i64 [ %.lcssa73.unr, %.prol.loopexit ], [ %i.ib, %bb.aq ] ; 2 uses
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ic, %bb.aq ]
  %.not147.i.i = icmp sgt i64 %.lcssa73, %i.gt
  br i1 %.not147.i.i, label %bb.ar, label %bb.ao, !llvm.loop !37

bb.ar:                                            ; preds = %.unr-lcssa
  fence syncscope("singlethread") seq_cst
  store i64 0, ptr %i.ez, align 8
  br label %sve_stN_r_mte.exit

sve_stN_r_mte.exit:                               ; preds = %bb.ag, %bb.i, %bb.am, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve_st1bd_r_mte(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) #6 {
bb.a:
  %4 = alloca %struct.SVEContLdSt, align 8        ; 33 uses
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 7 uses
  %i.c = lshr i64 %3, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = lshr i64 %2, 55
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1                          ; 3 uses
  %i.h = shl nuw nsw i32 4112, %i.g
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %2, 56
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = add nuw nsw i32 %i.g, %i.k
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 0
  %i.o = or disjoint i32 %i.g, 6
  %i.p = lshr i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i1
  %i.r = and i1 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ]   ; 3 uses
  %i.s = trunc i64 %3 to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 3                          ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = shl i32 %i.s, 3
  %i.x = and i32 %i.w, 2040
  %i.y = icmp eq i32 %i.u, 2
  %.v.v.i = select i1 %i.y, i32 %i.x, i32 %i.v
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.z = zext nneg i32 %.v.i to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @pred_esz_masks, i64 24), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef -1, i64 noundef 24, i1 noundef false) #26
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 noundef 0, i64 noundef 48, i1 noundef false) #26
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.z, i64 64)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.077.i = phi i64 [ -1, %bb.d ], [ %.178.i, %bb.h ] ; 3 uses
  %.076.i = phi i64 [ -1, %bb.d ], [ %.1.i, %bb.h ]
  %.0.i3 = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0.i3
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, %i.aa                    ; 3 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nuw nsw i64 %.0.i3, 6               ; 2 uses
  %i.aj = or disjoint i64 %i.ai, 63
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.al = sub nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp slt i64 %.077.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.ao = or disjoint i64 %i.an, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.178.i = phi i64 [ %i.ao, %bb.g ], [ %.077.i, %bb.f ], [ %.077.i, %bb.e ] ; 4 uses
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %.076.i, %bb.e ] ; 6 uses
  %i.ap = add nuw nsw i64 %.0.i3, 1
  %exitcond.not.i = icmp eq i64 %.0.i3, %i.ae
  br i1 %exitcond.not.i, label %bb.i, label %bb.e, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  %i.aq = ashr i32 %i.s, 10                       ; 4 uses
  %i.ar = icmp sgt i64 %.178.i, -1
  br i1 %i.ar, label %bb.j, label %sve_stN_r_mte.exit, !prof !85

bb.j:                                             ; preds = %bb.i
  %i.as = icmp samesign ult i64 %.1.i, %i.z
  tail call void @llvm.assume(i1 %i.as)
  %i.at = trunc i64 %.178.i to i16
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i16 %i.at, ptr %i.au, align 4
  %i.av = lshr i64 %.178.i, 3
  %i.aw = trunc i64 %i.av to i16
  store i16 %i.aw, ptr %4, align 8
  %i.ax = lshr i64 %.1.i, 3
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.az = or i64 %i.ay, %2                        ; 2 uses
  %i.ba = sub i64 0, %i.az                        ; 3 uses
  %.not83.i.not = icmp slt i64 %i.ax, %i.ba
  br i1 %.not83.i.not, label %bb.k, label %bb.l, !prof !85

bb.k:                                             ; preds = %bb.j
  %i.bb = trunc nuw nsw i64 %.1.i to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bb, ptr %i.bc, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bd = trunc i64 %i.ba to i16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 %i.bd, ptr %i.be, align 8
  %i.bf = shl i64 %i.ba, 3                        ; 2 uses
  %.not84.i = icmp eq i64 %i.az, 0
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = trunc i64 %i.bf to i16
  %i.bh = add i16 %i.bg, -8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.bh, ptr %i.bi, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = tail call fastcc i64 @find_next_active(ptr noundef nonnull readonly %1, i64 noundef %i.bf, i64 noundef %i.z, i32 noundef 3) ; 3 uses
  %i.bk = icmp sle i64 %i.bj, %.1.i
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = trunc i64 %i.bj to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.bl, ptr %i.bm, align 2
  %i.bn = lshr i64 %i.bj, 3
  %i.bo = trunc i64 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = trunc nuw nsw i64 %.1.i to i16
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.bq, ptr %i.br, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bs = call zeroext i1 @sve_cont_ldst_pages(ptr noundef nonnull %4, i32 noundef 2, ptr noundef %0, i64 noundef %2, i32 noundef 1, i64 noundef %i.b) ; 0 uses
  %.not.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i, label %sve_cont_ldst_mte_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bu = load i8, ptr %i.bt, align 4, !range !88, !noundef !89
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.q, label %.loopexit55.i

bb.q:                                             ; preds = %bb.p
  %i.bw = load i16, ptr %i.au, align 4
  %i.bx = sext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.bz = load i16, ptr %i.by, align 2            ; 2 uses
  %i.ca = icmp slt i16 %i.bz, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cc = load i16, ptr %i.cb, align 8
  %.0.in.i = select i1 %i.ca, i16 %i.cc, i16 %i.bz
  %.0.i4 = sext i16 %.0.in.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.042.i = phi i64 [ %i.bx, %bb.q ], [ %i.ck, %bb.v ] ; 2 uses
  %i.cd = ashr i64 %.042.i, 6
  %i.ce = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.1.i5 = phi i64 [ %.042.i, %bb.r ], [ %i.ck, %bb.u ] ; 2 uses
  %i.cg = and i64 %.1.i5, 63
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ch, %i.cf
  %.not.i6 = icmp eq i64 %i.ci, 0
  br i1 %.not.i6, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ck = add nsw i64 %.1.i5, 8                   ; 4 uses
  %i.cl = icmp sle i64 %i.ck, %.0.i4              ; 2 uses
  %i.cm = and i64 %i.ck, 63
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = and i1 %i.cl, %i.cn
  br i1 %i.co, label %bb.s, label %bb.v, !llvm.loop !25

bb.v:                                             ; preds = %bb.u
  br i1 %i.cl, label %bb.r, label %.loopexit55.i, !llvm.loop !26

.loopexit55.i:                                    ; preds = %bb.v, %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = icmp sgt i16 %i.cq, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.ct = load i8, ptr %i.cs, align 4, !range !88
  %i.cu = trunc nuw i8 %i.ct to i1
  %or.cond = select i1 %i.cr, i1 %i.cu, i1 false
  br i1 %or.cond, label %bb.w, label %sve_cont_ldst_mte_check.exit

bb.w:                                             ; preds = %.loopexit55.i
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = sext i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = sext i16 %i.cz to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %.2.i = phi i64 [ %i.cx, %bb.w ], [ %i.di, %bb.ab ] ; 2 uses
  %i.db = ashr i64 %.2.i, 6
  %i.dc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.3.i = phi i64 [ %.2.i, %bb.x ], [ %i.di, %bb.aa ] ; 2 uses
  %i.de = and i64 %.3.i, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not52.i = icmp eq i64 %i.dg, 0
  br i1 %.not52.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = call i64 @mte_check(ptr noundef %0, i32 noundef %.0.i, i64 noundef %2, i64 noundef %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.di = add i64 %.3.i, 8                        ; 4 uses
  %i.dj = and i64 %i.di, 63
  %.not53.i = icmp eq i64 %i.dj, 0
  br i1 %.not53.i, label %bb.ab, label %bb.y, !llvm.loop !27

bb.ab:                                            ; preds = %bb.aa
  %.not54.i = icmp sgt i64 %i.di, %i.da
  br i1 %.not54.i, label %sve_cont_ldst_mte_check.exit, label %bb.x, !llvm.loop !28

sve_cont_ldst_mte_check.exit:                     ; preds = %bb.ab, %.loopexit55.i, %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = or i32 %i.do, %i.dl
  %.not143.i.i = icmp eq i32 %i.dp, 0
  %i.dq = load i16, ptr %4, align 8               ; 2 uses
  br i1 %.not143.i.i, label %bb.ah, label %bb.ac, !prof !85

bb.ac:                                            ; preds = %sve_cont_ldst_mte_check.exit
  %i.dr = sext i16 %i.dq to i64
  %i.ds = load i16, ptr %i.au, align 4
  %i.dt = sext i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.dw = load i16, ptr %i.dv, align 2            ; 2 uses
  %i.dx = icmp slt i16 %i.dw, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.dz = load i16, ptr %i.dy, align 2            ; 2 uses
  %i.ea = icmp slt i16 %i.dz, 0
  %i.eb = load i16, ptr %i.du, align 8
  %spec.select.i.i = select i1 %i.ea, i16 %i.eb, i16 %i.dz
  %.0127.in.i.i = select i1 %i.dx, i16 %spec.select.i.i, i16 %i.dw
  %.0127.i.i = sext i16 %.0127.in.i.i to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.ed = and i32 %i.aq, 31
  %i.ee = zext nneg i32 %i.ed to i64
  %invariant.gep61 = getelementptr [256 x i8], ptr %i.ec, i64 %i.ee
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %bb.ac
  %.0128.i.i = phi i64 [ %i.dt, %bb.ac ], [ %i.er, %bb.ag ] ; 2 uses
  %.0123.i.i = phi i64 [ %i.dr, %bb.ac ], [ %i.es, %bb.ag ]
  %i.ef = ashr i64 %.0128.i.i, 6
  %i.eg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.1129.i.i = phi i64 [ %.0128.i.i, %bb.ad ], [ %i.er, %bb.af ] ; 3 uses
  %.1124.i.i = phi i64 [ %.0123.i.i, %bb.ad ], [ %i.es, %bb.af ] ; 2 uses
  %i.ei = and i64 %.1129.i.i, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.ej, %i.eh
  %.not149.i.i = icmp eq i64 %i.ek, 0
end_hunk_19
