Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_compression_alp?download=true
inline.NumInlined: 1905
inline.NumDeleted: 977
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %5, align 8, !tbaa !266    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12AlpScanStateIfE10LoadVectorILb0EEEvPf(ptr noundef nonnull align 8 dereferenceable(18536) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.b, align 8, !tbaa !224
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !226
  %.0.copyload.i = load i32, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18528
  %i.g = load i64, ptr %i.f, align 8, !tbaa !225  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !223  ; 2 uses
  %i.j = sub i64 %i.g, %i.i                       ; 3 uses
  %i.k = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 1024) ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !349
  %i.n = zext i32 %.0.copyload.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 6 uses
  %.0.copyload.i26 = load i8, ptr %i.o, align 1   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 2 uses
  store i8 %.0.copyload.i26, ptr %i.p, align 8, !tbaa !351
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.r = icmp eq i8 %.0.copyload.i26, -1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr nonnull align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.0.copyload.i27 = load i8, ptr %i.q, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18497 ; 2 uses
  store i8 %.0.copyload.i27, ptr %i.t, align 1, !tbaa !352
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %.0.copyload.i28 = load i16, ptr %i.u, align 1  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18498 ; 4 uses
  store i16 %.0.copyload.i28, ptr %i.v, align 2, !tbaa !353
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.0.copyload.i29 = load i64, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 18504 ; 2 uses
  store i64 %.0.copyload.i29, ptr %i.x, align 8, !tbaa !354
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.0.copyload.i30 = load i8, ptr %i.y, align 1   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 18512 ; 2 uses
  store i8 %.0.copyload.i30, ptr %i.z, align 8, !tbaa !355
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 13 ; 3 uses
  %.not = icmp eq i8 %.0.copyload.i30, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc nuw nsw i64 %i.k to i32
  %i.ac = and i32 %i.ab, 31                       ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = add nuw nsw i64 %i.k, 32
  %i.af = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.ac)
  %i.ag = sub i64 %i.ae, %i.af
  br label %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit

_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.k, %bb.d ]
  %i.ah = zext i8 %.0.copyload.i30 to i64
  %i.ai = mul i64 %.0.i.i, %i.ah
  %i.aj = lshr i64 %i.ai, 3                       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10304
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 1 %i.aa, i64 %i.aj, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.aj
  %.pre = load i16, ptr %i.v, align 2, !tbaa !353
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit, %bb.c
  %i.am = phi i16 [ %.pre, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit ], [ %.0.copyload.i28, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %i.al, %_ZN6duckdb20BitpackingPrimitives15GetRequiredSizeEmh.exit ], [ %i.aa, %bb.c ] ; 2 uses
  %.not25 = icmp eq i16 %i.am, 0
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.ao = zext i16 %i.am to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 1 %.0, i64 %i.ap, i1 false)
  %i.aq = load i16, ptr %i.v, align 2, !tbaa !353
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8256
  %i.av = shl nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 1 %i.at, i64 %i.av, i1 false)
  %.pre31 = load i16, ptr %i.v, align 2, !tbaa !542
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = phi i16 [ %.pre31, %bb.g ], [ 0, %bb.f ] ; 3 uses
  store float 0.000000e+00, ptr %1, align 4, !tbaa !165
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 10304
  %i.ay = load i8, ptr %i.t, align 1, !tbaa !543
  %i.az = load i8, ptr %i.p, align 8, !tbaa !544
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8256 ; 5 uses
  %i.bc = load i64, ptr %i.x, align 8, !tbaa !545 ; 2 uses
  %i.bd = load i8, ptr %i.z, align 8, !tbaa !546  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false)
  %.not.i.i = icmp eq i8 %i.bd, 0
  %.not.i.i.i = icmp eq i64 %i.g, %i.i            ; 2 uses
  %or.cond.i.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond.i.i, label %_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.be = zext i8 %i.bd to i64
  %i.bf = zext i8 %i.bd to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bl, %bb.i ] ; 3 uses
  %i.bg = shl nuw nsw i64 %.09.i.i.i, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = mul nuw nsw i64 %.09.i.i.i, %i.be
  %i.bj = lshr exact i64 %i.bi, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bj
  call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPmj(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bh, i32 noundef %i.bf)
  %i.bl = add nuw nsw i64 %.09.i.i.i, 32          ; 2 uses
  %i.bm = icmp samesign ult i64 %i.bl, %i.k
  br i1 %i.bm, label %bb.i, label %.lr.ph.preheader.i.i, !llvm.loop !19

_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i: ; preds = %bb.h
  br i1 %.not.i.i.i, label %.preheader.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i, %_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.k, 2044                     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bn, align 16, !tbaa !171
  %wide.load36 = load <2 x i64>, ptr %i.bo, align 16, !tbaa !171
  %i.bp = add <2 x i64> %wide.load, %broadcast.splat
  %i.bq = add <2 x i64> %wide.load36, %broadcast.splat
  store <2 x i64> %i.bp, ptr %i.bn, align 16, !tbaa !171
  store <2 x i64> %i.bq, ptr %i.bo, align 16, !tbaa !171
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !536

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.lr.ph33.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.02731.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph33.i.i:                                     ; preds = %.lr.ph.i.i, %middle.block
  %.sroa.2.0.extract.trunc.i.i.i = zext i8 %i.ay to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb12AlpConstants8FACT_ARRE, i64 %.sroa.2.0.extract.trunc.i.i.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !171
  %i.bu = sitofp i64 %i.bt to float               ; 2 uses
  %i.bv = zext i8 %i.az to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE8FRAC_ARRE, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !165 ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.j, 4
  br i1 %min.iters.check38, label %scalar.ph37.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph33.i.i
  %n.vec40 = and i64 %i.k, 2044                   ; 3 uses
  %broadcast.splatinsert41 = insertelement <2 x float> poison, float %i.bu, i64 0
  %broadcast.splat42 = shufflevector <2 x float> %broadcast.splatinsert41, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <2 x float> poison, float %i.bx, i64 0
  %broadcast.splat44 = shufflevector <2 x float> %broadcast.splatinsert43, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph39
  %index46 = phi i64 [ 0, %vector.ph39 ], [ %index.next49, %vector.body45 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index46 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load47 = load <2 x i64>, ptr %i.by, align 16, !tbaa !171
  %wide.load48 = load <2 x i64>, ptr %i.bz, align 16, !tbaa !171
  %2 = sitofp <2 x i64> %wide.load47 to <2 x float>
  %3 = sitofp <2 x i64> %wide.load48 to <2 x float>
  %4 = fmul nnan <2 x float> %broadcast.splat42, %2
  %5 = fmul nnan <2 x float> %broadcast.splat42, %3
  %6 = fmul <2 x float> %broadcast.splat44, %4
  %7 = fmul <2 x float> %broadcast.splat44, %5
  %8 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index46 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %6, ptr %8, align 4, !tbaa !165
  store <2 x float> %7, ptr %9, align 4, !tbaa !165
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next49, %n.vec40
  br i1 %i.ca, label %middle.block50, label %vector.body45, !llvm.loop !537

middle.block50:                                   ; preds = %vector.body45
  %cmp.n51 = icmp eq i64 %i.k, %n.vec40
  br i1 %cmp.n51, label %.preheader.i.i, label %scalar.ph37.preheader

scalar.ph37.preheader:                            ; preds = %.lr.ph33.i.i, %middle.block50
  %.02832.i.i.ph = phi i64 [ 0, %.lr.ph33.i.i ], [ %n.vec40, %middle.block50 ]
  br label %scalar.ph37

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02731.i.i = phi i64 [ %i.ce, %.lr.ph.i.i ], [ %.02731.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.02731.i.i ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !171
  %i.cd = add i64 %i.cc, %i.bc
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !171
  %i.ce = add nuw nsw i64 %.02731.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ce, %i.k
  br i1 %exitcond.not.i.i, label %.lr.ph33.i.i, label %.lr.ph.i.i, !llvm.loop !538

.preheader.i.i:                                   ; preds = %scalar.ph37, %middle.block50, %_ZN6duckdb20BitpackingPrimitives12UnPackBufferImEEvPhS2_mhb.exit.i.i
  %i.cf = zext i16 %i.aw to i64                   ; 2 uses
  %.not38.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not38.i.i, label %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit, label %.lr.ph35.i.i.preheader

.lr.ph35.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter = and i64 %i.cf, 3                    ; 3 uses
  %i.cg = icmp ult i16 %i.aw, 4
  br i1 %i.cg, label %.lr.ph35.i.i.epil.preheader, label %.lr.ph35.i.i.preheader.new

.lr.ph35.i.i.preheader.new:                       ; preds = %.lr.ph35.i.i.preheader
  %unroll_iter = and i64 %i.cf, 65532
  br label %.lr.ph35.i.i

scalar.ph37:                                      ; preds = %scalar.ph37.preheader, %scalar.ph37
  %.02832.i.i = phi i64 [ %i.cn, %scalar.ph37 ], [ %.02832.i.i.ph, %scalar.ph37.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.02832.i.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !171
  %i.cj = sitofp i64 %i.ci to float
  %i.ck = fmul nnan float %i.bu, %i.cj
  %i.cl = fmul float %i.bx, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02832.i.i
  store float %i.cl, ptr %i.cm, align 4, !tbaa !165
  %i.cn = add nuw nsw i64 %.02832.i.i, 1          ; 2 uses
  %exitcond39.not.i.i = icmp eq i64 %i.cn, %i.k
  br i1 %exitcond39.not.i.i, label %.preheader.i.i, label %scalar.ph37, !llvm.loop !539

.lr.ph35.i.i:                                     ; preds = %.lr.ph35.i.i, %.lr.ph35.i.i.preheader.new
  %.034.i.i = phi i64 [ 0, %.lr.ph35.i.i.preheader.new ], [ %i.dp, %.lr.ph35.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph35.i.i.preheader.new ], [ %niter.next.3, %.lr.ph35.i.i ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.034.i.i
  %i.cp = load float, ptr %i.co, align 8, !tbaa !165
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.034.i.i
  %i.cr = load i16, ptr %i.cq, align 8, !tbaa !158
  %i.cs = zext i16 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cs
  store float %i.cp, ptr %i.ct, align 4, !tbaa !165
  %i.cu = or disjoint i64 %.034.i.i, 1            ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !165
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.cu
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !158
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cz
  store float %i.cw, ptr %i.da, align 4, !tbaa !165
  %i.db = or disjoint i64 %.034.i.i, 2            ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !165
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.db
  %i.df = load i16, ptr %i.de, align 4, !tbaa !158
  %i.dg = zext i16 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  store float %i.dd, ptr %i.dh, align 4, !tbaa !165
  %i.di = or disjoint i64 %.034.i.i, 3            ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !165
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.di
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !158
  %i.dn = zext i16 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dn
  store float %i.dk, ptr %i.do, align 4, !tbaa !165
  %i.dp = add nuw nsw i64 %.034.i.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit.loopexit.unr-lcssa, label %.lr.ph35.i.i, !llvm.loop !540

_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph35.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit, label %.lr.ph35.i.i.epil.preheader

.lr.ph35.i.i.epil.preheader:                      ; preds = %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit.loopexit.unr-lcssa, %.lr.ph35.i.i.preheader
  %.034.i.i.epil.init = phi i64 [ 0, %.lr.ph35.i.i.preheader ], [ %i.dp, %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit.loopexit.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod53)
  br label %.lr.ph35.i.i.epil

.lr.ph35.i.i.epil:                                ; preds = %.lr.ph35.i.i.epil, %.lr.ph35.i.i.epil.preheader
  %.034.i.i.epil = phi i64 [ %i.dw, %.lr.ph35.i.i.epil ], [ %.034.i.i.epil.init, %.lr.ph35.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph35.i.i.epil ], [ 0, %.lr.ph35.i.i.epil.preheader ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.034.i.i.epil
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !165
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.034.i.i.epil
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !158
  %i.du = zext i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.du
  store float %i.dr, ptr %i.dv, align 4, !tbaa !165
  %i.dw = add nuw nsw i64 %.034.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit, label %.lr.ph35.i.i.epil, !llvm.loop !541

_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit: ; preds = %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit.loopexit.unr-lcssa, %.lr.ph35.i.i.epil, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb14AlpVectorStateIfE10LoadValuesILb0EEEvPfm.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN18duckdb_fastpforlib10fastunpackEPKjPmj(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.bo [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
    i32 16, label %bb.r
    i32 17, label %bb.s
    i32 18, label %bb.t
    i32 19, label %bb.u
    i32 20, label %bb.v
    i32 21, label %bb.w
    i32 22, label %bb.x
    i32 23, label %bb.y
    i32 24, label %bb.z
    i32 25, label %bb.aa
    i32 26, label %bb.ab
    i32 27, label %bb.ac
    i32 28, label %bb.ad
    i32 29, label %bb.ae
    i32 30, label %bb.af
    i32 31, label %bb.ag
    i32 32, label %bb.ah
    i32 33, label %bb.ai
    i32 34, label %bb.aj
    i32 35, label %bb.ak
    i32 36, label %bb.al
    i32 37, label %bb.am
    i32 38, label %bb.an
    i32 39, label %bb.ao
    i32 40, label %bb.ap
    i32 41, label %bb.aq
    i32 42, label %bb.ar
    i32 43, label %bb.as
    i32 44, label %bb.at
    i32 45, label %bb.au
    i32 46, label %bb.av
    i32 47, label %bb.aw
    i32 48, label %bb.ax
    i32 49, label %bb.ay
    i32 50, label %bb.az
    i32 51, label %bb.ba
    i32 52, label %bb.bb
    i32 53, label %bb.bc
    i32 54, label %bb.bd
    i32 55, label %bb.be
    i32 56, label %bb.bf
    i32 57, label %bb.bg
    i32 58, label %bb.bh
    i32 59, label %bb.bi
    i32 60, label %bb.bj
    i32 61, label %bb.bk
    i32 62, label %bb.bl
    i32 63, label %bb.bm
    i32 64, label %bb.bn
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack0EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack1EPKjPm(ptr noundef %0, ptr noundef %1)
  br label %bb.br

end_hunk_0
