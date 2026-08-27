Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIInstrInfo?download=true
inline.NumInlined: 9218
inline.NumDeleted: 2812
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK4llvm11SIInstrInfo23areLoadsFromSameBasePtrEPNS_6SDNodeES2_RlS3_:bb.a
  store i64 %.0.i.i.i.i, ptr %3, align 8, !tbaa !308
  %i.bo = zext i32 %i.bd to i64
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !300
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread.sink.split

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.br = and i64 %i.ad, 524288
  %.not119 = icmp eq i64 %i.br, 0
  br i1 %.not119, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !116
  %i.bu = and i64 %i.bt, 524288
  %.not120 = icmp eq i64 %i.bu, 0
  br i1 %.not120, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.g, i8 noundef zeroext 52) #36
  %.not122 = icmp eq i16 %i.bv, -1
  br i1 %.not122, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.h, i8 noundef zeroext 52) #36
  %.not123 = icmp eq i16 %i.bw, -1
  br i1 %.not123, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = tail call fastcc noundef i32 @_ZL20getNumOperandsNoGluePN4llvm6SDNodeE(ptr noundef nonnull %1) ; 3 uses
  %i.by = tail call fastcc noundef i32 @_ZL20getNumOperandsNoGluePN4llvm6SDNodeE(ptr noundef nonnull %2)
  %.not88 = icmp eq i32 %i.bx, %i.by
  br i1 %.not88, label %bb.r, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !299 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !299 ; 5 uses
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !300
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !300
  %i.cf = icmp ne ptr %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = icmp ne i32 %i.ch, %i.cj
  %.not3.i94 = select i1 %i.cf, i1 true, i1 %i.ck
  br i1 %.not3.i94, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = icmp eq i32 %i.bx, 5
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !300
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !300
  %i.cq = icmp ne ptr %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = icmp ne i32 %i.cs, %i.cu
  %.not3.i95 = select i1 %i.cq, i1 true, i1 %i.cv
  br i1 %.not3.i95, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cw = add nsw i32 %i.bx, -3
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !300 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load i32, ptr %i.da, align 8, !tbaa !290
  switch i32 %i.db, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit [
    i32 37, label %bb.v
    i32 12, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.u, %bb.v
  %.0.i.i.i = phi ptr [ %i.cz, %bb.v ], [ null, %bb.u ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %i.cx
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !300 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !290
  switch i32 %i.df, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %.not124 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not124, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !303 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !306
  %i.dl = icmp ult i32 %i.dk, 65
  %i.dm = load ptr, ptr %i.di, align 8
  %spec.select.i.i.i = select i1 %i.dl, ptr %i.di, ptr %i.dm
  %.0.i.i.i98 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !119
  store i64 %.0.i.i.i98, ptr %3, align 8, !tbaa !308
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread.sink.split

bb.x:                                             ; preds = %bb.n, %bb.m
  %i.dn = and i64 %i.ad, 393216
  %or.cond.not121 = icmp eq i64 %i.dn, 0
  br i1 %or.cond.not121, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !116
  %i.dq = and i64 %i.dp, 393216
  %or.cond114.not = icmp eq i64 %i.dq, 0
  br i1 %or.cond114.not, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = tail call fastcc noundef zeroext i1 @_ZL25nodesHaveSameOperandValuePN4llvm6SDNodeES1_NS_6AMDGPU6OpNameE(ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 5)
  br i1 %i.dr, label %bb.aa, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread

bb.aa:                                            ; preds = %bb.z
  %i.ds = tail call fastcc noundef zeroext i1 @_ZL25nodesHaveSameOperandValuePN4llvm6SDNodeES1_NS_6AMDGPU6OpNameE(ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 3)
  br i1 %i.ds, label %bb.ab, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dt = tail call fastcc noundef zeroext i1 @_ZL25nodesHaveSameOperandValuePN4llvm6SDNodeES1_NS_6AMDGPU6OpNameE(ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 4)
  br i1 %i.dt, label %bb.ac, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread

bb.ac:                                            ; preds = %bb.ab
  %i.du = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.g, i8 noundef zeroext 6) #36 ; 2 uses
  %i.dv = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.h, i8 noundef zeroext 6) #36 ; 2 uses
  %i.dw = icmp eq i16 %i.du, -1
  %i.dx = icmp eq i16 %i.dv, -1
  %or.cond5 = or i1 %i.dw, %i.dx
  br i1 %or.cond5, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = sext i16 %i.dv to i32
  %i.dz = sext i16 %i.du to i32
  %i.ea = sub nsw i32 %i.dz, %i.y
  %i.eb = sub nsw i32 %i.dy, %i.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !299
  %i.ee = zext i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.ee
  %.sroa.0107.0.copyload = load ptr, ptr %i.ef, align 8, !tbaa !309 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !299
  %i.ei = zext i32 %i.eb to i64
  %i.ej = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.ei
  %.sroa.0.0.copyload = load ptr, ptr %i.ej, align 8, !tbaa !309 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.copyload, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !290
  switch i32 %i.el, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread [
    i32 37, label %bb.ae
    i32 12, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.en = load i32, ptr %i.em, align 8, !tbaa !290
  switch i32 %i.en, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread [
    i32 37, label %bb.af
    i32 12, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0107.0.copyload, i64 88
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !303 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.es = load i32, ptr %i.er, align 8, !tbaa !306
  %i.et = icmp ult i32 %i.es, 65
  %i.eu = load ptr, ptr %i.eq, align 8
  %spec.select.i.i.i.i102 = select i1 %i.et, ptr %i.eq, ptr %i.eu
  %.0.i.i.i.i103 = load i64, ptr %spec.select.i.i.i.i102, align 8, !tbaa !119
  store i64 %.0.i.i.i.i103, ptr %3, align 8, !tbaa !308
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread.sink.split

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread.sink.split: ; preds = %bb.w, %bb.l, %bb.af
  %.sroa.0.0.copyload.sink = phi ptr [ %.sroa.0.0.copyload, %bb.af ], [ %i.bq, %bb.l ], [ %i.dd, %bb.w ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.sink, i64 88
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !303 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !306
  %i.fa = icmp ult i32 %i.ez, 65
  %i.fb = load ptr, ptr %i.ex, align 8
  %spec.select.i.i.i.i104 = select i1 %i.fa, ptr %i.ex, ptr %i.fb
  %.0.i.i.i.i105 = load i64, ptr %spec.select.i.i.i.i104, align 8, !tbaa !119
  store i64 %.0.i.i.i.i105, ptr %4, align 8, !tbaa !308
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread.sink.split, %bb.ad, %bb.ae, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.y, %bb.x, %bb.d, %bb.c, %bb.f, %bb.e, %bb.i, %bb.j, %bb.k, %bb.p, %bb.o, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97, %bb.t, %bb.r, %bb.q, %bb.ab, %bb.aa, %bb.z, %bb.ac, %bb.a, %bb.b
  %.6 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.o ], [ false, %bb.ad ], [ false, %bb.z ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.k ], [ false, %bb.p ], [ false, %bb.t ], [ false, %bb.q ], [ false, %bb.r ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97 ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ false, %bb.y ], [ false, %bb.x ], [ true, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit97.thread.sink.split ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 65536) i32 @_ZL20getNumOperandsNoGluePN4llvm6SDNodeE(ptr nofree noundef readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i16, ptr %i.a, align 8, !tbaa !310  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not11 = icmp eq i16 %i.b, 0
  br i1 %.not11, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext i16 %i.b to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !299
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !311

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv12 = phi i64 [ %i.d, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.f = add nsw i64 %indvars.iv12, -1            ; 3 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !300
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !312
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !313
  %i.m = zext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.n, align 8, !tbaa !314
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !316
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 249
  %i.o = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.o, i1 false
  br i1 %.not4.i, label %bb.b, label %.critedge.split.loop.exit8, !llvm.loop !311

.critedge.split.loop.exit8:                       ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %indvars.iv12 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %.critedge.split.loop.exit8
  %.0.lcssa = phi i32 [ %i.p, %.critedge.split.loop.exit8 ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @_ZL25nodesHaveSameOperandValuePN4llvm6SDNodeES1_NS_6AMDGPU6OpNameE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext range(i8 3, 6) %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !290
  %i.c = xor i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !290
  %i.f = xor i32 %i.e, -1
  %i.g = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.c, i8 noundef zeroext %2) #36 ; 3 uses
  %i.h = sext i16 %i.g to i64
  %i.i = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.f, i8 noundef zeroext %2) #36 ; 3 uses
  %i.j = sext i16 %i.i to i64
  %i.k = and i16 %i.i, %i.g
  %or.cond = icmp eq i16 %i.k, -1
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i16 %i.i, -1
  %i.m = icmp eq i16 %i.g, -1
  %or.cond23 = xor i1 %i.m, %i.l
  br i1 %or.cond23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i64 %i.h, 4294967295
  %i.o = add nsw i64 %i.j, 4294967295
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !299
  %i.r = and i64 %i.n, 4294967295
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !299
  %i.v = and i64 %i.o, 4294967295
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !300
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !300
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.ab, %i.ad
  %i.af = select i1 %i.z, i1 %i.ae, i1 false
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.af, %bb.c ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm11SIInstrInfo29getMemOperandsWithOffsetWidthERKNS_12MachineInstrERNS_15SmallVectorImplIPKNS_14MachineOperandEEERlRbRNS_12LocationSizeEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr14mayLoadOrStoreENS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 1)
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 8 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !144  ; 29 uses
  store i8 0, ptr %4, align 1, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !116  ; 6 uses
  %i.h = and i64 %i.g, 33554432
  %.not286 = icmp eq i64 %i.h, 0
  br i1 %.not286, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.c, i8 noundef zeroext 12) #36 ; 2 uses
  %i.j = icmp eq i16 %i.i, -1
  br i1 %i.j, label %_ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sext i16 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !140
  %i.n = and i64 %i.k, 4294967295
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.n
  br label %_ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit

_ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit: ; preds = %bb.c, %bb.d
  %.1.i.i = phi ptr [ null, %bb.c ], [ %i.o, %bb.d ] ; 5 uses
  %i.p = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.c, i8 noundef zeroext 6) #36 ; 2 uses
  %i.q = icmp eq i16 %i.p, -1
  br i1 %i.q, label %_ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit._ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit199.thread_crit_edge, label %_ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit199

_ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit._ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit199.thread_crit_edge: ; preds = %_ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !140 ; 3 uses
  %i.r = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.c, i8 noundef zeroext 21) #36 ; 2 uses
  %i.s = icmp ne i16 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = sext i16 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = and i64 %i.t, 4294967295
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %i.v
  %i.x = tail call noundef signext i16 @_ZN4llvm6AMDGPU18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef %i.c, i8 noundef zeroext 22) #36 ; 2 uses
  %i.y = icmp ne i16 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = sext i16 %i.x to i64
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !119
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 255                      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !119
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 255
  %i.ak = add nuw nsw i32 %i.af, 1
  %.not196 = icmp eq i32 %i.ak, %i.aj
  br i1 %.not196, label %bb.k, label %.critedge

_ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit199: ; preds = %_ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit
  %i.al = sext i16 %i.p to i64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !140, !nonnull !60, !noundef !60
  %i.ao = and i64 %i.al, 4294967295
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.ao
  %.not197 = icmp eq ptr %.1.i.i, null
  br i1 %.not197, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm11SIInstrInfo15getNamedOperandERKNS_12MachineInstrENS_6AMDGPU6OpNameE.exit199
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !80 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !81
  %.not.i = icmp ult i32 %i.ar, %i.at
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !318

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_14MachineOperandELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.1.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_14MachineOperandELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %bb.e
  %i.au = zext i32 %i.ar to i64
  %i.av = load ptr, ptr %2, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  store ptr %.1.i.i, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.aq, align 8, !tbaa !80
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aq, align 8, !tbaa !80
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_14MachineOperandELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKNS_14MachineOperandELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
end_hunk_0
