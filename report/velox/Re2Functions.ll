inline.NumInlined: 18564
inline.NumDeleted: 5746
loop-unroll.NumCompletelyUnrolled: 236
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 262
begin_hunk_0_@_ZZNK8facebook5velox9functions12_GLOBAL__N_111LikeGeneric5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlRKNS0_10StringViewESP_RKSt8optionalIcEE0_clESP_SP_ST_:bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox9functions15PatternMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  resume { ptr, i32 } %i.o

bb.e:                                             ; preds = %bb.b
  %.val25 = load i32, ptr %1, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.val26 = load i64, ptr %i.p, align 8, !tbaa !272
  %i.q = zext i32 %.val25 to i64
  %i.r = icmp ule i64 %.val26, %i.q
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.f:                                             ; preds = %bb.b
  %.val27 = load i64, ptr %1, align 8             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val28 = load ptr, ptr %i.s, align 8, !tbaa !16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !272
  %.val.i = load ptr, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val3.i = load i64, ptr %i.w, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.val27, ptr %9, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.val28, ptr %i.x, align 8
  %.not.i.i = icmp eq i64 %.val3.i, 0
  %i.y = trunc i64 %.val27 to i32                 ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.g, !prof !161

bb.g:                                             ; preds = %bb.f
  %i.z = and i64 %.val27, 4294967295
  %i.aa = icmp eq i64 %.val3.i, %i.z
  br i1 %i.aa, label %bb.h, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp ult i32 %i.y, 13
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ad = select i1 %i.ab, ptr %i.ac, ptr %.val28
  %bcmp.i.i = call i32 @bcmp(ptr %i.ad, ptr readonly %.val.i, i64 %i.v)
  %i.ae = icmp eq i32 %bcmp.i.i, 0
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.i:                                             ; preds = %bb.f
  %i.af = icmp eq i32 %i.y, 0
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.0.i.i = phi i1 [ %i.af, %bb.i ], [ false, %bb.g ], [ %i.ae, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.j:                                             ; preds = %bb.b
  %.val29 = load i64, ptr %1, align 8             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val30 = load ptr, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.val31 = load i64, ptr %i.ah, align 8, !tbaa !272 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.val32 = load ptr, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.val29, ptr %8, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.val30, ptr %i.aj, align 8
  %i.ak = and i64 %.val29, 4294967295
  %.not.i.i53 = icmp ugt i64 %.val31, %i.ak
  br i1 %.not.i.i53, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = trunc i64 %.val29 to i32
  %i.am = icmp ult i32 %i.al, 13
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ao = select i1 %i.am, ptr %i.an, ptr %.val30
  %bcmp.i.i54 = call i32 @bcmp(ptr %i.ao, ptr readonly %.val32, i64 %.val31)
  %i.ap = icmp eq i32 %bcmp.i.i54, 0
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %bb.j, %bb.k
  %i.aq = phi i1 [ false, %bb.j ], [ %i.ap, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.l:                                             ; preds = %bb.b
  %.val33 = load i64, ptr %1, align 8             ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val34 = load ptr, ptr %i.ar, align 8, !tbaa !16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !272 ; 3 uses
  %.val.i55 = load ptr, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val3.i56 = load i64, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.val33, ptr %7, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.val34, ptr %i.aw, align 8
  %i.ax = and i64 %.val33, 4294967295             ; 2 uses
  %.not.i.i57 = icmp ugt i64 %i.au, %i.ax
  br i1 %.not.i.i57, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = trunc i64 %.val33 to i32
  %i.az = icmp ult i32 %i.ay, 13
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bb = select i1 %i.az, ptr %i.ba, ptr %.val34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ax
  %i.bd = sub nsw i64 0, %i.au                    ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i55, i64 %.val3.i56
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.bd
  %bcmp.i.i58 = call i32 @bcmp(ptr %i.be, ptr readonly %i.bg, i64 %i.au)
  %i.bh = icmp eq i32 %bcmp.i.i58, 0
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %bb.l, %bb.m
  %i.bi = phi i1 [ false, %bb.l ], [ %i.bh, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.n:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.val35 = load ptr, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val36 = load i64, ptr %i.bk, align 8, !tbaa !17 ; 5 uses
  %i.bl = load i32, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 13
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = select i1 %i.bm, ptr %i.bn, ptr %i.bp   ; 3 uses
  %i.br = zext i32 %i.bl to i64                   ; 3 uses
  %i.bs = icmp eq i64 %.val36, 0
  br i1 %i.bs, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not2531.i.i.i.i = icmp ugt i64 %.val36, %i.br
  br i1 %.not2531.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  %i.bu = load i8, ptr %.val35, align 1, !tbaa !16
  %i.bv = sext i8 %i.bu to i32
  %i.bw = ptrtoint ptr %i.bt to i64
  %invariant.op143 = sub i64 1, %.val36
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.033.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ %i.cg, %bb.r ]
  %.02132.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %i.ce, %bb.r ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i.i.i, %invariant.op143 ; 2 uses
  %i.bx = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.bx, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.p
  %i.by = call ptr @memchr(ptr noundef %.02132.i.i.i.i, i32 noundef %i.bv, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass) #38 ; 4 uses
  %.not26.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not26.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.by, ptr nonnull readonly %.val35, i64 %.val36)
  %i.bz = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bq to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp ne i64 %i.cc, -1
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.bw, %i.cf                    ; 2 uses
  %.not25.i.i.i.i = icmp ult i64 %i.cg, %.val36
  br i1 %.not25.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %bb.p, !llvm.loop !3244

.invoke:                                          ; preds = %bb.b, %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !3245, !nonnull !81, !align !602
  %.val37 = load ptr, ptr %i.ci, align 8, !tbaa !3168
  %.val38 = load i16, ptr %3, align 1
  %i.cj = invoke fastcc noundef zeroext i1 @_ZZNK8facebook5velox9functions12_GLOBAL__N_111LikeGeneric5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlRKNS0_10StringViewESP_RKSt8optionalIcEE_clESP_SP_ST_(ptr %.val37, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i16 %.val38)
          to label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit unwind label %bb.d

bb.s:                                             ; preds = %bb.a
  switch i32 %i.k, label %.invoke [
    i32 0, label %bb.t
    i32 1, label %bb.x
    i32 2, label %bb.ab
    i32 4, label %bb.af
    i32 6, label %bb.ah
    i32 8, label %bb.aj
  ]

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.val41 = load i64, ptr %i.ck, align 8, !tbaa !272 ; 3 uses
  %11 = add i64 %.val41, 1
  %i.cl = load i32, ptr %1, align 8, !tbaa !7     ; 3 uses
  %i.cm = icmp ult i32 %i.cl, 13
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = select i1 %i.cm, ptr %i.cn, ptr %i.cp   ; 2 uses
  %i.cr = zext i32 %i.cl to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  %i.ct = icmp ne i32 %i.cl, 0
  %i.cu = icmp ult i64 %.val41, 9223372036854775807
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %.lr.ph.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

.lr.ph.i:                                         ; preds = %bb.t, %_ZL20utf8proc_char_lengthPKc.exit.i
  %.0.i4.i = phi ptr [ %i.dc, %_ZL20utf8proc_char_lengthPKc.exit.i ], [ %i.cq, %bb.t ] ; 2 uses
  %.012.i3.i = phi i64 [ %i.dd, %_ZL20utf8proc_char_lengthPKc.exit.i ], [ 0, %bb.t ]
  %.0.i.val.i = load i8, ptr %.0.i4.i, align 1, !tbaa !16 ; 4 uses
  %i.cw = icmp sgt i8 %.0.i.val.i, -1
  br i1 %i.cw, label %_ZL20utf8proc_char_lengthPKc.exit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.cx = and i8 %.0.i.val.i, -32
  %or.cond.i.i = icmp eq i8 %i.cx, -64
  br i1 %or.cond.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = and i8 %.0.i.val.i, -16
  %or.cond5.i.i = icmp eq i8 %i.cy, -32
  br i1 %or.cond5.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = and i8 %.0.i.val.i, -8
  %or.cond8.i.i = icmp eq i8 %i.cz, -16
  %i.da = select i1 %or.cond8.i.i, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i

_ZL20utf8proc_char_lengthPKc.exit.i:              ; preds = %bb.w, %bb.v, %bb.u, %.lr.ph.i
  %i.db = phi i64 [ %i.da, %bb.w ], [ 3, %bb.v ], [ 2, %bb.u ], [ 1, %.lr.ph.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 %i.db ; 2 uses
  %i.dd = add nuw nsw i64 %.012.i3.i, 1           ; 3 uses
  %i.de = icmp ult ptr %i.dc, %i.cs
  %i.df = icmp slt i64 %i.dd, %11
  %i.dg = select i1 %i.de, i1 %i.df, i1 false
  br i1 %i.dg, label %.lr.ph.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i, %bb.t
  %.012.i.lcssa.i = phi i64 [ 0, %bb.t ], [ %i.dd, %_ZL20utf8proc_char_lengthPKc.exit.i ]
  %i.dh = icmp eq i64 %.012.i.lcssa.i, %.val41
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.x:                                             ; preds = %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.val42 = load i64, ptr %i.di, align 8, !tbaa !272 ; 3 uses
  %12 = add i64 %.val42, 1
  %i.dj = load i32, ptr %1, align 8, !tbaa !7     ; 3 uses
  %i.dk = icmp ult i32 %i.dj, 13
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = select i1 %i.dk, ptr %i.dl, ptr %i.dn   ; 2 uses
  %i.dp = zext i32 %i.dj to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp
  %i.dr = icmp ne i32 %i.dj, 0
  %i.ds = icmp ult i64 %.val42, 9223372036854775807
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %i.dt, label %.lr.ph.i60, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

.lr.ph.i60:                                       ; preds = %bb.x, %_ZL20utf8proc_char_lengthPKc.exit.i67
  %.0.i4.i61 = phi ptr [ %i.ea, %_ZL20utf8proc_char_lengthPKc.exit.i67 ], [ %i.do, %bb.x ] ; 2 uses
  %.012.i3.i62 = phi i64 [ %i.eb, %_ZL20utf8proc_char_lengthPKc.exit.i67 ], [ 0, %bb.x ]
  %.0.i.val.i63 = load i8, ptr %.0.i4.i61, align 1, !tbaa !16 ; 4 uses
  %i.du = icmp sgt i8 %.0.i.val.i63, -1
  br i1 %i.du, label %_ZL20utf8proc_char_lengthPKc.exit.i67, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i60
  %i.dv = and i8 %.0.i.val.i63, -32
  %or.cond.i.i64 = icmp eq i8 %i.dv, -64
  br i1 %or.cond.i.i64, label %_ZL20utf8proc_char_lengthPKc.exit.i67, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = and i8 %.0.i.val.i63, -16
  %or.cond5.i.i65 = icmp eq i8 %i.dw, -32
  br i1 %or.cond5.i.i65, label %_ZL20utf8proc_char_lengthPKc.exit.i67, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = and i8 %.0.i.val.i63, -8
  %or.cond8.i.i66 = icmp eq i8 %i.dx, -16
  %i.dy = select i1 %or.cond8.i.i66, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i67

_ZL20utf8proc_char_lengthPKc.exit.i67:            ; preds = %bb.aa, %bb.z, %bb.y, %.lr.ph.i60
  %i.dz = phi i64 [ %i.dy, %bb.aa ], [ 3, %bb.z ], [ 2, %bb.y ], [ 1, %.lr.ph.i60 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i4.i61, i64 %i.dz ; 2 uses
  %i.eb = add nuw nsw i64 %.012.i3.i62, 1         ; 3 uses
  %i.ec = icmp ult ptr %i.ea, %i.dq
  %i.ed = icmp slt i64 %i.eb, %12
  %i.ee = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %i.ee, label %.lr.ph.i60, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i67, %bb.x
  %.012.i.lcssa.i59 = phi i64 [ 0, %bb.x ], [ %i.eb, %_ZL20utf8proc_char_lengthPKc.exit.i67 ]
  %i.ef = icmp uge i64 %.012.i.lcssa.i59, %.val42
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.ab:                                            ; preds = %bb.s
  %.val43 = load i64, ptr %1, align 8             ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val44 = load ptr, ptr %i.eg, align 8, !tbaa !16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !272
  %.val.i68 = load ptr, ptr %i.eh, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val3.i69 = load i64, ptr %i.ek, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.val43, ptr %6, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.val44, ptr %i.el, align 8
  %.not.i.i70 = icmp eq i64 %.val3.i69, 0
  %i.em = trunc i64 %.val43 to i32                ; 2 uses
  br i1 %.not.i.i70, label %bb.ae, label %bb.ac, !prof !161

bb.ac:                                            ; preds = %bb.ab
  %i.en = and i64 %.val43, 4294967295
  %i.eo = icmp eq i64 %.val3.i69, %i.en
  br i1 %i.eo, label %bb.ad, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ep = icmp ult i32 %i.em, 13
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.er = select i1 %i.ep, ptr %i.eq, ptr %.val44
  %bcmp.i.i72 = call i32 @bcmp(ptr %i.er, ptr readonly %.val.i68, i64 %i.ej)
  %i.es = icmp eq i32 %bcmp.i.i72, 0
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.ae:                                            ; preds = %bb.ab
  %i.et = icmp eq i32 %i.em, 0
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %bb.ac, %bb.ad, %bb.ae
  %.0.i.i71 = phi i1 [ %i.et, %bb.ae ], [ false, %bb.ac ], [ %i.es, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.af:                                            ; preds = %bb.s
  %.val45 = load i64, ptr %1, align 8             ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val46 = load ptr, ptr %i.eu, align 8, !tbaa !16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.val47 = load i64, ptr %i.ev, align 8, !tbaa !272 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.val48 = load ptr, ptr %i.ew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.val45, ptr %5, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.val46, ptr %i.ex, align 8
  %i.ey = and i64 %.val45, 4294967295
  %.not.i.i73 = icmp ugt i64 %.val47, %i.ey
  br i1 %.not.i.i73, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = trunc i64 %.val45 to i32
  %i.fa = icmp ult i32 %i.ez, 13
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fc = select i1 %i.fa, ptr %i.fb, ptr %.val46
  %bcmp.i.i74 = call i32 @bcmp(ptr %i.fc, ptr readonly %.val48, i64 %.val47)
  %i.fd = icmp eq i32 %bcmp.i.i74, 0
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %bb.af, %bb.ag
  %i.fe = phi i1 [ false, %bb.af ], [ %i.fd, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.ah:                                            ; preds = %bb.s
  %.val49 = load i64, ptr %1, align 8             ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val50 = load ptr, ptr %i.ff, align 8, !tbaa !16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !272 ; 3 uses
  %.val.i75 = load ptr, ptr %i.fg, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val3.i76 = load i64, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.val49, ptr %4, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.val50, ptr %i.fk, align 8
  %i.fl = and i64 %.val49, 4294967295             ; 2 uses
  %.not.i.i77 = icmp ugt i64 %i.fi, %i.fl
  br i1 %.not.i.i77, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fm = trunc i64 %.val49 to i32
  %i.fn = icmp ult i32 %i.fm, 13
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fp = select i1 %i.fn, ptr %i.fo, ptr %.val50
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fl
  %i.fr = sub nsw i64 0, %i.fi                    ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %.val.i75, i64 %.val3.i76
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 %i.fr
  %bcmp.i.i78 = call i32 @bcmp(ptr %i.fs, ptr readonly %i.fu, i64 %i.fi)
  %i.fv = icmp eq i32 %bcmp.i.i78, 0
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %bb.ah, %bb.ai
  %i.fw = phi i1 [ false, %bb.ah ], [ %i.fv, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.aj:                                            ; preds = %bb.s
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.val51 = load ptr, ptr %i.fx, align 8, !tbaa !13 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val52 = load i64, ptr %i.fy, align 8, !tbaa !17 ; 5 uses
  %i.fz = load i32, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ga = icmp ult i32 %i.fz, 13
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = select i1 %i.ga, ptr %i.gb, ptr %i.gd   ; 3 uses
  %i.gf = zext i32 %i.fz to i64                   ; 3 uses
  %i.gg = icmp eq i64 %.val52, 0
  br i1 %i.gg, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not2531.i.i.i.i79 = icmp ugt i64 %.val52, %i.gf
  br i1 %.not2531.i.i.i.i79, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %.lr.ph.i.i.i.i80

.lr.ph.i.i.i.i80:                                 ; preds = %bb.ak
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gf
  %i.gi = load i8, ptr %.val51, align 1, !tbaa !16
  %i.gj = sext i8 %i.gi to i32
  %i.gk = ptrtoint ptr %i.gh to i64
  %invariant.op = sub i64 1, %.val52
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph.i.i.i.i80
  %.033.i.i.i.i81 = phi i64 [ %i.gf, %.lr.ph.i.i.i.i80 ], [ %i.gu, %bb.an ]
  %.02132.i.i.i.i82 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i80 ], [ %i.gs, %bb.an ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i84.reass.reass.reass = add i64 %.033.i.i.i.i81, %invariant.op ; 2 uses
  %i.gl = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i84.reass.reass.reass, 0
  br i1 %i.gl, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i85

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i85: ; preds = %bb.al
  %i.gm = call ptr @memchr(ptr noundef %.02132.i.i.i.i82, i32 noundef %i.gj, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i84.reass.reass.reass) #38 ; 4 uses
  %.not26.i.i.i.i86 = icmp eq ptr %i.gm, null
  br i1 %.not26.i.i.i.i86, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i87

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i87: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i85
  %bcmp.i.i.i.i88 = call i32 @bcmp(ptr nonnull %i.gm, ptr nonnull readonly %.val51, i64 %.val52)
  %i.gn = icmp eq i32 %bcmp.i.i.i.i88, 0
  br i1 %i.gn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i87
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = ptrtoint ptr %i.ge to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = icmp ne i64 %i.gq, -1
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

bb.an:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i87
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 1 ; 2 uses
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.gk, %i.gt                    ; 2 uses
  %.not25.i.i.i.i89 = icmp ult i64 %i.gu, %.val52
  br i1 %.not25.i.i.i.i89, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, label %bb.al, !llvm.loop !3244

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %bb.an, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i85, %bb.al, %bb.r, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.p, %.invoke, %bb.am, %bb.ak, %bb.aj, %bb.q, %bb.o, %bb.n, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %bb.c, %bb.e
  %.0 = phi i1 [ false, %bb.r ], [ %i.fw, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %i.r, %bb.e ], [ %i.n, %bb.c ], [ %.0.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %i.aq, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %i.bi, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE6EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ false, %bb.ak ], [ %i.cj, %.invoke ], [ %i.dh, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %i.ef, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %.0.i.i71, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE2EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ %i.fe, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE4EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ], [ true, %bb.n ], [ false, %bb.o ], [ %i.cd, %bb.q ], [ %i.gr, %bb.am ], [ true, %bb.aj ], [ false, %bb.p ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ], [ false, %bb.al ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i85 ], [ false, %bb.an ]
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !241 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !243 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.gw, %i.gy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i91

.lr.ph.i.i.i.i91:                                 ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.he, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.gw, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE8EE5matchILb1EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ] ; 3 uses
  %i.gz = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i91
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !16
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #49
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.he, %i.gy
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i91, !llvm.loop !244

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_:bb.a
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40.i.i.i.i.i.i.i ], [ %i.hh, %bb.bi ]
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36.i.i.i.i.i.i.i
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #50
  unreachable

bb.bp:                                            ; preds = %.loopexit43.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit34.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i, %bb.az
  %i.hn = add i64 %.01557.i.i.i.i.i.i.i, -1
  %i.ho = and i64 %i.hn, %.01557.i.i.i.i.i.i.i    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.az, !llvm.loop !3358

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i, %bb.ah, %.lr.ph.i.i.i.i.i.i
  %i.hp = add nsw i32 %i.dt, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i = icmp sgt i32 %i.hp, %i.cz
  br i1 %.not33.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3359

bb.bq:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.hq = and i32 %i.cv, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %notmask.i36.i.i.i.i.i.i = shl nsw i64 -1, %i.hr
  %i.hs = xor i64 %notmask.i36.i.i.i.i.i.i, -1
  br label %.invoke460

.invoke460:                                       ; preds = %bb.ae, %bb.bq
  %i.ht = phi i64 [ %i.hs, %bb.bq ], [ %i.dk, %bb.ae ]
  %i.hu = ashr i32 %i.cv, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %28, i32 noundef %i.hu, i64 noundef %i.ht)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i: ; preds = %.invoke460, %._crit_edge.i.i.i.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_EEvSB_T_.exit

_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_EEvSB_T_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i, %bb.k, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  br label %bb.ep

bb.br:                                            ; preds = %.critedge
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

.loopexit:                                        ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit208 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit212 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit220 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke460, %.invoke, %bb.cy, %bb.ag
  %lpad.loopexit.split-lp224 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.dg, %bb.ea, %bb.cg, %bb.al, %bb.bc, %bb.o, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87, %bb.cr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59, %bb.dr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i, %bb.el, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i, %bb.z, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i, %bb.aw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36.i.i.i.i.i.i.i, %bb.bn
  %eh.lpad-body = phi { ptr, i32 } [ %i.en, %bb.al ], [ %.pn.i.i.i.i, %bb.z ], [ %i.cj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i ], [ %i.bl, %bb.o ], [ %.pn.i18.i.i.i.i.i.i.i, %bb.aw ], [ %i.fl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i, %bb.bn ], [ %i.hf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp224, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gh, %bb.bc ], [ %.pn.i.i.i.i94, %bb.cr ], [ %i.lf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87 ], [ %i.kh, %bb.cg ], [ %.pn.i18.i.i.i.i.i.i.i63, %bb.dr ], [ %i.pc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59 ], [ %.pn.i.i.i.i.i.i.i.i80, %bb.el ], [ %i.rr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i ], [ %i.qt, %bb.ea ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit208, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit212, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit216, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit220, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit223, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.oe, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.ho

bb.bs:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %i.l, ptr %23, align 8
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  store ptr %i.a, ptr %.sroa.4205.0..sroa_idx, align 8
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %0, ptr %.sroa.5206.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.hw = load i8, ptr %i.u, align 1, !tbaa !728, !range !83, !noundef !81
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i116, label %bb.bt

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i116: ; preds = %bb.bs
  %.0.in.pre.i.i.i.i117 = load i8, ptr %i.t, align 4, !tbaa !82, !range !83
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i38

bb.bt:                                            ; preds = %bb.bs
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !729
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.bu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36

bb.bu:                                            ; preds = %bb.bt
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !730 ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !731
  %i.if = icmp eq i32 %i.ic, %i.ie
  br i1 %i.if, label %bb.bv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36

bb.bv:                                            ; preds = %bb.bu
  %i.ig = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %.not.i.i.i.i.i108 = icmp sgt i32 %i.ic, 0
  br i1 %.not.i.i.i.i.i108, label %bb.bw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36

bb.bw:                                            ; preds = %bb.bv
  %i.ih = and i32 %i.ic, 2147483584               ; 3 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %.not37.i.i.not.i.i.i.i110522.not = icmp eq i32 %i.ih, 0
  br i1 %.not37.i.i.not.i.i.i.i110522.not, label %.critedge.i.i.i.i.i.i111, label %.lr.ph524

bb.bx:                                            ; preds = %.lr.ph524
  %indvars.iv.next.i.i.i.i115 = add nuw nsw i64 %indvars.iv.i.i.i.i109523, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i110 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i115, %i.ii
  br i1 %.not37.i.i.not.i.i.i.i110, label %.lr.ph524, label %.critedge.i.i.i.i.i.i111, !llvm.loop !733

.lr.ph524:                                        ; preds = %bb.bw, %bb.bx
  %indvars.iv.i.i.i.i109523 = phi i64 [ %indvars.iv.next.i.i.i.i115, %bb.bx ], [ 0, %bb.bw ] ; 2 uses
  %i.ij = lshr exact i64 %indvars.iv.i.i.i.i109523, 3
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ij
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !233
  %i.im = icmp eq i64 %i.il, -1
  br i1 %i.im, label %bb.bx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36, !llvm.loop !733

.critedge.i.i.i.i.i.i111:                         ; preds = %bb.bx, %bb.bw
  %.not38.i.i.i.i.i.i112 = icmp eq i32 %i.ic, %i.ih
  br i1 %.not38.i.i.i.i.i.i112, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36, label %bb.by

bb.by:                                            ; preds = %.critedge.i.i.i.i.i.i111
  %i.in = lshr i32 %i.ic, 6
  %i.io = and i32 %i.ic, 63
  %i.ip = zext nneg i32 %i.io to i64
  %notmask.i40.i.i.i.i.i.i113 = shl nsw i64 -1, %i.ip
  %i.iq = zext nneg i32 %i.in to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !233
  %.demorgan.i.i.i.i114 = or i64 %i.is, %notmask.i40.i.i.i.i.i.i113
  %i.it = icmp eq i64 %.demorgan.i.i.i.i114, -1
  %i.iu = zext i1 %i.it to i16
  %i.iv = or disjoint i16 %i.iu, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36: ; preds = %.lr.ph524, %bb.by, %.critedge.i.i.i.i.i.i111, %bb.bv, %bb.bu, %bb.bt
  %.sroa.0.0.insert.ext.i.i.i.i37 = phi i16 [ 256, %bb.bu ], [ 256, %bb.bt ], [ 257, %bb.bv ], [ 257, %.critedge.i.i.i.i.i.i111 ], [ %i.iv, %bb.by ], [ 256, %.lr.ph524 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i37, ptr %i.t, align 4
  %i.iw = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i37 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i38

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i38: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i116
  %.0.in.i.i.i.i39 = phi i8 [ %.0.in.pre.i.i.i.i117, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i116 ], [ %i.iw, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36 ]
  %.0.i.i.i.i40 = trunc nuw i8 %.0.in.i.i.i.i39 to i1
  br i1 %.0.i.i.i.i40, label %bb.bz, label %bb.cu

bb.bz:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i38
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !730 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !729 ; 2 uses
  %i.jb = icmp slt i32 %i.ja, %i.iy
  br i1 %i.jb, label %.lr.ph.i.i.i83, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_EEvSB_T_.exit

.lr.ph.i.i.i83:                                   ; preds = %bb.bz
  %i.jc = sext i32 %i.ja to i64
  br label %bb.ca

bb.ca:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i, %.lr.ph.i.i.i83
  %indvars.iv.i.i.i84 = phi i64 [ %i.jc, %.lr.ph.i.i.i83 ], [ %indvars.iv.next.i.i.i90, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i ] ; 3 uses
  %i.jd = load ptr, ptr %.sroa.5206.0..sroa_idx, align 8, !tbaa !3360
  %i.je = load ptr, ptr %23, align 8, !tbaa !3362, !nonnull !81, !align !602
  %i.jf = load ptr, ptr %.sroa.4205.0..sroa_idx, align 8, !tbaa !3363, !nonnull !81, !align !602
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !2173
  %i.jh = getelementptr inbounds [16 x i8], ptr %i.jg, i64 %indvars.iv.i.i.i84 ; 3 uses
  %i.ji = getelementptr i8, ptr %i.jd, i64 16
  %.val.i.i.i.i85 = load i64, ptr %i.ji, align 8, !tbaa !272 ; 3 uses
  %35 = add i64 %.val.i.i.i.i85, 1
  %i.jj = load i32, ptr %i.jh, align 8, !tbaa !7  ; 3 uses
  %i.jk = icmp ult i32 %i.jj, 13
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = select i1 %i.jk, ptr %i.jl, ptr %i.jn   ; 2 uses
  %i.jp = zext i32 %i.jj to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jp
  %i.jr = icmp ne i32 %i.jj, 0
  %i.js = icmp ult i64 %.val.i.i.i.i85, 9223372036854775807
  %i.jt = select i1 %i.jr, i1 %i.js, i1 false
  br i1 %i.jt, label %.lr.ph.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ca, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i
  %.0.i4.i.i.i.i.i = phi ptr [ %i.ka, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i ], [ %i.jo, %bb.ca ] ; 2 uses
  %.012.i3.i.i.i.i.i = phi i64 [ %i.kb, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i ], [ 0, %bb.ca ]
  %.0.i.val.i.i.i.i.i = load i8, ptr %.0.i4.i.i.i.i.i, align 1, !tbaa !16 ; 4 uses
  %i.ju = icmp sgt i8 %.0.i.val.i.i.i.i.i, -1
  br i1 %i.ju, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jv = and i8 %.0.i.val.i.i.i.i.i, -32
  %or.cond.i.i.i.i.i.i = icmp eq i8 %i.jv, -64
  br i1 %or.cond.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jw = and i8 %.0.i.val.i.i.i.i.i, -16
  %or.cond5.i.i.i.i.i.i = icmp eq i8 %i.jw, -32
  br i1 %or.cond5.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jx = and i8 %.0.i.val.i.i.i.i.i, -8
  %or.cond8.i.i.i.i.i.i = icmp eq i8 %i.jx, -16
  %i.jy = select i1 %or.cond8.i.i.i.i.i.i, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i

_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i:      ; preds = %bb.cd, %bb.cc, %bb.cb, %.lr.ph.i.i.i.i.i
  %i.jz = phi i64 [ %i.jy, %bb.cd ], [ 3, %bb.cc ], [ 2, %bb.cb ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i4.i.i.i.i.i, i64 %i.jz ; 2 uses
  %i.kb = add nuw nsw i64 %.012.i3.i.i.i.i.i, 1   ; 3 uses
  %i.kc = icmp ult ptr %i.ka, %i.jq
  %i.kd = icmp slt i64 %i.kb, %35
  %i.ke = select i1 %i.kc, i1 %i.kd, i1 false
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i, %bb.ca
  %.012.i.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ca ], [ %i.kb, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i ]
  %i.kf = icmp eq i64 %.012.i.lcssa.i.i.i.i.i, %.val.i.i.i.i85
  %i.kg = trunc nsw i64 %indvars.iv.i.i.i84 to i32 ; 3 uses
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.je, i32 noundef %i.kg, i1 noundef zeroext %i.kf)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i unwind label %bb.ce

bb.ce:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0      ; 2 uses
  %i.kj = extractvalue { ptr, i32 } %i.kh, 1      ; 2 uses
  %i.kk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.kl = icmp eq i32 %i.kj, %i.kk
  br i1 %i.kl, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.km = call ptr @__cxa_begin_catch(ptr %i.ki) #38
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !756 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 144
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !13 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 152
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !17
  %i.kt = icmp eq i64 %i.ks, 4
  br i1 %i.kt, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i95, label %.loopexit.i.i.i93

.lr.ph.i.i.i.preheader.i.preheader.i.i.i95:       ; preds = %bb.cf
  %i.ku = load i8, ptr %i.kq, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i96 = icmp eq i8 %i.ku, 85
  br i1 %or.cond.not.i.i.i.i.i.i96, label %tailrecurse.i.i.i.i.i.i.i97, label %.loopexit.i.i.i93

tailrecurse.i.i.i.i.i.i.i97:                      ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i95
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i98 = icmp eq i8 %i.kw, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i98, label %tailrecurse.i.i.i.i.1.i.i.i99, label %.loopexit.i.i.i93

tailrecurse.i.i.i.i.1.i.i.i99:                    ; preds = %tailrecurse.i.i.i.i.i.i.i97
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i100 = icmp eq i8 %i.ky, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i100, label %tailrecurse.i.i.i.i.2.i.i.i101, label %.loopexit.i.i.i93

tailrecurse.i.i.i.i.2.i.i.i101:                   ; preds = %tailrecurse.i.i.i.i.1.i.i.i99
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kq, i64 3
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i102 = icmp eq i8 %i.la, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i102, label %tailrecurse.i.i.i.i.3.i.i.i103, label %.loopexit.i.i.i93

tailrecurse.i.i.i.i.3.i.i.i103:                   ; preds = %tailrecurse.i.i.i.i.2.i.i.i101
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %21) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.kg, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.cn unwind label %bb.cp

.loopexit.i.i.i93:                                ; preds = %tailrecurse.i.i.i.i.2.i.i.i101, %tailrecurse.i.i.i.i.1.i.i.i99, %tailrecurse.i.i.i.i.i.i.i97, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i95, %bb.cf
  invoke void @__cxa_rethrow() #47
          to label %bb.ct unwind label %bb.cm

bb.cg:                                            ; preds = %bb.ce
  %i.lb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.lc = icmp eq i32 %i.kj, %i.lb
  br i1 %i.lc, label %bb.ch, label %.body

bb.ch:                                            ; preds = %bb.cg
  %i.ld = call ptr @__cxa_begin_catch(ptr %i.ki) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %20) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.kg, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.le = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i.i.i.i88 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i88, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i89, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i89

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i89: ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i

bb.ck:                                            ; preds = %bb.ch
  %i.lf = landingpad { ptr, i32 }
          cleanup
  %i.lg = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i4.i.i.i86 = icmp eq ptr %i.lg, null
  br i1 %.not.i4.i.i.i86, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87: ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cs

bb.cm:                                            ; preds = %.loopexit.i.i.i93
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cn:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i103
  %i.li = load ptr, ptr %21, align 8, !tbaa !411
  %.not.i6.i.i.i106 = icmp eq ptr %i.li, null
  br i1 %.not.i6.i.i.i106, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i107, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i107

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i107: ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i

bb.cp:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i103
  %i.lj = landingpad { ptr, i32 }
          cleanup
  %i.lk = load ptr, ptr %21, align 8, !tbaa !411
  %.not.i8.i.i.i104 = icmp eq ptr %i.lk, null
  br i1 %.not.i8.i.i.i104, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i105, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i105

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i105: ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i105, %bb.cm
  %.pn.i.i.i.i94 = phi { ptr, i32 } [ %i.lj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i105 ], [ %i.lh, %bb.cm ]
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #50
  unreachable

bb.ct:                                            ; preds = %.loopexit.i.i.i93
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i107, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i89
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i
  %indvars.iv.next.i.i.i90 = add nsw i64 %indvars.iv.i.i.i84, 1 ; 2 uses
  %lftr.wideiv.i.i.i91 = trunc i64 %indvars.iv.next.i.i.i90 to i32
  %exitcond.not.i.i.i92 = icmp eq i32 %i.iy, %lftr.wideiv.i.i.i91
  br i1 %exitcond.not.i.i.i92, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_EEvSB_T_.exit, label %bb.ca, !llvm.loop !3364

bb.cu:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i38
  %i.ln = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !729 ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !730 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i41 = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store ptr %23, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i41, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %22, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i42, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i43 = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i43, align 8
  store i8 1, ptr %19, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i44 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ln, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i44, align 8
  %.not.i.i.i.i.i.i45 = icmp slt i32 %i.lp, %i.lr
  br i1 %.not.i.i.i.i.i.i45, label %bb.cv, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.ls = add i32 %i.lp, 63                       ; 2 uses
  %i.lt = srem i32 %i.ls, 64
  %i.lu = sub nsw i32 %i.ls, %i.lt                ; 6 uses
  %i.lv = and i32 %i.lr, -64                      ; 4 uses
  %i.lw = icmp slt i32 %i.lv, %i.lu
  br i1 %i.lw, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lx = and i32 %i.lr, 63
  %i.ly = zext nneg i32 %i.lx to i64
  %notmask.i.i.i.i.i.i.i81 = shl nsw i64 -1, %i.ly
  %i.lz = xor i64 %notmask.i.i.i.i.i.i.i81, -1
  %i.ma = sub nsw i32 %i.lu, %i.lp                ; 2 uses
  %i.mb = zext nneg i32 %i.ma to i64
  %notmask.i.i.i.i.i.i.i.i82 = shl nsw i64 -1, %i.mb
  %i.mc = xor i64 %notmask.i.i.i.i.i.i.i.i82, -1
  %i.md = sub nsw i32 64, %i.ma
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = shl i64 %i.mc, %i.me
  %i.mg = and i64 %i.mf, %i.lz
  br label %.invoke

bb.cx:                                            ; preds = %bb.cv
  %.not32.i.i.i.i.i.i46 = icmp eq i32 %i.lp, %i.lu
  br i1 %.not32.i.i.i.i.i.i46, label %.noexc122, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mh = sdiv i32 %i.lp, 64
  %i.mi = sub nsw i32 %i.lu, %i.lp                ; 2 uses
  %i.mj = zext nneg i32 %i.mi to i64
  %notmask.i.i35.i.i.i.i.i.i47 = shl nsw i64 -1, %i.mj
  %i.mk = xor i64 %notmask.i.i35.i.i.i.i.i.i47, -1
  %i.ml = sub nsw i32 64, %i.mi
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = shl i64 %i.mk, %i.mm
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %19, i32 noundef %i.mh, i64 noundef %i.mn)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.cy, %bb.cx
  %i.mo = add nsw i32 %i.lu, 64                   ; 2 uses
  %.not3348.i.i.i.i.i.i = icmp sgt i32 %i.mo, %i.lv
  br i1 %.not3348.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i.i48

._crit_edge.i.i.i.i.i.i50:                        ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i, %.noexc122
  %.not34.i.i.i.i.i.i51 = icmp eq i32 %i.lr, %i.lv
  br i1 %.not34.i.i.i.i.i.i51, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i, label %bb.eo

.lr.ph.i.i.i.i.i.i48:                             ; preds = %.noexc122, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i
  %i.mp = phi i32 [ %i.sb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.mo, %.noexc122 ] ; 2 uses
  %.049.i.i.i.i.i.i = phi i32 [ %i.mp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.lu, %.noexc122 ] ; 2 uses
  %i.mq = sdiv i32 %.049.i.i.i.i.i.i, 64          ; 3 uses
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.mr
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !233 ; 2 uses
  switch i64 %i.mt, label %.lr.ph.i.i.i.i.i.i.i77 [
    i64 -1, label %bb.cz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i77:                           ; preds = %.lr.ph.i.i.i.i.i.i48
  %i.mu = shl nsw i32 %i.mq, 6
  br label %bb.du

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i.i.i48
  %i.mv = shl nsw i32 %i.mq, 6                    ; 2 uses
  %i.mw = add i32 %i.mv, 64
  %i.mx = sext i32 %i.mw to i64
  %.0.off.i.i.i.i.i.i53 = add i32 %.049.i.i.i.i.i.i, 127
  %.not71.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i53, 64
  br i1 %.not71.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph70.i.i.i.i.i.i.i

.lr.ph70.i.i.i.i.i.i.i:                           ; preds = %bb.cz
  %i.my = sext i32 %i.mv to i64
  br label %bb.da

bb.da:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i, %.lr.ph70.i.i.i.i.i.i.i
  %.069.i.i.i.i.i.i.i = phi i64 [ %i.my, %.lr.ph70.i.i.i.i.i.i.i ], [ %i.pk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.mz = trunc i64 %.069.i.i.i.i.i.i.i to i32    ; 3 uses
  %i.na = load ptr, ptr %.sroa.5206.0..sroa_idx, align 8, !tbaa !3360
  %i.nb = load ptr, ptr %23, align 8, !tbaa !3362, !nonnull !81, !align !602
  %i.nc = load ptr, ptr %.sroa.4205.0..sroa_idx, align 8, !tbaa !3363, !nonnull !81, !align !602
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !2173
  %sext.i.i.i.i.i.i.i54 = shl i64 %.069.i.i.i.i.i.i.i, 32
  %i.ne = ashr exact i64 %sext.i.i.i.i.i.i.i54, 28
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 %i.ne ; 3 uses
  %i.ng = getelementptr i8, ptr %i.na, i64 16
  %.val.i.i.i.i.i.i.i.i55 = load i64, ptr %i.ng, align 8, !tbaa !272 ; 3 uses
  %36 = add i64 %.val.i.i.i.i.i.i.i.i55, 1
  %i.nh = load i32, ptr %i.nf, align 8, !tbaa !7  ; 3 uses
  %i.ni = icmp ult i32 %i.nh, 13
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = select i1 %i.ni, ptr %i.nj, ptr %i.nl   ; 2 uses
  %i.nn = zext i32 %i.nh to i64
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nn
  %i.np = icmp ne i32 %i.nh, 0
  %i.nq = icmp ult i64 %.val.i.i.i.i.i.i.i.i55, 9223372036854775807
  %i.nr = select i1 %i.np, i1 %i.nq, i1 false
  br i1 %i.nr, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.da, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i
  %.0.i4.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ny, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i ], [ %i.nm, %bb.da ] ; 2 uses
  %.012.i3.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nz, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.da ]
  %.0.i.val.i.i.i.i.i.i.i.i.i = load i8, ptr %.0.i4.i.i.i.i.i.i.i.i.i, align 1, !tbaa !16 ; 4 uses
  %i.ns = icmp sgt i8 %.0.i.val.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.ns, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.nt = and i8 %.0.i.val.i.i.i.i.i.i.i.i.i, -32
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nt, -64
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nu = and i8 %.0.i.val.i.i.i.i.i.i.i.i.i, -16
  %or.cond5.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nu, -32
  br i1 %or.cond5.i.i.i.i.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.nv = and i8 %.0.i.val.i.i.i.i.i.i.i.i.i, -8
  %or.cond8.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nv, -16
  %i.nw = select i1 %or.cond8.i.i.i.i.i.i.i.i.i.i, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i

_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.dd, %bb.dc, %bb.db, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.nx = phi i64 [ %i.nw, %bb.dd ], [ 3, %bb.dc ], [ 2, %bb.db ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.0.i4.i.i.i.i.i.i.i.i.i, i64 %i.nx ; 2 uses
  %i.nz = add nuw nsw i64 %.012.i3.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.oa = icmp ult ptr %i.ny, %i.no
  %i.ob = icmp slt i64 %i.nz, %36
  %i.oc = select i1 %i.oa, i1 %i.ob, i1 false
  br i1 %i.oc, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i, %bb.da
  %.012.i.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.da ], [ %i.nz, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i ]
  %i.od = icmp eq i64 %.012.i.lcssa.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i55
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.nb, i32 noundef %i.mz, i1 noundef zeroext %i.od)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i unwind label %bb.de

bb.de:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i
  %i.oe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.of = extractvalue { ptr, i32 } %i.oe, 0      ; 2 uses
  %i.og = extractvalue { ptr, i32 } %i.oe, 1      ; 2 uses
  %i.oh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.oi = icmp eq i32 %i.og, %i.oh
  br i1 %i.oi, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.oj = call ptr @__cxa_begin_catch(ptr %i.of) #38
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !756 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 144
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !13 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 152
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !17
  %i.oq = icmp eq i64 %i.op, 4
  br i1 %i.oq, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i64, label %.loopexit.i.i.i.i.i.i.i62

.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i64: ; preds = %bb.df
  %i.or = load i8, ptr %i.on, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i.i.i.i.i65 = icmp eq i8 %i.or, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i65, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i66, label %.loopexit.i.i.i.i.i.i.i62

tailrecurse.i.i.i.i.i.i.i.i.i.i.i66:              ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i64
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i67 = icmp eq i8 %i.ot, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i67, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i68, label %.loopexit.i.i.i.i.i.i.i62

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i68:            ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i66
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i69 = icmp eq i8 %i.ov, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i69, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i70, label %.loopexit.i.i.i.i.i.i.i62

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i70:            ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i68
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 3
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i71 = icmp eq i8 %i.ox, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i71, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i72, label %.loopexit.i.i.i.i.i.i.i62

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i72:            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i70
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %16) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.mz, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.dn unwind label %bb.dp

.loopexit.i.i.i.i.i.i.i62:                        ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i70, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i68, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i66, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i64, %bb.df
  invoke void @__cxa_rethrow() #47
          to label %bb.dt unwind label %bb.dm

bb.dg:                                            ; preds = %bb.de
  %i.oy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.oz = icmp eq i32 %i.og, %i.oy
  br i1 %i.oz, label %bb.dh, label %.body

bb.dh:                                            ; preds = %bb.dg
  %i.pa = call ptr @__cxa_begin_catch(ptr %i.of) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %15) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.mz, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.pb = load ptr, ptr %15, align 8, !tbaa !411
  %.not.i.i.i.i.i.i.i.i60 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i.i.i.i.i.i60, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i61, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i61

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i61: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.dh
  %i.pc = landingpad { ptr, i32 }
          cleanup
  %i.pd = load ptr, ptr %15, align 8, !tbaa !411
  %.not.i19.i.i.i.i.i.i.i58 = icmp eq ptr %i.pd, null
  br i1 %.not.i19.i.i.i.i.i.i.i58, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59: ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ds

bb.dm:                                            ; preds = %.loopexit.i.i.i.i.i.i.i62
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dn:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i72
  %i.pf = load ptr, ptr %16, align 8, !tbaa !411
  %.not.i21.i.i.i.i.i.i.i75 = icmp eq ptr %i.pf, null
  br i1 %.not.i21.i.i.i.i.i.i.i75, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i76, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i76

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i76: ; preds = %bb.do, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i72
  %i.pg = landingpad { ptr, i32 }
          cleanup
  %i.ph = load ptr, ptr %16, align 8, !tbaa !411
  %.not.i23.i.i.i.i.i.i.i73 = icmp eq ptr %i.ph, null
  br i1 %.not.i23.i.i.i.i.i.i.i73, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i74, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i74

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i74: ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i74, %bb.dm
  %.pn.i18.i.i.i.i.i.i.i63 = phi { ptr, i32 } [ %i.pg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i74 ], [ %i.pe, %bb.dm ]
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  call void @__clang_call_terminate(ptr %i.pj) #50
  unreachable

bb.dt:                                            ; preds = %.loopexit.i.i.i.i.i.i.i62
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i76, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i61
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i
  %i.pk = add nuw i64 %.069.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.pl = icmp ult i64 %i.pk, %i.mx
  br i1 %i.pl, label %bb.da, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !3365

bb.du:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i77
  %.01568.i.i.i.i.i.i.i = phi i64 [ %i.mt, %.lr.ph.i.i.i.i.i.i.i77 ], [ %i.sa, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.pm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01568.i.i.i.i.i.i.i, i1 true)
  %i.pn = trunc nuw nsw i64 %i.pm to i32
  %i.po = or disjoint i32 %i.mu, %i.pn            ; 4 uses
  %i.pp = load ptr, ptr %.sroa.5206.0..sroa_idx, align 8, !tbaa !3360
  %i.pq = load ptr, ptr %23, align 8, !tbaa !3362, !nonnull !81, !align !602
  %i.pr = load ptr, ptr %.sroa.4205.0..sroa_idx, align 8, !tbaa !3363, !nonnull !81, !align !602
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !2173
  %i.pt = sext i32 %i.po to i64
  %i.pu = getelementptr inbounds [16 x i8], ptr %i.ps, i64 %i.pt ; 3 uses
  %i.pv = getelementptr i8, ptr %i.pp, i64 16
  %.val.i25.i.i.i.i.i.i.i78 = load i64, ptr %i.pv, align 8, !tbaa !272 ; 3 uses
  %37 = add i64 %.val.i25.i.i.i.i.i.i.i78, 1
  %i.pw = load i32, ptr %i.pu, align 8, !tbaa !7  ; 3 uses
  %i.px = icmp ult i32 %i.pw, 13
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8
  %i.qb = select i1 %i.px, ptr %i.py, ptr %i.qa   ; 2 uses
  %i.qc = zext i32 %i.pw to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.qc
  %i.qe = icmp ne i32 %i.pw, 0
  %i.qf = icmp ult i64 %.val.i25.i.i.i.i.i.i.i78, 9223372036854775807
  %i.qg = select i1 %i.qe, i1 %i.qf, i1 false
  br i1 %i.qg, label %.lr.ph.i.i28.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i26.i.i.i.i.i.i.i

.lr.ph.i.i28.i.i.i.i.i.i.i:                       ; preds = %bb.du, %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i
  %.0.i4.i.i29.i.i.i.i.i.i.i = phi ptr [ %i.qn, %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i ], [ %i.qb, %bb.du ] ; 2 uses
  %.012.i3.i.i30.i.i.i.i.i.i.i = phi i64 [ %i.qo, %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i ], [ 0, %bb.du ]
  %.0.i.val.i.i31.i.i.i.i.i.i.i = load i8, ptr %.0.i4.i.i29.i.i.i.i.i.i.i, align 1, !tbaa !16 ; 4 uses
  %i.qh = icmp sgt i8 %.0.i.val.i.i31.i.i.i.i.i.i.i, -1
  br i1 %i.qh, label %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i28.i.i.i.i.i.i.i
  %i.qi = and i8 %.0.i.val.i.i31.i.i.i.i.i.i.i, -32
  %or.cond.i.i.i32.i.i.i.i.i.i.i = icmp eq i8 %i.qi, -64
  br i1 %or.cond.i.i.i32.i.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.qj = and i8 %.0.i.val.i.i31.i.i.i.i.i.i.i, -16
  %or.cond5.i.i.i33.i.i.i.i.i.i.i = icmp eq i8 %i.qj, -32
  br i1 %or.cond5.i.i.i33.i.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qk = and i8 %.0.i.val.i.i31.i.i.i.i.i.i.i, -8
  %or.cond8.i.i.i34.i.i.i.i.i.i.i = icmp eq i8 %i.qk, -16
  %i.ql = select i1 %or.cond8.i.i.i34.i.i.i.i.i.i.i, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i

_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i: ; preds = %bb.dx, %bb.dw, %bb.dv, %.lr.ph.i.i28.i.i.i.i.i.i.i
  %i.qm = phi i64 [ %i.ql, %bb.dx ], [ 3, %bb.dw ], [ 2, %bb.dv ], [ 1, %.lr.ph.i.i28.i.i.i.i.i.i.i ]
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.i4.i.i29.i.i.i.i.i.i.i, i64 %i.qm ; 2 uses
  %i.qo = add nuw nsw i64 %.012.i3.i.i30.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.qp = icmp ult ptr %i.qn, %i.qd
  %i.qq = icmp slt i64 %i.qo, %37
  %i.qr = select i1 %i.qp, i1 %i.qq, i1 false
  br i1 %i.qr, label %.lr.ph.i.i28.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i26.i.i.i.i.i.i.i, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i26.i.i.i.i.i.i.i: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i, %bb.du
  %.012.i.lcssa.i.i27.i.i.i.i.i.i.i = phi i64 [ 0, %bb.du ], [ %i.qo, %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i ]
  %i.qs = icmp eq i64 %.012.i.lcssa.i.i27.i.i.i.i.i.i.i, %.val.i25.i.i.i.i.i.i.i78
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.pq, i32 noundef %i.po, i1 noundef zeroext %i.qs)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i unwind label %bb.dy

bb.dy:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i26.i.i.i.i.i.i.i
  %i.qt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.qu = extractvalue { ptr, i32 } %i.qt, 0      ; 2 uses
  %i.qv = extractvalue { ptr, i32 } %i.qt, 1      ; 2 uses
  %i.qw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.qx = icmp eq i32 %i.qv, %i.qw
  br i1 %i.qx, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.qy = call ptr @__cxa_begin_catch(ptr %i.qu) #38
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !756 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 144
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !13 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 152
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !17
  %i.rf = icmp eq i64 %i.re, 4
  br i1 %i.rf, label %.lr.ph.i.i.i.preheader.i37.preheader.i.i.i.i.i.i.i, label %.loopexit52.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i37.preheader.i.i.i.i.i.i.i: ; preds = %bb.dz
  %i.rg = load i8, ptr %i.rc, align 1, !tbaa !16
  %or.cond.not.i.i.i39.i.i.i.i.i.i.i = icmp eq i8 %i.rg, 85
  br i1 %or.cond.not.i.i.i39.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i40.i.i.i.i.i.i.i, label %.loopexit52.i.i.i.i.i.i.i

tailrecurse.i.i.i.i40.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.preheader.i37.preheader.i.i.i.i.i.i.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 1
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !16
  %or.cond.not.i.i.i39.1.i.i.i.i.i.i.i = icmp eq i8 %i.ri, 83
  br i1 %or.cond.not.i.i.i39.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i40.1.i.i.i.i.i.i.i, label %.loopexit52.i.i.i.i.i.i.i

tailrecurse.i.i.i.i40.1.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i40.i.i.i.i.i.i.i
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rc, i64 2
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !16
  %or.cond.not.i.i.i39.2.i.i.i.i.i.i.i = icmp eq i8 %i.rk, 69
  br i1 %or.cond.not.i.i.i39.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i40.2.i.i.i.i.i.i.i, label %.loopexit52.i.i.i.i.i.i.i

tailrecurse.i.i.i.i40.2.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i40.1.i.i.i.i.i.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rc, i64 3
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !16
  %or.cond.not.i.i.i39.3.i.i.i.i.i.i.i = icmp eq i8 %i.rm, 82
  br i1 %or.cond.not.i.i.i39.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i40.3.i.i.i.i.i.i.i, label %.loopexit52.i.i.i.i.i.i.i

tailrecurse.i.i.i.i40.3.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i40.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %18) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.po, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.eh unwind label %bb.ej

.loopexit52.i.i.i.i.i.i.i:                        ; preds = %tailrecurse.i.i.i.i40.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i40.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i40.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i37.preheader.i.i.i.i.i.i.i, %bb.dz
  invoke void @__cxa_rethrow() #47
          to label %bb.en unwind label %bb.eg

bb.ea:                                            ; preds = %bb.dy
  %i.rn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ro = icmp eq i32 %i.qv, %i.rn
  br i1 %i.ro, label %bb.eb, label %.body

bb.eb:                                            ; preds = %bb.ea
  %i.rp = call ptr @__cxa_begin_catch(ptr %i.qu) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %17) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.po, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ec unwind label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %i.rq = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i42.i.i.i.i.i.i.i = icmp eq ptr %i.rq, null
  br i1 %.not.i42.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43.i.i.i.i.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43.i.i.i.i.i.i.i: ; preds = %bb.ed, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.eb
  %i.rr = landingpad { ptr, i32 }
          cleanup
  %i.rs = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i44.i.i.i.i.i.i.i = icmp eq ptr %i.rs, null
  br i1 %.not.i44.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i: ; preds = %bb.ef, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.em

bb.eg:                                            ; preds = %.loopexit52.i.i.i.i.i.i.i
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.eh:                                            ; preds = %tailrecurse.i.i.i.i40.3.i.i.i.i.i.i.i
  %i.ru = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i46.i.i.i.i.i.i.i = icmp eq ptr %i.ru, null
  br i1 %.not.i46.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47.i.i.i.i.i.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %tailrecurse.i.i.i.i40.3.i.i.i.i.i.i.i
  %i.rv = landingpad { ptr, i32 }
          cleanup
  %i.rw = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i48.i.i.i.i.i.i.i = icmp eq ptr %i.rw, null
  br i1 %.not.i48.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i: ; preds = %bb.ek, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %bb.el

bb.el:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i, %bb.eg
  %.pn.i.i.i.i.i.i.i.i80 = phi { ptr, i32 } [ %i.rv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i ], [ %i.rt, %bb.eg ]
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.em

bb.em:                                            ; preds = %bb.el, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i
  %i.rx = landingpad { ptr, i32 }
          catch ptr null
  %i.ry = extractvalue { ptr, i32 } %i.rx, 0
  call void @__clang_call_terminate(ptr %i.ry) #50
  unreachable

bb.en:                                            ; preds = %.loopexit52.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i26.i.i.i.i.i.i.i
  %i.rz = add i64 %.01568.i.i.i.i.i.i.i, -1
  %i.sa = and i64 %i.rz, %.01568.i.i.i.i.i.i.i    ; 2 uses
  %.not.i.i.i.i.i.i.i79 = icmp eq i64 %i.sa, 0
  br i1 %.not.i.i.i.i.i.i.i79, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.du, !llvm.loop !3366

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i, %bb.cz, %.lr.ph.i.i.i.i.i.i48
  %i.sb = add nsw i32 %i.mp, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i49 = icmp sgt i32 %i.sb, %i.lv
  br i1 %.not33.i.i.i.i.i.i49, label %._crit_edge.i.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i.i48, !llvm.loop !3367

bb.eo:                                            ; preds = %._crit_edge.i.i.i.i.i.i50
  %i.sc = and i32 %i.lr, 63
  %i.sd = zext nneg i32 %i.sc to i64
  %notmask.i36.i.i.i.i.i.i52 = shl nsw i64 -1, %i.sd
  %i.se = xor i64 %notmask.i36.i.i.i.i.i.i52, -1
  br label %.invoke

.invoke:                                          ; preds = %bb.cw, %bb.eo
  %i.sf = phi i64 [ %i.se, %bb.eo ], [ %i.mg, %bb.cw ]
  %i.sg = ashr i32 %i.lr, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %19, i32 noundef %i.sg, i64 noundef %i.sf)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i: ; preds = %.invoke, %._crit_edge.i.i.i.i.i.i50, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_EEvSB_T_.exit

_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_EEvSB_T_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i, %bb.bz, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.ep

bb.ep:                                            ; preds = %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_EEvSB_T_.exit, %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_EEvSB_T_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.hm

bb.eq:                                            ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.sh = getelementptr inbounds nuw i8, ptr %i.n, i64 59
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !753, !range !83, !noundef !81
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.hj

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  %i.sk = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !742
  %i.sm = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !754
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds [16 x i8], ptr %i.sl, i64 %i.so ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.sp, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %34, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.sq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  br i1 %i.k, label %bb.er, label %bb.es

bb.er:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29 = load i64, ptr %i.sr, align 8, !tbaa !272
  %i.ss = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.st = icmp eq i64 %.val29, %i.ss
  br label %bb.ew

.loopexit227:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i
  %lpad.loopexit229 = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.loopexit.split-lp228.loopexit:                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit233 = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.loopexit.split-lp228.loopexit.split-lp.loopexit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit237 = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke461, %bb.fy
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.body191:                                         ; preds = %bb.gd, %bb.gu, %bb.fg, %.loopexit227, %.loopexit.split-lp228.loopexit.split-lp.loopexit, %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp228.loopexit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6.i.i.i, %bb.fr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i, %bb.go, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i, %bb.hf
  %eh.lpad-body192 = phi { ptr, i32 } [ %i.zj, %bb.gu ], [ %.pn.i.i.i.i171, %bb.fr ], [ %i.vy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6.i.i.i ], [ %i.va, %bb.fg ], [ %.pn.i18.i.i.i.i.i.i.i151, %bb.go ], [ %i.yv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i163, %bb.hf ], [ %i.aah, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit229, %.loopexit227 ], [ %lpad.loopexit233, %.loopexit.split-lp228.loopexit ], [ %lpad.loopexit237, %.loopexit.split-lp228.loopexit.split-lp.loopexit ], [ %i.xx, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  br label %bb.ho

bb.es:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.su = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val30 = load i64, ptr %i.sv, align 8, !tbaa !272 ; 3 uses
  %38 = add i64 %.val30, 1
  %i.sw = icmp ult i32 %i.su, 13
  %i.sx = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.sy = select i1 %i.sw, ptr %i.sx, ptr %.sroa.2.0.copyload.i ; 2 uses
  %i.sz = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.sz
  %i.tb = icmp ne i32 %i.su, 0
  %i.tc = icmp ult i64 %.val30, 9223372036854775807
  %i.td = select i1 %i.tb, i1 %i.tc, i1 false
  br i1 %i.td, label %.lr.ph.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

.lr.ph.i:                                         ; preds = %bb.es, %_ZL20utf8proc_char_lengthPKc.exit.i
  %.0.i4.i = phi ptr [ %i.tk, %_ZL20utf8proc_char_lengthPKc.exit.i ], [ %i.sy, %bb.es ] ; 2 uses
  %.012.i3.i = phi i64 [ %i.tl, %_ZL20utf8proc_char_lengthPKc.exit.i ], [ 0, %bb.es ]
  %.0.i.val.i = load i8, ptr %.0.i4.i, align 1, !tbaa !16 ; 4 uses
  %i.te = icmp sgt i8 %.0.i.val.i, -1
  br i1 %i.te, label %_ZL20utf8proc_char_lengthPKc.exit.i, label %bb.et

bb.et:                                            ; preds = %.lr.ph.i
  %i.tf = and i8 %.0.i.val.i, -32
  %or.cond.i.i = icmp eq i8 %i.tf, -64
  br i1 %or.cond.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.tg = and i8 %.0.i.val.i, -16
  %or.cond5.i.i = icmp eq i8 %i.tg, -32
  br i1 %or.cond5.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.th = and i8 %.0.i.val.i, -8
  %or.cond8.i.i = icmp eq i8 %i.th, -16
  %i.ti = select i1 %or.cond8.i.i, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i

_ZL20utf8proc_char_lengthPKc.exit.i:              ; preds = %bb.ev, %bb.eu, %bb.et, %.lr.ph.i
  %i.tj = phi i64 [ %i.ti, %bb.ev ], [ 3, %bb.eu ], [ 2, %bb.et ], [ 1, %.lr.ph.i ]
  %i.tk = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 %i.tj ; 2 uses
  %i.tl = add nuw nsw i64 %.012.i3.i, 1           ; 3 uses
  %i.tm = icmp ult ptr %i.tk, %i.ta
  %i.tn = icmp slt i64 %i.tl, %38
  %i.to = select i1 %i.tm, i1 %i.tn, i1 false
  br i1 %i.to, label %.lr.ph.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i, %bb.es
  %.012.i.lcssa.i = phi i64 [ 0, %bb.es ], [ %i.tl, %_ZL20utf8proc_char_lengthPKc.exit.i ]
  %i.tp = icmp eq i64 %.012.i.lcssa.i, %.val30
  br label %bb.ew

bb.ew:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %bb.er
  %storemerge.in = phi i1 [ %i.st, %bb.er ], [ %i.tp, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ]
  %storemerge = zext i1 %storemerge.in to i8
  store i8 %storemerge, ptr %i.b, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.l, ptr %13, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store ptr %i.b, ptr %i.tq, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !728, !range !83, !noundef !81
  %i.tu = trunc nuw i8 %i.tt to i1
  br i1 %i.tu, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i189, label %bb.ex

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i189: ; preds = %bb.ew
  %.0.in.pre.i.i.i.i190 = load i8, ptr %i.tr, align 4, !tbaa !82, !range !83
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i128

bb.ex:                                            ; preds = %bb.ew
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !729
  %i.tx = icmp eq i32 %i.tw, 0
  br i1 %i.tx, label %bb.ey, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126

bb.ey:                                            ; preds = %bb.ex
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !730 ; 6 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !731
  %i.uc = icmp eq i32 %i.tz, %i.ub
  br i1 %i.uc, label %bb.ez, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126

bb.ez:                                            ; preds = %bb.ey
  %i.ud = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %.not.i.i.i.i.i181 = icmp sgt i32 %i.tz, 0
  br i1 %.not.i.i.i.i.i181, label %bb.fa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126

bb.fa:                                            ; preds = %bb.ez
  %i.ue = and i32 %i.tz, 2147483584               ; 3 uses
  %i.uf = zext nneg i32 %i.ue to i64
  %.not37.i.i.not.i.i.i.i183520.not = icmp eq i32 %i.ue, 0
  br i1 %.not37.i.i.not.i.i.i.i183520.not, label %.critedge.i.i.i.i.i.i184, label %.lr.ph

bb.fb:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i.i.i188 = add nuw nsw i64 %indvars.iv.i.i.i.i182521, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i183 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i188, %i.uf
  br i1 %.not37.i.i.not.i.i.i.i183, label %.lr.ph, label %.critedge.i.i.i.i.i.i184, !llvm.loop !733

.lr.ph:                                           ; preds = %bb.fa, %bb.fb
  %indvars.iv.i.i.i.i182521 = phi i64 [ %indvars.iv.next.i.i.i.i188, %bb.fb ], [ 0, %bb.fa ] ; 2 uses
  %i.ug = lshr exact i64 %indvars.iv.i.i.i.i182521, 3
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.ug
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !233
  %i.uj = icmp eq i64 %i.ui, -1
  br i1 %i.uj, label %bb.fb, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126, !llvm.loop !733

.critedge.i.i.i.i.i.i184:                         ; preds = %bb.fb, %bb.fa
  %.not38.i.i.i.i.i.i185 = icmp eq i32 %i.tz, %i.ue
  br i1 %.not38.i.i.i.i.i.i185, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126, label %bb.fc

bb.fc:                                            ; preds = %.critedge.i.i.i.i.i.i184
  %i.uk = lshr i32 %i.tz, 6
  %i.ul = and i32 %i.tz, 63
  %i.um = zext nneg i32 %i.ul to i64
  %notmask.i40.i.i.i.i.i.i186 = shl nsw i64 -1, %i.um
  %i.un = zext nneg i32 %i.uk to i64
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.un
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !233
  %.demorgan.i.i.i.i187 = or i64 %i.up, %notmask.i40.i.i.i.i.i.i186
  %i.uq = icmp eq i64 %.demorgan.i.i.i.i187, -1
  %i.ur = zext i1 %i.uq to i16
  %i.us = or disjoint i16 %i.ur, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126: ; preds = %.lr.ph, %bb.fc, %.critedge.i.i.i.i.i.i184, %bb.ez, %bb.ey, %bb.ex
  %.sroa.0.0.insert.ext.i.i.i.i127 = phi i16 [ 256, %bb.ey ], [ 256, %bb.ex ], [ 257, %bb.ez ], [ 257, %.critedge.i.i.i.i.i.i184 ], [ %i.us, %bb.fc ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i127, ptr %i.tr, align 4
  %i.ut = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i127 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i128

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i128: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i189
  %.0.in.i.i.i.i129 = phi i8 [ %.0.in.pre.i.i.i.i190, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i189 ], [ %i.ut, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126 ]
  %.0.i.i.i.i130 = trunc nuw i8 %.0.in.i.i.i.i129 to i1
  br i1 %.0.i.i.i.i130, label %bb.fd, label %bb.fu

bb.fd:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i128
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !730 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !729 ; 2 uses
  %i.uy = icmp slt i32 %i.ux, %i.uv
  br i1 %i.uy, label %.lr.ph.i.i.i166, label %.loopexit231

.lr.ph.i.i.i166:                                  ; preds = %bb.fd, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i
  %.029.i.i.i = phi i32 [ %i.wg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i ], [ %i.ux, %bb.fd ] ; 4 uses
  %.val.i.i.i = load ptr, ptr %13, align 8, !tbaa !3368
  %.val4.i.i.i = load ptr, ptr %i.tq, align 8, !tbaa !3370
  %.val4.val.i.i.i = load i8, ptr %.val4.i.i.i, align 1, !tbaa !82, !range !83, !noundef !81
  %i.uz = trunc nuw i8 %.val4.val.i.i.i to i1
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %.val.i.i.i, i32 noundef %.029.i.i.i, i1 noundef zeroext %i.uz)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i unwind label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.i.i.i166
  %i.va = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.vb = extractvalue { ptr, i32 } %i.va, 0      ; 2 uses
  %i.vc = extractvalue { ptr, i32 } %i.va, 1      ; 2 uses
  %i.vd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.ve = icmp eq i32 %i.vc, %i.vd
  br i1 %i.ve, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.vf = call ptr @__cxa_begin_catch(ptr %i.vb) #38
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !756 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 144
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !13 ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 152
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !17
  %i.vm = icmp eq i64 %i.vl, 4
  br i1 %i.vm, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i172, label %.loopexit.i.i.i170

.lr.ph.i.i.i.preheader.i.preheader.i.i.i172:      ; preds = %bb.ff
  %i.vn = load i8, ptr %i.vj, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i173 = icmp eq i8 %i.vn, 85
  br i1 %or.cond.not.i.i.i.i.i.i173, label %tailrecurse.i.i.i.i.i.i.i174, label %.loopexit.i.i.i170

tailrecurse.i.i.i.i.i.i.i174:                     ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i172
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vj, i64 1
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i175 = icmp eq i8 %i.vp, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i175, label %tailrecurse.i.i.i.i.1.i.i.i176, label %.loopexit.i.i.i170

tailrecurse.i.i.i.i.1.i.i.i176:                   ; preds = %tailrecurse.i.i.i.i.i.i.i174
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vj, i64 2
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i177 = icmp eq i8 %i.vr, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i177, label %tailrecurse.i.i.i.i.2.i.i.i178, label %.loopexit.i.i.i170

tailrecurse.i.i.i.i.2.i.i.i178:                   ; preds = %tailrecurse.i.i.i.i.1.i.i.i176
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vj, i64 3
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i179 = icmp eq i8 %i.vt, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i179, label %tailrecurse.i.i.i.i.3.i.i.i180, label %.loopexit.i.i.i170

tailrecurse.i.i.i.i.3.i.i.i180:                   ; preds = %tailrecurse.i.i.i.i.2.i.i.i178
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.fn unwind label %bb.fp

.loopexit.i.i.i170:                               ; preds = %tailrecurse.i.i.i.i.2.i.i.i178, %tailrecurse.i.i.i.i.1.i.i.i176, %tailrecurse.i.i.i.i.i.i.i174, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i172, %bb.ff
  invoke void @__cxa_rethrow() #47
          to label %bb.ft unwind label %bb.fm

bb.fg:                                            ; preds = %bb.fe
  %i.vu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.vv = icmp eq i32 %i.vc, %i.vu
  br i1 %i.vv, label %bb.fh, label %.body191

bb.fh:                                            ; preds = %bb.fg
  %i.vw = call ptr @__cxa_begin_catch(ptr %i.vb) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.fi unwind label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.vx = load ptr, ptr %11, align 8, !tbaa !411
  %.not.i.i.i.i167 = icmp eq ptr %i.vx, null
  br i1 %.not.i.i.i.i167, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i168, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i168

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i168: ; preds = %bb.fj, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i

bb.fk:                                            ; preds = %bb.fh
  %i.vy = landingpad { ptr, i32 }
          cleanup
  %i.vz = load ptr, ptr %11, align 8, !tbaa !411
  %.not.i5.i.i.i = icmp eq ptr %i.vz, null
  br i1 %.not.i5.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #38
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim:bb.a
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.af = extractvalue { ptr, i32 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { ptr, i32 } %i.ae, 1      ; 2 uses
  %i.ah = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = call ptr @__cxa_begin_catch(ptr %i.af) #38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !756 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !13 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.aq = icmp eq i64 %i.ap, 4
  br i1 %i.aq, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.ar, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.at, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.av, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ax, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.ay = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.az = icmp eq i32 %i.ag, %i.ay
  br i1 %i.az, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.ba = call ptr @__cxa_begin_catch(ptr %i.af) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.bd, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bf = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.bf, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.bh, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.be, %bb.k ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

.loopexit18:                                      ; preds = %bb.e, %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.bc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.p ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %.merged.i

bb.q:                                             ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #50
  unreachable

bb.r:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split, %bb.b
  %i.bk = add i64 %.024, -1
  %i.bl = and i64 %i.bk, %.024                    ; 2 uses
  %.not10 = icmp eq i64 %i.bl, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !3381

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3382, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3385
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit
  %.025 = phi i64 [ %i.k, %.preheader ], [ %i.cg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.025, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 4 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !3386 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !3387, !nonnull !81, !align !602 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3360
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !3362, !nonnull !81, !align !602
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3363, !nonnull !81, !align !602
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2173
  %i.z = sext i32 %i.q to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 16
  %.val.i = load i64, ptr %i.ab, align 8, !tbaa !272 ; 3 uses
  %5 = add i64 %.val.i, 1
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !7  ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = select i1 %i.ad, ptr %i.ae, ptr %i.ag   ; 2 uses
  %i.ai = zext i32 %i.ac to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = icmp ne i32 %i.ac, 0
  %i.al = icmp ult i64 %.val.i, 9223372036854775807
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZL20utf8proc_char_lengthPKc.exit.i.i
  %.0.i4.i.i = phi ptr [ %i.at, %_ZL20utf8proc_char_lengthPKc.exit.i.i ], [ %i.ah, %bb.b ] ; 2 uses
  %.012.i3.i.i = phi i64 [ %i.au, %_ZL20utf8proc_char_lengthPKc.exit.i.i ], [ 0, %bb.b ]
  %.0.i.val.i.i = load i8, ptr %.0.i4.i.i, align 1, !tbaa !16 ; 4 uses
  %i.an = icmp sgt i8 %.0.i.val.i.i, -1
  br i1 %i.an, label %_ZL20utf8proc_char_lengthPKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ao = and i8 %.0.i.val.i.i, -32
  %or.cond.i.i.i = icmp eq i8 %i.ao, -64
  br i1 %or.cond.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = and i8 %.0.i.val.i.i, -16
  %or.cond5.i.i.i = icmp eq i8 %i.ap, -32
  br i1 %or.cond5.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = and i8 %.0.i.val.i.i, -8
  %or.cond8.i.i.i = icmp eq i8 %i.aq, -16
  %i.ar = select i1 %or.cond8.i.i.i, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i.i

_ZL20utf8proc_char_lengthPKc.exit.i.i:            ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph.i.i
  %i.as = phi i64 [ %i.ar, %bb.e ], [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %.lr.ph.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i4.i.i, i64 %i.as ; 2 uses
  %i.au = add nuw nsw i64 %.012.i3.i.i, 1         ; 3 uses
  %i.av = icmp ult ptr %i.at, %i.aj
  %i.aw = icmp slt i64 %i.au, %5
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i.i, %bb.b
  %.012.i.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.au, %_ZL20utf8proc_char_lengthPKc.exit.i.i ]
  %i.ay = icmp eq i64 %.012.i.lcssa.i.i, %.val.i
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.v, i32 noundef %i.q, i1 noundef zeroext %i.ay)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i
  %i.az = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ba = extractvalue { ptr, i32 } %i.az, 0      ; 2 uses
  %i.bb = extractvalue { ptr, i32 } %i.az, 1      ; 2 uses
  %i.bc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = call ptr @__cxa_begin_catch(ptr %i.ba) #38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !756 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !13 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.bl = icmp eq i64 %i.bk, 4
  br i1 %i.bl, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.g
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.bm, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.bo, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.bq, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.bs, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.q

.loopexit:                                        ; preds = %bb.g, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.u unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.bt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.bu = icmp eq i32 %i.bb, %i.bt
  br i1 %i.bu, label %bb.i, label %.loopexit18

bb.i:                                             ; preds = %bb.h
  %i.bv = call ptr @__cxa_begin_catch(ptr %i.ba) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split

bb.l:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.by, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.t

bb.n:                                             ; preds = %.loopexit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.ca = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.ca, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split

bb.q:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.cc, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.cb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.bz, %bb.n ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.t

.loopexit18:                                      ; preds = %bb.h, %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.bx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.s ], [ %i.az, %bb.h ]
  resume { ptr, i32 } %.merged.i

bb.t:                                             ; preds = %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #50
  unreachable

bb.u:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE0EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i
  %i.cf = add i64 %.025, -1
  %i.cg = and i64 %i.cf, %.025                    ; 2 uses
  %.not10 = icmp eq i64 %i.cg, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !3388

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE1_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3389, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3392
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit
  %.025 = phi i64 [ %i.k, %.preheader ], [ %i.bc, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.025, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_:bb.a
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40.i.i.i.i.i.i.i ], [ %i.hh, %bb.bi ]
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36.i.i.i.i.i.i.i
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #50
  unreachable

bb.bp:                                            ; preds = %.loopexit43.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit34.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i, %bb.az
  %i.hn = add i64 %.01557.i.i.i.i.i.i.i, -1
  %i.ho = and i64 %i.hn, %.01557.i.i.i.i.i.i.i    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.az, !llvm.loop !3402

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i, %bb.ah, %.lr.ph.i.i.i.i.i.i
  %i.hp = add nsw i32 %i.dt, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i = icmp sgt i32 %i.hp, %i.cz
  br i1 %.not33.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3403

bb.bq:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.hq = and i32 %i.cv, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %notmask.i36.i.i.i.i.i.i = shl nsw i64 -1, %i.hr
  %i.hs = xor i64 %notmask.i36.i.i.i.i.i.i, -1
  br label %.invoke460

.invoke460:                                       ; preds = %bb.ae, %bb.bq
  %i.ht = phi i64 [ %i.hs, %bb.bq ], [ %i.dk, %bb.ae ]
  %i.hu = ashr i32 %i.cv, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %28, i32 noundef %i.hu, i64 noundef %i.ht)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i: ; preds = %.invoke460, %._crit_edge.i.i.i.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_EEvSB_T_.exit

_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_EEvSB_T_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i, %bb.k, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  br label %bb.ep

bb.br:                                            ; preds = %.critedge
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

.loopexit:                                        ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit208 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit212 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit220 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke460, %.invoke, %bb.cy, %bb.ag
  %lpad.loopexit.split-lp224 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.dg, %bb.ea, %bb.cg, %bb.al, %bb.bc, %bb.o, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87, %bb.cr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59, %bb.dr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i, %bb.el, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i, %bb.z, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i, %bb.aw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36.i.i.i.i.i.i.i, %bb.bn
  %eh.lpad-body = phi { ptr, i32 } [ %i.en, %bb.al ], [ %.pn.i.i.i.i, %bb.z ], [ %i.cj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i ], [ %i.bl, %bb.o ], [ %.pn.i18.i.i.i.i.i.i.i, %bb.aw ], [ %i.fl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i, %bb.bn ], [ %i.hf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit36.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp224, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gh, %bb.bc ], [ %.pn.i.i.i.i94, %bb.cr ], [ %i.lf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87 ], [ %i.kh, %bb.cg ], [ %.pn.i18.i.i.i.i.i.i.i63, %bb.dr ], [ %i.pc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59 ], [ %.pn.i.i.i.i.i.i.i.i80, %bb.el ], [ %i.rr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i ], [ %i.qt, %bb.ea ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit208, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit212, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit216, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit220, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit223, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.oe, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.ho

bb.bs:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %i.l, ptr %23, align 8
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  store ptr %i.a, ptr %.sroa.4205.0..sroa_idx, align 8
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %0, ptr %.sroa.5206.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.hw = load i8, ptr %i.u, align 1, !tbaa !728, !range !83, !noundef !81
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i116, label %bb.bt

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i116: ; preds = %bb.bs
  %.0.in.pre.i.i.i.i117 = load i8, ptr %i.t, align 4, !tbaa !82, !range !83
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i38

bb.bt:                                            ; preds = %bb.bs
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !729
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.bu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36

bb.bu:                                            ; preds = %bb.bt
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !730 ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !731
  %i.if = icmp eq i32 %i.ic, %i.ie
  br i1 %i.if, label %bb.bv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36

bb.bv:                                            ; preds = %bb.bu
  %i.ig = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %.not.i.i.i.i.i108 = icmp sgt i32 %i.ic, 0
  br i1 %.not.i.i.i.i.i108, label %bb.bw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36

bb.bw:                                            ; preds = %bb.bv
  %i.ih = and i32 %i.ic, 2147483584               ; 3 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %.not37.i.i.not.i.i.i.i110522.not = icmp eq i32 %i.ih, 0
  br i1 %.not37.i.i.not.i.i.i.i110522.not, label %.critedge.i.i.i.i.i.i111, label %.lr.ph524

bb.bx:                                            ; preds = %.lr.ph524
  %indvars.iv.next.i.i.i.i115 = add nuw nsw i64 %indvars.iv.i.i.i.i109523, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i110 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i115, %i.ii
  br i1 %.not37.i.i.not.i.i.i.i110, label %.lr.ph524, label %.critedge.i.i.i.i.i.i111, !llvm.loop !733

.lr.ph524:                                        ; preds = %bb.bw, %bb.bx
  %indvars.iv.i.i.i.i109523 = phi i64 [ %indvars.iv.next.i.i.i.i115, %bb.bx ], [ 0, %bb.bw ] ; 2 uses
  %i.ij = lshr exact i64 %indvars.iv.i.i.i.i109523, 3
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ij
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !233
  %i.im = icmp eq i64 %i.il, -1
  br i1 %i.im, label %bb.bx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36, !llvm.loop !733

.critedge.i.i.i.i.i.i111:                         ; preds = %bb.bx, %bb.bw
  %.not38.i.i.i.i.i.i112 = icmp eq i32 %i.ic, %i.ih
  br i1 %.not38.i.i.i.i.i.i112, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36, label %bb.by

bb.by:                                            ; preds = %.critedge.i.i.i.i.i.i111
  %i.in = lshr i32 %i.ic, 6
  %i.io = and i32 %i.ic, 63
  %i.ip = zext nneg i32 %i.io to i64
  %notmask.i40.i.i.i.i.i.i113 = shl nsw i64 -1, %i.ip
  %i.iq = zext nneg i32 %i.in to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !233
  %.demorgan.i.i.i.i114 = or i64 %i.is, %notmask.i40.i.i.i.i.i.i113
  %i.it = icmp eq i64 %.demorgan.i.i.i.i114, -1
  %i.iu = zext i1 %i.it to i16
  %i.iv = or disjoint i16 %i.iu, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36: ; preds = %.lr.ph524, %bb.by, %.critedge.i.i.i.i.i.i111, %bb.bv, %bb.bu, %bb.bt
  %.sroa.0.0.insert.ext.i.i.i.i37 = phi i16 [ 256, %bb.bu ], [ 256, %bb.bt ], [ 257, %bb.bv ], [ 257, %.critedge.i.i.i.i.i.i111 ], [ %i.iv, %bb.by ], [ 256, %.lr.ph524 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i37, ptr %i.t, align 4
  %i.iw = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i37 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i38

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i38: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i116
  %.0.in.i.i.i.i39 = phi i8 [ %.0.in.pre.i.i.i.i117, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i116 ], [ %i.iw, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i36 ]
  %.0.i.i.i.i40 = trunc nuw i8 %.0.in.i.i.i.i39 to i1
  br i1 %.0.i.i.i.i40, label %bb.bz, label %bb.cu

bb.bz:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i38
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !730 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !729 ; 2 uses
  %i.jb = icmp slt i32 %i.ja, %i.iy
  br i1 %i.jb, label %.lr.ph.i.i.i83, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_EEvSB_T_.exit

.lr.ph.i.i.i83:                                   ; preds = %bb.bz
  %i.jc = sext i32 %i.ja to i64
  br label %bb.ca

bb.ca:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i, %.lr.ph.i.i.i83
  %indvars.iv.i.i.i84 = phi i64 [ %i.jc, %.lr.ph.i.i.i83 ], [ %indvars.iv.next.i.i.i90, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i ] ; 3 uses
  %i.jd = load ptr, ptr %.sroa.5206.0..sroa_idx, align 8, !tbaa !3404
  %i.je = load ptr, ptr %23, align 8, !tbaa !3406, !nonnull !81, !align !602
  %i.jf = load ptr, ptr %.sroa.4205.0..sroa_idx, align 8, !tbaa !3407, !nonnull !81, !align !602
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !2173
  %i.jh = getelementptr inbounds [16 x i8], ptr %i.jg, i64 %indvars.iv.i.i.i84 ; 3 uses
  %i.ji = getelementptr i8, ptr %i.jd, i64 16
  %.val.i.i.i.i85 = load i64, ptr %i.ji, align 8, !tbaa !272 ; 3 uses
  %35 = add i64 %.val.i.i.i.i85, 1
  %i.jj = load i32, ptr %i.jh, align 8, !tbaa !7  ; 3 uses
  %i.jk = icmp ult i32 %i.jj, 13
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = select i1 %i.jk, ptr %i.jl, ptr %i.jn   ; 2 uses
  %i.jp = zext i32 %i.jj to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jp
  %i.jr = icmp ne i32 %i.jj, 0
  %i.js = icmp ult i64 %.val.i.i.i.i85, 9223372036854775807
  %i.jt = select i1 %i.jr, i1 %i.js, i1 false
  br i1 %i.jt, label %.lr.ph.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ca, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i
  %.0.i4.i.i.i.i.i = phi ptr [ %i.ka, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i ], [ %i.jo, %bb.ca ] ; 2 uses
  %.012.i3.i.i.i.i.i = phi i64 [ %i.kb, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i ], [ 0, %bb.ca ]
  %.0.i.val.i.i.i.i.i = load i8, ptr %.0.i4.i.i.i.i.i, align 1, !tbaa !16 ; 4 uses
  %i.ju = icmp sgt i8 %.0.i.val.i.i.i.i.i, -1
  br i1 %i.ju, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jv = and i8 %.0.i.val.i.i.i.i.i, -32
  %or.cond.i.i.i.i.i.i = icmp eq i8 %i.jv, -64
  br i1 %or.cond.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jw = and i8 %.0.i.val.i.i.i.i.i, -16
  %or.cond5.i.i.i.i.i.i = icmp eq i8 %i.jw, -32
  br i1 %or.cond5.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jx = and i8 %.0.i.val.i.i.i.i.i, -8
  %or.cond8.i.i.i.i.i.i = icmp eq i8 %i.jx, -16
  %i.jy = select i1 %or.cond8.i.i.i.i.i.i, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i

_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i:      ; preds = %bb.cd, %bb.cc, %bb.cb, %.lr.ph.i.i.i.i.i
  %i.jz = phi i64 [ %i.jy, %bb.cd ], [ 3, %bb.cc ], [ 2, %bb.cb ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i4.i.i.i.i.i, i64 %i.jz ; 2 uses
  %i.kb = add nuw nsw i64 %.012.i3.i.i.i.i.i, 1   ; 3 uses
  %i.kc = icmp ult ptr %i.ka, %i.jq
  %i.kd = icmp slt i64 %i.kb, %35
  %i.ke = select i1 %i.kc, i1 %i.kd, i1 false
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i, %bb.ca
  %.012.i.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.ca ], [ %i.kb, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i ]
  %i.kf = icmp uge i64 %.012.i.lcssa.i.i.i.i.i, %.val.i.i.i.i85
  %i.kg = trunc nsw i64 %indvars.iv.i.i.i84 to i32 ; 3 uses
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.je, i32 noundef %i.kg, i1 noundef zeroext %i.kf)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i unwind label %bb.ce

bb.ce:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0      ; 2 uses
  %i.kj = extractvalue { ptr, i32 } %i.kh, 1      ; 2 uses
  %i.kk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.kl = icmp eq i32 %i.kj, %i.kk
  br i1 %i.kl, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.km = call ptr @__cxa_begin_catch(ptr %i.ki) #38
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !756 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 144
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !13 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 152
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !17
  %i.kt = icmp eq i64 %i.ks, 4
  br i1 %i.kt, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i95, label %.loopexit.i.i.i93

.lr.ph.i.i.i.preheader.i.preheader.i.i.i95:       ; preds = %bb.cf
  %i.ku = load i8, ptr %i.kq, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i96 = icmp eq i8 %i.ku, 85
  br i1 %or.cond.not.i.i.i.i.i.i96, label %tailrecurse.i.i.i.i.i.i.i97, label %.loopexit.i.i.i93

tailrecurse.i.i.i.i.i.i.i97:                      ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i95
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i98 = icmp eq i8 %i.kw, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i98, label %tailrecurse.i.i.i.i.1.i.i.i99, label %.loopexit.i.i.i93

tailrecurse.i.i.i.i.1.i.i.i99:                    ; preds = %tailrecurse.i.i.i.i.i.i.i97
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i100 = icmp eq i8 %i.ky, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i100, label %tailrecurse.i.i.i.i.2.i.i.i101, label %.loopexit.i.i.i93

tailrecurse.i.i.i.i.2.i.i.i101:                   ; preds = %tailrecurse.i.i.i.i.1.i.i.i99
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kq, i64 3
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i102 = icmp eq i8 %i.la, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i102, label %tailrecurse.i.i.i.i.3.i.i.i103, label %.loopexit.i.i.i93

tailrecurse.i.i.i.i.3.i.i.i103:                   ; preds = %tailrecurse.i.i.i.i.2.i.i.i101
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %21) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.kg, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.cn unwind label %bb.cp

.loopexit.i.i.i93:                                ; preds = %tailrecurse.i.i.i.i.2.i.i.i101, %tailrecurse.i.i.i.i.1.i.i.i99, %tailrecurse.i.i.i.i.i.i.i97, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i95, %bb.cf
  invoke void @__cxa_rethrow() #47
          to label %bb.ct unwind label %bb.cm

bb.cg:                                            ; preds = %bb.ce
  %i.lb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.lc = icmp eq i32 %i.kj, %i.lb
  br i1 %i.lc, label %bb.ch, label %.body

bb.ch:                                            ; preds = %bb.cg
  %i.ld = call ptr @__cxa_begin_catch(ptr %i.ki) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %20) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.kg, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.le = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i.i.i.i88 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i.i88, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i89, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i89

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i89: ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i

bb.ck:                                            ; preds = %bb.ch
  %i.lf = landingpad { ptr, i32 }
          cleanup
  %i.lg = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i4.i.i.i86 = icmp eq ptr %i.lg, null
  br i1 %.not.i4.i.i.i86, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87: ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cs

bb.cm:                                            ; preds = %.loopexit.i.i.i93
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cn:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i103
  %i.li = load ptr, ptr %21, align 8, !tbaa !411
  %.not.i6.i.i.i106 = icmp eq ptr %i.li, null
  br i1 %.not.i6.i.i.i106, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i107, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i107

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i107: ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i

bb.cp:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i103
  %i.lj = landingpad { ptr, i32 }
          cleanup
  %i.lk = load ptr, ptr %21, align 8, !tbaa !411
  %.not.i8.i.i.i104 = icmp eq ptr %i.lk, null
  br i1 %.not.i8.i.i.i104, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i105, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i105

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i105: ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i105, %bb.cm
  %.pn.i.i.i.i94 = phi { ptr, i32 } [ %i.lj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i105 ], [ %i.lh, %bb.cm ]
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i87
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #50
  unreachable

bb.ct:                                            ; preds = %.loopexit.i.i.i93
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i107, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i89
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i
  %indvars.iv.next.i.i.i90 = add nsw i64 %indvars.iv.i.i.i84, 1 ; 2 uses
  %lftr.wideiv.i.i.i91 = trunc i64 %indvars.iv.next.i.i.i90 to i32
  %exitcond.not.i.i.i92 = icmp eq i32 %i.iy, %lftr.wideiv.i.i.i91
  br i1 %exitcond.not.i.i.i92, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_EEvSB_T_.exit, label %bb.ca, !llvm.loop !3408

bb.cu:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i38
  %i.ln = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !729 ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !730 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i41 = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store ptr %23, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i41, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i42 = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %22, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i42, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i43 = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i43, align 8
  store i8 1, ptr %19, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i44 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.ln, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i44, align 8
  %.not.i.i.i.i.i.i45 = icmp slt i32 %i.lp, %i.lr
  br i1 %.not.i.i.i.i.i.i45, label %bb.cv, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.ls = add i32 %i.lp, 63                       ; 2 uses
  %i.lt = srem i32 %i.ls, 64
  %i.lu = sub nsw i32 %i.ls, %i.lt                ; 6 uses
  %i.lv = and i32 %i.lr, -64                      ; 4 uses
  %i.lw = icmp slt i32 %i.lv, %i.lu
  br i1 %i.lw, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lx = and i32 %i.lr, 63
  %i.ly = zext nneg i32 %i.lx to i64
  %notmask.i.i.i.i.i.i.i81 = shl nsw i64 -1, %i.ly
  %i.lz = xor i64 %notmask.i.i.i.i.i.i.i81, -1
  %i.ma = sub nsw i32 %i.lu, %i.lp                ; 2 uses
  %i.mb = zext nneg i32 %i.ma to i64
  %notmask.i.i.i.i.i.i.i.i82 = shl nsw i64 -1, %i.mb
  %i.mc = xor i64 %notmask.i.i.i.i.i.i.i.i82, -1
  %i.md = sub nsw i32 64, %i.ma
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = shl i64 %i.mc, %i.me
  %i.mg = and i64 %i.mf, %i.lz
  br label %.invoke

bb.cx:                                            ; preds = %bb.cv
  %.not32.i.i.i.i.i.i46 = icmp eq i32 %i.lp, %i.lu
  br i1 %.not32.i.i.i.i.i.i46, label %.noexc122, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mh = sdiv i32 %i.lp, 64
  %i.mi = sub nsw i32 %i.lu, %i.lp                ; 2 uses
  %i.mj = zext nneg i32 %i.mi to i64
  %notmask.i.i35.i.i.i.i.i.i47 = shl nsw i64 -1, %i.mj
  %i.mk = xor i64 %notmask.i.i35.i.i.i.i.i.i47, -1
  %i.ml = sub nsw i32 64, %i.mi
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = shl i64 %i.mk, %i.mm
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %19, i32 noundef %i.mh, i64 noundef %i.mn)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.cy, %bb.cx
  %i.mo = add nsw i32 %i.lu, 64                   ; 2 uses
  %.not3348.i.i.i.i.i.i = icmp sgt i32 %i.mo, %i.lv
  br i1 %.not3348.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i.i48

._crit_edge.i.i.i.i.i.i50:                        ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i, %.noexc122
  %.not34.i.i.i.i.i.i51 = icmp eq i32 %i.lr, %i.lv
  br i1 %.not34.i.i.i.i.i.i51, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i, label %bb.eo

.lr.ph.i.i.i.i.i.i48:                             ; preds = %.noexc122, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i
  %i.mp = phi i32 [ %i.sb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.mo, %.noexc122 ] ; 2 uses
  %.049.i.i.i.i.i.i = phi i32 [ %i.mp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.lu, %.noexc122 ] ; 2 uses
  %i.mq = sdiv i32 %.049.i.i.i.i.i.i, 64          ; 3 uses
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.mr
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !233 ; 2 uses
  switch i64 %i.mt, label %.lr.ph.i.i.i.i.i.i.i77 [
    i64 -1, label %bb.cz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i77:                           ; preds = %.lr.ph.i.i.i.i.i.i48
  %i.mu = shl nsw i32 %i.mq, 6
  br label %bb.du

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i.i.i48
  %i.mv = shl nsw i32 %i.mq, 6                    ; 2 uses
  %i.mw = add i32 %i.mv, 64
  %i.mx = sext i32 %i.mw to i64
  %.0.off.i.i.i.i.i.i53 = add i32 %.049.i.i.i.i.i.i, 127
  %.not71.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i53, 64
  br i1 %.not71.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph70.i.i.i.i.i.i.i

.lr.ph70.i.i.i.i.i.i.i:                           ; preds = %bb.cz
  %i.my = sext i32 %i.mv to i64
  br label %bb.da

bb.da:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i, %.lr.ph70.i.i.i.i.i.i.i
  %.069.i.i.i.i.i.i.i = phi i64 [ %i.my, %.lr.ph70.i.i.i.i.i.i.i ], [ %i.pk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.mz = trunc i64 %.069.i.i.i.i.i.i.i to i32    ; 3 uses
  %i.na = load ptr, ptr %.sroa.5206.0..sroa_idx, align 8, !tbaa !3404
  %i.nb = load ptr, ptr %23, align 8, !tbaa !3406, !nonnull !81, !align !602
  %i.nc = load ptr, ptr %.sroa.4205.0..sroa_idx, align 8, !tbaa !3407, !nonnull !81, !align !602
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !2173
  %sext.i.i.i.i.i.i.i54 = shl i64 %.069.i.i.i.i.i.i.i, 32
  %i.ne = ashr exact i64 %sext.i.i.i.i.i.i.i54, 28
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 %i.ne ; 3 uses
  %i.ng = getelementptr i8, ptr %i.na, i64 16
  %.val.i.i.i.i.i.i.i.i55 = load i64, ptr %i.ng, align 8, !tbaa !272 ; 3 uses
  %36 = add i64 %.val.i.i.i.i.i.i.i.i55, 1
  %i.nh = load i32, ptr %i.nf, align 8, !tbaa !7  ; 3 uses
  %i.ni = icmp ult i32 %i.nh, 13
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = select i1 %i.ni, ptr %i.nj, ptr %i.nl   ; 2 uses
  %i.nn = zext i32 %i.nh to i64
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nn
  %i.np = icmp ne i32 %i.nh, 0
  %i.nq = icmp ult i64 %.val.i.i.i.i.i.i.i.i55, 9223372036854775807
  %i.nr = select i1 %i.np, i1 %i.nq, i1 false
  br i1 %i.nr, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.da, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i
  %.0.i4.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ny, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i ], [ %i.nm, %bb.da ] ; 2 uses
  %.012.i3.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nz, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.da ]
  %.0.i.val.i.i.i.i.i.i.i.i.i = load i8, ptr %.0.i4.i.i.i.i.i.i.i.i.i, align 1, !tbaa !16 ; 4 uses
  %i.ns = icmp sgt i8 %.0.i.val.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.ns, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.nt = and i8 %.0.i.val.i.i.i.i.i.i.i.i.i, -32
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nt, -64
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nu = and i8 %.0.i.val.i.i.i.i.i.i.i.i.i, -16
  %or.cond5.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nu, -32
  br i1 %or.cond5.i.i.i.i.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.nv = and i8 %.0.i.val.i.i.i.i.i.i.i.i.i, -8
  %or.cond8.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nv, -16
  %i.nw = select i1 %or.cond8.i.i.i.i.i.i.i.i.i.i, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i

_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.dd, %bb.dc, %bb.db, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.nx = phi i64 [ %i.nw, %bb.dd ], [ 3, %bb.dc ], [ 2, %bb.db ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.0.i4.i.i.i.i.i.i.i.i.i, i64 %i.nx ; 2 uses
  %i.nz = add nuw nsw i64 %.012.i3.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.oa = icmp ult ptr %i.ny, %i.no
  %i.ob = icmp slt i64 %i.nz, %36
  %i.oc = select i1 %i.oa, i1 %i.ob, i1 false
  br i1 %i.oc, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i, %bb.da
  %.012.i.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.da ], [ %i.nz, %_ZL20utf8proc_char_lengthPKc.exit.i.i.i.i.i.i.i.i.i ]
  %i.od = icmp uge i64 %.012.i.lcssa.i.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i55
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.nb, i32 noundef %i.mz, i1 noundef zeroext %i.od)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i unwind label %bb.de

bb.de:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i
  %i.oe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.of = extractvalue { ptr, i32 } %i.oe, 0      ; 2 uses
  %i.og = extractvalue { ptr, i32 } %i.oe, 1      ; 2 uses
  %i.oh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.oi = icmp eq i32 %i.og, %i.oh
  br i1 %i.oi, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.oj = call ptr @__cxa_begin_catch(ptr %i.of) #38
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !756 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 144
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !13 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 152
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !17
  %i.oq = icmp eq i64 %i.op, 4
  br i1 %i.oq, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i64, label %.loopexit.i.i.i.i.i.i.i62

.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i64: ; preds = %bb.df
  %i.or = load i8, ptr %i.on, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i.i.i.i.i65 = icmp eq i8 %i.or, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i65, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i66, label %.loopexit.i.i.i.i.i.i.i62

tailrecurse.i.i.i.i.i.i.i.i.i.i.i66:              ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i64
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i67 = icmp eq i8 %i.ot, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i67, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i68, label %.loopexit.i.i.i.i.i.i.i62

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i68:            ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i66
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i69 = icmp eq i8 %i.ov, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i69, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i70, label %.loopexit.i.i.i.i.i.i.i62

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i70:            ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i68
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 3
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i71 = icmp eq i8 %i.ox, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i71, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i72, label %.loopexit.i.i.i.i.i.i.i62

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i72:            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i70
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %16) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.mz, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.dn unwind label %bb.dp

.loopexit.i.i.i.i.i.i.i62:                        ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i70, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i68, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i66, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i64, %bb.df
  invoke void @__cxa_rethrow() #47
          to label %bb.dt unwind label %bb.dm

bb.dg:                                            ; preds = %bb.de
  %i.oy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.oz = icmp eq i32 %i.og, %i.oy
  br i1 %i.oz, label %bb.dh, label %.body

bb.dh:                                            ; preds = %bb.dg
  %i.pa = call ptr @__cxa_begin_catch(ptr %i.of) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %15) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.mz, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.pb = load ptr, ptr %15, align 8, !tbaa !411
  %.not.i.i.i.i.i.i.i.i60 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i.i.i.i.i.i60, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i61, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i61

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i61: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i

bb.dk:                                            ; preds = %bb.dh
  %i.pc = landingpad { ptr, i32 }
          cleanup
  %i.pd = load ptr, ptr %15, align 8, !tbaa !411
  %.not.i19.i.i.i.i.i.i.i58 = icmp eq ptr %i.pd, null
  br i1 %.not.i19.i.i.i.i.i.i.i58, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59: ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ds

bb.dm:                                            ; preds = %.loopexit.i.i.i.i.i.i.i62
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dn:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i72
  %i.pf = load ptr, ptr %16, align 8, !tbaa !411
  %.not.i21.i.i.i.i.i.i.i75 = icmp eq ptr %i.pf, null
  br i1 %.not.i21.i.i.i.i.i.i.i75, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i76, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i76

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i76: ; preds = %bb.do, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i72
  %i.pg = landingpad { ptr, i32 }
          cleanup
  %i.ph = load ptr, ptr %16, align 8, !tbaa !411
  %.not.i23.i.i.i.i.i.i.i73 = icmp eq ptr %i.ph, null
  br i1 %.not.i23.i.i.i.i.i.i.i73, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i74, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i74

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i74: ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i74, %bb.dm
  %.pn.i18.i.i.i.i.i.i.i63 = phi { ptr, i32 } [ %i.pg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i74 ], [ %i.pe, %bb.dm ]
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i59
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  call void @__clang_call_terminate(ptr %i.pj) #50
  unreachable

bb.dt:                                            ; preds = %.loopexit.i.i.i.i.i.i.i62
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i76, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i61
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i.i.i.i.i.i.i.i
  %i.pk = add nuw i64 %.069.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.pl = icmp ult i64 %i.pk, %i.mx
  br i1 %i.pl, label %bb.da, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !3409

bb.du:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i77
  %.01568.i.i.i.i.i.i.i = phi i64 [ %i.mt, %.lr.ph.i.i.i.i.i.i.i77 ], [ %i.sa, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.pm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01568.i.i.i.i.i.i.i, i1 true)
  %i.pn = trunc nuw nsw i64 %i.pm to i32
  %i.po = or disjoint i32 %i.mu, %i.pn            ; 4 uses
  %i.pp = load ptr, ptr %.sroa.5206.0..sroa_idx, align 8, !tbaa !3404
  %i.pq = load ptr, ptr %23, align 8, !tbaa !3406, !nonnull !81, !align !602
  %i.pr = load ptr, ptr %.sroa.4205.0..sroa_idx, align 8, !tbaa !3407, !nonnull !81, !align !602
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !2173
  %i.pt = sext i32 %i.po to i64
  %i.pu = getelementptr inbounds [16 x i8], ptr %i.ps, i64 %i.pt ; 3 uses
  %i.pv = getelementptr i8, ptr %i.pp, i64 16
  %.val.i25.i.i.i.i.i.i.i78 = load i64, ptr %i.pv, align 8, !tbaa !272 ; 3 uses
  %37 = add i64 %.val.i25.i.i.i.i.i.i.i78, 1
  %i.pw = load i32, ptr %i.pu, align 8, !tbaa !7  ; 3 uses
  %i.px = icmp ult i32 %i.pw, 13
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8
  %i.qb = select i1 %i.px, ptr %i.py, ptr %i.qa   ; 2 uses
  %i.qc = zext i32 %i.pw to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.qc
  %i.qe = icmp ne i32 %i.pw, 0
  %i.qf = icmp ult i64 %.val.i25.i.i.i.i.i.i.i78, 9223372036854775807
  %i.qg = select i1 %i.qe, i1 %i.qf, i1 false
  br i1 %i.qg, label %.lr.ph.i.i28.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i26.i.i.i.i.i.i.i

.lr.ph.i.i28.i.i.i.i.i.i.i:                       ; preds = %bb.du, %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i
  %.0.i4.i.i29.i.i.i.i.i.i.i = phi ptr [ %i.qn, %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i ], [ %i.qb, %bb.du ] ; 2 uses
  %.012.i3.i.i30.i.i.i.i.i.i.i = phi i64 [ %i.qo, %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i ], [ 0, %bb.du ]
  %.0.i.val.i.i31.i.i.i.i.i.i.i = load i8, ptr %.0.i4.i.i29.i.i.i.i.i.i.i, align 1, !tbaa !16 ; 4 uses
  %i.qh = icmp sgt i8 %.0.i.val.i.i31.i.i.i.i.i.i.i, -1
  br i1 %i.qh, label %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i28.i.i.i.i.i.i.i
  %i.qi = and i8 %.0.i.val.i.i31.i.i.i.i.i.i.i, -32
  %or.cond.i.i.i32.i.i.i.i.i.i.i = icmp eq i8 %i.qi, -64
  br i1 %or.cond.i.i.i32.i.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.qj = and i8 %.0.i.val.i.i31.i.i.i.i.i.i.i, -16
  %or.cond5.i.i.i33.i.i.i.i.i.i.i = icmp eq i8 %i.qj, -32
  br i1 %or.cond5.i.i.i33.i.i.i.i.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qk = and i8 %.0.i.val.i.i31.i.i.i.i.i.i.i, -8
  %or.cond8.i.i.i34.i.i.i.i.i.i.i = icmp eq i8 %i.qk, -16
  %i.ql = select i1 %or.cond8.i.i.i34.i.i.i.i.i.i.i, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i

_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i: ; preds = %bb.dx, %bb.dw, %bb.dv, %.lr.ph.i.i28.i.i.i.i.i.i.i
  %i.qm = phi i64 [ %i.ql, %bb.dx ], [ 3, %bb.dw ], [ 2, %bb.dv ], [ 1, %.lr.ph.i.i28.i.i.i.i.i.i.i ]
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.i4.i.i29.i.i.i.i.i.i.i, i64 %i.qm ; 2 uses
  %i.qo = add nuw nsw i64 %.012.i3.i.i30.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.qp = icmp ult ptr %i.qn, %i.qd
  %i.qq = icmp slt i64 %i.qo, %37
  %i.qr = select i1 %i.qp, i1 %i.qq, i1 false
  br i1 %i.qr, label %.lr.ph.i.i28.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i26.i.i.i.i.i.i.i, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i26.i.i.i.i.i.i.i: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i, %bb.du
  %.012.i.lcssa.i.i27.i.i.i.i.i.i.i = phi i64 [ 0, %bb.du ], [ %i.qo, %_ZL20utf8proc_char_lengthPKc.exit.i.i35.i.i.i.i.i.i.i ]
  %i.qs = icmp uge i64 %.012.i.lcssa.i.i27.i.i.i.i.i.i.i, %.val.i25.i.i.i.i.i.i.i78
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.pq, i32 noundef %i.po, i1 noundef zeroext %i.qs)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i unwind label %bb.dy

bb.dy:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i26.i.i.i.i.i.i.i
  %i.qt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.qu = extractvalue { ptr, i32 } %i.qt, 0      ; 2 uses
  %i.qv = extractvalue { ptr, i32 } %i.qt, 1      ; 2 uses
  %i.qw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.qx = icmp eq i32 %i.qv, %i.qw
  br i1 %i.qx, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.qy = call ptr @__cxa_begin_catch(ptr %i.qu) #38
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !756 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 144
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !13 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 152
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !17
  %i.rf = icmp eq i64 %i.re, 4
  br i1 %i.rf, label %.lr.ph.i.i.i.preheader.i37.preheader.i.i.i.i.i.i.i, label %.loopexit52.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i37.preheader.i.i.i.i.i.i.i: ; preds = %bb.dz
  %i.rg = load i8, ptr %i.rc, align 1, !tbaa !16
  %or.cond.not.i.i.i39.i.i.i.i.i.i.i = icmp eq i8 %i.rg, 85
  br i1 %or.cond.not.i.i.i39.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i40.i.i.i.i.i.i.i, label %.loopexit52.i.i.i.i.i.i.i

tailrecurse.i.i.i.i40.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.preheader.i37.preheader.i.i.i.i.i.i.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 1
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !16
  %or.cond.not.i.i.i39.1.i.i.i.i.i.i.i = icmp eq i8 %i.ri, 83
  br i1 %or.cond.not.i.i.i39.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i40.1.i.i.i.i.i.i.i, label %.loopexit52.i.i.i.i.i.i.i

tailrecurse.i.i.i.i40.1.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i40.i.i.i.i.i.i.i
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rc, i64 2
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !16
  %or.cond.not.i.i.i39.2.i.i.i.i.i.i.i = icmp eq i8 %i.rk, 69
  br i1 %or.cond.not.i.i.i39.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i40.2.i.i.i.i.i.i.i, label %.loopexit52.i.i.i.i.i.i.i

tailrecurse.i.i.i.i40.2.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i40.1.i.i.i.i.i.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rc, i64 3
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !16
  %or.cond.not.i.i.i39.3.i.i.i.i.i.i.i = icmp eq i8 %i.rm, 82
  br i1 %or.cond.not.i.i.i39.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i40.3.i.i.i.i.i.i.i, label %.loopexit52.i.i.i.i.i.i.i

tailrecurse.i.i.i.i40.3.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i40.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %18) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.po, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.eh unwind label %bb.ej

.loopexit52.i.i.i.i.i.i.i:                        ; preds = %tailrecurse.i.i.i.i40.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i40.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i40.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i37.preheader.i.i.i.i.i.i.i, %bb.dz
  invoke void @__cxa_rethrow() #47
          to label %bb.en unwind label %bb.eg

bb.ea:                                            ; preds = %bb.dy
  %i.rn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ro = icmp eq i32 %i.qv, %i.rn
  br i1 %i.ro, label %bb.eb, label %.body

bb.eb:                                            ; preds = %bb.ea
  %i.rp = call ptr @__cxa_begin_catch(ptr %i.qu) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %17) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.po, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ec unwind label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %i.rq = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i42.i.i.i.i.i.i.i = icmp eq ptr %i.rq, null
  br i1 %.not.i42.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43.i.i.i.i.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43.i.i.i.i.i.i.i: ; preds = %bb.ed, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.eb
  %i.rr = landingpad { ptr, i32 }
          cleanup
  %i.rs = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i44.i.i.i.i.i.i.i = icmp eq ptr %i.rs, null
  br i1 %.not.i44.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i: ; preds = %bb.ef, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.em

bb.eg:                                            ; preds = %.loopexit52.i.i.i.i.i.i.i
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.eh:                                            ; preds = %tailrecurse.i.i.i.i40.3.i.i.i.i.i.i.i
  %i.ru = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i46.i.i.i.i.i.i.i = icmp eq ptr %i.ru, null
  br i1 %.not.i46.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47.i.i.i.i.i.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %tailrecurse.i.i.i.i40.3.i.i.i.i.i.i.i
  %i.rv = landingpad { ptr, i32 }
          cleanup
  %i.rw = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i48.i.i.i.i.i.i.i = icmp eq ptr %i.rw, null
  br i1 %.not.i48.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i: ; preds = %bb.ek, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %bb.el

bb.el:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i, %bb.eg
  %.pn.i.i.i.i.i.i.i.i80 = phi { ptr, i32 } [ %i.rv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i ], [ %i.rt, %bb.eg ]
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.em

bb.em:                                            ; preds = %bb.el, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit45.i.i.i.i.i.i.i
  %i.rx = landingpad { ptr, i32 }
          catch ptr null
  %i.ry = extractvalue { ptr, i32 } %i.rx, 0
  call void @__clang_call_terminate(ptr %i.ry) #50
  unreachable

bb.en:                                            ; preds = %.loopexit52.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit43.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i26.i.i.i.i.i.i.i
  %i.rz = add i64 %.01568.i.i.i.i.i.i.i, -1
  %i.sa = and i64 %i.rz, %.01568.i.i.i.i.i.i.i    ; 2 uses
  %.not.i.i.i.i.i.i.i79 = icmp eq i64 %i.sa, 0
  br i1 %.not.i.i.i.i.i.i.i79, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.du, !llvm.loop !3410

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i.i.i.i.i, %bb.cz, %.lr.ph.i.i.i.i.i.i48
  %i.sb = add nsw i32 %i.mp, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i49 = icmp sgt i32 %i.sb, %i.lv
  br i1 %.not33.i.i.i.i.i.i49, label %._crit_edge.i.i.i.i.i.i50, label %.lr.ph.i.i.i.i.i.i48, !llvm.loop !3411

bb.eo:                                            ; preds = %._crit_edge.i.i.i.i.i.i50
  %i.sc = and i32 %i.lr, 63
  %i.sd = zext nneg i32 %i.sc to i64
  %notmask.i36.i.i.i.i.i.i52 = shl nsw i64 -1, %i.sd
  %i.se = xor i64 %notmask.i36.i.i.i.i.i.i52, -1
  br label %.invoke

.invoke:                                          ; preds = %bb.cw, %bb.eo
  %i.sf = phi i64 [ %i.se, %bb.eo ], [ %i.mg, %bb.cw ]
  %i.sg = ashr i32 %i.lr, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %19, i32 noundef %i.sg, i64 noundef %i.sf)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i: ; preds = %.invoke, %._crit_edge.i.i.i.i.i.i50, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_EEvSB_T_.exit

_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_EEvSB_T_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i, %bb.bz, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiiSU_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.ep

bb.ep:                                            ; preds = %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_EEvSB_T_.exit, %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_EEvSB_T_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.hm

bb.eq:                                            ; preds = %_ZNK8facebook5velox4exec11DecodedArgs2atEi.exit
  %i.sh = getelementptr inbounds nuw i8, ptr %i.n, i64 59
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !753, !range !83, !noundef !81
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.hj

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  %i.sk = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !742
  %i.sm = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !754
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds [16 x i8], ptr %i.sl, i64 %i.so ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.sp, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %34, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.sq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  br i1 %i.k, label %bb.er, label %bb.es

bb.er:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29 = load i64, ptr %i.sr, align 8, !tbaa !272
  %i.ss = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.st = icmp ule i64 %.val29, %i.ss
  br label %bb.ew

bb.es:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.su = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val30 = load i64, ptr %i.sv, align 8, !tbaa !272 ; 3 uses
  %38 = add i64 %.val30, 1
  %i.sw = icmp ult i32 %i.su, 13
  %i.sx = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.sy = select i1 %i.sw, ptr %i.sx, ptr %.sroa.2.0.copyload.i ; 2 uses
  %i.sz = and i64 %.sroa.0.0.copyload.i, 4294967295
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.sz
  %i.tb = icmp ne i32 %i.su, 0
  %i.tc = icmp ult i64 %.val30, 9223372036854775807
  %i.td = select i1 %i.tb, i1 %i.tc, i1 false
  br i1 %i.td, label %.lr.ph.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit

.lr.ph.i:                                         ; preds = %bb.es, %_ZL20utf8proc_char_lengthPKc.exit.i
  %.0.i4.i = phi ptr [ %i.tk, %_ZL20utf8proc_char_lengthPKc.exit.i ], [ %i.sy, %bb.es ] ; 2 uses
  %.012.i3.i = phi i64 [ %i.tl, %_ZL20utf8proc_char_lengthPKc.exit.i ], [ 0, %bb.es ]
  %.0.i.val.i = load i8, ptr %.0.i4.i, align 1, !tbaa !16 ; 4 uses
  %i.te = icmp sgt i8 %.0.i.val.i, -1
  br i1 %i.te, label %_ZL20utf8proc_char_lengthPKc.exit.i, label %bb.et

bb.et:                                            ; preds = %.lr.ph.i
  %i.tf = and i8 %.0.i.val.i, -32
  %or.cond.i.i = icmp eq i8 %i.tf, -64
  br i1 %or.cond.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.tg = and i8 %.0.i.val.i, -16
  %or.cond5.i.i = icmp eq i8 %i.tg, -32
  br i1 %or.cond5.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.th = and i8 %.0.i.val.i, -8
  %or.cond8.i.i = icmp eq i8 %i.th, -16
  %i.ti = select i1 %or.cond8.i.i, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i

_ZL20utf8proc_char_lengthPKc.exit.i:              ; preds = %bb.ev, %bb.eu, %bb.et, %.lr.ph.i
  %i.tj = phi i64 [ %i.ti, %bb.ev ], [ 3, %bb.eu ], [ 2, %bb.et ], [ 1, %.lr.ph.i ]
  %i.tk = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 %i.tj ; 2 uses
  %i.tl = add nuw nsw i64 %.012.i3.i, 1           ; 3 uses
  %i.tm = icmp ult ptr %i.tk, %i.ta
  %i.tn = icmp slt i64 %i.tl, %38
  %i.to = select i1 %i.tm, i1 %i.tn, i1 false
  br i1 %i.to, label %.lr.ph.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i, %bb.es
  %.012.i.lcssa.i = phi i64 [ 0, %bb.es ], [ %i.tl, %_ZL20utf8proc_char_lengthPKc.exit.i ]
  %i.tp = icmp uge i64 %.012.i.lcssa.i, %.val30
  br label %bb.ew

.loopexit227:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i
  %lpad.loopexit229 = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.loopexit.split-lp228.loopexit:                   ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit233 = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.loopexit.split-lp228.loopexit.split-lp.loopexit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clImEEDaSS_.exit.sink.split.i.i.i.i.i.i.i
  %lpad.loopexit237 = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke461, %bb.fy
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.body191:                                         ; preds = %bb.gd, %bb.gu, %bb.fg, %.loopexit227, %.loopexit.split-lp228.loopexit.split-lp.loopexit, %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp228.loopexit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6.i.i.i, %bb.fr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i, %bb.go, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i, %bb.hf
  %eh.lpad-body192 = phi { ptr, i32 } [ %i.zj, %bb.gu ], [ %.pn.i.i.i.i171, %bb.fr ], [ %i.vy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6.i.i.i ], [ %i.va, %bb.fg ], [ %.pn.i18.i.i.i.i.i.i.i151, %bb.go ], [ %i.yv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i163, %bb.hf ], [ %i.aah, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit229, %.loopexit227 ], [ %lpad.loopexit233, %.loopexit.split-lp228.loopexit ], [ %lpad.loopexit237, %.loopexit.split-lp228.loopexit.split-lp.loopexit ], [ %i.xx, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  br label %bb.ho

bb.ew:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit, %bb.er
  %storemerge.in = phi i1 [ %i.st, %bb.er ], [ %i.tp, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit ]
  %storemerge = zext i1 %storemerge.in to i8
  store i8 %storemerge, ptr %i.b, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.l, ptr %13, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store ptr %i.b, ptr %i.tq, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !728, !range !83, !noundef !81
  %i.tu = trunc nuw i8 %i.tt to i1
  br i1 %i.tu, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i189, label %bb.ex

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i189: ; preds = %bb.ew
  %.0.in.pre.i.i.i.i190 = load i8, ptr %i.tr, align 4, !tbaa !82, !range !83
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i128

bb.ex:                                            ; preds = %bb.ew
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !729
  %i.tx = icmp eq i32 %i.tw, 0
  br i1 %i.tx, label %bb.ey, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126

bb.ey:                                            ; preds = %bb.ex
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !730 ; 6 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !731
  %i.uc = icmp eq i32 %i.tz, %i.ub
  br i1 %i.uc, label %bb.ez, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126

bb.ez:                                            ; preds = %bb.ey
  %i.ud = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %.not.i.i.i.i.i181 = icmp sgt i32 %i.tz, 0
  br i1 %.not.i.i.i.i.i181, label %bb.fa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126

bb.fa:                                            ; preds = %bb.ez
  %i.ue = and i32 %i.tz, 2147483584               ; 3 uses
  %i.uf = zext nneg i32 %i.ue to i64
  %.not37.i.i.not.i.i.i.i183520.not = icmp eq i32 %i.ue, 0
  br i1 %.not37.i.i.not.i.i.i.i183520.not, label %.critedge.i.i.i.i.i.i184, label %.lr.ph

bb.fb:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i.i.i188 = add nuw nsw i64 %indvars.iv.i.i.i.i182521, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i183 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i188, %i.uf
  br i1 %.not37.i.i.not.i.i.i.i183, label %.lr.ph, label %.critedge.i.i.i.i.i.i184, !llvm.loop !733

.lr.ph:                                           ; preds = %bb.fa, %bb.fb
  %indvars.iv.i.i.i.i182521 = phi i64 [ %indvars.iv.next.i.i.i.i188, %bb.fb ], [ 0, %bb.fa ] ; 2 uses
  %i.ug = lshr exact i64 %indvars.iv.i.i.i.i182521, 3
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.ug
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !233
  %i.uj = icmp eq i64 %i.ui, -1
  br i1 %i.uj, label %bb.fb, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126, !llvm.loop !733

.critedge.i.i.i.i.i.i184:                         ; preds = %bb.fb, %bb.fa
  %.not38.i.i.i.i.i.i185 = icmp eq i32 %i.tz, %i.ue
  br i1 %.not38.i.i.i.i.i.i185, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126, label %bb.fc

bb.fc:                                            ; preds = %.critedge.i.i.i.i.i.i184
  %i.uk = lshr i32 %i.tz, 6
  %i.ul = and i32 %i.tz, 63
  %i.um = zext nneg i32 %i.ul to i64
  %notmask.i40.i.i.i.i.i.i186 = shl nsw i64 -1, %i.um
  %i.un = zext nneg i32 %i.uk to i64
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.un
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !233
  %.demorgan.i.i.i.i187 = or i64 %i.up, %notmask.i40.i.i.i.i.i.i186
  %i.uq = icmp eq i64 %.demorgan.i.i.i.i187, -1
  %i.ur = zext i1 %i.uq to i16
  %i.us = or disjoint i16 %i.ur, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126: ; preds = %.lr.ph, %bb.fc, %.critedge.i.i.i.i.i.i184, %bb.ez, %bb.ey, %bb.ex
  %.sroa.0.0.insert.ext.i.i.i.i127 = phi i16 [ 256, %bb.ey ], [ 256, %bb.ex ], [ 257, %bb.ez ], [ 257, %.critedge.i.i.i.i.i.i184 ], [ %i.us, %bb.fc ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i127, ptr %i.tr, align 4
  %i.ut = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i127 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i128

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i128: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i189
  %.0.in.i.i.i.i129 = phi i8 [ %.0.in.pre.i.i.i.i190, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i189 ], [ %i.ut, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i126 ]
  %.0.i.i.i.i130 = trunc nuw i8 %.0.in.i.i.i.i129 to i1
  br i1 %.0.i.i.i.i130, label %bb.fd, label %bb.fu

bb.fd:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i128
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !730 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !729 ; 2 uses
  %i.uy = icmp slt i32 %i.ux, %i.uv
  br i1 %i.uy, label %.lr.ph.i.i.i166, label %.loopexit231

.lr.ph.i.i.i166:                                  ; preds = %bb.fd, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i
  %.029.i.i.i = phi i32 [ %i.wg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i ], [ %i.ux, %bb.fd ] ; 4 uses
  %.val.i.i.i = load ptr, ptr %13, align 8, !tbaa !3412
  %.val4.i.i.i = load ptr, ptr %i.tq, align 8, !tbaa !3414
  %.val4.val.i.i.i = load i8, ptr %.val4.i.i.i, align 1, !tbaa !82, !range !83, !noundef !81
  %i.uz = trunc nuw i8 %.val4.val.i.i.i to i1
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %.val.i.i.i, i32 noundef %.029.i.i.i, i1 noundef zeroext %i.uz)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.i.i.i unwind label %bb.fe

bb.fe:                                            ; preds = %.lr.ph.i.i.i166
  %i.va = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.vb = extractvalue { ptr, i32 } %i.va, 0      ; 2 uses
  %i.vc = extractvalue { ptr, i32 } %i.va, 1      ; 2 uses
  %i.vd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.ve = icmp eq i32 %i.vc, %i.vd
  br i1 %i.ve, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.vf = call ptr @__cxa_begin_catch(ptr %i.vb) #38
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !756 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 144
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !13 ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 152
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !17
  %i.vm = icmp eq i64 %i.vl, 4
  br i1 %i.vm, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i172, label %.loopexit.i.i.i170

.lr.ph.i.i.i.preheader.i.preheader.i.i.i172:      ; preds = %bb.ff
  %i.vn = load i8, ptr %i.vj, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i173 = icmp eq i8 %i.vn, 85
  br i1 %or.cond.not.i.i.i.i.i.i173, label %tailrecurse.i.i.i.i.i.i.i174, label %.loopexit.i.i.i170

tailrecurse.i.i.i.i.i.i.i174:                     ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i172
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vj, i64 1
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i175 = icmp eq i8 %i.vp, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i175, label %tailrecurse.i.i.i.i.1.i.i.i176, label %.loopexit.i.i.i170

tailrecurse.i.i.i.i.1.i.i.i176:                   ; preds = %tailrecurse.i.i.i.i.i.i.i174
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vj, i64 2
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i177 = icmp eq i8 %i.vr, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i177, label %tailrecurse.i.i.i.i.2.i.i.i178, label %.loopexit.i.i.i170

tailrecurse.i.i.i.i.2.i.i.i178:                   ; preds = %tailrecurse.i.i.i.i.1.i.i.i176
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vj, i64 3
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i179 = icmp eq i8 %i.vt, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i179, label %tailrecurse.i.i.i.i.3.i.i.i180, label %.loopexit.i.i.i170

tailrecurse.i.i.i.i.3.i.i.i180:                   ; preds = %tailrecurse.i.i.i.i.2.i.i.i178
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.fn unwind label %bb.fp

.loopexit.i.i.i170:                               ; preds = %tailrecurse.i.i.i.i.2.i.i.i178, %tailrecurse.i.i.i.i.1.i.i.i176, %tailrecurse.i.i.i.i.i.i.i174, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i172, %bb.ff
  invoke void @__cxa_rethrow() #47
          to label %bb.ft unwind label %bb.fm

bb.fg:                                            ; preds = %bb.fe
  %i.vu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.vv = icmp eq i32 %i.vc, %i.vu
  br i1 %i.vv, label %bb.fh, label %.body191

bb.fh:                                            ; preds = %bb.fg
  %i.vw = call ptr @__cxa_begin_catch(ptr %i.vb) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim:bb.a
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.af = extractvalue { ptr, i32 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { ptr, i32 } %i.ae, 1      ; 2 uses
  %i.ah = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = call ptr @__cxa_begin_catch(ptr %i.af) #38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !756 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !13 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.aq = icmp eq i64 %i.ap, 4
  br i1 %i.aq, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.ar, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.at, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.av, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ax, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.ay = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.az = icmp eq i32 %i.ag, %i.ay
  br i1 %i.az, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.ba = call ptr @__cxa_begin_catch(ptr %i.af) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.bd, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bf = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.bf, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.bh, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.be, %bb.k ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

.loopexit18:                                      ; preds = %bb.e, %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.bc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.p ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %.merged.i

bb.q:                                             ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #50
  unreachable

bb.r:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split, %bb.b
  %i.bk = add i64 %.024, -1
  %i.bl = and i64 %i.bk, %.024                    ; 2 uses
  %.not10 = icmp eq i64 %i.bl, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !3425

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE0_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3426, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3429
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit
  %.025 = phi i64 [ %i.k, %.preheader ], [ %i.cg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.025, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 4 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !3430 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !3431, !nonnull !81, !align !602 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3404
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !3406, !nonnull !81, !align !602
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3407, !nonnull !81, !align !602
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2173
  %i.z = sext i32 %i.q to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 16
  %.val.i = load i64, ptr %i.ab, align 8, !tbaa !272 ; 3 uses
  %5 = add i64 %.val.i, 1
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !7  ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = select i1 %i.ad, ptr %i.ae, ptr %i.ag   ; 2 uses
  %i.ai = zext i32 %i.ac to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = icmp ne i32 %i.ac, 0
  %i.al = icmp ult i64 %.val.i, 9223372036854775807
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZL20utf8proc_char_lengthPKc.exit.i.i
  %.0.i4.i.i = phi ptr [ %i.at, %_ZL20utf8proc_char_lengthPKc.exit.i.i ], [ %i.ah, %bb.b ] ; 2 uses
  %.012.i3.i.i = phi i64 [ %i.au, %_ZL20utf8proc_char_lengthPKc.exit.i.i ], [ 0, %bb.b ]
  %.0.i.val.i.i = load i8, ptr %.0.i4.i.i, align 1, !tbaa !16 ; 4 uses
  %i.an = icmp sgt i8 %.0.i.val.i.i, -1
  br i1 %i.an, label %_ZL20utf8proc_char_lengthPKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ao = and i8 %.0.i.val.i.i, -32
  %or.cond.i.i.i = icmp eq i8 %i.ao, -64
  br i1 %or.cond.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = and i8 %.0.i.val.i.i, -16
  %or.cond5.i.i.i = icmp eq i8 %i.ap, -32
  br i1 %or.cond5.i.i.i, label %_ZL20utf8proc_char_lengthPKc.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = and i8 %.0.i.val.i.i, -8
  %or.cond8.i.i.i = icmp eq i8 %i.aq, -16
  %i.ar = select i1 %or.cond8.i.i.i, i64 4, i64 1
  br label %_ZL20utf8proc_char_lengthPKc.exit.i.i

_ZL20utf8proc_char_lengthPKc.exit.i.i:            ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph.i.i
  %i.as = phi i64 [ %i.ar, %bb.e ], [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %.lr.ph.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i4.i.i, i64 %i.as ; 2 uses
  %i.au = add nuw nsw i64 %.012.i3.i.i, 1         ; 3 uses
  %i.av = icmp ult ptr %i.at, %i.aj
  %i.aw = icmp slt i64 %i.au, %5
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i, !llvm.loop !3246

_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i: ; preds = %_ZL20utf8proc_char_lengthPKc.exit.i.i, %bb.b
  %.012.i.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.au, %_ZL20utf8proc_char_lengthPKc.exit.i.i ]
  %i.ay = icmp uge i64 %.012.i.lcssa.i.i, %.val.i
  invoke void @_ZN8facebook5velox10FlatVectorIbE3setEib(ptr noundef nonnull align 8 dereferenceable(176) %i.v, i32 noundef %i.q, i1 noundef zeroext %i.ay)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i
  %i.az = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ba = extractvalue { ptr, i32 } %i.az, 0      ; 2 uses
  %i.bb = extractvalue { ptr, i32 } %i.az, 1      ; 2 uses
  %i.bc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = call ptr @__cxa_begin_catch(ptr %i.ba) #38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !756 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !13 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.bl = icmp eq i64 %i.bk, 4
  br i1 %i.bl, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.g
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.bm, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.bo, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.bq, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.bs, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.q

.loopexit:                                        ; preds = %bb.g, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.u unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.bt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.bu = icmp eq i32 %i.bb, %i.bt
  br i1 %i.bu, label %bb.i, label %.loopexit18

bb.i:                                             ; preds = %bb.h
  %i.bv = call ptr @__cxa_begin_catch(ptr %i.ba) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split

bb.l:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.by, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.t

bb.n:                                             ; preds = %.loopexit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.ca = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.ca, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split

bb.q:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.cc, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.cb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.bz, %bb.n ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.t

.loopexit18:                                      ; preds = %bb.h, %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.bx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.s ], [ %i.az, %bb.h ]
  resume { ptr, i32 } %.merged.i

bb.t:                                             ; preds = %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #50
  unreachable

bb.u:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit.sink.split, %_ZN8facebook5velox9functions12_GLOBAL__N_113OptimizedLikeILNS1_11PatternKindE1EE5matchILb0EEEbRKNS0_10StringViewERKNS1_15PatternMetadataE.exit.i
  %i.cf = add i64 %.025, -1
  %i.cg = and i64 %i.cf, %.025                    ; 2 uses
  %.not10 = icmp eq i64 %i.cg, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !3432

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE0_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS6_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUliE1_ZNS4_22applyToSelectedNoThrowISS_EEvSD_T_EUlSU_E_EEvSD_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3433, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3436
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit
  %.025 = phi i64 [ %i.k, %.preheader ], [ %i.bc, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_113OptimizedLikeILNS4_11PatternKindE1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUliE1_ZNS2_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_ENKUlSS_E_clIiEEDaSS_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.025, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
end_hunk_4
