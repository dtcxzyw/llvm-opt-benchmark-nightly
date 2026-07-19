inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@u_charFromName_78:bb.a
  %i.lh = add i8 %i.lf, -48
  %or.cond5.i = icmp ult i8 %i.lh, 10
  br i1 %or.cond5.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph156.i
  %i.li = add i8 %i.lf, -65
  %or.cond8.i = icmp ult i8 %i.li, 6
  br i1 %or.cond8.i, label %bb.bb, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread

bb.bb:                                            ; preds = %bb.ba, %.lr.ph156.i
  %.sink208.i = phi i32 [ -48, %.lr.ph156.i ], [ -55, %bb.ba ]
  %i.lj = shl i32 %.090153.i, 4
  %i.lk = add nsw i32 %.sink208.i, %i.lg
  %i.ll = or i32 %i.lk, %i.lj                     ; 2 uses
  %i.lm = add nuw nsw i16 %.095152.i, 1           ; 2 uses
  %exitcond179.not.i = icmp eq i16 %i.lm, %i.ld
  br i1 %exitcond179.not.i, label %._crit_edge157.i, label %.lr.ph156.i, !llvm.loop !19

._crit_edge157.i:                                 ; preds = %bb.bb, %bb.az
  %.090.lcssa.i = phi i32 [ 0, %bb.az ], [ %i.ll, %bb.bb ] ; 3 uses
  %.181.lcssa.i = phi ptr [ %.080.i, %bb.az ], [ %i.le, %bb.bb ]
  %i.ln = load i8, ptr %.181.lcssa.i, align 1
  %i.lo = icmp eq i8 %i.ln, 0
  br i1 %i.lo, label %bb.bc, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread

bb.bc:                                            ; preds = %._crit_edge157.i
  %i.lp = load i32, ptr %.078141, align 4
  %.not108.i = icmp ugt i32 %i.lp, %.090.lcssa.i
  br i1 %.not108.i, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lq = getelementptr inbounds nuw i8, ptr %.078141, i64 4
  %i.lr = load i32, ptr %i.lq, align 4
  %.not109.i = icmp ugt i32 %.090.lcssa.i, %i.lr
  br i1 %.not109.i, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit

bb.be:                                            ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ls = getelementptr inbounds nuw i8, ptr %.078141, i64 12 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.078141, i64 9
  %i.lu = load i8, ptr %i.lt, align 1             ; 3 uses
  %i.lv = zext i8 %i.lu to i16                    ; 3 uses
  %i.lw = zext i8 %i.lu to i64
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.ls, i64 %i.lw
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.be
  %.086.i = phi ptr [ %i.lx, %bb.be ], [ %i.ly, %bb.bg ] ; 2 uses
  %.282.i = phi ptr [ %i.e, %bb.be ], [ %i.ma, %bb.bg ] ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.086.i, i64 1 ; 2 uses
  %i.lz = load i8, ptr %.086.i, align 1           ; 2 uses
  %.not.i = icmp eq i8 %i.lz, 0
  br i1 %.not.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ma = getelementptr inbounds nuw i8, ptr %.282.i, i64 1
  %i.mb = load i8, ptr %.282.i, align 1
  %.not106.i = icmp eq i8 %i.lz, %i.mb
  br i1 %.not106.i, label %bb.bf, label %.thread115.i, !llvm.loop !20

bb.bh:                                            ; preds = %bb.bf
  %i.mc = load i32, ptr %.078141, align 4         ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.078141, i64 4
  %i.me = load i32, ptr %i.md, align 4            ; 2 uses
  %i.mf = call fastcc noundef zeroext i16 @_ZN6icu_78L17writeFactorSuffixEPKttPKcjPtPS3_S5_Pct(ptr noundef nonnull %i.ls, i16 noundef zeroext %i.lv, ptr noundef nonnull %i.ly, i32 noundef 0, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i16 noundef zeroext 64) ; 0 uses
  %i.mg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.282.i, ptr noundef nonnull dereferenceable(1) %i.a) #12
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %.thread115.i, label %.preheader120.i

.preheader120.i:                                  ; preds = %bb.bh
  %i.mi = add i32 %i.me, 1
  %i.mj = add nsw i32 %i.mc, 1                    ; 2 uses
  %i.mk = icmp slt i32 %i.mj, %i.mi
  br i1 %i.mk, label %.preheader.lr.ph.i, label %._crit_edge151.i

.preheader.lr.ph.i:                               ; preds = %.preheader120.i
  %i.ml = add nsw i16 %i.lv, -1                   ; 2 uses
  %i.mm = zext i16 %i.ml to i64                   ; 4 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.mm ; 3 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.ls, i64 %i.mm
  %.not160.i = icmp eq i8 %i.lu, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.bi, %.preheader.lr.ph.i
  %i.mp = phi i32 [ %i.mj, %.preheader.lr.ph.i ], [ %i.ny, %bb.bi ] ; 3 uses
  %i.mq = load i16, ptr %i.mn, align 2
  %i.mr = add i16 %i.mq, 1                        ; 2 uses
  %i.ms = load i16, ptr %i.mo, align 2
  %i.mt = icmp ult i16 %i.mr, %i.ms
  br i1 %i.mt, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.lcssa126.i = phi i64 [ %i.mm, %.preheader.i ], [ %i.nd, %.lr.ph.i ]
  %.lcssa125.i = phi ptr [ %i.mn, %.preheader.i ], [ %i.ne, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.mr, %.preheader.i ], [ %i.ng, %.lr.ph.i ]
  store i16 %.lcssa.i, ptr %.lcssa125.i, align 2
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.lcssa126.i ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8            ; 2 uses
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.mv)
  %scevgep.i = getelementptr i8, ptr %i.mv, i64 1
  %scevgep178.i = getelementptr i8, ptr %scevgep.i, i64 %strlen.i
  store ptr %scevgep178.i, ptr %i.mu, align 8
  br i1 %.not160.i, label %._crit_edge148.thread.i, label %.lr.ph147.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.mw = phi ptr [ %i.ne, %.lr.ph.i ], [ %i.mn, %.preheader.i ]
  %i.mx = phi i64 [ %i.nd, %.lr.ph.i ], [ %i.mm, %.preheader.i ] ; 2 uses
  %i.my = phi i16 [ %i.nc, %.lr.ph.i ], [ %i.ml, %.preheader.i ]
  store i16 0, ptr %i.mw, align 2
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mx
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.mx
  store ptr %i.na, ptr %i.nb, align 8
  %i.nc = add i16 %i.my, -1                       ; 2 uses
  %i.nd = zext i16 %i.nc to i64                   ; 4 uses
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.nd ; 3 uses
  %i.nf = load i16, ptr %i.ne, align 2
  %i.ng = add i16 %i.nf, 1                        ; 2 uses
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %i.ls, i64 %i.nd
  %i.ni = load i16, ptr %i.nh, align 2
  %i.nj = icmp ult i16 %i.ng, %i.ni
  br i1 %i.nj, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !21

.lr.ph147.i:                                      ; preds = %._crit_edge.i, %._crit_edge141.i
  %.178145.i = phi i16 [ %i.nt, %._crit_edge141.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %.084144.i = phi ptr [ %.185.lcssa.i, %._crit_edge141.i ], [ %.282.i, %._crit_edge.i ] ; 2 uses
  %i.nk = zext i16 %.178145.i to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.nk
  %i.nm = load ptr, ptr %i.nl, align 8            ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1             ; 2 uses
  %.not104135.i = icmp eq i8 %i.nn, 0
  br i1 %.not104135.i, label %._crit_edge141.i, label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %.lr.ph147.i, %.lr.ph140.i
  %i.no = phi i8 [ %i.ns, %.lr.ph140.i ], [ %i.nn, %.lr.ph147.i ]
  %.279138.i = phi i16 [ %spec.select111.i, %.lr.ph140.i ], [ %.178145.i, %.lr.ph147.i ]
  %.185137.i = phi ptr [ %i.nq, %.lr.ph140.i ], [ %.084144.i, %.lr.ph147.i ] ; 2 uses
  %.288136.i = phi ptr [ %spec.select.i, %.lr.ph140.i ], [ %i.nm, %.lr.ph147.i ]
  %i.np = getelementptr inbounds nuw i8, ptr %.288136.i, i64 1
  %i.nq = getelementptr inbounds nuw i8, ptr %.185137.i, i64 1 ; 2 uses
  %i.nr = load i8, ptr %.185137.i, align 1
  %.not105.i = icmp eq i8 %i.no, %i.nr            ; 2 uses
  %spec.select.i = select i1 %.not105.i, ptr %i.np, ptr @.str.42 ; 2 uses
  %spec.select111.i = select i1 %.not105.i, i16 %.279138.i, i16 99 ; 2 uses
  %i.ns = load i8, ptr %spec.select.i, align 1    ; 2 uses
  %.not104.i = icmp eq i8 %i.ns, 0
  br i1 %.not104.i, label %._crit_edge141.i, label %.lr.ph140.i, !llvm.loop !22

._crit_edge141.i:                                 ; preds = %.lr.ph140.i, %.lr.ph147.i
  %.185.lcssa.i = phi ptr [ %.084144.i, %.lr.ph147.i ], [ %i.nq, %.lr.ph140.i ] ; 2 uses
  %.279.lcssa.i = phi i16 [ %.178145.i, %.lr.ph147.i ], [ %spec.select111.i, %.lr.ph140.i ]
  %i.nt = add i16 %.279.lcssa.i, 1                ; 3 uses
  %i.nu = icmp ult i16 %i.nt, %i.lv
  br i1 %i.nu, label %.lr.ph147.i, label %._crit_edge148.i, !llvm.loop !23

._crit_edge148.i:                                 ; preds = %._crit_edge141.i
  %i.nv = icmp ult i16 %i.nt, 99
  br i1 %i.nv, label %._crit_edge148.thread.i, label %bb.bi

._crit_edge148.thread.i:                          ; preds = %._crit_edge148.i, %._crit_edge.i
  %.084.lcssa191.i = phi ptr [ %.185.lcssa.i, %._crit_edge148.i ], [ %.282.i, %._crit_edge.i ]
  %i.nw = load i8, ptr %.084.lcssa191.i, align 1
  %i.nx = icmp eq i8 %i.nw, 0
  br i1 %i.nx, label %.thread115.i, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge148.thread.i, %._crit_edge148.i
  %i.ny = add i32 %i.mp, 1
  %exitcond.not.i = icmp eq i32 %i.mp, %i.me
  br i1 %exitcond.not.i, label %._crit_edge151.i, label %.preheader.i, !llvm.loop !24

.thread115.i:                                     ; preds = %bb.bg, %._crit_edge148.thread.i, %bb.bh
  %.1.ph.i = phi i32 [ %i.mc, %bb.bh ], [ %i.mp, %._crit_edge148.thread.i ], [ 65535, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit

._crit_edge151.i:                                 ; preds = %bb.bi, %.preheader120.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread

_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit: ; preds = %bb.bd, %.thread115.i
  %.2.i = phi i32 [ %.1.ph.i, %.thread115.i ], [ %.090.lcssa.i, %bb.bd ] ; 2 uses
  %.not100 = icmp eq i32 %.2.i, 65535
  br i1 %.not100, label %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread, label %.loopexit

_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread: ; preds = %bb.ay, %bb.ba, %bb.bd, %._crit_edge157.i, %bb.bc, %._crit_edge151.i, %.lr.ph.split, %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit
  %i.nz = getelementptr inbounds nuw i8, ptr %.078141, i64 10
  %i.oa = load i16, ptr %i.nz, align 2
  %i.ob = zext i16 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %.078141, i64 %i.ob
  %i.od = add i32 %.486140, -1                    ; 2 uses
  %.not99 = icmp eq i32 %i.od, 0
  br i1 %.not99, label %._crit_edge.split, label %.lr.ph.split, !llvm.loop !25

._crit_edge.split:                                ; preds = %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit.thread, %bb.av
  store ptr %i.e, ptr %3, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 65535, ptr %i.oe, align 8
  %i.of = call fastcc noundef signext i8 @_ZN6icu_78L9enumNamesEPNS_10UCharNamesEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr noundef %i.km, i32 noundef 0, i32 noundef 1114112, ptr noundef null, ptr noundef nonnull %3, i32 noundef %0) ; 0 uses
  %i.og = load i32, ptr %i.oe, align 8            ; 2 uses
  %i.oh = icmp eq i32 %i.og, 65535
  br i1 %i.oh, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.f, %bb.n, %bb.m, %._crit_edge.split, %bb.h, %bb.i, %.critedge, %.critedge.thread, %bb.o, %bb.au, %bb.c, %bb.d
  %.sink = phi i32 [ 12, %bb.h ], [ 12, %bb.i ], [ 12, %bb.n ], [ 12, %._crit_edge.split ], [ 1, %bb.c ], [ 1, %bb.d ], [ 12, %bb.au ], [ 12, %bb.o ], [ 12, %.critedge.thread ], [ 12, %.critedge ], [ 12, %bb.m ], [ 12, %bb.f ]
  store i32 %.sink, ptr %2, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit, %.loopexit.sink.split, %._crit_edge.split, %bb.o, %bb.e, %bb.a, %bb.b
  %.4 = phi i32 [ 65535, %bb.a ], [ %.087.lcssa, %bb.o ], [ 65535, %bb.b ], [ 65535, %.loopexit.sink.split ], [ %i.og, %._crit_edge.split ], [ 65535, %bb.e ], [ %.2.i, %_ZN6icu_78L11findAlgNameEPNS_16AlgorithmicRangeE15UCharNameChoicePKc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare signext i8 @uprv_toupper_78(i8 noundef signext) local_unnamed_addr #2

declare signext i8 @uprv_asciitolower_78(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i8 @_ZN6icu_78L10getCharCatEi(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 64975
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 65008
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %0, 65534
  %i.d = icmp eq i32 %i.c, 65534
  %i.e = icmp samesign ult i32 %0, 1114112
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.f = tail call signext i8 @u_charType_78(i32 noundef %0) #11 ; 2 uses
  %i.g = icmp eq i8 %i.f, 18
  %i.h = and i32 %0, -1024
  %i.i = icmp eq i32 %i.h, 55296
  %i.j = select i1 %i.i, i8 31, i8 32
  %.0 = select i1 %i.g, i8 %i.j, i8 %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.010 = phi i8 [ %.0, %bb.d ], [ 30, %bb.b ], [ 30, %bb.c ]
  ret i8 %.010
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZN6icu_78L9enumNamesEPNS_10UCharNamesEiiPFaPvi15UCharNameChoicePKciES2_S3_(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, i32 noundef range(i32 -2147483648, 4) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 5 uses
  %i.b = alloca [200 x i8], align 16              ; 6 uses
  %i.c = alloca [200 x i8], align 16              ; 6 uses
  %i.d = alloca [200 x i8], align 16              ; 6 uses
  %i.e = lshr i32 %1, 5                           ; 3 uses
  %i.f = add nsw i32 %2, -1                       ; 4 uses
  %i.g = lshr i32 %i.f, 5                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.m = load i16, ptr %i.k, align 2              ; 3 uses
  %i.n = icmp ugt i16 %i.m, 1
  br i1 %i.n, label %.lr.ph.i, label %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge

._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge: ; preds = %bb.a
  %.pre = and i32 %i.e, 65535
  br label %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = zext i16 %i.m to i32
  %i.p = and i32 %i.e, 65535                      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.q = phi i32 [ %i.o, %.lr.ph.i ], [ %i.ac, %bb.b ]
  %i.r = phi i32 [ 0, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %.019.i = phi i16 [ %i.m, %.lr.ph.i ], [ %..0.i, %bb.b ]
  %.01418.i = phi i16 [ 0, %.lr.ph.i ], [ %.014..i, %bb.b ]
  %i.s = add nuw nsw i32 %i.r, %i.q
  %i.t = lshr i32 %i.s, 1                         ; 2 uses
  %i.u = trunc nuw i32 %i.t to i16                ; 2 uses
  %i.v = mul nuw nsw i32 %i.t, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2
  %i.z = zext i16 %i.y to i32
  %i.aa = icmp samesign ult i32 %i.p, %i.z        ; 2 uses
  %.014..i = select i1 %i.aa, i16 %.01418.i, i16 %i.u ; 2 uses
  %..0.i = select i1 %i.aa, i16 %i.u, i16 %.019.i ; 2 uses
  %i.ab = zext i16 %.014..i to i32                ; 3 uses
  %i.ac = zext i16 %..0.i to i32                  ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = icmp sgt i32 %i.ad, %i.ab
  br i1 %i.ae, label %bb.b, label %._crit_edge.loopexit.i, !llvm.loop !10

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.af = mul nuw nsw i32 %i.ab, 3
  %i.ag = zext nneg i32 %i.af to i64
  br label %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit

_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit:     ; preds = %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge, %._crit_edge.loopexit.i
  %.pre-phi = phi i32 [ %.pre, %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge ], [ %i.p, %._crit_edge.loopexit.i ] ; 6 uses
  %.lcssa.i = phi i64 [ 0, %._ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit_crit_edge ], [ %i.ag, %._crit_edge.loopexit.i ]
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.lcssa.i ; 11 uses
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = icmp samesign ult i32 %.pre-phi, %i.aj
  %i.al = icmp eq i32 %5, 2                       ; 5 uses
  %or.cond = and i1 %i.al, %i.ak
  br i1 %or.cond, label %bb.c, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread

bb.c:                                             ; preds = %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit
  %i.am = shl nuw nsw i32 %i.aj, 5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %2) ; 4 uses
  %i.an = add nsw i32 %spec.select, -1
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %.not15.not18.i.not = icmp slt i32 %1, %spec.select
  br i1 %.not15.not18.i.not, label %.lr.ph.i180, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread217

.lr.ph.i180:                                      ; preds = %bb.d, %bb.f
  %.01219.i = phi i32 [ %i.at, %bb.f ], [ %1, %bb.d ] ; 4 uses
  %i.ao = call fastcc noundef zeroext i16 @_ZN6icu_78L10getExtNameEjPct(i32 noundef %.01219.i, ptr noundef nonnull %i.d, i16 noundef zeroext 200) ; 3 uses
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  store i8 0, ptr %i.aq, align 1
  %.not16.i = icmp eq i16 %i.ao, 0
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i180
  %i.ar = zext i16 %i.ao to i32
  %i.as = call noundef signext i8 %3(ptr noundef %4, i32 noundef %.01219.i, i32 noundef 2, ptr noundef nonnull %i.d, i32 noundef %i.ar) #11, !inline_history !26
  %.not17.i = icmp eq i8 %i.as, 0
  br i1 %.not17.i, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i180
  %i.at = add i32 %.01219.i, 1
  %exitcond.not.i = icmp eq i32 %.01219.i, %i.an
  br i1 %exitcond.not.i, label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread217, label %.lr.ph.i180, !llvm.loop !27

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread217: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit213

_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread: ; preds = %bb.c, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread217, %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit
  %.1129 = phi i32 [ %spec.select, %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread217 ], [ %1, %_ZN6icu_78L8getGroupEPNS_10UCharNamesEj.exit ], [ %spec.select, %bb.c ] ; 8 uses
  %i.au = and i32 %i.g, 65535                     ; 3 uses
  %i.av = icmp eq i32 %.pre-phi, %i.au
  br i1 %i.av, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread
  %i.aw = load i16, ptr %i.ah, align 2
  %i.ax = trunc i32 %i.e to i16
  %i.ay = icmp eq i16 %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr i8, ptr %i.ah, i64 2
  %.val178 = load i16, ptr %i.az, align 2
  %i.ba = getelementptr i8, ptr %i.ah, i64 4
  %.val179 = load i16, ptr %i.ba, align 2
  %i.bb = call fastcc noundef signext i8 @_ZN6icu_78L14enumGroupNamesEPNS_10UCharNamesEPKtiiPFaPvi15UCharNameChoicePKciES4_S5_(ptr noundef nonnull %0, i16 %.val178, i16 %.val179, i32 noundef %.1129, i32 noundef %i.f, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit213

bb.i:                                             ; preds = %_ZN6icu_78L12enumExtNamesEiiPFaPvi15UCharNameChoicePKciES0_.exit.thread
  %i.bc = load i32, ptr %i.h, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i16, ptr %i.be, align 2
  %i.bh = zext i16 %i.bg to i64
  %.idx = mul nuw nsw i64 %i.bh, 6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx ; 5 uses
  %i.bj = load i16, ptr %i.ah, align 2
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = icmp eq i32 %.pre-phi, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bm = and i32 %.1129, 31
end_hunk_0
