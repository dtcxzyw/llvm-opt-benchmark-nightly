inline.NumInlined: 151
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2v86bigint13ProcessorImpl11MultiplyFFTENS0_8RWDigitsENS0_6DigitsES3_:bb.a
  %i.gr = load ptr, ptr %i.es, align 8
  %i.gs = load i32, ptr %i.cz, align 4
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_110ShiftModFnEPmPKmijj(ptr noundef %i.gr, ptr noundef %i.gq, i32 noundef %i.gn, i32 noundef %i.gs, i32 noundef 2147483647)
  %i.gt = load i32, ptr %i.da, align 8            ; 2 uses
  %i.gu = icmp ne i32 %i.gt, 0
  %i.gv = icmp ult i32 %.02240.i, %2
  %or.cond33.i = select i1 %i.gu, i1 %i.gv, i1 false
  br i1 %or.cond33.i, label %.lr.ph.preheader.i, label %.critedge.preheader.thread.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph42.i
  %i.gw = zext i32 %.02240.i to i64
  %i.gx = load ptr, ptr %i.es, align 8
  %i.gy = zext i32 %i.gt to i64
  br label %.lr.ph.i20

.critedge.preheader.i:                            ; preds = %.lr.ph.i20
  %i.gz = icmp eq i128 %i.hi, 0
  br i1 %i.gz, label %.critedge.preheader.thread.i, label %bb.n

.lr.ph.i20:                                       ; preds = %.lr.ph.i20, %.lr.ph.preheader.i
  %indvars.iv48.i = phi i64 [ %i.gw, %.lr.ph.preheader.i ], [ %indvars.iv.next49.i, %.lr.ph.i20 ] ; 2 uses
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i22, %.lr.ph.i20 ] ; 2 uses
  %.03234.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.hj, %.lr.ph.i20 ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv48.i ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.ha, align 4
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.i21
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = zext i64 %.0.copyload.i.i to i128
  %i.he = zext i64 %i.hc to i128
  %i.hf = zext nneg i64 %.03234.i to i128
  %i.hg = add nuw nsw i128 %i.hd, %i.hf
  %i.hh = add nuw nsw i128 %i.hg, %i.he           ; 2 uses
  %i.hi = lshr i128 %i.hh, 64                     ; 2 uses
  %i.hj = trunc nuw nsw i128 %i.hi to i64
  %i.hk = trunc i128 %i.hh to i64
  store i64 %i.hk, ptr %i.ha, align 4
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 3 uses
  %i.hl = icmp samesign ult i64 %indvars.iv.next.i22, %i.gy
  %i.hm = icmp samesign ult i64 %indvars.iv.next49.i, %i.gj
  %or.cond.i = select i1 %i.hl, i1 %i.hm, i1 false
  br i1 %or.cond.i, label %.lr.ph.i20, label %.critedge.preheader.i, !llvm.loop !11

bb.n:                                             ; preds = %.critedge.preheader.i
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next49.i
  store i64 1, ptr %i.hn, align 4
  br label %.critedge.preheader.thread.i

.critedge.preheader.thread.i:                     ; preds = %bb.n, %.critedge.preheader.i, %.lr.ph42.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %i.ho = add i32 %.02240.i, %.sroa.1035.0.lcssa.i
  %i.hp = load i32, ptr %6, align 8
  %i.hq = zext i32 %i.hp to i64
  %i.hr = icmp samesign ult i64 %indvars.iv.next54.i, %i.hq
  br i1 %i.hr, label %.lr.ph42.i, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainer21NormalizeAndRecombineEiiNS0_8RWDigitsEj.exit, !llvm.loop !12

_ZN2v86bigint12_GLOBAL__N_112FFTContainer21NormalizeAndRecombineEiiNS0_8RWDigitsEj.exit: ; preds = %.critedge.preheader.thread.i, %bb.m, %bb.l
  %i.hs = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_112FFTContainer21NormalizeAndRecombineEiiNS0_8RWDigitsEj.exit
  call void @_ZdaPv(ptr noundef nonnull %i.hs) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN2v86bigint12_GLOBAL__N_112FFTContainer21NormalizeAndRecombineEiiNS0_8RWDigitsEj.exit
  %i.hu = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.hu) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hw = load ptr, ptr %i.es, align 8            ; 2 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerD2Ev.exit23, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.hw) #13
  br label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerD2Ev.exit23

_ZN2v86bigint12_GLOBAL__N_112FFTContainerD2Ev.exit23: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer5StartENS0_6DigitsEjii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree readonly captures(none) %1, i32 %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 3 uses
  %i.b = mul i32 %i.a, %3
  %i.c = lshr i32 %i.b, 1
  %i.d = icmp ugt i32 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer13Start_DefaultENS0_6DigitsEjii(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i32 %2, i32 noundef %3, i32 noundef 0, i32 noundef %4)
  br label %_ZN2v86bigint12_GLOBAL__N_112FFTContainer11FFT_RecurseEjjiPm.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 8 uses
  %i.i = lshr i32 %i.a, 1                         ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = sext i32 %3 to i64                       ; 3 uses
  %i.n = shl nsw i64 %i.m, 3                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr readonly align 1 %1, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.p = sub nsw i64 %i.h, %i.n                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.p, i1 false)
  %i.q = load ptr, ptr %i.j, align 8
  %i.r = zext nneg i32 %i.i to i64                ; 9 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.t, ptr readonly align 1 %1, i64 %i.n, i1 false)
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.p, i1 false)
  %i.v = sub i32 %2, %3                           ; 2 uses
  %i.w = icmp ugt i32 %i.a, 3                     ; 2 uses
  %i.x = icmp ne i32 %i.v, 0
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.z = zext i32 %3 to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.d

.preheader.loopexit:                              ; preds = %bb.d
  %i.ac = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.c
  %.0.lcssa = phi i32 [ 1, %bb.c ], [ %i.ac, %.preheader.loopexit ] ; 2 uses
  %i.ad = icmp samesign ult i32 %.0.lcssa, %i.i
  br i1 %i.ad, label %.lr.ph57.preheader, label %._crit_edge

.lr.ph57.preheader:                               ; preds = %.preheader
  %i.ae = zext nneg i32 %.0.lcssa to i64          ; 6 uses
  %i.af = sub nsw i64 %i.r, %i.ae
  %xtraiter = and i64 %i.af, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph57.prol.loopexit, label %.lr.ph57.prol

.lr.ph57.prol:                                    ; preds = %.lr.ph57.preheader
  %i.ag = load ptr, ptr %i.j, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.h, i1 false)
  %i.aj = load ptr, ptr %i.j, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ae
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.r
  %i.am = load ptr, ptr %i.al, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.h, i1 false)
  %indvars.iv.next60.prol = add nuw nsw i64 %i.ae, 1
  br label %.lr.ph57.prol.loopexit

.lr.ph57.prol.loopexit:                           ; preds = %.lr.ph57.prol, %.lr.ph57.preheader
  %indvars.iv59.unr = phi i64 [ %i.ae, %.lr.ph57.preheader ], [ %indvars.iv.next60.prol, %.lr.ph57.prol ]
  %i.an = add nsw i64 %i.r, -1
  %i.ao = icmp eq i64 %i.an, %i.ae
  br i1 %i.ao, label %._crit_edge, label %.lr.ph57

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %.03154 = phi ptr [ %i.aa, %.lr.ph ], [ %i.bg, %bb.d ] ; 2 uses
  %.05053 = phi i32 [ %i.v, %.lr.ph ], [ %i.bh, %bb.d ] ; 2 uses
  %.05152 = phi i32 [ %3, %.lr.ph ], [ %.sroa.speculated, %bb.d ]
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %.05053, i32 %.05152) ; 5 uses
  %i.ap = load ptr, ptr %i.j, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = sext i32 %.sroa.speculated to i64       ; 2 uses
  %i.at = shl nsw i64 %i.as, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ar, ptr readonly align 1 %.03154, i64 %i.at, i1 false)
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  %i.av = sub nsw i64 %i.h, %i.at
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.au, i8 0, i64 %i.av, i1 false)
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %i.ax = mul i32 %4, %i.aw
  %i.ay = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.r
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load i32, ptr %i.ab, align 4
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_110ShiftModFnEPmPKmijj(ptr noundef %i.bb, ptr noundef %i.bd, i32 noundef %i.ax, i32 noundef %i.be, i32 noundef %.sroa.speculated)
  %i.bf = zext i32 %.sroa.speculated to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.03154, i64 %i.bf
  %i.bh = sub i32 %.05053, %.sroa.speculated      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = icmp samesign ult i64 %indvars.iv.next, %i.r
  %i.bj = icmp ne i32 %i.bh, 0
  %5 = and i1 %i.bi, %i.bj
  br i1 %5, label %bb.d, label %.preheader.loopexit, !llvm.loop !13

.lr.ph57:                                         ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57
  %indvars.iv59 = phi i64 [ %indvars.iv.next60.1, %.lr.ph57 ], [ %indvars.iv59.unr, %.lr.ph57.prol.loopexit ] ; 4 uses
  %i.bk = load ptr, ptr %i.j, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv59
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bm, i8 0, i64 %i.h, i1 false)
  %i.bn = load ptr, ptr %i.j, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv59
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.r
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 %i.h, i1 false)
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.br = load ptr, ptr %i.j, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next60
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %i.h, i1 false)
  %i.bu = load ptr, ptr %i.j, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.next60
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.r
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bx, i8 0, i64 %i.h, i1 false)
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next60.1, %i.r
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph57, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph57.prol.loopexit, %.lr.ph57, %.preheader
  br i1 %i.w, label %bb.e, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainer11FFT_RecurseEjjiPm.exit

bb.e:                                             ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = shl nsw i32 %4, 1                       ; 2 uses
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer28FFT_ReturnShuffledThreadsafeEjjiPm(ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef 0, i32 noundef range(i32 0, -2147483648) %i.i, i32 noundef %i.ca, ptr noundef %i.bz), !inline_history !15
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer28FFT_ReturnShuffledThreadsafeEjjiPm(ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %i.i, i32 noundef range(i32 0, -2147483648) %i.i, i32 noundef %i.ca, ptr noundef %i.bz), !inline_history !15
  br label %_ZN2v86bigint12_GLOBAL__N_112FFTContainer11FFT_RecurseEjjiPm.exit

_ZN2v86bigint12_GLOBAL__N_112FFTContainer11FFT_RecurseEjjiPm.exit: ; preds = %bb.e, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer17PointwiseMultiplyERKS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::bigint::(anonymous namespace)::FFTContainer", align 8 ; 14 uses
  %3 = alloca %"class.v8::bigint::(anonymous namespace)::FFTContainer", align 8 ; 11 uses
  %4 = alloca %"class.v8::bigint::Digits", align 8 ; 5 uses
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ugt i32 %i.e, 199
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4              ; 4 uses
  %i.i = and i32 %i.h, 3
  %i.j = icmp eq i32 %i.i, 0
  %i.k = select i1 %i.f, i1 %i.j, i1 false        ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.h, i1 false)
  %i.m = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 false)
  %i.n = sub nsw i32 28, %i.m
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.l) ; 5 uses
  %i.o = shl i32 %i.h, 6
  %i.p = shl nuw nsw i32 1, %.sroa.speculated.i   ; 3 uses
  %i.q = lshr i32 %i.o, %.sroa.speculated.i       ; 2 uses
  %i.r = shl i32 %i.q, 1
  %i.s = add nsw i32 %i.p, %.sroa.speculated.i
  %i.t = add i32 %i.s, %i.r
  %i.u = sub nsw i32 0, %i.p
  %i.v = and i32 %i.t, %i.u
  %i.w = add i32 %i.v, 63                         ; 2 uses
  %i.x = and i32 %i.w, -64
  %i.y = lshr i32 %i.x, %.sroa.speculated.i
  %i.z = lshr i32 %i.w, 6
  %i.aa = lshr i32 %i.q, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.819.0 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 8 uses
  %.sroa.12.0 = phi i32 [ %i.aa, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.sroa.16.0 = phi i32 [ %i.y, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.sroa.5.0 = phi i32 [ %i.z, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.017.0 = phi i32 [ %.sroa.speculated.i, %bb.b ], [ 0, %bb.a ]
  %i.ab = shl i32 %i.e, 1                         ; 4 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainer25DoPointwiseMultiplicationERKS2_jjPm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = shl i32 %.sroa.16.0, 1                  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.ai = add nuw nsw i32 %.sroa.5.0, 1           ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = mul i32 %i.ai, %.sroa.819.0
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ao = zext nneg i32 %.sroa.819.0 to i64       ; 5 uses
  %i.ap = shl nuw nsw i64 %i.ao, 3                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %.not.i.i = icmp eq i32 %.sroa.819.0, 0         ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ax = zext nneg i32 %i.ai to i64              ; 9 uses
  %i.ay = shl nuw nsw i32 %i.ai, 4
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bb = zext i32 %i.ab to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = shl nuw nsw i32 %.sroa.12.0, 1          ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = or disjoint i32 %i.bd, 1                ; 2 uses
  %i.bg = zext nneg i32 %i.bf to i64
  %wide.trip.count = zext i32 %i.a to i64
  %xtraiter = and i64 %i.ao, 3                    ; 3 uses
  %i.bh = icmp samesign ult i32 %.sroa.819.0, 4
  %unroll_iter = and i64 %i.ao, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod86 = icmp ne i64 %xtraiter, 0
  %xtraiter87 = and i64 %i.ao, 7                  ; 3 uses
  %i.bi = icmp samesign ult i32 %.sroa.819.0, 8
  %unroll_iter91 = and i64 %i.ao, 2147483640
  %lcmp.mod89.not = icmp eq i64 %xtraiter87, 0
  %lcmp.mod90 = icmp ne i64 %xtraiter87, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 7 uses
  %i.bj = load ptr, ptr %i.ac, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = load i32, ptr %i.d, align 8             ; 4 uses
  %i.bn = load ptr, ptr %i.ad, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = load ptr, ptr %i.ae, align 8            ; 4 uses
  br i1 %i.k, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i32 %.sroa.819.0, ptr %2, align 8
  store i32 %.sroa.5.0, ptr %i.ag, align 4
  store i32 %i.ai, ptr %i.ah, align 8
  store ptr %i.bq, ptr %i.aj, align 8
  %i.br = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #12, !inline_history !16 ; 3 uses
  store ptr %i.br, ptr %i.an, align 8
  %i.bs = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #12, !inline_history !16
  store ptr %i.bs, ptr %i.aq, align 8
  br i1 %.not.i.i, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  br i1 %i.bh, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 5 uses
  %.01011.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %i.br, %.lr.ph.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bt = load ptr, ptr %i.aq, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i.i
  store ptr %.01011.i.i, ptr %i.bu, align 8
  %i.bv = load i32, ptr %i.ah, align 8
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.01011.i.i, i64 %i.bw ; 2 uses
  %i.by = load ptr, ptr %i.aq, align 8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.bx, ptr %i.ca, align 8
  %i.cb = load i32, ptr %i.ah, align 8
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.aq, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.cd, ptr %i.cg, align 8
  %i.ch = load i32, ptr %i.ah, align 8
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci ; 2 uses
  %i.ck = load ptr, ptr %i.aq, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cj, ptr %i.cm, align 8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.cn = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.co = zext i32 %i.cn to i64
end_hunk_0
begin_hunk_1_@_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj:bb.a

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext i32 %1 to i64
  %i.u = load i64, ptr %0, align 8                ; 2 uses
  %add.narrowed.i.peel.i = sub i64 %i.u, %i.d
  %add.narrowed.overflow.i.not.peel.not.i = icmp ugt i64 %i.d, %i.u
  store i64 %add.narrowed.i.peel.i, ptr %0, align 8
  %exitcond.peel.not.i = icmp eq i32 %1, 1
  %or.cond49.i = or i1 %exitcond.peel.not.i, %add.narrowed.overflow.i.not.peel.not.i
  br i1 %or.cond49.i, label %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %add.narrowed.i.i = add i64 %i.w, 1
  %add.narrowed.overflow.i.not.i = icmp ne i64 %i.w, -1
  store i64 %add.narrowed.i.i, ptr %i.v, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond50.i = select i1 %add.narrowed.overflow.i.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond50.i, label %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit, label %.lr.ph.i, !llvm.loop !55

_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit: ; preds = %.lr.ph.i, %.lr.ph33.i, %.lr.ph33.preheader.i, %.lr.ph.preheader.i
  %.pr = load i64, ptr %i.c, align 8              ; 5 uses
  %i.x = icmp eq i64 %.pr, 0
  br i1 %i.x, label %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit58, label %bb.e

bb.e:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit
  %i.y = icmp sgt i64 %.pr, 0
  store i64 0, ptr %i.c, align 8
  %wide.trip.count42.i35 = zext i32 %1 to i64     ; 2 uses
  %i.z = load i64, ptr %0, align 8                ; 3 uses
  br i1 %i.y, label %.lr.ph33.preheader.i34, label %.lr.ph.preheader.i21

.lr.ph33.preheader.i34:                           ; preds = %bb.e
  %i.aa = zext i64 %i.z to i128
  %i.ab = zext nneg i64 %.pr to i128
  %i.ac = sub nsw i128 %i.aa, %i.ab               ; 2 uses
  %i.ad = trunc i128 %i.ac to i64
  store i64 %i.ad, ptr %0, align 8
  %i.ae = and i128 %i.ac, 18446744073709551616
  %i.af = icmp eq i128 %i.ae, 0
  %exitcond43.peel.not.i36 = icmp eq i32 %1, 1
  %or.cond.i37 = or i1 %exitcond43.peel.not.i36, %i.af
  br i1 %or.cond.i37, label %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit43, label %.lr.ph33.i38

.lr.ph33.i38:                                     ; preds = %.lr.ph33.preheader.i34, %.lr.ph33.i38
  %indvars.iv39.i39 = phi i64 [ %indvars.iv.next40.i40, %.lr.ph33.i38 ], [ 1, %.lr.ph33.preheader.i34 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv39.i39 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = zext i64 %i.ah to i128
  %i.aj = add nsw i128 %i.ai, -1                  ; 2 uses
  %i.ak = trunc i128 %i.aj to i64
  store i64 %i.ak, ptr %i.ag, align 8
  %i.al = and i128 %i.aj, 18446744073709551616
  %i.am = icmp eq i128 %i.al, 0
  %indvars.iv.next40.i40 = add nuw nsw i64 %indvars.iv39.i39, 1 ; 2 uses
  %exitcond43.not.i41 = icmp eq i64 %indvars.iv.next40.i40, %wide.trip.count42.i35
  %or.cond48.i42 = select i1 %i.am, i1 true, i1 %exitcond43.not.i41
  br i1 %or.cond48.i42, label %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit43, label %.lr.ph33.i38, !llvm.loop !54

.lr.ph.preheader.i21:                             ; preds = %bb.e
  %add.narrowed.i.peel.i23 = sub i64 %i.z, %.pr
  %add.narrowed.overflow.i.not.peel.not.i24 = icmp ugt i64 %.pr, %i.z
  store i64 %add.narrowed.i.peel.i23, ptr %0, align 8
  %exitcond.peel.not.i25 = icmp eq i32 %1, 1
  %or.cond49.i26 = or i1 %exitcond.peel.not.i25, %add.narrowed.overflow.i.not.peel.not.i24
  br i1 %or.cond49.i26, label %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit43, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.preheader.i21, %.lr.ph.i27
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i31, %.lr.ph.i27 ], [ 1, %.lr.ph.preheader.i21 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i28 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %add.narrowed.i.i29 = add i64 %i.ao, 1
  %add.narrowed.overflow.i.not.i30 = icmp ne i64 %i.ao, -1
  store i64 %add.narrowed.i.i29, ptr %i.an, align 8
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, %wide.trip.count42.i35
  %or.cond50.i33 = select i1 %add.narrowed.overflow.i.not.i30, i1 true, i1 %exitcond.not.i32
  br i1 %or.cond50.i33, label %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit43, label %.lr.ph.i27, !llvm.loop !55

_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit43: ; preds = %.lr.ph.i27, %.lr.ph33.i38, %.lr.ph33.preheader.i34, %.lr.ph.preheader.i21
  %i.ap = load i64, ptr %i.c, align 8
  %i.aq = icmp eq i64 %i.ap, -1
  br i1 %i.aq, label %.lr.ph.preheader.i45, label %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit58

.lr.ph.preheader.i45:                             ; preds = %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit43
  store i64 0, ptr %i.c, align 8
  %wide.trip.count.i46 = zext i32 %1 to i64
  %i.ar = load i64, ptr %0, align 8               ; 2 uses
  %add.narrowed.i.peel.i47 = add i64 %i.ar, 1
  %add.narrowed.overflow.i.not.peel.not.i48 = icmp ne i64 %i.ar, -1
  store i64 %add.narrowed.i.peel.i47, ptr %0, align 8
  %exitcond.peel.not.i49 = icmp eq i32 %1, 1
  %or.cond49.i50 = or i1 %exitcond.peel.not.i49, %add.narrowed.overflow.i.not.peel.not.i48
  br i1 %or.cond49.i50, label %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit58, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.preheader.i45, %.lr.ph.i51
  %indvars.iv.i52 = phi i64 [ %indvars.iv.next.i55, %.lr.ph.i51 ], [ 1, %.lr.ph.preheader.i45 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i52 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %add.narrowed.i.i53 = add i64 %i.at, 1
  %add.narrowed.overflow.i.not.i54 = icmp ne i64 %i.at, -1
  store i64 %add.narrowed.i.i53, ptr %i.as, align 8
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next.i55, %wide.trip.count.i46
  %or.cond50.i57 = select i1 %add.narrowed.overflow.i.not.i54, i1 true, i1 %exitcond.not.i56
  br i1 %or.cond50.i57, label %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit58, label %.lr.ph.i51, !llvm.loop !55

_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit58: ; preds = %.lr.ph.i51, %bb.d, %bb.c, %.lr.ph.preheader.i45, %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit43, %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit, %bb.a
  ret void
}

declare void @_ZN2v86bigint13ProcessorImpl8MultiplyENS0_8RWDigitsENS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr, i32, ptr, i32, ptr noundef byval(%"class.v8::bigint::Digits") align 8) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer22BackwardFFT_ThreadsafeEjjiPm(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 align 2 {
bb.a:
  %i.a = lshr i32 %2, 1                           ; 5 uses
  %i.b = icmp ugt i32 %2, 5
  br i1 %i.b, label %bb.b, label %._crit_edge54

._crit_edge54:                                    ; preds = %bb.a
  %.pre = add i32 %i.a, %1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %3, 1                        ; 2 uses
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer22BackwardFFT_ThreadsafeEjjiPm(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %i.a, i32 noundef %i.c, ptr noundef %4)
  %i.d = add i32 %i.a, %1                         ; 2 uses
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer22BackwardFFT_ThreadsafeEjjiPm(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.d, i32 noundef %i.a, i32 noundef %i.c, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge54, %bb.b
  %.pre-phi = phi i32 [ %.pre, %._crit_edge54 ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = zext i32 %.pre-phi to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8              ; 4 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext i32 %i.n to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %.02025.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.af, %.lr.ph.i ]
  %.02124.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.y, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = zext i64 %i.p to i128                    ; 2 uses
  %i.t = zext i64 %i.r to i128                    ; 2 uses
  %i.u = zext nneg i64 %.02124.i to i128
  %i.v = add nuw nsw i128 %i.s, %i.u
  %i.w = add nuw nsw i128 %i.v, %i.t              ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = trunc nuw nsw i128 %i.x to i64
  %i.z = trunc i128 %i.w to i64
  store i64 %i.z, ptr %i.o, align 8
  %i.aa = zext nneg i64 %.02025.i to i128
  %i.ab = add nuw nsw i128 %i.aa, %i.t
  %i.ac = sub nsw i128 %i.s, %i.ab                ; 2 uses
  %i.ad = lshr i128 %i.ac, 64
  %i.ae = trunc nuw i128 %i.ad to i64
  %i.af = and i64 %i.ae, 1
  %i.ag = trunc i128 %i.ac to i64
  store i64 %i.ag, ptr %i.q, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit, label %.lr.ph.i, !llvm.loop !28

_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit: ; preds = %.lr.ph.i, %bb.c
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj(ptr noundef %i.i, i32 noundef %i.n)
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj(ptr noundef %i.l, i32 noundef %i.n)
  %i.ah = icmp ugt i32 %2, 3
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit46, %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit46
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit46 ] ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ak = sub i32 %2, %i.aj
  %i.al = mul i32 %i.ak, %3
  %i.am = load ptr, ptr %i.e, align 8
  %i.an = add i32 %.pre-phi, %i.aj
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load i32, ptr %i.ai, align 4
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_110ShiftModFnEPmPKmijj(ptr noundef %4, ptr noundef %i.aq, i32 noundef %i.al, i32 noundef %i.ar, i32 noundef 2147483647)
  %i.as = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.at = add i32 %1, %i.aj
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = load i32, ptr %i.m, align 8             ; 4 uses
  %.not.i37 = icmp eq i32 %i.az, 0
  br i1 %.not.i37, label %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit46, label %.lr.ph.preheader.i38

.lr.ph.preheader.i38:                             ; preds = %bb.d
  %wide.trip.count.i39 = zext i32 %i.az to i64
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40, %.lr.ph.preheader.i38
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.preheader.i38 ], [ %indvars.iv.next.i44, %.lr.ph.i40 ] ; 4 uses
  %.02025.i42 = phi i64 [ 0, %.lr.ph.preheader.i38 ], [ %i.br, %.lr.ph.i40 ]
  %.02124.i43 = phi i64 [ 0, %.lr.ph.preheader.i38 ], [ %i.bk, %.lr.ph.i40 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i41 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i41
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = zext i64 %i.bb to i128                  ; 2 uses
  %i.bf = zext i64 %i.bd to i128                  ; 2 uses
  %i.bg = zext nneg i64 %.02124.i43 to i128
  %i.bh = add nuw nsw i128 %i.be, %i.bg
  %i.bi = add nuw nsw i128 %i.bh, %i.bf           ; 2 uses
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = trunc nuw nsw i128 %i.bj to i64
  %i.bl = trunc i128 %i.bi to i64
  store i64 %i.bl, ptr %i.ba, align 8
  %i.bm = zext nneg i64 %.02025.i42 to i128
  %i.bn = add nuw nsw i128 %i.bm, %i.bf
  %i.bo = sub nsw i128 %i.be, %i.bn               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = trunc nuw i128 %i.bp to i64
  %i.br = and i64 %i.bq, 1
  %i.bs = trunc i128 %i.bo to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i41
  store i64 %i.bs, ptr %i.bt, align 8
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %wide.trip.count.i39
  br i1 %exitcond.not.i45, label %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit46, label %.lr.ph.i40, !llvm.loop !28

_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit46: ; preds = %.lr.ph.i40, %bb.d
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj(ptr noundef %i.aw, i32 noundef %i.az)
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj(ptr noundef %i.ay, i32 noundef %i.az)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !57
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{null}
!16 = distinct !{null, null}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{null}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !6, !39, !40}
!42 = distinct !{!42, !6, !39}
!43 = distinct !{!43, !6, !39}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6, !47, !39, !40}
!47 = !{!"llvm.loop.peeled.count", i32 1}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6, !47, !39}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6, !47}
!55 = distinct !{!55, !6, !47}
!56 = distinct !{!56, !6}
!57 = distinct !{!57, !6}
end_hunk_1
