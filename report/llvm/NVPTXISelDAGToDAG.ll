Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVPTXISelDAGToDAG?download=true
inline.NumInlined: 3005
inline.NumDeleted: 1244
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm17NVPTXDAGToDAGISel16tryIntrinsicVoidEPNS_6SDNodeE:bb.a
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvm17NVPTXDAGToDAGISel6tryBFEEPNS_6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %3 = alloca %"class.llvm::SDLoc", align 8       ; 11 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 12 uses
  %5 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 8 uses
  %6 = alloca %"class.llvm::ArrayRef.358", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !370
  store i64 %i.b, ptr %3, align 8, !tbaa !370
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !371
  store i32 %i.e, ptr %i.c, align 8, !tbaa !372
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !252  ; 2 uses
  %.sroa.0261.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !375 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0253.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !375 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !253
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !256
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !240
  switch i32 %i.k, label %.critedge [
    i32 193, label %bb.b
    i32 200, label %bb.l
    i32 199, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0261.0.copyload, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !240
  switch i32 %i.m, label %bb.e [
    i32 37, label %bb.c
    i32 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0253.0.copyload, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !240
  switch i32 %i.o, label %bb.d [
    i32 37, label %bb.e
    i32 12, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.b, %bb.d
  %.sroa.0253.0 = phi ptr [ %.sroa.0253.0.copyload, %bb.c ], [ %.sroa.0261.0.copyload, %bb.d ], [ %.sroa.0253.0.copyload, %bb.b ], [ %.sroa.0253.0.copyload, %bb.c ] ; 2 uses
  %.sroa.0261.0 = phi ptr [ %.sroa.0261.0.copyload, %bb.c ], [ %.sroa.0253.0.copyload, %bb.d ], [ %.sroa.0261.0.copyload, %bb.b ], [ %.sroa.0261.0.copyload, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0253.0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !240
  switch i32 %i.q, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.e, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0253.0, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !376  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !379
  %i.w = icmp ult i32 %i.v, 65
  %i.x = load ptr, ptr %i.t, align 8
  %spec.select.i.i.i = select i1 %i.w, ptr %i.t, ptr %i.x
  %.0.i.i.i162 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !381 ; 4 uses
  %.not.i = icmp ne i64 %.0.i.i.i162, 0
  %i.y = add i64 %.0.i.i.i162, 1
  %i.z = and i64 %i.y, %.0.i.i.i162
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = and i1 %.not.i, %i.aa
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.ac = xor i64 %.0.i.i.i162, -1
  %i.ad = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ac, i1 false) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !382
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.af, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0261.0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !240
  %.off = add i32 %i.ai, -199
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0261.0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !252 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.ak, i64 12, i1 false), !tbaa.struct !374
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.0246.0.copyload = load ptr, ptr %i.al, align 8, !tbaa !375 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0246.0.copyload, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !240
  switch i32 %i.an, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit164
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit164
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit164: ; preds = %bb.g, %bb.g
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !230
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0246.0.copyload, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !376 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !379
  %i.at = icmp ult i32 %i.as, 65
  %i.au = load ptr, ptr %i.aq, align 8
  %spec.select.i.i.i165 = select i1 %i.at, ptr %i.aq, ptr %i.au
  %.0.i.i.i166 = load i64, ptr %spec.select.i.i.i165, align 8, !tbaa !381 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0246.0.copyload, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !257
  %i.ax = zext i32 %.sroa.10.0.copyload to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ay, align 8, !tbaa !258 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !260
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.az, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit164
  %i.ba = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.bb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -16
  %.sroa.0.0.copyload.i.i3.i = load i64, ptr %i.bc, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.bb, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i4.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i3.i, 0
  %.fca.1.insert.i.i5.i = insertvalue { i64, i8 } %.fca.0.insert.i.i4.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit164
  %i.bd = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  br label %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit

_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit:     ; preds = %bb.h, %bb.i
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i5.i, %bb.h ], [ %i.bd, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.fca.1.extract79 = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.be = trunc nuw i8 %.fca.1.extract79 to i1
  br i1 %i.be, label %bb.j, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.j:                                             ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.68) #28
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm7SDValue18getValueSizeInBitsEv.exit
  %.fca.0.extract78 = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.bf = sub i64 %.fca.0.extract78, %.0.i.i.i166
  %.not = icmp slt i64 %i.bf, %i.ad
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !382
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bg, i64 noundef %.0.i.i.i166, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26
  br label %bb.aa

bb.l:                                             ; preds = %bb.a, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0261.0.copyload, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !240
  switch i32 %i.bj, label %.critedge [
    i32 193, label %bb.m
    i32 198, label %bb.u
  ]

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0253.0.copyload, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !240
  switch i32 %i.bl, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit168
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit168
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit168: ; preds = %bb.m, %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0253.0.copyload, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !376 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !379
  %i.br = icmp ult i32 %i.bq, 65
  %i.bs = load ptr, ptr %i.bo, align 8
  %spec.select.i.i.i169 = select i1 %i.br, ptr %i.bo, ptr %i.bs
  %.0.i.i.i170 = load i64, ptr %spec.select.i.i.i169, align 8, !tbaa !381 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0261.0.copyload, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !252 ; 4 uses
  %.sroa.0229.0.copyload = load ptr, ptr %i.bu, align 8, !tbaa !375 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %.sroa.0224.0.copyload = load ptr, ptr %i.bv, align 8, !tbaa !375 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0229.0.copyload, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !240
  switch i32 %i.bx, label %bb.o [
    i32 37, label %bb.n
    i32 12, label %bb.n
  ]

bb.n:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit168, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit168
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit168, %bb.n
  %.sroa.0224.0 = phi ptr [ %.sroa.0229.0.copyload, %bb.n ], [ %.sroa.0224.0.copyload, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit168 ] ; 2 uses
  %.sroa.0229.0 = phi ptr [ %.sroa.0224.0.copyload, %bb.n ], [ %.sroa.0229.0.copyload, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit168 ]
  %.sroa.8.0.in = phi ptr [ %.sroa.7.0..sroa_idx, %bb.n ], [ %.sroa.8.0..sroa_idx, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit168 ]
  %.sroa.8.0 = load i32, ptr %.sroa.8.0.in, align 8, !tbaa !230
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0224.0, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !240
  switch i32 %i.bz, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit173
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit173
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit173: ; preds = %bb.o, %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0224.0, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !376 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !379
  %i.cf = icmp ult i32 %i.ce, 65
  %i.cg = load ptr, ptr %i.cc, align 8
  %spec.select.i.i.i174 = select i1 %i.cf, ptr %i.cc, ptr %i.cg
  %.0.i.i.i175 = load i64, ptr %spec.select.i.i.i174, align 8, !tbaa !381 ; 9 uses
  %.not.i176 = icmp ne i64 %.0.i.i.i175, 0
  %i.ch = add i64 %.0.i.i.i175, 1
  %i.ci = and i64 %i.ch, %.0.i.i.i175
  %i.cj = icmp eq i64 %i.ci, 0
  %i.ck = and i1 %.not.i176, %i.cj
  br i1 %i.ck, label %.thread, label %bb.p

.thread:                                          ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit173
  %i.cl = xor i64 %.0.i.i.i175, -1
  %i.cm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cl, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit173
  %.not.i177 = icmp eq i64 %.0.i.i.i175, 0
  br i1 %.not.i177, label %.critedge, label %_ZN4llvm16isShiftedMask_64Em.exit

_ZN4llvm16isShiftedMask_64Em.exit:                ; preds = %bb.p
  %i.cn = add i64 %.0.i.i.i175, -1
  %i.co = or i64 %i.cn, %.0.i.i.i175              ; 2 uses
  %i.cp = add i64 %i.co, 1
  %i.cq = and i64 %i.cp, %i.co
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit
  %i.cs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i.i.i175, i1 true) ; 3 uses
  %i.ct = lshr exact i64 %.0.i.i.i175, %i.cs
  %i.cu = xor i64 %i.ct, -1
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cu, i1 false)
  %i.cw = add nuw nsw i64 %i.cv, %i.cs
  %i.cx = icmp ult i64 %.0.i.i.i170, %i.cs
  br i1 %i.cx, label %.critedge, label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %.pn296 = phi i64 [ %i.cm, %.thread ], [ %i.cw, %bb.q ] ; 2 uses
  %.0141 = sub i64 %.pn296, %.0.i.i.i170
  store ptr %.sroa.0229.0, ptr %4, align 8, !tbaa !375
  store i32 %.sroa.8.0, ptr %i.i, align 8, !tbaa !230
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !382
  %i.da = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.cz, i64 noundef %.0.i.i.i170, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !382
  %i.dc = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.db, i64 noundef %.0141, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %i.dd = load i32, ptr %i.j, align 8, !tbaa !240
  %i.de = icmp eq i32 %i.dd, 199
  br i1 %i.de, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.df = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %4) ; 2 uses
  %.fca.1.extract34 = extractvalue { i64, i8 } %i.df, 1
  %i.dg = trunc nuw i8 %.fca.1.extract34 to i1
  br i1 %i.dg, label %bb.t, label %_ZNK4llvm8TypeSizecvmEv.exit178

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.68) #28
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit178:                  ; preds = %bb.s
  %.fca.0.extract33 = extractvalue { i64, i8 } %i.df, 0
  %i.dh = icmp eq i64 %.pn296, %.fca.0.extract33
  br label %bb.aa

bb.u:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0261.0.copyload, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !252 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.dj, i64 12, i1 false), !tbaa.struct !374
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %.sroa.0215.0.copyload = load ptr, ptr %i.dk, align 8, !tbaa !375 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0215.0.copyload, i64 24
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !240
  switch i32 %i.dm, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit180
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit180
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit180: ; preds = %bb.u, %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0215.0.copyload, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !376 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !379
  %i.ds = icmp ult i32 %i.dr, 65
  %i.dt = load ptr, ptr %i.dp, align 8
  %spec.select.i.i.i181 = select i1 %i.ds, ptr %i.dp, ptr %i.dt
  %.0.i.i.i182 = load i64, ptr %spec.select.i.i.i181, align 8, !tbaa !381 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0253.0.copyload, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !240
  switch i32 %i.dv, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit184
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit184
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit184: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit180, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit180
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0253.0.copyload, i64 88
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !376 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !379
  %i.eb = icmp ult i32 %i.ea, 65
  %i.ec = load ptr, ptr %i.dy, align 8
  %spec.select.i.i.i185 = select i1 %i.eb, ptr %i.dy, ptr %i.ec
  %.0.i.i.i186 = load i64, ptr %spec.select.i.i.i185, align 8, !tbaa !381 ; 4 uses
  %i.ed = icmp ult i64 %.0.i.i.i186, %.0.i.i.i182
  br i1 %i.ed, label %.critedge, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit184
  %i.ee = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %4) ; 2 uses
  %.fca.1.extract21 = extractvalue { i64, i8 } %i.ee, 1
  %i.ef = trunc nuw i8 %.fca.1.extract21 to i1
  br i1 %i.ef, label %bb.w, label %_ZNK4llvm8TypeSizecvmEv.exit187

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.68) #28
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit187:                  ; preds = %bb.v
  %.fca.0.extract20 = extractvalue { i64, i8 } %i.ee, 0
  %.not151 = icmp ult i64 %.0.i.i.i186, %.fca.0.extract20
  br i1 %.not151, label %bb.x, label %.critedge

bb.x:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit187
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !382
  %i.ei = sub i64 %.0.i.i.i186, %.0.i.i.i182
  %i.ej = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.eh, i64 noundef %i.ei, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !382
  %i.el = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %4) ; 2 uses
  %.fca.1.extract9 = extractvalue { i64, i8 } %i.el, 1
  %i.em = trunc nuw i8 %.fca.1.extract9 to i1
  br i1 %i.em, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.68) #28
  unreachable

bb.z:                                             ; preds = %bb.x
  %.fca.0.extract8 = extractvalue { i64, i8 } %i.el, 0
  %i.en = sub i64 %.fca.0.extract8, %.0.i.i.i186
  %i.eo = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ek, i64 noundef %i.en, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26
  %i.ep = load i32, ptr %i.j, align 8, !tbaa !240
  %i.eq = icmp eq i32 %i.ep, 199
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.r, %_ZNK4llvm8TypeSizecvmEv.exit178, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.k ], [ %i.ej, %bb.z ], [ %i.da, %_ZNK4llvm8TypeSizecvmEv.exit178 ], [ %i.da, %bb.r ] ; 2 uses
  %.pn309 = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.eo, %bb.z ], [ %i.dc, %_ZNK4llvm8TypeSizecvmEv.exit178 ], [ %i.dc, %bb.r ] ; 2 uses
  %.8127.shrunk = phi i1 [ false, %bb.k ], [ %i.eq, %bb.z ], [ %i.dh, %_ZNK4llvm8TypeSizecvmEv.exit178 ], [ false, %bb.r ] ; 2 uses
  %.sroa.7.2 = extractvalue { ptr, i32 } %.pn309, 1
  %.sroa.0251.2 = extractvalue { ptr, i32 } %.pn309, 0
  %.sroa.10.2 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.0246.2 = extractvalue { ptr, i32 } %.pn, 0
  %i.er = load ptr, ptr %4, align 8, !tbaa !253
  %i.es = load i32, ptr %i.i, align 8, !tbaa !256
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !257
  %i.ev = zext i32 %i.es to i64
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.ev ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ew, align 8, !tbaa !258 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !260
  %.not.i.i189 = icmp eq i16 %.sroa.0.0.copyload.i.i, 7
  %i.ex = icmp eq ptr %.sroa.21.0.copyload.i.i, null ; 2 uses
  %.not4.i = select i1 %.not.i.i189, i1 %i.ex, i1 false
  br i1 %.not4.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %. = select i1 %.8127.shrunk, i32 427, i32 433
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i195 = icmp eq i16 %.sroa.0.0.copyload.i.i, 8
  %.not4.i196 = select i1 %.not.i.i195, i1 %i.ex, i1 false
  br i1 %.not4.i196, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %.158 = select i1 %.8127.shrunk, i32 430, i32 436
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.0128 = phi i32 [ %., %bb.ab ], [ %.158, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !374
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.0246.2, ptr %i.ey, align 16, !tbaa !375
  %.sroa.10.0..sroa_idx249 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.sroa.10.2, ptr %.sroa.10.0..sroa_idx249, align 8, !tbaa !230
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.sroa.0251.2, ptr %i.ez, align 16, !tbaa !375
  %.sroa.7.0..sroa_idx252 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %.sroa.7.2, ptr %.sroa.7.0..sroa_idx252, align 8, !tbaa !230
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !382
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !257
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !383
  %i.fg = zext i16 %i.ff to i32
  store ptr %5, ptr %6, align 8, !tbaa !384
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %i.fh, align 8, !tbaa !387
  %i.fi = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.fb, i32 noundef %.0128, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.fd, i32 %i.fg, ptr noundef nonnull byval(%"class.llvm::ArrayRef.358") align 8 %6) #26 ; 2 uses
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !382
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.fj, ptr noundef nonnull %1, ptr noundef %i.fi) #26
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.fi) #26
  %i.fk = load ptr, ptr %i.fa, align 8, !tbaa !382
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.fk, ptr noundef nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit180, %bb.u, %_ZNK4llvm8TypeSizecvmEv.exit187, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit184, %bb.f, %bb.l, %bb.a, %bb.p, %bb.o, %bb.m, %bb.g, %bb.e, %_ZN4llvm16isShiftedMask_64Em.exit, %bb.q, %_ZNK4llvm8TypeSizecvmEv.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.ae, %bb.ac
  %.12 = phi i1 [ false, %bb.a ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit ], [ false, %bb.g ], [ false, %bb.p ], [ false, %_ZN4llvm16isShiftedMask_64Em.exit ], [ false, %bb.l ], [ false, %bb.ac ], [ true, %bb.ae ], [ false, %bb.f ], [ false, %bb.e ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ], [ false, %bb.o ], [ false, %bb.m ], [ false, %bb.q ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit184 ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit187 ], [ false, %bb.u ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i1 %.12
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm17NVPTXDAGToDAGISel19SelectAddrSpaceCastEPNS_6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 10 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !252  ; 3 uses
  %.sroa.047.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !375 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !230 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !405  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !407  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !370
  store i64 %i.h, ptr %2, align 8, !tbaa !370
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !371
  store i32 %i.k, ptr %i.i, align 8, !tbaa !372
  %i.l = icmp eq i32 %i.f, 0
  br i1 %i.l, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 7 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !408, !nonnull !19, !align !162 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1728
  %i.p = load i8, ptr %i.o, align 8, !tbaa !409, !range !18, !noundef !19
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.r, i32 noundef %i.d) #26
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !518
  %i.v = icmp eq i32 %i.u, 32
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !382
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.x, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.y, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.y, 1
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !382
  store ptr %.sroa.047.0.copyload, ptr %3, align 8, !tbaa !375
  %.sroa.7.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx51, align 8, !tbaa !230
  %.sroa.8.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx57, align 4
  store ptr %.fca.0.extract9, ptr %4, align 8, !tbaa !375
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !230
  %i.aa = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.z, i32 noundef 743, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.047.0 = phi ptr [ %i.aa, %bb.d ], [ %.sroa.047.0.copyload, %bb.c ], [ %.sroa.047.0.copyload, %bb.b ]
  %.sroa.7.0 = phi i32 [ 0, %bb.d ], [ %.sroa.7.0.copyload, %bb.c ], [ %.sroa.7.0.copyload, %bb.b ]
  switch i32 %i.d, label %bb.f [
    i32 1, label %bb.g
    i32 3, label %bb.h
    i32 7, label %bb.i
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 101, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.7, i1 noundef zeroext true) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !408, !nonnull !19, !align !162
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1728
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !409, !range !18, !noundef !19
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = select i1 %i.ae, i32 6478, i32 6477
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !408, !nonnull !19, !align !162
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1728
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !409, !range !18, !noundef !19
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = select i1 %i.aj, i32 6484, i32 6483
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !408, !nonnull !19, !align !162
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1728
  %i.an = load i8, ptr %i.am, align 8, !tbaa !409, !range !18, !noundef !19
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.8, i1 noundef zeroext true) #28
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !408, !nonnull !19, !align !162
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1728
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !409, !range !18, !noundef !19
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = select i1 %i.as, i32 6476, i32 6475
  br label %bb.n

bb.l:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !408, !nonnull !19, !align !162
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1728
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !409, !range !18, !noundef !19
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = select i1 %i.ax, i32 6480, i32 6479
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !408, !nonnull !19, !align !162
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1728
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !409, !range !18, !noundef !19
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = select i1 %i.bc, i32 6482, i32 6481
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g
  %.0 = phi i32 [ %i.af, %bb.g ], [ %i.ak, %bb.h ], [ %i.bd, %bb.m ], [ %i.at, %bb.k ], [ %i.ay, %bb.l ], [ 6485, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !382
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !257 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.bh, align 8, !tbaa !258
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !260
  store ptr %.sroa.047.0, ptr %5, align 8, !tbaa !375
  %.sroa.7.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx53, align 8, !tbaa !230
  %.sroa.8.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx59, align 4
  %i.bi = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bf, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #26 ; 2 uses
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !382
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.bj, ptr noundef nonnull %1, ptr noundef %i.bi) #26
  br label %bb.ad

bb.o:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.9, i1 noundef zeroext true) #28
  unreachable

bb.q:                                             ; preds = %bb.o
  switch i32 %i.f, label %bb.r [
    i32 1, label %bb.s
    i32 3, label %bb.t
    i32 7, label %bb.u
    i32 4, label %bb.w
    i32 5, label %bb.x
    i32 101, label %bb.y
  ]

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.7, i1 noundef zeroext true) #28
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !408, !nonnull !19, !align !162
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1728
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !409, !range !18, !noundef !19
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = select i1 %i.bo, i32 6489, i32 6488
  br label %bb.z

bb.t:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !408, !nonnull !19, !align !162
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1728
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !409, !range !18, !noundef !19
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = select i1 %i.bu, i32 6495, i32 6494
  br label %bb.z

bb.u:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 952
end_hunk_0
