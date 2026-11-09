Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFExporter?download=true
inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5o3dgc19TriangleListEncoderItE6EncodeEPKtPKmllRNS_12BinaryStreamE:bb.a
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %storemerge72
  store i64 %i.cn, ptr %i.cq, align 8
  %i.cr = load ptr, ptr %i.bq, align 8
  %i.cs = load ptr, ptr %i.bp, align 8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %storemerge72
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cu
  store i64 %storemerge72, ptr %i.cv, align 8
  %i.cw = load i64, ptr %i.bn, align 8            ; 2 uses
  %.not5470 = icmp eq i64 %i.cw, 0
  br i1 %.not5470, label %.loopexit61, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.g, %_ZN5o3dgc4FIFOIlE8PopFirstEv.exit
  %i.cx = phi i64 [ %i.dj, %_ZN5o3dgc4FIFOIlE8PopFirstEv.exit ], [ %i.cw, %bb.g ]
  %i.cy = add i64 %i.cx, -1
  store i64 %i.cy, ptr %i.bn, align 8
  %i.cz = load i64, ptr %i.br, align 8            ; 2 uses
  %i.da = add i64 %i.cz, 1                        ; 2 uses
  store i64 %i.da, ptr %i.br, align 8
  %i.db = load i64, ptr %i.bo, align 8
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %bb.h, label %_ZN5o3dgc4FIFOIlE8PopFirstEv.exit

bb.h:                                             ; preds = %.lr.ph71
  store i64 0, ptr %i.bm, align 8
  br label %_ZN5o3dgc4FIFOIlE8PopFirstEv.exit

_ZN5o3dgc4FIFOIlE8PopFirstEv.exit:                ; preds = %.lr.ph71, %bb.h
  %i.dd = load ptr, ptr %i.bl, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.cz
  %i.df = load i64, ptr %i.de, align 8            ; 3 uses
  %i.dg = tail call noundef i32 @_ZN5o3dgc19TriangleListEncoderItE27CompueLocalConnectivityInfoEl(ptr noundef nonnull align 8 dereferenceable(556) %0, i64 noundef %i.df) ; 0 uses
  %i.dh = tail call noundef i32 @_ZN5o3dgc19TriangleListEncoderItE24ComputeTFANDecompositionEl(ptr noundef nonnull align 8 dereferenceable(556) %0, i64 noundef %i.df) ; 0 uses
  %i.di = tail call noundef i32 @_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl(ptr noundef nonnull align 8 dereferenceable(556) %0, i64 noundef %i.df) ; 0 uses
  %i.dj = load i64, ptr %i.bn, align 8            ; 2 uses
  %.not54 = icmp eq i64 %i.dj, 0
  br i1 %.not54, label %.loopexit61, label %.lr.ph71, !llvm.loop !1733

.loopexit61:                                      ; preds = %_ZN5o3dgc4FIFOIlE8PopFirstEv.exit, %bb.g, %bb.f
  %i.dk = add nuw nsw i64 %storemerge72, 1        ; 2 uses
  %i.dl = load i64, ptr %i.bh, align 8
  %i.dm = icmp slt i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.f, label %._crit_edge, !llvm.loop !1734

.lr.ph78:                                         ; preds = %_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %xtraiter103 = and i64 %3, 3                    ; 3 uses
  %i.dp = icmp ult i64 %3, 4
  br i1 %i.dp, label %.epil.preheader102, label %.lr.ph78.new

.lr.ph78.new:                                     ; preds = %.lr.ph78
  %unroll_iter106 = and i64 %3, 9223372036854775804
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph76, %_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit
  %.04375 = phi i64 [ 0, %.lr.ph76 ], [ %i.fb, %_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit ] ; 2 uses
  %.04474 = phi i64 [ 0, %.lr.ph76 ], [ %i.fa, %_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit ]
  %i.dq = load ptr, ptr %i.bt, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.04375
  %i.ds = load i64, ptr %i.dr, align 8            ; 4 uses
  %i.dt = load ptr, ptr %i.bu, align 8
  %i.du = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ds
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dv ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = add nsw i64 %i.dx, 1
  store i64 %i.dy, ptr %i.dw, align 8
  %i.dz = load ptr, ptr %i.bv, align 8
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ds
  store i64 %i.dx, ptr %i.ea, align 8
  %i.eb = load ptr, ptr %i.bv, align 8
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ds
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = sub nsw i64 %i.ed, %.04474              ; 2 uses
  %i.ef = load i64, ptr %i.bx, align 8            ; 3 uses
  %i.eg = load i64, ptr %i.by, align 8
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.j, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.i
  %.pre.i.i = load ptr, ptr %i.bw, align 8
  br label %_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit

bb.j:                                             ; preds = %bb.i
  %i.ei = shl i64 %i.ef, 1                        ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 32) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.by, align 8
  %i.ej = icmp ugt i64 %i.ei, 2305843009213693951
  %i.ek = shl i64 %spec.select.i.i, 3
  %i.el = select i1 %i.ej, i64 -1, i64 %i.ek
  %i.em = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.el) #33 ; 3 uses
  %i.en = load i64, ptr %i.bx, align 8            ; 3 uses
  %.not.i.i = icmp eq i64 %i.en, 0
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eo = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.ep = shl i64 %i.en, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.em, ptr align 8 %i.eo, i64 %i.ep, i1 false)
  %i.eq = icmp eq ptr %i.eo, null
  br i1 %i.eq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.eo) #31
  %.pre6.pre.i.i = load i64, ptr %i.bx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pre6.i.i = phi i64 [ %i.en, %bb.k ], [ %.pre6.pre.i.i, %bb.l ], [ 0, %bb.j ]
  store ptr %i.em, ptr %i.bw, align 8
  br label %_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit

_ZN5o3dgc22CompressedTriangleFans17PushTriangleIndexEl.exit: ; preds = %._crit_edge.i.i, %bb.m
  %i.er = phi i64 [ %i.ef, %._crit_edge.i.i ], [ %.pre6.i.i, %bb.m ] ; 2 uses
  %i.es = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.em, %bb.m ]
  %i.et = shl nsw i64 %i.ee, 1
  %.lobit.i.i = ashr i64 %i.ee, 63
  %i.eu = xor i64 %i.et, %.lobit.i.i
  %i.ev = add i64 %i.er, 1
  store i64 %i.ev, ptr %i.bx, align 8
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.er
  store i64 %i.eu, ptr %i.ew, align 8
  %i.ex = load ptr, ptr %i.bv, align 8
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ds
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = add nsw i64 %i.ez, 1
  %i.fb = add nuw nsw i64 %.04375, 1              ; 2 uses
  %exitcond80.not = icmp eq i64 %i.fb, %3
  br i1 %exitcond80.not, label %.lr.ph78, label %bb.i, !llvm.loop !1735

bb.n:                                             ; preds = %bb.n, %.lr.ph78.new
  %.077 = phi i64 [ 0, %.lr.ph78.new ], [ %i.fz, %bb.n ] ; 6 uses
  %niter107 = phi i64 [ 0, %.lr.ph78.new ], [ %niter107.next.3, %bb.n ]
  %i.fc = load ptr, ptr %i.dn, align 8
  %i.fd = load ptr, ptr %i.do, align 8
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.077
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.ff
  store i64 %.077, ptr %i.fg, align 8
  %i.fh = or disjoint i64 %.077, 1                ; 2 uses
  %i.fi = load ptr, ptr %i.dn, align 8
  %i.fj = load ptr, ptr %i.do, align 8
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fh
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fl
  store i64 %i.fh, ptr %i.fm, align 8
  %i.fn = or disjoint i64 %.077, 2                ; 2 uses
  %i.fo = load ptr, ptr %i.dn, align 8
  %i.fp = load ptr, ptr %i.do, align 8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fn
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fr
  store i64 %i.fn, ptr %i.fs, align 8
  %i.ft = or disjoint i64 %.077, 3                ; 2 uses
  %i.fu = load ptr, ptr %i.dn, align 8
  %i.fv = load ptr, ptr %i.do, align 8
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.ft
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fx
  store i64 %i.ft, ptr %i.fy, align 8
  %i.fz = add nuw nsw i64 %.077, 4                ; 2 uses
  %niter107.next.3 = add nuw nsw i64 %niter107, 4 ; 2 uses
  %niter107.ncmp.3 = icmp eq i64 %niter107.next.3, %unroll_iter106
  br i1 %niter107.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !1736

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %.loopexit, label %.epil.preheader102

.epil.preheader102:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph78
  %.077.epil.init = phi i64 [ 0, %.lr.ph78 ], [ %i.fz, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod105 = icmp ne i64 %xtraiter103, 0
  tail call void @llvm.assume(i1 %lcmp.mod105)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader102
  %.077.epil = phi i64 [ %.077.epil.init, %.epil.preheader102 ], [ %i.gf, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader102 ], [ %epil.iter.next, %bb.o ]
  %i.ga = load ptr, ptr %i.dn, align 8
  %i.gb = load ptr, ptr %i.do, align 8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.077.epil
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gd
  store i64 %.077.epil, ptr %i.ge, align 8
  %i.gf = add nuw nsw i64 %.077.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter103
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.o, !llvm.loop !1737

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.o, %._crit_edge
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.gh = load i32, ptr %i.bb, align 8
  %i.gi = tail call noundef i32 @_ZN5o3dgc22CompressedTriangleFans4SaveERNS_12BinaryStreamEbNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(164) %i.gg, ptr noundef nonnull align 8 dereferenceable(28) %5, i1 noundef zeroext %i.b, i32 noundef %i.gh) ; 0 uses
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc13SC3DMCEncoderItE16EncodeFloatArrayEPKfmmmS3_S3_mRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(11524) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(80000) %8, i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(28) %10) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1768 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = alloca [32 x float], align 16            ; 7 uses
  %i.c = alloca [32 x float], align 16            ; 7 uses
  %11 = alloca %"class.o3dgc::Arithmetic_Codec", align 8 ; 33 uses
  %12 = alloca %"class.o3dgc::Static_Bit_Model", align 4 ; 8 uses
  %13 = alloca %"class.o3dgc::Adaptive_Bit_Model", align 4 ; 16 uses
  %14 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 12 uses
  %15 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 7 uses
  %i.d = alloca [2 x float], align 8              ; 9 uses
  %i.e = alloca [2 x float], align 8              ; 6 uses
  %16 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %12)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20) %13)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8              ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 49 uses
  %i.m = load i64, ptr %i.l, align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %14, i32 noundef 258)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %15, i32 noundef 3)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11520 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2072) %i.n, i8 0, i64 2072, i1 false)
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp ugt i64 %2, %i.u
  br i1 %i.v, label %bb.g, label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

bb.g:                                             ; preds = %bb.f
  store i64 %2, ptr %i.t, align 8
  %i.w = icmp ugt i64 %2, 2305843009213693951
  %i.x = shl nuw i64 %2, 3
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #33
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1256 ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.ac = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.ad = shl i64 %i.ab, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.ac, i64 %i.ad, i1 false)
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.noexc
  store ptr %i.z, ptr %i.s, align 8
  br label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

_ZN5o3dgc6VectorIlE8AllocateEm.exit:              ; preds = %bb.j, %bb.f
  %i.af = trunc i32 %9 to i8
  %i.ag = and i8 %i.af, 7
  %i.ah = or disjoint i8 %i.ag, 80
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3248
  store i64 0, ptr %i.ai, align 8
  br label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit347

bb.k:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.l:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.m:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.n:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.o:                                             ; preds = %bb.e
  %i.an = trunc i32 %9 to i8
  %i.ao = and i8 %i.an, 7
  %i.ap = or disjoint i8 %i.ao, 64
  %i.aq = mul i64 %3, %2
  %.tr = trunc i64 %i.aq to i32
  %i.ar = shl i32 %.tr, 3
  %i.as = add i32 %i.ar, 100                      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = zext i32 %i.as to i64                   ; 3 uses
  %i.aw = icmp ult i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  br i1 %i.aw, label %bb.p, label %._crit_edge780

bb.p:                                             ; preds = %bb.o
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i64 %i.av, ptr %i.at, align 8
  %i.ba = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.av) #33
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1256 ; 2 uses

bb.s:                                             ; preds = %bb.r
  store ptr %i.ba, ptr %i.ax, align 8
  br label %._crit_edge780

._crit_edge780:                                   ; preds = %bb.o, %bb.s
  %i.bb = phi ptr [ %i.ba, %bb.s ], [ %i.ay, %bb.o ]
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %11, i32 noundef %i.as, ptr noundef %i.bb)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1256

bb.t:                                             ; preds = %._crit_edge780
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_encoderEv(ptr noundef nonnull align 8 dereferenceable(44) %11)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1256

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %11, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %13)
          to label %.lr.ph.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1256

.lr.ph.i:                                         ; preds = %bb.u, %.noexc344
  %i.bc = phi i32 [ %i.bf, %.noexc344 ], [ 1, %bb.u ]
  %.016.i = phi i32 [ %i.bd, %.noexc344 ], [ 256, %bb.u ]
  %.01115.i = phi i32 [ %i.be, %.noexc344 ], [ 0, %bb.u ] ; 2 uses
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %11, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(20) %13)
          to label %.noexc344 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1256

.noexc344:                                        ; preds = %.lr.ph.i
  %i.bd = sub nuw i32 %.016.i, %i.bc              ; 3 uses
  %i.be = add nuw nsw i32 %.01115.i, 1            ; 2 uses
  %i.bf = shl nuw i32 2, %.01115.i                ; 2 uses
  %.not.i343 = icmp ult i32 %i.bd, %i.bf
  br i1 %.not.i343, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.noexc344
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %11, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %13)
          to label %.lr.ph21.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1256

.lr.ph21.i:                                       ; preds = %._crit_edge.i, %.noexc346
  %.119.i = phi i32 [ %i.bg, %.noexc346 ], [ %i.be, %._crit_edge.i ]
  %i.bg = add nsw i32 %.119.i, -1                 ; 3 uses
  %i.bh = lshr i32 %i.bd, %i.bg
  %i.bi = and i32 %i.bh, 1
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %11, i32 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %12)
          to label %.noexc346 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1256

.noexc346:                                        ; preds = %.lr.ph21.i
  %.not13.i = icmp eq i32 %i.bg, 0
  br i1 %.not13.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit347, label %.lr.ph21.i, !llvm.loop !24

_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit347: ; preds = %.noexc346, %_ZN5o3dgc6VectorIlE8AllocateEm.exit
  %.0286 = phi i8 [ %i.ah, %_ZN5o3dgc6VectorIlE8AllocateEm.exit ], [ %i.ap, %.noexc346 ]
  %i.bj = load i32, ptr %i.p, align 8
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit347
  invoke void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %10, i64 noundef 0)
          to label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1256

bb.w:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit347
  invoke void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %10, i64 noundef 0)
end_hunk_0
begin_hunk_1_@_ZN5o3dgc13SC3DMCEncoderItE16EncodeFloatArrayEPKfmmmS3_S3_mRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE:bb.a
  %lpad.loopexit.split-lp1244 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp605

.loopexit.split-lp605:                            ; preds = %.loopexit.split-lp605.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af
  %.pn332 = phi { ptr, i32 } [ %.pn, %bb.af ], [ %lpad.loopexit.split-lp1244, %.loopexit.split-lp605.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %.loopexit.split-lp

bb.ak:                                            ; preds = %bb.x
  %i.fc = mul i64 %3, %2                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.not.i355 = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %.not.i355, label %._crit_edge.i361, label %.lr.ph.i356

.lr.ph.i356:                                      ; preds = %bb.ak
  %i.fd = trunc i64 %7 to i32
  %notmask.i357 = shl nsw i32 -1, %i.fd
  %i.fe = xor i32 %notmask.i357, -1
  %i.ff = uitofp nneg i32 %i.fe to float          ; 2 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i356
  %n.vec = and i64 %3, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ff, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index
  %wide.load = load <4 x float>, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index
  %wide.load1053 = load <4 x float>, ptr %i.fh, align 4
  %i.fi = fsub <4 x float> %wide.load, %wide.load1053 ; 2 uses
  %i.fj = fcmp ogt <4 x float> %i.fi, zeroinitializer
  %i.fk = fdiv <4 x float> %broadcast.splat, %i.fi
  %i.fl = select <4 x i1> %i.fj, <4 x float> %i.fk, <4 x float> splat (float 1.000000e+00)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index
  store <4 x float> %i.fl, ptr %i.fm, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !1745

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge.i361, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i356, %middle.block
  %.03439.i358.ph = phi i64 [ 0, %.lr.ph.i356 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i361:                                 ; preds = %scalar.ph, %middle.block, %bb.ak
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = icmp ult i64 %i.fp, %i.fc
  br i1 %i.fq, label %bb.al, label %bb.ao

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03439.i358 = phi i64 [ %i.fz, %scalar.ph ], [ %.03439.i358.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.03439.i358
  %i.fs = load float, ptr %i.fr, align 4
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.03439.i358
  %i.fu = load float, ptr %i.ft, align 4
  %i.fv = fsub float %i.fs, %i.fu                 ; 2 uses
  %i.fw = fcmp ogt float %i.fv, 0.000000e+00
  %i.fx = fdiv float %i.ff, %i.fv
  %.sink.i359 = select i1 %i.fw, float %i.fx, float 1.000000e+00
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.03439.i358
  store float %.sink.i359, ptr %i.fy, align 4
  %i.fz = add nuw nsw i64 %.03439.i358, 1         ; 2 uses
  %exitcond.not.i360 = icmp eq i64 %i.fz, %3
  br i1 %exitcond.not.i360, label %._crit_edge.i361, label %scalar.ph, !llvm.loop !1746

bb.al:                                            ; preds = %._crit_edge.i361
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.gb) #31
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store i64 %i.fc, ptr %i.fo, align 8
  %i.gd = icmp ugt i64 %i.fc, 2305843009213693951
  %i.ge = shl nuw i64 %i.fc, 3
  %i.gf = select i1 %i.gd, i64 -1, i64 %i.ge
  %i.gg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gf) #33
          to label %.noexc370 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1256

.noexc370:                                        ; preds = %bb.an
  store ptr %i.gg, ptr %i.ga, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc370, %._crit_edge.i361
  %.not45.i362 = icmp eq i64 %2, 0
  br i1 %.not45.i362, label %_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit371, label %.preheader.lr.ph.i363

.preheader.lr.ph.i363:                            ; preds = %bb.ao
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  br i1 %.not.i355, label %_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit371, label %.preheader.i364.preheader

.preheader.i364.preheader:                        ; preds = %.preheader.lr.ph.i363
  %xtraiter = and i64 %3, 1
  %i.gi = icmp eq i64 %3, 1
  %unroll_iter = and i64 %3, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1261 = trunc i64 %3 to i1
  br label %.preheader.i364

.preheader.i364:                                  ; preds = %.preheader.i364.preheader, %._crit_edge42.i368
  %.03343.i365 = phi i64 [ %i.gw, %._crit_edge42.i368 ], [ 0, %.preheader.i364.preheader ] ; 2 uses
  %i.gj = mul i64 %.03343.i365, %4                ; 3 uses
  br i1 %i.gi, label %.epil.preheader, label %.preheader.i364.new

._crit_edge42.i368.unr-lcssa:                     ; preds = %.preheader.i364.new
  br i1 %lcmp.mod.not, label %._crit_edge42.i368, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge42.i368.unr-lcssa, %.preheader.i364
  %.040.i366.epil.init = phi i64 [ 0, %.preheader.i364 ], [ %i.hw, %._crit_edge42.i368.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1261)
  %i.gk = add i64 %.040.i366.epil.init, %i.gj     ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.040.i366.epil.init
  %i.go = load float, ptr %i.gn, align 4
  %i.gp = fsub float %i.gm, %i.go
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.040.i366.epil.init
  %i.gr = load float, ptr %i.gq, align 4
  %i.gs = call float @llvm.fmuladd.f32(float %i.gp, float %i.gr, float 5.000000e-01)
  %i.gt = fptosi float %i.gs to i64
  %i.gu = load ptr, ptr %i.gh, align 8
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gk
  store i64 %i.gt, ptr %i.gv, align 8
  br label %._crit_edge42.i368

._crit_edge42.i368:                               ; preds = %._crit_edge42.i368.unr-lcssa, %.epil.preheader
  %i.gw = add nuw i64 %.03343.i365, 1             ; 2 uses
  %exitcond48.not.i369 = icmp eq i64 %i.gw, %2
  br i1 %exitcond48.not.i369, label %_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit371, label %.preheader.i364, !llvm.loop !1743

.preheader.i364.new:                              ; preds = %.preheader.i364, %.preheader.i364.new
  %.040.i366 = phi i64 [ %i.hw, %.preheader.i364.new ], [ 0, %.preheader.i364 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i364.new ], [ 0, %.preheader.i364 ]
  %i.gx = add i64 %.040.i366, %i.gj               ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gx
  %i.gz = load float, ptr %i.gy, align 4
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.040.i366
  %i.hb = load float, ptr %i.ha, align 4
  %i.hc = fsub float %i.gz, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.040.i366
  %i.he = load float, ptr %i.hd, align 8
  %i.hf = call float @llvm.fmuladd.f32(float %i.hc, float %i.he, float 5.000000e-01)
  %i.hg = fptosi float %i.hf to i64
  %i.hh = load ptr, ptr %i.gh, align 8
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.gx
  store i64 %i.hg, ptr %i.hi, align 8
  %i.hj = or disjoint i64 %.040.i366, 1           ; 3 uses
  %i.hk = add i64 %i.hj, %i.gj                    ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hj
  %i.ho = load float, ptr %i.hn, align 4
  %i.hp = fsub float %i.hm, %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hj
  %i.hr = load float, ptr %i.hq, align 4
  %i.hs = call float @llvm.fmuladd.f32(float %i.hp, float %i.hr, float 5.000000e-01)
  %i.ht = fptosi float %i.hs to i64
  %i.hu = load ptr, ptr %i.gh, align 8
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hk
  store i64 %i.ht, ptr %i.hv, align 8
  %i.hw = add nuw nsw i64 %.040.i366, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge42.i368.unr-lcssa, label %.preheader.i364.new, !llvm.loop !1744

_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit371: ; preds = %._crit_edge42.i368, %bb.ao, %.preheader.lr.ph.i363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5o3dgc13SC3DMCEncoderItE18QuantizeFloatArrayEPKfmmmS3_S3_m.exit371, %.loopexit601
  %i.hx = icmp sgt i64 %2, 0
  br i1 %i.hx, label %.lr.ph675, label %._crit_edge676

.lr.ph675:                                        ; preds = %bb.ap
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.hz = icmp ne i32 %9, 0                       ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 16 uses
  %.not690 = icmp eq i64 %3, 0                    ; 8 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.id = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 18 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 3248 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %17 = add nuw i64 %i.a, 624                     ; 4 uses
  %18 = add i64 %i.a, 624
  %i.ii = shl i64 %4, 3
  %19 = add i64 %i.a, 624
  %i.ij = shl i64 %4, 3
  %min.iters.check1118 = icmp ult i64 %3, 12
  %invariant.op = add i64 %17, -1
  %n.vec1125 = and i64 %3, -4                     ; 3 uses
  %cmp.n1136 = icmp eq i64 %3, %n.vec1125
  %xtraiter1268 = and i64 %3, 1
  %lcmp.mod1269.not = icmp eq i64 %xtraiter1268, 0
  %min.iters.check1099 = icmp ult i64 %3, 10
  %invariant.op1316 = add i64 %17, -1
  %n.vec1103 = and i64 %3, -4                     ; 3 uses
  %cmp.n1110 = icmp eq i64 %3, %n.vec1103
  %xtraiter1270 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod1271.not = icmp eq i64 %xtraiter1270, 0
  %min.iters.check1083 = icmp ult i64 %3, 10
  %invariant.op1318 = add i64 %17, -1
  %n.vec1087 = and i64 %3, -4                     ; 3 uses
  %cmp.n1094 = icmp eq i64 %3, %n.vec1087
  %xtraiter1274 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod1275.not = icmp eq i64 %xtraiter1274, 0
  %min.iters.check1069 = icmp ult i64 %3, 10
  %invariant.op1320 = add i64 %17, -1
  %n.vec1071 = and i64 %3, -4                     ; 3 uses
  %cmp.n1078 = icmp eq i64 %3, %n.vec1071
  %xtraiter1277 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod1278.not = icmp eq i64 %xtraiter1277, 0
  br label %bb.aq

._crit_edge676:                                   ; preds = %.loopexit591, %bb.ap
  %i.ik = load i32, ptr %i.p, align 8
  %.not = icmp eq i32 %i.ik, 1
  br i1 %.not, label %.thread548, label %bb.em

.thread548:                                       ; preds = %._crit_edge676
  %i.il = load i64, ptr %i.l, align 8
  %i.im = sub i64 %i.il, %i.m                     ; 2 uses
  %i.in = trunc i64 %i.im to i8
  br label %bb.eu

bb.aq:                                            ; preds = %.lr.ph675, %.loopexit591
  %.0279673 = phi i64 [ 0, %.lr.ph675 ], [ %i.ahr, %.loopexit591 ] ; 11 uses
  %.0282672 = phi i64 [ 2, %.lr.ph675 ], [ %.1283, %.loopexit591 ] ; 6 uses
  %.0284671 = phi i64 [ 257, %.lr.ph675 ], [ %.1285, %.loopexit591 ] ; 6 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0279673 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8            ; 7 uses
  %i.iq = load ptr, ptr %i.hy, align 8
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.ip ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8            ; 3 uses
  %i.it = icmp sgt i64 %i.ip, 0
  br i1 %i.it, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.aq
  %i.iu = getelementptr i8, ptr %i.ir, i64 -8
  %i.iv = load i64, ptr %i.iu, align 8            ; 2 uses
  %i.iw = icmp sgt i64 %i.is, %i.iv
  %or.cond = and i1 %i.hz, %i.iw
  br i1 %or.cond, label %bb.ar, label %.thread546

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread: ; preds = %bb.aq
  %i.ix = icmp sgt i64 %i.is, 0
  %or.cond536 = and i1 %i.hz, %i.ix
  br i1 %or.cond536, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %.thread546

bb.ar:                                            ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.iy = shl i64 %i.iv, 32
  %i.iz = ashr exact i64 %i.iy, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread, %bb.ar
  %i.ja = phi i64 [ %i.iz, %bb.ar ], [ 0, %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread ] ; 2 uses
  %i.jb = shl i64 %i.is, 32
  %i.jc = ashr exact i64 %i.jb, 32                ; 2 uses
  %i.jd = icmp slt i64 %i.ja, %i.jc
  br i1 %i.jd, label %.lr.ph650, label %.thread546

.lr.ph650:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %.loopexit586
  %.0278649 = phi i64 [ %i.wr, %.loopexit586 ], [ %i.ja, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 2 uses
  %.0534648 = phi i64 [ %.7, %.loopexit586 ], [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 7 uses
  %i.je = load ptr, ptr %i.ia, align 8
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.je, i64 %.0278649
  %i.jg = load i64, ptr %i.jf, align 8            ; 2 uses
  switch i32 %9, label %.loopexit586 [
    i32 5, label %bb.as
    i32 6, label %.thread540
    i32 1, label %.thread540
  ]

bb.as:                                            ; preds = %.lr.ph650
  %.idx553 = mul nsw i64 %i.jg, 6
  %i.jh = getelementptr inbounds i8, ptr %i.k, i64 %.idx553 ; 3 uses
  %i.ji = load i16, ptr %i.jh, align 2
  %i.jj = zext i16 %i.ji to i64                   ; 3 uses
  %i.jk = icmp eq i64 %i.ip, %i.jj
  %i.jl = getelementptr i8, ptr %i.jh, i64 2
  %i.jm = load i16, ptr %i.jl, align 2
  %i.jn = zext i16 %i.jm to i64                   ; 3 uses
  br i1 %i.jk, label %.sink.split, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jo = icmp eq i64 %i.ip, %i.jn
  br i1 %i.jo, label %.sink.split, label %bb.au

.sink.split:                                      ; preds = %bb.at, %bb.as
  %.0277.ph = phi i64 [ %i.jn, %bb.as ], [ %i.jj, %bb.at ]
  %i.jp = getelementptr i8, ptr %i.jh, i64 4
  %i.jq = load i16, ptr %i.jp, align 2
  %i.jr = zext i16 %i.jq to i64
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.at
  %.0277 = phi i64 [ %i.jj, %bb.at ], [ %.0277.ph, %.sink.split ] ; 9 uses
  %.0276 = phi i64 [ %i.jn, %bb.at ], [ %i.jr, %.sink.split ] ; 6 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0277 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8
  %i.ju = icmp slt i64 %i.jt, %.0279673
  br i1 %i.ju, label %bb.av, label %.thread540

bb.av:                                            ; preds = %bb.au
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0276 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = icmp slt i64 %i.jw, %.0279673
  br i1 %i.jx, label %bb.aw, label %.thread540

bb.aw:                                            ; preds = %bb.av
  %.not554 = icmp eq i64 %.0277, 0
  %.pre781 = load ptr, ptr %i.hy, align 8         ; 2 uses
  br i1 %.not554, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jy = getelementptr [8 x i8], ptr %.pre781, i64 %.0277
  %i.jz = getelementptr i8, ptr %i.jy, i64 -8
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = shl i64 %i.ka, 32
  %i.kc = ashr exact i64 %i.kb, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372:        ; preds = %bb.aw, %bb.ax
  %i.kd = phi i64 [ %i.kc, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.pre781, i64 %.0277
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = shl i64 %i.kf, 32
  %i.kh = ashr exact i64 %i.kg, 32                ; 2 uses
  %i.ki = icmp slt i64 %i.kd, %i.kh
  br i1 %i.ki, label %.lr.ph642, label %.thread540

.lr.ph642:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372
  %i.kj = mul i64 %.0277, %4
  %i.kk = mul i64 %.0276, %4
  %i.kl = mul i64 %i.ii, %.0277
  %20 = sub i64 %18, %i.kl
  %i.km = mul i64 %i.ij, %.0276
  %21 = sub i64 %19, %i.km
  %invariant.op1312 = add i64 %21, -1
  %invariant.op1314 = add i64 %20, -1
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph642, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.0275641 = phi i64 [ %i.kd, %.lr.ph642 ], [ %i.ou, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 2 uses
  %.1535640 = phi i64 [ %.0534648, %.lr.ph642 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 11 uses
  %i.kn = load ptr, ptr %i.ia, align 8
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %.0275641
  %i.kp = load i64, ptr %i.ko, align 8
  %.idx329 = mul i64 %i.kp, 6
  %i.kq = getelementptr i8, ptr %i.k, i64 %.idx329 ; 3 uses
  %i.kr = load i16, ptr %i.kq, align 2
  %i.ks = zext i16 %i.kr to i64                   ; 4 uses
  %i.kt = icmp eq i64 %.0276, %i.ks               ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ks
  %i.kv = load i64, ptr %i.ku, align 8
  %i.kw = icmp sge i64 %i.kv, %.0279673
  %.not330 = icmp eq i64 %.0277, %i.ks
  %or.cond340 = or i1 %i.kw, %.not330
  %or.cond341 = select i1 %or.cond340, i1 true, i1 %i.kt
  %.1274 = select i1 %or.cond341, i64 -1, i64 %i.ks
  %i.kx = getelementptr i8, ptr %i.kq, i64 2
  %i.ky = load i16, ptr %i.kx, align 2
  %i.kz = zext i16 %i.ky to i64                   ; 4 uses
  %i.la = icmp eq i64 %.0276, %i.kz               ; 2 uses
  %spec.select.1 = or i1 %i.la, %i.kt
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.kz
  %i.lc = load i64, ptr %i.lb, align 8
  %i.ld = icmp sge i64 %i.lc, %.0279673
  %.not330.1 = icmp eq i64 %.0277, %i.kz
  %or.cond340.1 = or i1 %i.ld, %.not330.1
  %or.cond341.1 = select i1 %or.cond340.1, i1 true, i1 %i.la
  %.1274.1 = select i1 %or.cond341.1, i64 %.1274, i64 %i.kz
  %i.le = getelementptr i8, ptr %i.kq, i64 4
  %i.lf = load i16, ptr %i.le, align 2
  %i.lg = zext i16 %i.lf to i64                   ; 4 uses
  %i.lh = icmp eq i64 %.0276, %i.lg               ; 2 uses
  %spec.select.2 = or i1 %i.lh, %spec.select.1
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.lg
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = icmp sge i64 %i.lj, %.0279673
  %.not330.2 = icmp eq i64 %.0277, %i.lg
  %or.cond340.2 = or i1 %i.lk, %.not330.2
  %or.cond341.2 = select i1 %or.cond340.2, i1 true, i1 %i.lh
  %.1274.2 = select i1 %or.cond341.2, i64 %.1274.1, i64 %i.lg ; 4 uses
  %i.ll = icmp ne i64 %.1274.2, -1
  %or.cond3 = select i1 %i.ll, i1 %spec.select.2, i1 false
  br i1 %or.cond3, label %bb.az, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.lm = load i64, ptr %i.jv, align 8            ; 2 uses
  %i.ln = load i64, ptr %i.js, align 8            ; 2 uses
  %..i = call noundef i64 @llvm.smin.i64(i64 %i.lm, i64 %i.ln) ; 3 uses
  %..i373 = call noundef i64 @llvm.smax.i64(i64 %i.lm, i64 %i.ln) ; 3 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.1274.2
  %i.lp = load i64, ptr %i.lo, align 8
  %i.lq = xor i64 %i.lp, -1                       ; 3 uses
  %.not.i374 = icmp eq i64 %.1535640, 0
  br i1 %.not.i374, label %.thread34.thread.i, label %.lr.ph.i375

.lr.ph.i375:                                      ; preds = %bb.az, %bb.bc
  %.02543.i = phi i64 [ %i.mk, %bb.bc ], [ 0, %bb.az ] ; 7 uses
  %i.lr = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.02543.i ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load i64, ptr %i.ls, align 8            ; 2 uses
  %i.lu = icmp eq i64 %i.lt, %i.lq
  br i1 %i.lu, label %bb.ba, label %.split.i

bb.ba:                                            ; preds = %.lr.ph.i375
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lw = load i64, ptr %i.lv, align 8            ; 2 uses
  %i.lx = icmp eq i64 %..i373, %i.lw
  br i1 %i.lx, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.ba
  %i.ly = load i64, ptr %i.lr, align 8            ; 2 uses
  %i.lz = icmp eq i64 %..i, %i.ly
  br i1 %i.lz, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.split31.i

.split.i:                                         ; preds = %.lr.ph.i375
  %i.ma = icmp sgt i64 %i.lt, %i.lq
  br i1 %i.ma, label %bb.bb, label %bb.bc

.split31.i:                                       ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.mb = icmp slt i64 %..i, %i.ly
  br i1 %i.mb, label %bb.bb, label %bb.bc

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.ba
  %i.mc = icmp slt i64 %..i373, %i.lw
  br i1 %i.mc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.md = icmp eq i64 %.1535640, 1
  %spec.select549 = select i1 %i.md, i64 2, i64 %.1535640 ; 4 uses
  %.044.i = add i64 %spec.select549, -1
  %i.me = icmp ugt i64 %.044.i, %.02543.i
  br i1 %i.me, label %.lr.ph47.preheader.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

.lr.ph47.preheader.i:                             ; preds = %bb.bb
  %i.mf = mul i64 %.02543.i, 280
  %i.mg = getelementptr i8, ptr %i.ib, i64 %i.mf  ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.mg, i64 280
  %i.mh = xor i64 %.02543.i, -1
  %i.mi = add i64 %spec.select549, %i.mh
  %i.mj = mul nuw i64 %i.mi, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %i.mg, i64 %i.mj, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

bb.bc:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.mk = add nuw i64 %.02543.i, 1                ; 2 uses
  %exitcond.not.i376 = icmp eq i64 %i.mk, %.1535640
  br i1 %exitcond.not.i376, label %.thread34.i, label %.lr.ph.i375, !llvm.loop !16

.thread34.i:                                      ; preds = %bb.bc
  %i.ml = icmp eq i64 %.1535640, 1
  br i1 %i.ml, label %.thread34.thread.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

.thread34.thread.i:                               ; preds = %.thread34.i, %bb.az
  %i.mm = add nuw nsw i64 %.1535640, 1
  %i.mn = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.1535640
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit: ; preds = %bb.bb, %.lr.ph47.preheader.i, %.thread34.thread.i
  %.9 = phi i64 [ %i.mm, %.thread34.thread.i ], [ %spec.select549, %.lr.ph47.preheader.i ], [ %spec.select549, %bb.bb ] ; 4 uses
  %.lcssa.sink.i = phi ptr [ %i.mn, %.thread34.thread.i ], [ %i.lr, %.lr.ph47.preheader.i ], [ %i.lr, %bb.bb ] ; 3 uses
  %.1.ph.i = phi i64 [ %.1535640, %.thread34.thread.i ], [ %.02543.i, %.lr.ph47.preheader.i ], [ %.02543.i, %bb.bb ] ; 3 uses
  store i64 %..i, ptr %.lcssa.sink.i, align 8
  %.sroa.5.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 8
  store i64 %..i373, ptr %.sroa.5.0..lcssa.sink.i.sroa_idx, align 8
  %.sroa.7.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 16
  store i64 %i.lq, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx, align 8
  %.not328 = icmp eq i64 %.1.ph.i, 4294967295
  %brmerge = or i1 %.not328, %.not690
  br i1 %brmerge, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.lr.ph639

.lr.ph639:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit
  %i.mo = load ptr, ptr %i.ic, align 8            ; 4 uses
  %i.mp = getelementptr [8 x i8], ptr %i.mo, i64 %i.kj ; 4 uses
  %i.mq = getelementptr [8 x i8], ptr %i.mo, i64 %i.kk ; 4 uses
  %i.mr = mul i64 %.1274.2, %4
  %i.ms = getelementptr [8 x i8], ptr %i.mo, i64 %i.mr ; 4 uses
  %i.mt = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.1.ph.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24 ; 4 uses
  br i1 %min.iters.check1118, label %scalar.ph1117.preheader, label %vector.memcheck1119

vector.memcheck1119:                              ; preds = %.lr.ph639
  %i.mv = ptrtoaddr ptr %i.mo to i64              ; 2 uses
  %i.mw = mul i64 %.1.ph.i, 280                   ; 2 uses
  %i.mx = mul i64 %.1274.2, %4
  %i.my = shl i64 %i.mx, 3
  %i.mz = add i64 %i.my, %i.mv
  %i.na = sub i64 %i.mw, %i.mz
  %.reass = add i64 %i.na, %invariant.op
  %diff.check1120 = icmp ult i64 %.reass, 31
  %i.nb = sub i64 %i.mw, %i.mv                    ; 2 uses
  %.reass1313 = add i64 %i.nb, %invariant.op1312
  %diff.check1121 = icmp ult i64 %.reass1313, 31
  %conflict.rdx = or i1 %diff.check1120, %diff.check1121
  %.reass1315 = add i64 %i.nb, %invariant.op1314
  %diff.check1122 = icmp ult i64 %.reass1315, 31
  %conflict.rdx1123 = or i1 %conflict.rdx, %diff.check1122
  br i1 %conflict.rdx1123, label %scalar.ph1117.preheader, label %vector.body1126

vector.body1126:                                  ; preds = %vector.memcheck1119, %vector.body1126
  %index1127 = phi i64 [ %index.next1134, %vector.body1126 ], [ 0, %vector.memcheck1119 ] ; 5 uses
  %i.nc = getelementptr [8 x i8], ptr %i.mp, i64 %index1127 ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nc, i64 16
  %wide.load1128 = load <2 x i64>, ptr %i.nc, align 8
  %wide.load1129 = load <2 x i64>, ptr %i.nd, align 8
  %i.ne = getelementptr [8 x i8], ptr %i.mq, i64 %index1127 ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 16
  %wide.load1130 = load <2 x i64>, ptr %i.ne, align 8
  %wide.load1131 = load <2 x i64>, ptr %i.nf, align 8
  %i.ng = add nsw <2 x i64> %wide.load1130, %wide.load1128
  %i.nh = add nsw <2 x i64> %wide.load1131, %wide.load1129
  %i.ni = getelementptr [8 x i8], ptr %i.ms, i64 %index1127 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 16
  %wide.load1132 = load <2 x i64>, ptr %i.ni, align 8
  %wide.load1133 = load <2 x i64>, ptr %i.nj, align 8
  %i.nk = sub <2 x i64> %i.ng, %wide.load1132
  %i.nl = sub <2 x i64> %i.nh, %wide.load1133
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %index1127 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store <2 x i64> %i.nk, ptr %i.nm, align 8
  store <2 x i64> %i.nl, ptr %i.nn, align 8
  %index.next1134 = add nuw i64 %index1127, 4     ; 2 uses
  %i.no = icmp eq i64 %index.next1134, %n.vec1125
  br i1 %i.no, label %middle.block1135, label %vector.body1126, !llvm.loop !1747

middle.block1135:                                 ; preds = %vector.body1126
  br i1 %cmp.n1136, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1117.preheader

scalar.ph1117.preheader:                          ; preds = %vector.memcheck1119, %.lr.ph639, %middle.block1135
  %.0269638.ph = phi i64 [ 0, %vector.memcheck1119 ], [ 0, %.lr.ph639 ], [ %n.vec1125, %middle.block1135 ] ; 7 uses
  %.neg = or disjoint i64 %.0269638.ph, 1
  br i1 %lcmp.mod1269.not, label %scalar.ph1117.prol.loopexit, label %scalar.ph1117.prol

scalar.ph1117.prol:                               ; preds = %scalar.ph1117.preheader
  %i.np = getelementptr [8 x i8], ptr %i.mp, i64 %.0269638.ph
  %i.nq = load i64, ptr %i.np, align 8
  %i.nr = getelementptr [8 x i8], ptr %i.mq, i64 %.0269638.ph
  %i.ns = load i64, ptr %i.nr, align 8
  %i.nt = add nsw i64 %i.ns, %i.nq
  %i.nu = getelementptr [8 x i8], ptr %i.ms, i64 %.0269638.ph
  %i.nv = load i64, ptr %i.nu, align 8
  %i.nw = sub i64 %i.nt, %i.nv
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %.0269638.ph
  store i64 %i.nw, ptr %i.nx, align 8
  %i.ny = or disjoint i64 %.0269638.ph, 1
  br label %scalar.ph1117.prol.loopexit

scalar.ph1117.prol.loopexit:                      ; preds = %scalar.ph1117.prol, %scalar.ph1117.preheader
  %.0269638.unr = phi i64 [ %.0269638.ph, %scalar.ph1117.preheader ], [ %i.ny, %scalar.ph1117.prol ]
  %i.nz = icmp eq i64 %3, %.neg
  br i1 %i.nz, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1117

scalar.ph1117:                                    ; preds = %scalar.ph1117.prol.loopexit, %scalar.ph1117
  %.0269638 = phi i64 [ %i.ot, %scalar.ph1117 ], [ %.0269638.unr, %scalar.ph1117.prol.loopexit ] ; 6 uses
  %i.oa = getelementptr [8 x i8], ptr %i.mp, i64 %.0269638
  %i.ob = load i64, ptr %i.oa, align 8
  %i.oc = getelementptr [8 x i8], ptr %i.mq, i64 %.0269638
  %i.od = load i64, ptr %i.oc, align 8
  %i.oe = add nsw i64 %i.od, %i.ob
  %i.of = getelementptr [8 x i8], ptr %i.ms, i64 %.0269638
  %i.og = load i64, ptr %i.of, align 8
  %i.oh = sub i64 %i.oe, %i.og
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %.0269638
  store i64 %i.oh, ptr %i.oi, align 8
  %i.oj = add nuw i64 %.0269638, 1                ; 4 uses
  %i.ok = getelementptr [8 x i8], ptr %i.mp, i64 %i.oj
  %i.ol = load i64, ptr %i.ok, align 8
  %i.om = getelementptr [8 x i8], ptr %i.mq, i64 %i.oj
  %i.on = load i64, ptr %i.om, align 8
  %i.oo = add nsw i64 %i.on, %i.ol
  %i.op = getelementptr [8 x i8], ptr %i.ms, i64 %i.oj
  %i.oq = load i64, ptr %i.op, align 8
  %i.or = sub i64 %i.oo, %i.oq
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %i.oj
  store i64 %i.or, ptr %i.os, align 8
  %i.ot = add nuw i64 %.0269638, 2                ; 2 uses
  %exitcond767.not.1 = icmp eq i64 %i.ot, %3
  br i1 %exitcond767.not.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph1117, !llvm.loop !1748

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph1117.prol.loopexit, %scalar.ph1117, %middle.block1135, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.thread34.i, %bb.ay
  %.2 = phi i64 [ %.9, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.9, %middle.block1135 ], [ %.1535640, %bb.ay ], [ %.1535640, %.thread34.i ], [ %.9, %scalar.ph1117.prol.loopexit ], [ %.9, %scalar.ph1117 ], [ %.1535640, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 2 uses
  %i.ou = add nsw i64 %.0275641, 1                ; 2 uses
  %exitcond768.not = icmp eq i64 %i.ou, %i.kh
  br i1 %exitcond768.not, label %.thread540, label %bb.ay, !llvm.loop !1749

.thread540:                                       ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372, %bb.av, %bb.au, %.lr.ph650, %.lr.ph650
  %.4 = phi i64 [ %.0534648, %bb.av ], [ %.0534648, %bb.au ], [ %.0534648, %.lr.ph650 ], [ %.0534648, %.lr.ph650 ], [ %.0534648, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit372 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 11 uses
  %.idx = mul i64 %i.jg, 6
  %i.ov = getelementptr i8, ptr %i.k, i64 %.idx   ; 3 uses
  %i.ow = load i16, ptr %i.ov, align 2
  %i.ox = zext i16 %i.ow to i64                   ; 3 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ox
  %i.oz = load i64, ptr %i.oy, align 8            ; 4 uses
  %i.pa = icmp slt i64 %i.oz, %.0279673
  br i1 %i.pa, label %bb.bd, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread

bb.bd:                                            ; preds = %.thread540
  %.not.i377 = icmp eq i64 %.4, 0
  br i1 %.not.i377, label %.thread34.thread.i384, label %.lr.ph.i378

.lr.ph.i378:                                      ; preds = %bb.bd, %bb.bg
  %.02543.i379 = phi i64 [ %i.pu, %bb.bg ], [ 0, %bb.bd ] ; 7 uses
  %i.pb = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.02543.i379 ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pd = load i64, ptr %i.pc, align 8            ; 2 uses
  %i.pe = icmp eq i64 %i.oz, %i.pd
  br i1 %i.pe, label %bb.be, label %.split.i380

bb.be:                                            ; preds = %.lr.ph.i378
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pg = load i64, ptr %i.pf, align 8            ; 2 uses
  %i.ph = icmp eq i64 %i.pg, -1
  br i1 %i.ph, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393:   ; preds = %bb.be
  %i.pi = load i64, ptr %i.pb, align 8            ; 2 uses
  %i.pj = icmp eq i64 %i.pi, -1
  br i1 %i.pj, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread, label %.split31.i394

.split.i380:                                      ; preds = %.lr.ph.i378
  %i.pk = icmp slt i64 %i.oz, %i.pd
  br i1 %i.pk, label %bb.bf, label %bb.bg

.split31.i394:                                    ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393
  %i.pl = icmp sgt i64 %i.pi, -1
  br i1 %i.pl, label %bb.bf, label %bb.bg

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392:   ; preds = %bb.be
  %i.pm = icmp sgt i64 %i.pg, -1
  br i1 %i.pm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392, %.split31.i394, %.split.i380
  %i.pn = icmp eq i64 %.4, 1
  %spec.select551 = select i1 %i.pn, i64 2, i64 %.4 ; 4 uses
  %.044.i388 = add i64 %spec.select551, -1
  %i.po = icmp ugt i64 %.044.i388, %.02543.i379
  br i1 %i.po, label %.lr.ph47.preheader.i389, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395

.lr.ph47.preheader.i389:                          ; preds = %bb.bf
  %i.pp = mul i64 %.02543.i379, 280
  %i.pq = getelementptr i8, ptr %i.ib, i64 %i.pp  ; 2 uses
  %scevgep.i390 = getelementptr i8, ptr %i.pq, i64 280
  %i.pr = xor i64 %.02543.i379, -1
  %i.ps = add i64 %spec.select551, %i.pr
  %i.pt = mul nuw i64 %i.ps, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i390, ptr align 8 %i.pq, i64 %i.pt, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395

bb.bg:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392, %.split31.i394, %.split.i380
  %i.pu = add nuw i64 %.02543.i379, 1             ; 2 uses
  %exitcond.not.i381 = icmp eq i64 %i.pu, %.4
  br i1 %exitcond.not.i381, label %.thread34.i382, label %.lr.ph.i378, !llvm.loop !16

.thread34.i382:                                   ; preds = %bb.bg
  %i.pv = icmp eq i64 %.4, 1
  br i1 %i.pv, label %.thread34.thread.i384, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread

.thread34.thread.i384:                            ; preds = %.thread34.i382, %bb.bd
  %i.pw = add nuw nsw i64 %.4, 1
  %i.px = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.4
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395: ; preds = %bb.bf, %.lr.ph47.preheader.i389, %.thread34.thread.i384
  %.12 = phi i64 [ %i.pw, %.thread34.thread.i384 ], [ %spec.select551, %.lr.ph47.preheader.i389 ], [ %spec.select551, %bb.bf ] ; 4 uses
  %.lcssa.sink.i386 = phi ptr [ %i.px, %.thread34.thread.i384 ], [ %i.pb, %.lr.ph47.preheader.i389 ], [ %i.pb, %bb.bf ] ; 2 uses
  %.1.ph.i387 = phi i64 [ %.4, %.thread34.thread.i384 ], [ %.02543.i379, %.lr.ph47.preheader.i389 ], [ %.02543.i379, %bb.bf ] ; 3 uses
  %.sroa.7533.0..lcssa.sink.i386.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i386, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i386, i8 -1, i64 16, i1 false)
  store i64 %i.oz, ptr %.sroa.7533.0..lcssa.sink.i386.sroa_idx, align 8
  %.not324 = icmp eq i64 %.1.ph.i387, 4294967295
  %brmerge687 = or i1 %.not324, %.not690
  br i1 %brmerge687, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread, label %.lr.ph645

.lr.ph645:                                        ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395
  %i.py = load ptr, ptr %i.ic, align 8            ; 2 uses
  %i.pz = mul i64 %4, %i.ox
  %i.qa = getelementptr [8 x i8], ptr %i.py, i64 %i.pz ; 6 uses
  %i.qb = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.1.ph.i387
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 24 ; 6 uses
  br i1 %min.iters.check1099, label %scalar.ph1098.preheader, label %vector.memcheck1100

vector.memcheck1100:                              ; preds = %.lr.ph645
  %i.qd = ptrtoaddr ptr %i.py to i64
  %i.qe = mul i64 %.1.ph.i387, 280
  %i.qf = mul i64 %4, %i.ox
  %i.qg = shl i64 %i.qf, 3
  %i.qh = add i64 %i.qg, %i.qd
  %i.qi = sub i64 %i.qe, %i.qh
  %i.qj = add i64 %i.qi, %invariant.op1316
  %diff.check1101 = icmp ult i64 %i.qj, 31
  br i1 %diff.check1101, label %scalar.ph1098.preheader, label %vector.body1104

vector.body1104:                                  ; preds = %vector.memcheck1100, %vector.body1104
  %index1105 = phi i64 [ %index.next1108, %vector.body1104 ], [ 0, %vector.memcheck1100 ] ; 3 uses
  %i.qk = getelementptr [8 x i8], ptr %i.qa, i64 %index1105 ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qk, i64 16
  %wide.load1106 = load <2 x i64>, ptr %i.qk, align 8
  %wide.load1107 = load <2 x i64>, ptr %i.ql, align 8
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %index1105 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store <2 x i64> %wide.load1106, ptr %i.qm, align 8
  store <2 x i64> %wide.load1107, ptr %i.qn, align 8
  %index.next1108 = add nuw i64 %index1105, 4     ; 2 uses
  %i.qo = icmp eq i64 %index.next1108, %n.vec1103
  br i1 %i.qo, label %middle.block1109, label %vector.body1104, !llvm.loop !1750

middle.block1109:                                 ; preds = %vector.body1104
  br i1 %cmp.n1110, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread, label %scalar.ph1098.preheader

scalar.ph1098.preheader:                          ; preds = %vector.memcheck1100, %.lr.ph645, %middle.block1109
  %.0267644.ph = phi i64 [ 0, %vector.memcheck1100 ], [ 0, %.lr.ph645 ], [ %n.vec1103, %middle.block1109 ] ; 3 uses
  br i1 %lcmp.mod1271.not, label %scalar.ph1098.prol.loopexit, label %scalar.ph1098.prol

scalar.ph1098.prol:                               ; preds = %scalar.ph1098.preheader, %scalar.ph1098.prol
  %.0267644.prol = phi i64 [ %i.qs, %scalar.ph1098.prol ], [ %.0267644.ph, %scalar.ph1098.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1098.prol ], [ 0, %scalar.ph1098.preheader ]
  %i.qp = getelementptr [8 x i8], ptr %i.qa, i64 %.0267644.prol
  %i.qq = load i64, ptr %i.qp, align 8
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %.0267644.prol
  store i64 %i.qq, ptr %i.qr, align 8
  %i.qs = add nuw i64 %.0267644.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1270
  br i1 %prol.iter.cmp.not, label %scalar.ph1098.prol.loopexit, label %scalar.ph1098.prol, !llvm.loop !1751

scalar.ph1098.prol.loopexit:                      ; preds = %scalar.ph1098.prol, %scalar.ph1098.preheader
  %.0267644.unr = phi i64 [ %.0267644.ph, %scalar.ph1098.preheader ], [ %i.qs, %scalar.ph1098.prol ]
  %i.qt = sub i64 %.0267644.ph, %3
  %i.qu = icmp ugt i64 %i.qt, -4
  br i1 %i.qu, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread, label %scalar.ph1098

scalar.ph1098:                                    ; preds = %scalar.ph1098.prol.loopexit, %scalar.ph1098
  %.0267644 = phi i64 [ %i.rk, %scalar.ph1098 ], [ %.0267644.unr, %scalar.ph1098.prol.loopexit ] ; 6 uses
  %i.qv = getelementptr [8 x i8], ptr %i.qa, i64 %.0267644
  %i.qw = load i64, ptr %i.qv, align 8
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %.0267644
  store i64 %i.qw, ptr %i.qx, align 8
  %i.qy = add nuw i64 %.0267644, 1                ; 2 uses
  %i.qz = getelementptr [8 x i8], ptr %i.qa, i64 %i.qy
  %i.ra = load i64, ptr %i.qz, align 8
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.qy
  store i64 %i.ra, ptr %i.rb, align 8
  %i.rc = add nuw i64 %.0267644, 2                ; 2 uses
  %i.rd = getelementptr [8 x i8], ptr %i.qa, i64 %i.rc
  %i.re = load i64, ptr %i.rd, align 8
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.rc
  store i64 %i.re, ptr %i.rf, align 8
  %i.rg = add nuw i64 %.0267644, 3                ; 2 uses
  %i.rh = getelementptr [8 x i8], ptr %i.qa, i64 %i.rg
  %i.ri = load i64, ptr %i.rh, align 8
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.rg
  store i64 %i.ri, ptr %i.rj, align 8
  %i.rk = add nuw i64 %.0267644, 4                ; 2 uses
  %exitcond769.not.3 = icmp eq i64 %i.rk, %3
  br i1 %exitcond769.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread, label %scalar.ph1098, !llvm.loop !1752

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393, %scalar.ph1098.prol.loopexit, %scalar.ph1098, %middle.block1109, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395, %.thread34.i382, %.thread540
  %.6 = phi i64 [ %.12, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395 ], [ %.12, %middle.block1109 ], [ %.4, %.thread540 ], [ %.4, %.thread34.i382 ], [ %.12, %scalar.ph1098.prol.loopexit ], [ %.12, %scalar.ph1098 ], [ %.4, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393 ] ; 11 uses
  %i.rl = getelementptr i8, ptr %i.ov, i64 2
  %i.rm = load i16, ptr %i.rl, align 2
  %i.rn = zext i16 %i.rm to i64                   ; 3 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.rn
  %i.rp = load i64, ptr %i.ro, align 8            ; 4 uses
  %i.rq = icmp slt i64 %i.rp, %.0279673
  br i1 %i.rq, label %bb.bh, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread.1

bb.bh:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread
  %.not.i377.1 = icmp eq i64 %.6, 0
  br i1 %.not.i377.1, label %.thread34.thread.i384.1, label %.lr.ph.i378.1

.lr.ph.i378.1:                                    ; preds = %bb.bh, %bb.bj
  %.02543.i379.1 = phi i64 [ %i.sd, %bb.bj ], [ 0, %bb.bh ] ; 7 uses
  %i.rr = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.02543.i379.1 ; 5 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %i.rt = load i64, ptr %i.rs, align 8            ; 2 uses
  %i.ru = icmp eq i64 %i.rp, %i.rt
  br i1 %i.ru, label %bb.bi, label %.split.i380.1

.split.i380.1:                                    ; preds = %.lr.ph.i378.1
  %i.rv = icmp slt i64 %i.rp, %i.rt
  br i1 %i.rv, label %bb.bk, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph.i378.1
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rx = load i64, ptr %i.rw, align 8            ; 2 uses
  %i.ry = icmp eq i64 %i.rx, -1
  br i1 %i.ry, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393.1, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392.1

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392.1: ; preds = %bb.bi
  %i.rz = icmp sgt i64 %i.rx, -1
  br i1 %i.rz, label %bb.bk, label %bb.bj

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393.1: ; preds = %bb.bi
  %i.sa = load i64, ptr %i.rr, align 8            ; 2 uses
  %i.sb = icmp eq i64 %i.sa, -1
  br i1 %i.sb, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread.1, label %.split31.i394.1

.split31.i394.1:                                  ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393.1
  %i.sc = icmp sgt i64 %i.sa, -1
  br i1 %i.sc, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.split31.i394.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392.1, %.split.i380.1
  %i.sd = add nuw i64 %.02543.i379.1, 1           ; 2 uses
  %exitcond.not.i381.1 = icmp eq i64 %i.sd, %.6
  br i1 %exitcond.not.i381.1, label %.thread34.i382.1, label %.lr.ph.i378.1, !llvm.loop !16

.thread34.i382.1:                                 ; preds = %bb.bj
  %i.se = icmp eq i64 %.6, 1
  br i1 %i.se, label %.thread34.thread.i384.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread.1

bb.bk:                                            ; preds = %.split31.i394.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392.1, %.split.i380.1
  %i.sf = icmp eq i64 %.6, 1
  %spec.select551.1 = select i1 %i.sf, i64 2, i64 %.6 ; 4 uses
  %.044.i388.1 = add i64 %spec.select551.1, -1
  %i.sg = icmp ugt i64 %.044.i388.1, %.02543.i379.1
  br i1 %i.sg, label %.lr.ph47.preheader.i389.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.1

.lr.ph47.preheader.i389.1:                        ; preds = %bb.bk
  %i.sh = mul i64 %.02543.i379.1, 280
  %i.si = getelementptr i8, ptr %i.ib, i64 %i.sh  ; 2 uses
  %scevgep.i390.1 = getelementptr i8, ptr %i.si, i64 280
  %i.sj = xor i64 %.02543.i379.1, -1
  %i.sk = add i64 %spec.select551.1, %i.sj
  %i.sl = mul nuw i64 %i.sk, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i390.1, ptr align 8 %i.si, i64 %i.sl, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.1

.thread34.thread.i384.1:                          ; preds = %.thread34.i382.1, %bb.bh
  %i.sm = add nuw nsw i64 %.6, 1
  %i.sn = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.6
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.1: ; preds = %.thread34.thread.i384.1, %.lr.ph47.preheader.i389.1, %bb.bk
  %.12.1 = phi i64 [ %i.sm, %.thread34.thread.i384.1 ], [ %spec.select551.1, %.lr.ph47.preheader.i389.1 ], [ %spec.select551.1, %bb.bk ] ; 4 uses
  %.lcssa.sink.i386.1 = phi ptr [ %i.sn, %.thread34.thread.i384.1 ], [ %i.rr, %.lr.ph47.preheader.i389.1 ], [ %i.rr, %bb.bk ] ; 2 uses
  %.1.ph.i387.1 = phi i64 [ %.6, %.thread34.thread.i384.1 ], [ %.02543.i379.1, %.lr.ph47.preheader.i389.1 ], [ %.02543.i379.1, %bb.bk ] ; 3 uses
  %.sroa.7533.0..lcssa.sink.i386.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i386.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i386.1, i8 -1, i64 16, i1 false)
  store i64 %i.rp, ptr %.sroa.7533.0..lcssa.sink.i386.sroa_idx.1, align 8
  %.not324.1 = icmp eq i64 %.1.ph.i387.1, 4294967295
  %brmerge687.1 = or i1 %.not324.1, %.not690
  br i1 %brmerge687.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread.1, label %.lr.ph645.1

.lr.ph645.1:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.1
  %i.so = load ptr, ptr %i.ic, align 8            ; 2 uses
  %i.sp = mul i64 %4, %i.rn
  %i.sq = getelementptr [8 x i8], ptr %i.so, i64 %i.sp ; 6 uses
  %i.sr = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.1.ph.i387.1
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 24 ; 6 uses
  br i1 %min.iters.check1083, label %scalar.ph1082.preheader, label %vector.memcheck1084

vector.memcheck1084:                              ; preds = %.lr.ph645.1
  %i.st = ptrtoaddr ptr %i.so to i64
  %i.su = mul i64 %.1.ph.i387.1, 280
  %i.sv = mul i64 %4, %i.rn
  %i.sw = shl i64 %i.sv, 3
  %i.sx = add i64 %i.sw, %i.st
  %i.sy = sub i64 %i.su, %i.sx
  %i.sz = add i64 %i.sy, %invariant.op1318
  %diff.check1085 = icmp ult i64 %i.sz, 31
  br i1 %diff.check1085, label %scalar.ph1082.preheader, label %vector.body1088

vector.body1088:                                  ; preds = %vector.memcheck1084, %vector.body1088
  %index1089 = phi i64 [ %index.next1092, %vector.body1088 ], [ 0, %vector.memcheck1084 ] ; 3 uses
  %i.ta = getelementptr [8 x i8], ptr %i.sq, i64 %index1089 ; 2 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 16
  %wide.load1090 = load <2 x i64>, ptr %i.ta, align 8
  %wide.load1091 = load <2 x i64>, ptr %i.tb, align 8
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %index1089 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  store <2 x i64> %wide.load1090, ptr %i.tc, align 8
  store <2 x i64> %wide.load1091, ptr %i.td, align 8
  %index.next1092 = add nuw i64 %index1089, 4     ; 2 uses
  %i.te = icmp eq i64 %index.next1092, %n.vec1087
  br i1 %i.te, label %middle.block1093, label %vector.body1088, !llvm.loop !1753

middle.block1093:                                 ; preds = %vector.body1088
  br i1 %cmp.n1094, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread.1, label %scalar.ph1082.preheader

scalar.ph1082.preheader:                          ; preds = %vector.memcheck1084, %.lr.ph645.1, %middle.block1093
  %.0267644.1.ph = phi i64 [ 0, %vector.memcheck1084 ], [ 0, %.lr.ph645.1 ], [ %n.vec1087, %middle.block1093 ] ; 3 uses
  br i1 %lcmp.mod1275.not, label %scalar.ph1082.prol.loopexit, label %scalar.ph1082.prol

scalar.ph1082.prol:                               ; preds = %scalar.ph1082.preheader, %scalar.ph1082.prol
  %.0267644.1.prol = phi i64 [ %i.ti, %scalar.ph1082.prol ], [ %.0267644.1.ph, %scalar.ph1082.preheader ] ; 3 uses
  %prol.iter1276 = phi i64 [ %prol.iter1276.next, %scalar.ph1082.prol ], [ 0, %scalar.ph1082.preheader ]
  %i.tf = getelementptr [8 x i8], ptr %i.sq, i64 %.0267644.1.prol
  %i.tg = load i64, ptr %i.tf, align 8
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %.0267644.1.prol
  store i64 %i.tg, ptr %i.th, align 8
  %i.ti = add nuw i64 %.0267644.1.prol, 1         ; 2 uses
  %prol.iter1276.next = add i64 %prol.iter1276, 1 ; 2 uses
  %prol.iter1276.cmp.not = icmp eq i64 %prol.iter1276.next, %xtraiter1274
  br i1 %prol.iter1276.cmp.not, label %scalar.ph1082.prol.loopexit, label %scalar.ph1082.prol, !llvm.loop !1754

scalar.ph1082.prol.loopexit:                      ; preds = %scalar.ph1082.prol, %scalar.ph1082.preheader
  %.0267644.1.unr = phi i64 [ %.0267644.1.ph, %scalar.ph1082.preheader ], [ %i.ti, %scalar.ph1082.prol ]
  %i.tj = sub i64 %.0267644.1.ph, %3
  %i.tk = icmp ugt i64 %i.tj, -4
  br i1 %i.tk, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread.1, label %scalar.ph1082

scalar.ph1082:                                    ; preds = %scalar.ph1082.prol.loopexit, %scalar.ph1082
  %.0267644.1 = phi i64 [ %i.ua, %scalar.ph1082 ], [ %.0267644.1.unr, %scalar.ph1082.prol.loopexit ] ; 6 uses
  %i.tl = getelementptr [8 x i8], ptr %i.sq, i64 %.0267644.1
  %i.tm = load i64, ptr %i.tl, align 8
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %.0267644.1
  store i64 %i.tm, ptr %i.tn, align 8
  %i.to = add nuw i64 %.0267644.1, 1              ; 2 uses
  %i.tp = getelementptr [8 x i8], ptr %i.sq, i64 %i.to
  %i.tq = load i64, ptr %i.tp, align 8
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.to
  store i64 %i.tq, ptr %i.tr, align 8
  %i.ts = add nuw i64 %.0267644.1, 2              ; 2 uses
  %i.tt = getelementptr [8 x i8], ptr %i.sq, i64 %i.ts
  %i.tu = load i64, ptr %i.tt, align 8
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.ts
  store i64 %i.tu, ptr %i.tv, align 8
  %i.tw = add nuw i64 %.0267644.1, 3              ; 2 uses
  %i.tx = getelementptr [8 x i8], ptr %i.sq, i64 %i.tw
  %i.ty = load i64, ptr %i.tx, align 8
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.tw
  store i64 %i.ty, ptr %i.tz, align 8
  %i.ua = add nuw i64 %.0267644.1, 4              ; 2 uses
  %exitcond769.1.not.3 = icmp eq i64 %i.ua, %3
  br i1 %exitcond769.1.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread.1, label %scalar.ph1082, !llvm.loop !1755

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393.1, %scalar.ph1082.prol.loopexit, %scalar.ph1082, %middle.block1093, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.1, %.thread34.i382.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread
  %.6.1 = phi i64 [ %.12.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.1 ], [ %.12.1, %middle.block1093 ], [ %.6, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread ], [ %.6, %.thread34.i382.1 ], [ %.12.1, %scalar.ph1082.prol.loopexit ], [ %.12.1, %scalar.ph1082 ], [ %.6, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393.1 ] ; 11 uses
  %i.ub = getelementptr i8, ptr %i.ov, i64 4
  %i.uc = load i16, ptr %i.ub, align 2
  %i.ud = zext i16 %i.uc to i64                   ; 3 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ud
  %i.uf = load i64, ptr %i.ue, align 8            ; 4 uses
  %i.ug = icmp slt i64 %i.uf, %.0279673
  br i1 %i.ug, label %bb.bl, label %.loopexit586

bb.bl:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread.1
  %.not.i377.2 = icmp eq i64 %.6.1, 0
  br i1 %.not.i377.2, label %.thread34.thread.i384.2, label %.lr.ph.i378.2

.lr.ph.i378.2:                                    ; preds = %bb.bl, %bb.bn
  %.02543.i379.2 = phi i64 [ %i.ut, %bb.bn ], [ 0, %bb.bl ] ; 7 uses
  %i.uh = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.02543.i379.2 ; 5 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uj = load i64, ptr %i.ui, align 8            ; 2 uses
  %i.uk = icmp eq i64 %i.uf, %i.uj
  br i1 %i.uk, label %bb.bm, label %.split.i380.2

.split.i380.2:                                    ; preds = %.lr.ph.i378.2
  %i.ul = icmp slt i64 %i.uf, %i.uj
  br i1 %i.ul, label %bb.bo, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i378.2
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.un = load i64, ptr %i.um, align 8            ; 2 uses
  %i.uo = icmp eq i64 %i.un, -1
  br i1 %i.uo, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393.2, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392.2

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392.2: ; preds = %bb.bm
  %i.up = icmp sgt i64 %i.un, -1
  br i1 %i.up, label %bb.bo, label %bb.bn

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393.2: ; preds = %bb.bm
  %i.uq = load i64, ptr %i.uh, align 8            ; 2 uses
  %i.ur = icmp eq i64 %i.uq, -1
  br i1 %i.ur, label %.loopexit586, label %.split31.i394.2

.split31.i394.2:                                  ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393.2
  %i.us = icmp sgt i64 %i.uq, -1
  br i1 %i.us, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.split31.i394.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392.2, %.split.i380.2
  %i.ut = add nuw i64 %.02543.i379.2, 1           ; 2 uses
  %exitcond.not.i381.2 = icmp eq i64 %i.ut, %.6.1
  br i1 %exitcond.not.i381.2, label %.thread34.i382.2, label %.lr.ph.i378.2, !llvm.loop !16

.thread34.i382.2:                                 ; preds = %bb.bn
  %i.uu = icmp eq i64 %.6.1, 1
  br i1 %i.uu, label %.thread34.thread.i384.2, label %.loopexit586

bb.bo:                                            ; preds = %.split31.i394.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i392.2, %.split.i380.2
  %i.uv = icmp eq i64 %.6.1, 1
  %spec.select551.2 = select i1 %i.uv, i64 2, i64 %.6.1 ; 4 uses
  %.044.i388.2 = add i64 %spec.select551.2, -1
  %i.uw = icmp ugt i64 %.044.i388.2, %.02543.i379.2
  br i1 %i.uw, label %.lr.ph47.preheader.i389.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.2

.lr.ph47.preheader.i389.2:                        ; preds = %bb.bo
  %i.ux = mul i64 %.02543.i379.2, 280
  %i.uy = getelementptr i8, ptr %i.ib, i64 %i.ux  ; 2 uses
  %scevgep.i390.2 = getelementptr i8, ptr %i.uy, i64 280
  %i.uz = xor i64 %.02543.i379.2, -1
  %i.va = add i64 %spec.select551.2, %i.uz
  %i.vb = mul nuw i64 %i.va, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i390.2, ptr align 8 %i.uy, i64 %i.vb, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.2

.thread34.thread.i384.2:                          ; preds = %.thread34.i382.2, %bb.bl
  %i.vc = add nuw nsw i64 %.6.1, 1
  %i.vd = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.6.1
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.2

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.2: ; preds = %.thread34.thread.i384.2, %.lr.ph47.preheader.i389.2, %bb.bo
  %.12.2 = phi i64 [ %i.vc, %.thread34.thread.i384.2 ], [ %spec.select551.2, %.lr.ph47.preheader.i389.2 ], [ %spec.select551.2, %bb.bo ] ; 4 uses
  %.lcssa.sink.i386.2 = phi ptr [ %i.vd, %.thread34.thread.i384.2 ], [ %i.uh, %.lr.ph47.preheader.i389.2 ], [ %i.uh, %bb.bo ] ; 2 uses
  %.1.ph.i387.2 = phi i64 [ %.6.1, %.thread34.thread.i384.2 ], [ %.02543.i379.2, %.lr.ph47.preheader.i389.2 ], [ %.02543.i379.2, %bb.bo ] ; 3 uses
  %.sroa.7533.0..lcssa.sink.i386.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i386.2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i386.2, i8 -1, i64 16, i1 false)
  store i64 %i.uf, ptr %.sroa.7533.0..lcssa.sink.i386.sroa_idx.2, align 8
  %.not324.2 = icmp eq i64 %.1.ph.i387.2, 4294967295
  %brmerge687.2 = or i1 %.not324.2, %.not690
  br i1 %brmerge687.2, label %.loopexit586, label %.lr.ph645.2

.lr.ph645.2:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.2
  %i.ve = load ptr, ptr %i.ic, align 8            ; 2 uses
  %i.vf = mul i64 %4, %i.ud
  %i.vg = getelementptr [8 x i8], ptr %i.ve, i64 %i.vf ; 6 uses
  %i.vh = getelementptr inbounds nuw [280 x i8], ptr %i.ib, i64 %.1.ph.i387.2
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 24 ; 6 uses
  br i1 %min.iters.check1069, label %scalar.ph1068.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph645.2
  %i.vj = ptrtoaddr ptr %i.ve to i64
  %i.vk = mul i64 %.1.ph.i387.2, 280
  %i.vl = mul i64 %4, %i.ud
  %i.vm = shl i64 %i.vl, 3
  %i.vn = add i64 %i.vm, %i.vj
  %i.vo = sub i64 %i.vk, %i.vn
  %i.vp = add i64 %i.vo, %invariant.op1320
  %diff.check = icmp ult i64 %i.vp, 31
  br i1 %diff.check, label %scalar.ph1068.preheader, label %vector.body1072

vector.body1072:                                  ; preds = %vector.memcheck, %vector.body1072
  %index1073 = phi i64 [ %index.next1076, %vector.body1072 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.vq = getelementptr [8 x i8], ptr %i.vg, i64 %index1073 ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vq, i64 16
  %wide.load1074 = load <2 x i64>, ptr %i.vq, align 8
  %wide.load1075 = load <2 x i64>, ptr %i.vr, align 8
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %index1073 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  store <2 x i64> %wide.load1074, ptr %i.vs, align 8
  store <2 x i64> %wide.load1075, ptr %i.vt, align 8
  %index.next1076 = add nuw i64 %index1073, 4     ; 2 uses
  %i.vu = icmp eq i64 %index.next1076, %n.vec1071
  br i1 %i.vu, label %middle.block1077, label %vector.body1072, !llvm.loop !1756

middle.block1077:                                 ; preds = %vector.body1072
  br i1 %cmp.n1078, label %.loopexit586, label %scalar.ph1068.preheader

scalar.ph1068.preheader:                          ; preds = %vector.memcheck, %.lr.ph645.2, %middle.block1077
  %.0267644.2.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph645.2 ], [ %n.vec1071, %middle.block1077 ] ; 3 uses
  br i1 %lcmp.mod1278.not, label %scalar.ph1068.prol.loopexit, label %scalar.ph1068.prol

scalar.ph1068.prol:                               ; preds = %scalar.ph1068.preheader, %scalar.ph1068.prol
  %.0267644.2.prol = phi i64 [ %i.vy, %scalar.ph1068.prol ], [ %.0267644.2.ph, %scalar.ph1068.preheader ] ; 3 uses
  %prol.iter1279 = phi i64 [ %prol.iter1279.next, %scalar.ph1068.prol ], [ 0, %scalar.ph1068.preheader ]
  %i.vv = getelementptr [8 x i8], ptr %i.vg, i64 %.0267644.2.prol
  %i.vw = load i64, ptr %i.vv, align 8
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %.0267644.2.prol
  store i64 %i.vw, ptr %i.vx, align 8
  %i.vy = add nuw i64 %.0267644.2.prol, 1         ; 2 uses
  %prol.iter1279.next = add i64 %prol.iter1279, 1 ; 2 uses
  %prol.iter1279.cmp.not = icmp eq i64 %prol.iter1279.next, %xtraiter1277
  br i1 %prol.iter1279.cmp.not, label %scalar.ph1068.prol.loopexit, label %scalar.ph1068.prol, !llvm.loop !1757

scalar.ph1068.prol.loopexit:                      ; preds = %scalar.ph1068.prol, %scalar.ph1068.preheader
  %.0267644.2.unr = phi i64 [ %.0267644.2.ph, %scalar.ph1068.preheader ], [ %i.vy, %scalar.ph1068.prol ]
  %i.vz = sub i64 %.0267644.2.ph, %3
  %i.wa = icmp ugt i64 %i.vz, -4
  br i1 %i.wa, label %.loopexit586, label %scalar.ph1068

scalar.ph1068:                                    ; preds = %scalar.ph1068.prol.loopexit, %scalar.ph1068
  %.0267644.2 = phi i64 [ %i.wq, %scalar.ph1068 ], [ %.0267644.2.unr, %scalar.ph1068.prol.loopexit ] ; 6 uses
  %i.wb = getelementptr [8 x i8], ptr %i.vg, i64 %.0267644.2
  %i.wc = load i64, ptr %i.wb, align 8
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %.0267644.2
  store i64 %i.wc, ptr %i.wd, align 8
  %i.we = add nuw i64 %.0267644.2, 1              ; 2 uses
  %i.wf = getelementptr [8 x i8], ptr %i.vg, i64 %i.we
  %i.wg = load i64, ptr %i.wf, align 8
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %i.we
  store i64 %i.wg, ptr %i.wh, align 8
  %i.wi = add nuw i64 %.0267644.2, 2              ; 2 uses
  %i.wj = getelementptr [8 x i8], ptr %i.vg, i64 %i.wi
  %i.wk = load i64, ptr %i.wj, align 8
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %i.wi
  store i64 %i.wk, ptr %i.wl, align 8
  %i.wm = add nuw i64 %.0267644.2, 3              ; 2 uses
  %i.wn = getelementptr [8 x i8], ptr %i.vg, i64 %i.wm
  %i.wo = load i64, ptr %i.wn, align 8
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %i.wm
  store i64 %i.wo, ptr %i.wp, align 8
  %i.wq = add nuw i64 %.0267644.2, 4              ; 2 uses
  %exitcond769.2.not.3 = icmp eq i64 %i.wq, %3
  br i1 %exitcond769.2.not.3, label %.loopexit586, label %scalar.ph1068, !llvm.loop !1758

.loopexit586:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393.2, %scalar.ph1068.prol.loopexit, %scalar.ph1068, %middle.block1077, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread.1, %.thread34.i382.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.2, %.lr.ph650
  %.7 = phi i64 [ %.0534648, %.lr.ph650 ], [ %.12.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.2 ], [ %.12.2, %middle.block1077 ], [ %.6.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit395.thread.1 ], [ %.6.1, %.thread34.i382.2 ], [ %.12.2, %scalar.ph1068.prol.loopexit ], [ %.12.2, %scalar.ph1068 ], [ %.6.1, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i393.2 ] ; 3 uses
  %i.wr = add nsw i64 %.0278649, 1                ; 2 uses
  %exitcond771.not = icmp eq i64 %i.wr, %i.jc
  br i1 %exitcond771.not, label %._crit_edge651, label %.lr.ph650, !llvm.loop !1759

._crit_edge651:                                   ; preds = %.loopexit586
  %i.ws = icmp ugt i64 %.7, 1
  br i1 %i.ws, label %.preheader590, label %.thread546

.preheader590:                                    ; preds = %._crit_edge651
  %i.wt = uitofp i64 %.0282672 to double
  %i.wu = mul i64 %i.ip, %4                       ; 2 uses
  %i.wv = uitofp i64 %.0284671 to double          ; 2 uses
  br label %bb.bq

bb.bp:                                            ; preds = %._crit_edge662
  %i.ww = load i32, ptr %i.p, align 8
  %i.wx = icmp eq i32 %i.ww, 1
  br i1 %i.wx, label %bb.bv, label %bb.cb

bb.bq:                                            ; preds = %.preheader590, %._crit_edge662
  %.0261666 = phi i64 [ 0, %.preheader590 ], [ %i.xk, %._crit_edge662 ] ; 4 uses
  %.0263665 = phi double [ 1.797690e+308, %.preheader590 ], [ %.1264, %._crit_edge662 ] ; 2 uses
  %.0265664 = phi i64 [ 4294967295, %.preheader590 ], [ %.1266, %._crit_edge662 ]
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0261666
  %i.wz = load i64, ptr %i.wy, align 8
  %i.xa = uitofp i64 %i.wz to double
  %i.xb = fadd double %i.xa, 1.000000e+00
  %i.xc = fdiv double %i.xb, %i.wt
  %i.xd = call double @log(double noundef %i.xc) #30
  %i.xe = fdiv double %i.xd, f0xBFE62E42FEFA39EF  ; 2 uses
  br i1 %.not690, label %._crit_edge662, label %.lr.ph661

.lr.ph661:                                        ; preds = %bb.bq
  %i.xf = load ptr, ptr %i.ic, align 8
  %i.xg = getelementptr [8 x i8], ptr %i.xf, i64 %i.wu
  %i.xh = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %.0261666
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 624
  br label %bb.br

._crit_edge662:                                   ; preds = %bb.bu, %bb.bq
  %.0262.lcssa = phi double [ %i.xe, %bb.bq ], [ %.1, %bb.bu ] ; 2 uses
  %i.xj = fcmp olt double %.0262.lcssa, %.0263665 ; 2 uses
  %.1266 = select i1 %i.xj, i64 %.0261666, i64 %.0265664 ; 5 uses
  %.1264 = select i1 %i.xj, double %.0262.lcssa, double %.0263665
  %i.xk = add nuw i64 %.0261666, 1                ; 2 uses
  %exitcond775.not = icmp eq i64 %i.xk, %.7
  br i1 %exitcond775.not, label %bb.bp, label %bb.bq, !llvm.loop !1760

bb.br:                                            ; preds = %.lr.ph661, %bb.bu
  %.0260659 = phi i64 [ 0, %.lr.ph661 ], [ %i.yo, %bb.bu ] ; 3 uses
  %.0262658 = phi double [ %i.xe, %.lr.ph661 ], [ %.1, %bb.bu ] ; 2 uses
  %i.xl = getelementptr [8 x i8], ptr %i.xg, i64 %.0260659
  %i.xm = load i64, ptr %i.xl, align 8
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %.0260659
  %i.xo = load i64, ptr %i.xn, align 8
  %i.xp = sub nsw i64 %i.xm, %i.xo                ; 2 uses
  %i.xq = shl nsw i64 %i.xp, 1
  %.lobit.i396 = ashr i64 %i.xp, 63
  %i.xr = xor i64 %i.xq, %.lobit.i396             ; 3 uses
  %i.xs = icmp slt i64 %i.xr, 256
  br i1 %i.xs, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.xt = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.xr
  %i.xu = load i64, ptr %i.xt, align 8
  %i.xv = uitofp i64 %i.xu to double
  %i.xw = fadd double %i.xv, 1.000000e+00
  %i.xx = fdiv double %i.xw, %i.wv
  %i.xy = call double @log(double noundef %i.xx) #30
  %i.xz = fdiv double %i.xy, f0x3FE62E42FEFA39EF
  %i.ya = fsub double %.0262658, %i.xz
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.yb = load i64, ptr %i.ie, align 8
  %i.yc = uitofp i64 %i.yb to double
  %i.yd = fadd double %i.yc, 1.000000e+00
  %i.ye = fdiv double %i.yd, %i.wv
  %i.yf = call double @log(double noundef %i.ye) #30
  %i.yg = add nsw i64 %i.xr, -256
  %i.yh = uitofp nneg i64 %i.yg to double
  %i.yi = call double @log(double noundef %i.yh) #30
  %i.yj = insertelement <2 x double> poison, double %i.yi, i64 0
  %i.yk = insertelement <2 x double> %i.yj, double %i.yf, i64 1
  %i.yl = fdiv <2 x double> %i.yk, splat (double f0x3FE62E42FEFA39EF) ; 2 uses
  %shift = shufflevector <2 x double> %i.yl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.yl, %shift
  %i.ym = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.yn = fadd double %.0262658, %i.ym
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %.1 = phi double [ %i.ya, %bb.bs ], [ %i.yn, %bb.bt ] ; 2 uses
  %i.yo = add nuw i64 %.0260659, 1                ; 2 uses
  %exitcond774.not = icmp eq i64 %i.yo, %3
  br i1 %exitcond774.not, label %._crit_edge662, label %bb.br, !llvm.loop !1761

bb.bv:                                            ; preds = %bb.bp
  %i.yp = and i64 %.1266, 255
  %i.yq = load i64, ptr %i.ig, align 8            ; 3 uses
  %i.yr = load i64, ptr %i.ih, align 8
  %i.ys = icmp eq i64 %i.yq, %i.yr
  br i1 %i.ys, label %bb.bw, label %._crit_edge.i397

._crit_edge.i397:                                 ; preds = %bb.bv
  %.pre.i = load ptr, ptr %i.if, align 8
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.yt = shl i64 %i.yq, 1                        ; 2 uses
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.yt, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.ih, align 8
  %i.yu = icmp ugt i64 %i.yt, 2305843009213693951
  %i.yv = shl i64 %spec.select.i, 3
  %i.yw = select i1 %i.yu, i64 -1, i64 %i.yv
  %i.yx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yw) #33
          to label %.noexc399 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1256 ; 3 uses

.noexc399:                                        ; preds = %bb.bw
  %i.yy = load i64, ptr %i.ig, align 8            ; 3 uses
  %.not.i398 = icmp eq i64 %i.yy, 0
  br i1 %.not.i398, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %.noexc399
  %i.yz = load ptr, ptr %i.if, align 8            ; 3 uses
  %i.za = shl i64 %i.yy, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.yx, ptr align 8 %i.yz, i64 %i.za, i1 false)
  %i.zb = icmp eq ptr %i.yz, null
  br i1 %i.zb, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
end_hunk_1
begin_hunk_2_@_ZN5o3dgc13SC3DMCEncoderItE14ProcessNormalsERKNS_14IndexedFaceSetItEE:bb.a
  %i.cg = load i64, ptr %i.bx, align 8
  %i.ch = load i64, ptr %i.by, align 8
  %i.ci = load i64, ptr %i.bz, align 8
  %i.cj = load i64, ptr %i.ca, align 8
  %i.ck = load i64, ptr %i.cb, align 8
  %i.cl = load i64, ptr %i.cc, align 8
  %i.cm = sub nsw i64 %i.cg, %i.cd                ; 2 uses
  %i.cn = sub nsw i64 %i.ch, %i.ce                ; 2 uses
  %i.co = sub nsw i64 %i.ci, %i.cf                ; 2 uses
  %i.cp = sub nsw i64 %i.cj, %i.cd                ; 2 uses
  %i.cq = sub nsw i64 %i.ck, %i.ce                ; 2 uses
  %i.cr = sub nsw i64 %i.cl, %i.cf                ; 2 uses
  %i.cs = mul nsw i64 %i.cr, %i.cn
  %i.ct = mul nsw i64 %i.cq, %i.co
  %i.cu = mul nsw i64 %i.cp, %i.co
  %i.cv = mul nsw i64 %i.cr, %i.cm
  %i.cw = mul nsw i64 %i.cq, %i.cm
  %i.cx = mul nsw i64 %i.cp, %i.cn
  %i.cy = sub i64 %.sroa.096.0135, %i.ct
  %i.cz = add i64 %i.cy, %i.cs                    ; 2 uses
  %i.da = add i64 %i.cu, %.sroa.899.0134
  %i.db = sub i64 %i.da, %i.cv                    ; 2 uses
  %i.dc = sub i64 %.sroa.13102.0133, %i.cx
  %i.dd = add i64 %i.dc, %i.cw                    ; 2 uses
  %i.de = add nsw i64 %.0136, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !1769

_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit: ; preds = %bb.m, %bb.n, %bb.k, %bb.h, %bb.o, %bb.l, %bb.i
  %.2126 = phi i64 [ %.0124139, %bb.m ], [ %.sroa.13102.0.lcssa, %bb.k ], [ %i.bh, %bb.o ], [ %.sroa.096.0.lcssa, %bb.h ], [ %i.be, %bb.l ], [ %i.bb, %bb.i ], [ %.sroa.899.0.lcssa, %bb.n ] ; 2 uses
  %.1123 = phi i64 [ %.0122140, %bb.m ], [ %.sroa.096.0.lcssa, %bb.k ], [ %i.bi, %bb.o ], [ %.sroa.899.0.lcssa, %bb.h ], [ %i.bf, %bb.l ], [ %i.bc, %bb.i ], [ %.sroa.13102.0.lcssa, %bb.n ] ; 2 uses
  %.2 = phi i8 [ %.0116143, %bb.m ], [ 2, %bb.k ], [ 5, %bb.o ], [ 0, %bb.h ], [ 3, %bb.l ], [ 1, %bb.i ], [ 4, %bb.n ] ; 3 uses
  %i.df = fptrunc double %sqrt.i to float         ; 2 uses
  %i.dg = fcmp oeq float %i.df, 0.000000e+00
  %spec.store.select = select i1 %i.dg, float 1.000000e+00, float %i.df
  %i.dh = sitofp i64 %.2126 to float
  %i.di = sitofp i64 %.1123 to float
  %i.dj = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.di, i64 1
  %i.dn = fdiv <2 x float> %i.dm, %i.dk           ; 2 uses
  %.idx = mul nsw i64 %i.ac, 12
  %i.do = getelementptr inbounds i8, ptr %i.s, i64 %.idx ; 2 uses
  %i.dp = load float, ptr %i.do, align 4          ; 3 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 4
  %i.dr = fpext float %i.dp to double             ; 2 uses
  %i.ds = load <2 x float>, ptr %i.dq, align 4    ; 4 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = fpext float %i.dt to double             ; 2 uses
  %i.dv = extractelement <2 x float> %i.ds, i64 1
  %i.dw = fpext float %i.dv to double             ; 2 uses
  %i.dx = fmul double %i.du, %i.du
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.dr, double %i.dx)
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %i.dy)
  %sqrt.i68 = tail call noundef double @llvm.sqrt.f64(double %i.dz)
  %i.ea = fptrunc double %sqrt.i68 to float       ; 3 uses
  %i.eb = fcmp une float %i.ea, 0.000000e+00      ; 2 uses
  %i.ec = fdiv float %i.dp, %i.ea
  %i.ed = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fdiv <2 x float> %i.ds, %i.ee
  %i.eg = insertelement <2 x i1> poison, i1 %i.eb, i64 0
  %i.eh = shufflevector <2 x i1> %i.eg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ei = select <2 x i1> %i.eh, <2 x float> %i.ef, <2 x float> %i.ds ; 9 uses
  %.sroa.086.0 = select i1 %i.eb, float %i.ec, float %i.dp ; 6 uses
  %i.ej = fcmp olt float %.sroa.086.0, 0.000000e+00
  %i.ek = fneg float %.sroa.086.0                 ; 3 uses
  %i.el = select i1 %i.ej, float %i.ek, float %.sroa.086.0 ; 3 uses
  %i.em = fcmp olt <2 x float> %i.ei, zeroinitializer
  %i.en = fneg <2 x float> %i.ei                  ; 5 uses
  %i.eo = select <2 x i1> %i.em, <2 x float> %i.en, <2 x float> %i.ei ; 3 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 1 ; 3 uses
  %i.eq = fcmp ult float %i.ep, %i.el
  %i.er = extractelement <2 x float> %i.eo, i64 0 ; 3 uses
  %i.es = fcmp ult float %i.ep, %i.er
  %or.cond.i69 = or i1 %i.eq, %i.es
  br i1 %or.cond.i69, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit
  %i.et = extractelement <2 x float> %i.ei, i64 1
  %i.eu = fcmp ult float %i.et, 0.000000e+00      ; 3 uses
  %..i = zext i1 %i.eu to i8
  %.53.i = select i1 %i.eu, float %i.ek, float %.sroa.086.0
  %i.ev = extractelement <2 x float> %i.ei, i64 0
  %i.ew = extractelement <2 x float> %i.en, i64 0
  %.54.i = select i1 %i.eu, float %i.ew, float %i.ev
  br label %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit

bb.r:                                             ; preds = %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit
  %i.ex = fcmp ult float %i.er, %i.el
  %i.ey = fcmp ult float %i.er, %i.ep
  %or.cond32.i = or i1 %i.ex, %i.ey
  br i1 %or.cond32.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ez = extractelement <2 x float> %i.ei, i64 0
  %i.fa = fcmp ult float %i.ez, 0.000000e+00      ; 3 uses
  %.55.i = select i1 %i.fa, i8 3, i8 2
  %i.fb = extractelement <2 x float> %i.ei, i64 1
  %i.fc = extractelement <2 x float> %i.en, i64 1
  %.56.i = select i1 %i.fa, float %i.fc, float %i.fb
  %.57.i = select i1 %i.fa, float %i.ek, float %.sroa.086.0
  br label %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit

bb.t:                                             ; preds = %bb.r
  %i.fd = insertelement <2 x float> poison, float %i.el, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fcmp ult <2 x float> %i.fe, %i.eo
  %i.fg = bitcast <2 x i1> %i.ff to i2
  %.not166 = icmp eq i2 %i.fg, 0
  br i1 %.not166, label %bb.u, label %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit

bb.u:                                             ; preds = %bb.t
  %i.fh = fcmp ult float %.sroa.086.0, 0.000000e+00 ; 3 uses
  %.58.i = select i1 %i.fh, i8 5, i8 4
  %i.fi = extractelement <2 x float> %i.ei, i64 0
  %i.fj = extractelement <2 x float> %i.en, i64 0
  %.59.i = select i1 %i.fh, float %i.fj, float %i.fi
  %i.fk = extractelement <2 x float> %i.ei, i64 1
  %i.fl = extractelement <2 x float> %i.en, i64 1
  %.60.i = select i1 %i.fh, float %i.fl, float %i.fk
  br label %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit

_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit: ; preds = %bb.t, %bb.u, %bb.s, %bb.q
  %.1121 = phi float [ %.0120141, %bb.t ], [ %.53.i, %bb.q ], [ %.56.i, %bb.s ], [ %.59.i, %bb.u ] ; 2 uses
  %.1119 = phi float [ %.0118142, %bb.t ], [ %.54.i, %bb.q ], [ %.57.i, %bb.s ], [ %.60.i, %bb.u ] ; 2 uses
  %.1 = phi i8 [ %.0115144, %bb.t ], [ %..i, %bb.q ], [ %.55.i, %bb.s ], [ %.58.i, %bb.u ] ; 3 uses
  %i.fm = zext nneg i8 %.1 to i64
  %i.fn = zext nneg i8 %.2 to i64
  %i.fo = sub nsw i64 %i.fm, %i.fn
  %i.fp = load i64, ptr %i.u, align 8             ; 3 uses
  %i.fq = load i64, ptr %i.z, align 8
  %i.fr = icmp eq i64 %i.fp, %i.fq
  br i1 %i.fr, label %.noexc, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit
  %.pre.i = load ptr, ptr %i.t, align 8
  br label %bb.y

.noexc:                                           ; preds = %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit
  %i.fs = shl i64 %i.fp, 1                        ; 2 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.fs, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.z, align 8
  %i.ft = icmp ugt i64 %i.fs, 2305843009213693951
  %i.fu = shl i64 %spec.select.i, 3
  %i.fv = select i1 %i.ft, i64 -1, i64 %i.fu
  %i.fw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #33 ; 3 uses
  %i.fx = load i64, ptr %i.u, align 8             ; 3 uses
  %.not.i72 = icmp eq i64 %i.fx, 0
  br i1 %.not.i72, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.noexc
  %i.fy = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.fz = shl i64 %i.fx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr align 8 %i.fy, i64 %i.fz, i1 false)
  %i.ga = icmp eq ptr %i.fy, null
  br i1 %i.ga, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZdaPv(ptr noundef nonnull %i.fy) #31
  %.pre6.pre.i = load i64, ptr %i.u, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.noexc
  %.pre6.i = phi i64 [ %i.fx, %bb.v ], [ %.pre6.pre.i, %bb.w ], [ 0, %.noexc ]
  store ptr %i.fw, ptr %i.t, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i
  %i.gb = phi i64 [ %i.fp, %._crit_edge.i ], [ %.pre6.i, %bb.x ] ; 2 uses
  %i.gc = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.fw, %bb.x ]
  %i.gd = add i64 %i.gb, 1
  store i64 %i.gd, ptr %i.u, align 8
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gb
  store i64 %i.fo, ptr %i.ge, align 8
  %.not.unshifted = xor i8 %.1, %.2
  %.not = icmp samesign ult i8 %.not.unshifted, 2 ; 2 uses
  %i.gf = extractelement <2 x float> %i.dn, i64 0
  %.058 = select i1 %.not, float %i.gf, float 0.000000e+00
  %i.gg = extractelement <2 x float> %i.dn, i64 1
  %.057 = select i1 %.not, float %i.gg, float 0.000000e+00
  %i.gh = fsub float %.1121, %.058
  %i.gi = load ptr, ptr %i.aa, align 8
  %i.gj = shl nsw i64 %i.ac, 1                    ; 2 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gj
  store float %i.gh, ptr %i.gk, align 4
  %i.gl = fsub float %.1119, %.057
  %i.gm = load ptr, ptr %i.aa, align 8
  %i.gn = getelementptr [4 x i8], ptr %i.gm, i64 %i.gj
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  store float %i.gl, ptr %i.go, align 4
  %i.gp = add nuw nsw i64 %.056145, 1             ; 2 uses
  %exitcond151.not = icmp eq i64 %i.gp, %i.b
  br i1 %exitcond151.not, label %._crit_edge148, label %bb.f, !llvm.loop !1770
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc13SC3DMCEncoderItE14EncodeIntArrayEPKlmmmRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(11524) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(80000) %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(28) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1790 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %8 = alloca %"class.o3dgc::Arithmetic_Codec", align 8 ; 32 uses
  %9 = alloca %"class.o3dgc::Static_Bit_Model", align 4 ; 8 uses
  %10 = alloca %"class.o3dgc::Adaptive_Bit_Model", align 4 ; 16 uses
  %11 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 12 uses
  %12 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20) %10)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 49 uses
  %i.j = load i64, ptr %i.i, align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %11, i32 noundef 258)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %12, i32 noundef 3)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11520 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2072) %i.k, i8 0, i64 2072, i1 false)
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %bb.g, label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

bb.g:                                             ; preds = %bb.f
  store i64 %2, ptr %i.q, align 8
  %i.t = icmp ugt i64 %2, 2305843009213693951
  %i.u = shl nuw i64 %2, 3
  %i.v = select i1 %i.t, i64 -1, i64 %i.u
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #33
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892 ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3248
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.z = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.aa = shl i64 %i.y, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.z, i64 %i.aa, i1 false)
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.z) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.noexc
  store ptr %i.w, ptr %i.p, align 8
  br label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

_ZN5o3dgc6VectorIlE8AllocateEm.exit:              ; preds = %bb.j, %bb.f
  %i.ac = trunc i32 %6 to i8
  %i.ad = and i8 %i.ac, 7
  %i.ae = or disjoint i8 %i.ad, 80
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3248
  store i64 0, ptr %i.af, align 8
  br label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit211

bb.k:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.l:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.m:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.n:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.o:                                             ; preds = %bb.e
  %i.ak = trunc i32 %6 to i8
  %i.al = and i8 %i.ak, 7
  %i.am = or disjoint i8 %i.al, 64
  %i.an = mul i64 %3, %2
  %.tr = trunc i64 %i.an to i32
  %i.ao = shl i32 %.tr, 3
  %i.ap = add i32 %i.ao, 100                      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = zext i32 %i.ap to i64                   ; 3 uses
  %i.at = icmp ult i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  br i1 %i.at, label %bb.p, label %._crit_edge528

bb.p:                                             ; preds = %bb.o
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.av) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i64 %i.as, ptr %i.aq, align 8
  %i.ax = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #33
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892 ; 2 uses

bb.s:                                             ; preds = %bb.r
  store ptr %i.ax, ptr %i.au, align 8
  br label %._crit_edge528

._crit_edge528:                                   ; preds = %bb.o, %bb.s
  %i.ay = phi ptr [ %i.ax, %bb.s ], [ %i.av, %bb.o ]
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef %i.ap, ptr noundef %i.ay)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892

bb.t:                                             ; preds = %._crit_edge528
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_encoderEv(ptr noundef nonnull align 8 dereferenceable(44) %8)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %10)
          to label %.lr.ph.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892

.lr.ph.i:                                         ; preds = %bb.u, %.noexc208
  %i.az = phi i32 [ %i.bc, %.noexc208 ], [ 1, %bb.u ]
  %.016.i = phi i32 [ %i.ba, %.noexc208 ], [ 256, %bb.u ]
  %.01115.i = phi i32 [ %i.bb, %.noexc208 ], [ 0, %bb.u ] ; 2 uses
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(20) %10)
          to label %.noexc208 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892

.noexc208:                                        ; preds = %.lr.ph.i
  %i.ba = sub nuw i32 %.016.i, %i.az              ; 3 uses
  %i.bb = add nuw nsw i32 %.01115.i, 1            ; 2 uses
  %i.bc = shl nuw i32 2, %.01115.i                ; 2 uses
  %.not.i207 = icmp ult i32 %i.ba, %i.bc
  br i1 %.not.i207, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.noexc208
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %10)
          to label %.lr.ph21.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892

.lr.ph21.i:                                       ; preds = %._crit_edge.i, %.noexc210
  %.119.i = phi i32 [ %i.bd, %.noexc210 ], [ %i.bb, %._crit_edge.i ]
  %i.bd = add nsw i32 %.119.i, -1                 ; 3 uses
  %i.be = lshr i32 %i.ba, %i.bd
  %i.bf = and i32 %i.be, 1
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %8, i32 noundef %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %.noexc210 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892

.noexc210:                                        ; preds = %.lr.ph21.i
  %.not13.i = icmp eq i32 %i.bd, 0
  br i1 %.not13.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit211, label %.lr.ph21.i, !llvm.loop !24

_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit211: ; preds = %.noexc210, %_ZN5o3dgc6VectorIlE8AllocateEm.exit
  %.0170 = phi i8 [ %i.ae, %_ZN5o3dgc6VectorIlE8AllocateEm.exit ], [ %i.am, %.noexc210 ]
  %i.bg = load i32, ptr %i.m, align 8
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit211
  invoke void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %7, i64 noundef 0)
          to label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892

bb.w:                                             ; preds = %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit211
  invoke void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %7, i64 noundef 0)
          to label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit: ; preds = %bb.v, %bb.w
  %i.bi = load i32, ptr %i.m, align 8
  invoke void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %7, i8 noundef zeroext %.0170, i32 noundef %i.bi)
          to label %.preheader395 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892

.preheader395:                                    ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit
  %i.bj = icmp sgt i64 %2, 0
  br i1 %i.bj, label %.lr.ph442, label %._crit_edge443

.lr.ph442:                                        ; preds = %.preheader395
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bl = icmp ne i32 %6, 0                       ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 12 uses
  %.not453 = icmp eq i64 %3, 0                    ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 18 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3208
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3248 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %13 = add i64 %i.b, 624
  %14 = sub i64 %13, %i.a                         ; 3 uses
  %min.iters.check770 = icmp ult i64 %3, 10
  %invariant.op = add i64 %14, -1
  %n.vec774 = and i64 %3, -4                      ; 3 uses
  %cmp.n781 = icmp eq i64 %3, %n.vec774
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check754 = icmp ult i64 %3, 10
  %invariant.op931 = add i64 %14, -1
  %n.vec758 = and i64 %3, -4                      ; 3 uses
  %cmp.n765 = icmp eq i64 %3, %n.vec758
  %xtraiter900 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod901.not = icmp eq i64 %xtraiter900, 0
  %min.iters.check = icmp ult i64 %3, 10
  %invariant.op933 = add i64 %14, -1
  %n.vec = and i64 %3, -4                         ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter903 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod904.not = icmp eq i64 %xtraiter903, 0
  br label %bb.x

._crit_edge443:                                   ; preds = %.loopexit387, %.preheader395
  %i.bt = load i32, ptr %i.m, align 8
  %.not = icmp eq i32 %i.bt, 1
  br i1 %.not, label %.thread352, label %bb.di

.thread352:                                       ; preds = %._crit_edge443
  %i.bu = load i64, ptr %i.i, align 8
  %i.bv = sub i64 %i.bu, %i.j                     ; 2 uses
  %i.bw = trunc i64 %i.bv to i8
  br label %bb.dq

bb.x:                                             ; preds = %.lr.ph442, %.loopexit387
  %.0165441 = phi i64 [ 0, %.lr.ph442 ], [ %i.uy, %.loopexit387 ] ; 6 uses
  %.0166440 = phi i64 [ 2, %.lr.ph442 ], [ %.1167, %.loopexit387 ] ; 6 uses
  %.0168439 = phi i64 [ 257, %.lr.ph442 ], [ %.1169, %.loopexit387 ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0165441 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8            ; 5 uses
  %i.bz = load ptr, ptr %i.bk, align 8
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.by ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8            ; 3 uses
  %i.cc = icmp sgt i64 %i.by, 0
  br i1 %i.cc, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.x
  %i.cd = getelementptr i8, ptr %i.ca, i64 -8
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = icmp sgt i64 %i.cb, %i.ce
  %or.cond = and i1 %i.bl, %i.cf
  br i1 %or.cond, label %bb.y, label %.thread350

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread: ; preds = %bb.x
  %i.cg = icmp sgt i64 %i.cb, 0
  %or.cond346 = and i1 %i.bl, %i.cg
  br i1 %or.cond346, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %.thread350

bb.y:                                             ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.ch = shl i64 %i.ce, 32
  %i.ci = ashr exact i64 %i.ch, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread, %bb.y
  %i.cj = phi i64 [ %i.ci, %bb.y ], [ 0, %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit.thread ] ; 2 uses
  %i.ck = shl i64 %i.cb, 32
  %i.cl = ashr exact i64 %i.ck, 32                ; 2 uses
  %i.cm = icmp slt i64 %i.cj, %i.cl
  br i1 %i.cm, label %.lr.ph420, label %.thread350

.lr.ph420:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2
  %.0164419 = phi i64 [ %i.kd, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2 ], [ %i.cj, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 2 uses
  %.0344418 = phi i64 [ %.2.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2 ], [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 11 uses
  %i.cn = load ptr, ptr %i.bm, align 8
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.0164419
  %i.cp = load i64, ptr %i.co, align 8
  %.idx = mul i64 %i.cp, 6
  %i.cq = getelementptr i8, ptr %i.h, i64 %.idx   ; 3 uses
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = zext i16 %i.cr to i64                   ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8            ; 4 uses
  %i.cv = icmp slt i64 %i.cu, %.0165441
  br i1 %i.cv, label %bb.z, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.z:                                             ; preds = %.lr.ph420
  %.not.i214 = icmp eq i64 %.0344418, 0
  br i1 %.not.i214, label %.thread34.thread.i, label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %bb.z, %bb.ac
  %.02543.i = phi i64 [ %i.dp, %bb.ac ], [ 0, %bb.z ] ; 7 uses
  %i.cw = getelementptr inbounds nuw [280 x i8], ptr %i.bn, i64 %.02543.i ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8            ; 2 uses
  %i.cz = icmp eq i64 %i.cu, %i.cy
  br i1 %i.cz, label %bb.aa, label %.split.i

bb.aa:                                            ; preds = %.lr.ph.i215
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  %i.dc = icmp eq i64 %i.db, -1
  br i1 %i.dc, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.aa
  %i.dd = load i64, ptr %i.cw, align 8            ; 2 uses
  %i.de = icmp eq i64 %i.dd, -1
  br i1 %i.de, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.split31.i

.split.i:                                         ; preds = %.lr.ph.i215
  %i.df = icmp slt i64 %i.cu, %i.cy
  br i1 %i.df, label %bb.ab, label %bb.ac

.split31.i:                                       ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.dg = icmp sgt i64 %i.dd, -1
  br i1 %i.dg, label %bb.ab, label %bb.ac

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.aa
  %i.dh = icmp sgt i64 %i.db, -1
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.di = icmp eq i64 %.0344418, 1
  %spec.select = select i1 %i.di, i64 2, i64 %.0344418 ; 4 uses
  %.044.i = add i64 %spec.select, -1
  %i.dj = icmp ugt i64 %.044.i, %.02543.i
  br i1 %i.dj, label %.lr.ph47.preheader.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

.lr.ph47.preheader.i:                             ; preds = %bb.ab
  %i.dk = mul i64 %.02543.i, 280
  %i.dl = getelementptr i8, ptr %i.bn, i64 %i.dk  ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.dl, i64 280
  %i.dm = xor i64 %.02543.i, -1
  %i.dn = add i64 %spec.select, %i.dm
  %i.do = mul nuw i64 %i.dn, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %i.dl, i64 %i.do, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

bb.ac:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.dp = add nuw i64 %.02543.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dp, %.0344418
  br i1 %exitcond.not.i, label %.thread34.i, label %.lr.ph.i215, !llvm.loop !16

.thread34.i:                                      ; preds = %bb.ac
  %i.dq = icmp eq i64 %.0344418, 1
  br i1 %i.dq, label %.thread34.thread.i, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

.thread34.thread.i:                               ; preds = %.thread34.i, %bb.z
  %i.dr = add nuw nsw i64 %.0344418, 1
  %i.ds = getelementptr inbounds nuw [280 x i8], ptr %i.bn, i64 %.0344418
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit: ; preds = %bb.ab, %.lr.ph47.preheader.i, %.thread34.thread.i
  %.4 = phi i64 [ %i.dr, %.thread34.thread.i ], [ %spec.select, %.lr.ph47.preheader.i ], [ %spec.select, %bb.ab ] ; 4 uses
  %.lcssa.sink.i = phi ptr [ %i.ds, %.thread34.thread.i ], [ %i.cw, %.lr.ph47.preheader.i ], [ %i.cw, %bb.ab ] ; 2 uses
  %.1.ph.i = phi i64 [ %.0344418, %.thread34.thread.i ], [ %.02543.i, %.lr.ph47.preheader.i ], [ %.02543.i, %bb.ab ] ; 3 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i, i8 -1, i64 16, i1 false)
  store i64 %i.cu, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx, align 8
  %.not205 = icmp eq i64 %.1.ph.i, 4294967295
  %brmerge = or i1 %.not205, %.not453
  br i1 %brmerge, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit
  %i.dt = mul i64 %4, %i.cs
  %i.du = getelementptr [8 x i8], ptr %1, i64 %i.dt ; 6 uses
  %i.dv = getelementptr inbounds nuw [280 x i8], ptr %i.bn, i64 %.1.ph.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24 ; 6 uses
  br i1 %min.iters.check770, label %scalar.ph769.preheader, label %vector.memcheck771

vector.memcheck771:                               ; preds = %.lr.ph
  %i.dx = mul i64 %.1.ph.i, 280
  %i.dy = mul i64 %4, %i.cs
  %i.dz = shl i64 %i.dy, 3
  %i.ea = sub i64 %i.dx, %i.dz
  %i.eb = add i64 %i.ea, %invariant.op
  %diff.check772 = icmp ult i64 %i.eb, 31
  br i1 %diff.check772, label %scalar.ph769.preheader, label %vector.body775

vector.body775:                                   ; preds = %vector.memcheck771, %vector.body775
  %index776 = phi i64 [ %index.next779, %vector.body775 ], [ 0, %vector.memcheck771 ] ; 3 uses
  %i.ec = getelementptr [8 x i8], ptr %i.du, i64 %index776 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %wide.load777 = load <2 x i64>, ptr %i.ec, align 8
  %wide.load778 = load <2 x i64>, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %index776 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <2 x i64> %wide.load777, ptr %i.ee, align 8
  store <2 x i64> %wide.load778, ptr %i.ef, align 8
  %index.next779 = add nuw i64 %index776, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next779, %n.vec774
  br i1 %i.eg, label %middle.block780, label %vector.body775, !llvm.loop !1772

middle.block780:                                  ; preds = %vector.body775
  br i1 %cmp.n781, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph769.preheader

scalar.ph769.preheader:                           ; preds = %vector.memcheck771, %.lr.ph, %middle.block780
  %.0162415.ph = phi i64 [ 0, %vector.memcheck771 ], [ 0, %.lr.ph ], [ %n.vec774, %middle.block780 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph769.prol.loopexit, label %scalar.ph769.prol

scalar.ph769.prol:                                ; preds = %scalar.ph769.preheader, %scalar.ph769.prol
  %.0162415.prol = phi i64 [ %i.ek, %scalar.ph769.prol ], [ %.0162415.ph, %scalar.ph769.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph769.prol ], [ 0, %scalar.ph769.preheader ]
  %i.eh = getelementptr [8 x i8], ptr %i.du, i64 %.0162415.prol
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.0162415.prol
  store i64 %i.ei, ptr %i.ej, align 8
  %i.ek = add nuw i64 %.0162415.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph769.prol.loopexit, label %scalar.ph769.prol, !llvm.loop !1773

scalar.ph769.prol.loopexit:                       ; preds = %scalar.ph769.prol, %scalar.ph769.preheader
  %.0162415.unr = phi i64 [ %.0162415.ph, %scalar.ph769.preheader ], [ %i.ek, %scalar.ph769.prol ]
  %i.el = sub i64 %.0162415.ph, %3
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph769

scalar.ph769:                                     ; preds = %scalar.ph769.prol.loopexit, %scalar.ph769
  %.0162415 = phi i64 [ %i.fc, %scalar.ph769 ], [ %.0162415.unr, %scalar.ph769.prol.loopexit ] ; 6 uses
  %i.en = getelementptr [8 x i8], ptr %i.du, i64 %.0162415
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.0162415
  store i64 %i.eo, ptr %i.ep, align 8
  %i.eq = add nuw i64 %.0162415, 1                ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %i.du, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eq
  store i64 %i.es, ptr %i.et, align 8
  %i.eu = add nuw i64 %.0162415, 2                ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %i.du, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eu
  store i64 %i.ew, ptr %i.ex, align 8
  %i.ey = add nuw i64 %.0162415, 3                ; 2 uses
  %i.ez = getelementptr [8 x i8], ptr %i.du, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ey
  store i64 %i.fa, ptr %i.fb, align 8
  %i.fc = add nuw i64 %.0162415, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fc, %3
  br i1 %exitcond.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %scalar.ph769, !llvm.loop !1774

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, %scalar.ph769.prol.loopexit, %scalar.ph769, %middle.block780, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit, %.thread34.i, %.lr.ph420
  %.2 = phi i64 [ %.4, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit ], [ %.4, %middle.block780 ], [ %.0344418, %.lr.ph420 ], [ %.0344418, %.thread34.i ], [ %.4, %scalar.ph769.prol.loopexit ], [ %.4, %scalar.ph769 ], [ %.0344418, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i ] ; 11 uses
  %i.fd = getelementptr i8, ptr %i.cq, i64 2
  %i.fe = load i16, ptr %i.fd, align 2
  %i.ff = zext i16 %i.fe to i64                   ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8            ; 4 uses
  %i.fi = icmp slt i64 %i.fh, %.0165441
  br i1 %i.fi, label %bb.ad, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1

bb.ad:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.not.i214.1 = icmp eq i64 %.2, 0
  br i1 %.not.i214.1, label %.thread34.thread.i.1, label %.lr.ph.i215.1

.lr.ph.i215.1:                                    ; preds = %bb.ad, %bb.af
  %.02543.i.1 = phi i64 [ %i.fv, %bb.af ], [ 0, %bb.ad ] ; 7 uses
  %i.fj = getelementptr inbounds nuw [280 x i8], ptr %i.bn, i64 %.02543.i.1 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8            ; 2 uses
  %i.fm = icmp eq i64 %i.fh, %i.fl
  br i1 %i.fm, label %bb.ae, label %.split.i.1

.split.i.1:                                       ; preds = %.lr.ph.i215.1
  %i.fn = icmp slt i64 %i.fh, %i.fl
  br i1 %i.fn, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i215.1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fp = load i64, ptr %i.fo, align 8            ; 2 uses
  %i.fq = icmp eq i64 %i.fp, -1
  br i1 %i.fq, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1:    ; preds = %bb.ae
  %i.fr = icmp sgt i64 %i.fp, -1
  br i1 %i.fr, label %bb.ag, label %bb.af

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1:    ; preds = %bb.ae
  %i.fs = load i64, ptr %i.fj, align 8            ; 2 uses
  %i.ft = icmp eq i64 %i.fs, -1
  br i1 %i.ft, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %.split31.i.1

.split31.i.1:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1
  %i.fu = icmp sgt i64 %i.fs, -1
  br i1 %i.fu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.split31.i.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1, %.split.i.1
  %i.fv = add nuw i64 %.02543.i.1, 1              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.fv, %.2
  br i1 %exitcond.not.i.1, label %.thread34.i.1, label %.lr.ph.i215.1, !llvm.loop !16

.thread34.i.1:                                    ; preds = %bb.af
  %i.fw = icmp eq i64 %.2, 1
  br i1 %i.fw, label %.thread34.thread.i.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1

bb.ag:                                            ; preds = %.split31.i.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.1, %.split.i.1
  %i.fx = icmp eq i64 %.2, 1
  %spec.select.1 = select i1 %i.fx, i64 2, i64 %.2 ; 4 uses
  %.044.i.1 = add i64 %spec.select.1, -1
  %i.fy = icmp ugt i64 %.044.i.1, %.02543.i.1
  br i1 %i.fy, label %.lr.ph47.preheader.i.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1

.lr.ph47.preheader.i.1:                           ; preds = %bb.ag
  %i.fz = mul i64 %.02543.i.1, 280
  %i.ga = getelementptr i8, ptr %i.bn, i64 %i.fz  ; 2 uses
  %scevgep.i.1 = getelementptr i8, ptr %i.ga, i64 280
  %i.gb = xor i64 %.02543.i.1, -1
  %i.gc = add i64 %spec.select.1, %i.gb
  %i.gd = mul nuw i64 %i.gc, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i.1, ptr align 8 %i.ga, i64 %i.gd, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1

.thread34.thread.i.1:                             ; preds = %.thread34.i.1, %bb.ad
  %i.ge = add nuw nsw i64 %.2, 1
  %i.gf = getelementptr inbounds nuw [280 x i8], ptr %i.bn, i64 %.2
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1: ; preds = %.thread34.thread.i.1, %.lr.ph47.preheader.i.1, %bb.ag
  %.4.1 = phi i64 [ %i.ge, %.thread34.thread.i.1 ], [ %spec.select.1, %.lr.ph47.preheader.i.1 ], [ %spec.select.1, %bb.ag ] ; 4 uses
  %.lcssa.sink.i.1 = phi ptr [ %i.gf, %.thread34.thread.i.1 ], [ %i.fj, %.lr.ph47.preheader.i.1 ], [ %i.fj, %bb.ag ] ; 2 uses
  %.1.ph.i.1 = phi i64 [ %.2, %.thread34.thread.i.1 ], [ %.02543.i.1, %.lr.ph47.preheader.i.1 ], [ %.02543.i.1, %bb.ag ] ; 3 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i.1, i8 -1, i64 16, i1 false)
  store i64 %i.fh, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx.1, align 8
  %.not205.1 = icmp eq i64 %.1.ph.i.1, 4294967295
  %brmerge.1 = or i1 %.not205.1, %.not453
  br i1 %brmerge.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1
  %i.gg = mul i64 %4, %i.ff
  %i.gh = getelementptr [8 x i8], ptr %1, i64 %i.gg ; 6 uses
  %i.gi = getelementptr inbounds nuw [280 x i8], ptr %i.bn, i64 %.1.ph.i.1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 6 uses
  br i1 %min.iters.check754, label %scalar.ph753.preheader, label %vector.memcheck755

vector.memcheck755:                               ; preds = %.lr.ph.1
  %i.gk = mul i64 %.1.ph.i.1, 280
  %i.gl = mul i64 %4, %i.ff
  %i.gm = shl i64 %i.gl, 3
  %i.gn = sub i64 %i.gk, %i.gm
  %i.go = add i64 %i.gn, %invariant.op931
  %diff.check756 = icmp ult i64 %i.go, 31
  br i1 %diff.check756, label %scalar.ph753.preheader, label %vector.body759

vector.body759:                                   ; preds = %vector.memcheck755, %vector.body759
  %index760 = phi i64 [ %index.next763, %vector.body759 ], [ 0, %vector.memcheck755 ] ; 3 uses
  %i.gp = getelementptr [8 x i8], ptr %i.gh, i64 %index760 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 16
  %wide.load761 = load <2 x i64>, ptr %i.gp, align 8
  %wide.load762 = load <2 x i64>, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %index760 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store <2 x i64> %wide.load761, ptr %i.gr, align 8
  store <2 x i64> %wide.load762, ptr %i.gs, align 8
  %index.next763 = add nuw i64 %index760, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next763, %n.vec758
  br i1 %i.gt, label %middle.block764, label %vector.body759, !llvm.loop !1775

middle.block764:                                  ; preds = %vector.body759
  br i1 %cmp.n765, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph753.preheader

scalar.ph753.preheader:                           ; preds = %vector.memcheck755, %.lr.ph.1, %middle.block764
  %.0162415.1.ph = phi i64 [ 0, %vector.memcheck755 ], [ 0, %.lr.ph.1 ], [ %n.vec758, %middle.block764 ] ; 3 uses
  br i1 %lcmp.mod901.not, label %scalar.ph753.prol.loopexit, label %scalar.ph753.prol

scalar.ph753.prol:                                ; preds = %scalar.ph753.preheader, %scalar.ph753.prol
  %.0162415.1.prol = phi i64 [ %i.gx, %scalar.ph753.prol ], [ %.0162415.1.ph, %scalar.ph753.preheader ] ; 3 uses
  %prol.iter902 = phi i64 [ %prol.iter902.next, %scalar.ph753.prol ], [ 0, %scalar.ph753.preheader ]
  %i.gu = getelementptr [8 x i8], ptr %i.gh, i64 %.0162415.1.prol
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.0162415.1.prol
  store i64 %i.gv, ptr %i.gw, align 8
  %i.gx = add nuw i64 %.0162415.1.prol, 1         ; 2 uses
  %prol.iter902.next = add i64 %prol.iter902, 1   ; 2 uses
  %prol.iter902.cmp.not = icmp eq i64 %prol.iter902.next, %xtraiter900
  br i1 %prol.iter902.cmp.not, label %scalar.ph753.prol.loopexit, label %scalar.ph753.prol, !llvm.loop !1776

scalar.ph753.prol.loopexit:                       ; preds = %scalar.ph753.prol, %scalar.ph753.preheader
  %.0162415.1.unr = phi i64 [ %.0162415.1.ph, %scalar.ph753.preheader ], [ %i.gx, %scalar.ph753.prol ]
  %i.gy = sub i64 %.0162415.1.ph, %3
  %i.gz = icmp ugt i64 %i.gy, -4
  br i1 %i.gz, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph753

scalar.ph753:                                     ; preds = %scalar.ph753.prol.loopexit, %scalar.ph753
  %.0162415.1 = phi i64 [ %i.hp, %scalar.ph753 ], [ %.0162415.1.unr, %scalar.ph753.prol.loopexit ] ; 6 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gh, i64 %.0162415.1
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.0162415.1
  store i64 %i.hb, ptr %i.hc, align 8
  %i.hd = add nuw i64 %.0162415.1, 1              ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %i.gh, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.hd
  store i64 %i.hf, ptr %i.hg, align 8
  %i.hh = add nuw i64 %.0162415.1, 2              ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.gh, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.hh
  store i64 %i.hj, ptr %i.hk, align 8
  %i.hl = add nuw i64 %.0162415.1, 3              ; 2 uses
  %i.hm = getelementptr [8 x i8], ptr %i.gh, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.hl
  store i64 %i.hn, ptr %i.ho, align 8
  %i.hp = add nuw i64 %.0162415.1, 4              ; 2 uses
  %exitcond.1.not.3 = icmp eq i64 %i.hp, %3
  br i1 %exitcond.1.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1, label %scalar.ph753, !llvm.loop !1777

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1, %scalar.ph753.prol.loopexit, %scalar.ph753, %middle.block764, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1, %.thread34.i.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.2.1 = phi i64 [ %.4.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.1 ], [ %.4.1, %middle.block764 ], [ %.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ], [ %.2, %.thread34.i.1 ], [ %.4.1, %scalar.ph753.prol.loopexit ], [ %.4.1, %scalar.ph753 ], [ %.2, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.1 ] ; 11 uses
  %i.hq = getelementptr i8, ptr %i.cq, i64 4
  %i.hr = load i16, ptr %i.hq, align 2
  %i.hs = zext i16 %i.hr to i64                   ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hs
  %i.hu = load i64, ptr %i.ht, align 8            ; 4 uses
  %i.hv = icmp slt i64 %i.hu, %.0165441
  br i1 %i.hv, label %bb.ah, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2

bb.ah:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1
  %.not.i214.2 = icmp eq i64 %.2.1, 0
  br i1 %.not.i214.2, label %.thread34.thread.i.2, label %.lr.ph.i215.2

.lr.ph.i215.2:                                    ; preds = %bb.ah, %bb.aj
  %.02543.i.2 = phi i64 [ %i.ii, %bb.aj ], [ 0, %bb.ah ] ; 7 uses
  %i.hw = getelementptr inbounds nuw [280 x i8], ptr %i.bn, i64 %.02543.i.2 ; 5 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load i64, ptr %i.hx, align 8            ; 2 uses
  %i.hz = icmp eq i64 %i.hu, %i.hy
  br i1 %i.hz, label %bb.ai, label %.split.i.2

.split.i.2:                                       ; preds = %.lr.ph.i215.2
  %i.ia = icmp slt i64 %i.hu, %i.hy
  br i1 %i.ia, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i215.2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ic = load i64, ptr %i.ib, align 8            ; 2 uses
  %i.id = icmp eq i64 %i.ic, -1
  br i1 %i.id, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2:    ; preds = %bb.ai
  %i.ie = icmp sgt i64 %i.ic, -1
  br i1 %i.ie, label %bb.ak, label %bb.aj

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2:    ; preds = %bb.ai
  %i.if = load i64, ptr %i.hw, align 8            ; 2 uses
  %i.ig = icmp eq i64 %i.if, -1
  br i1 %i.ig, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %.split31.i.2

.split31.i.2:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2
  %i.ih = icmp sgt i64 %i.if, -1
  br i1 %i.ih, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.split31.i.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2, %.split.i.2
  %i.ii = add nuw i64 %.02543.i.2, 1              ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.ii, %.2.1
  br i1 %exitcond.not.i.2, label %.thread34.i.2, label %.lr.ph.i215.2, !llvm.loop !16

.thread34.i.2:                                    ; preds = %bb.aj
  %i.ij = icmp eq i64 %.2.1, 1
  br i1 %i.ij, label %.thread34.thread.i.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2

bb.ak:                                            ; preds = %.split31.i.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i.2, %.split.i.2
  %i.ik = icmp eq i64 %.2.1, 1
  %spec.select.2 = select i1 %i.ik, i64 2, i64 %.2.1 ; 4 uses
  %.044.i.2 = add i64 %spec.select.2, -1
  %i.il = icmp ugt i64 %.044.i.2, %.02543.i.2
  br i1 %i.il, label %.lr.ph47.preheader.i.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2

.lr.ph47.preheader.i.2:                           ; preds = %bb.ak
  %i.im = mul i64 %.02543.i.2, 280
  %i.in = getelementptr i8, ptr %i.bn, i64 %i.im  ; 2 uses
  %scevgep.i.2 = getelementptr i8, ptr %i.in, i64 280
  %i.io = xor i64 %.02543.i.2, -1
  %i.ip = add i64 %spec.select.2, %i.io
  %i.iq = mul nuw i64 %i.ip, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i.2, ptr align 8 %i.in, i64 %i.iq, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2

.thread34.thread.i.2:                             ; preds = %.thread34.i.2, %bb.ah
  %i.ir = add nuw nsw i64 %.2.1, 1
  %i.is = getelementptr inbounds nuw [280 x i8], ptr %i.bn, i64 %.2.1
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2: ; preds = %.thread34.thread.i.2, %.lr.ph47.preheader.i.2, %bb.ak
  %.4.2 = phi i64 [ %i.ir, %.thread34.thread.i.2 ], [ %spec.select.2, %.lr.ph47.preheader.i.2 ], [ %spec.select.2, %bb.ak ] ; 4 uses
  %.lcssa.sink.i.2 = phi ptr [ %i.is, %.thread34.thread.i.2 ], [ %i.hw, %.lr.ph47.preheader.i.2 ], [ %i.hw, %bb.ak ] ; 2 uses
  %.1.ph.i.2 = phi i64 [ %.2.1, %.thread34.thread.i.2 ], [ %.02543.i.2, %.lr.ph47.preheader.i.2 ], [ %.02543.i.2, %bb.ak ] ; 3 uses
  %.sroa.7.0..lcssa.sink.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i.2, i8 -1, i64 16, i1 false)
  store i64 %i.hu, ptr %.sroa.7.0..lcssa.sink.i.sroa_idx.2, align 8
  %.not205.2 = icmp eq i64 %.1.ph.i.2, 4294967295
  %brmerge.2 = or i1 %.not205.2, %.not453
  br i1 %brmerge.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2
  %i.it = mul i64 %4, %i.hs
  %i.iu = getelementptr [8 x i8], ptr %1, i64 %i.it ; 6 uses
  %i.iv = getelementptr inbounds nuw [280 x i8], ptr %i.bn, i64 %.1.ph.i.2
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.2
  %i.ix = mul i64 %.1.ph.i.2, 280
  %i.iy = mul i64 %4, %i.hs
  %i.iz = shl i64 %i.iy, 3
  %i.ja = sub i64 %i.ix, %i.iz
  %i.jb = add i64 %i.ja, %invariant.op933
  %diff.check = icmp ult i64 %i.jb, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jc = getelementptr [8 x i8], ptr %i.iu, i64 %index ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 16
  %wide.load = load <2 x i64>, ptr %i.jc, align 8
  %wide.load750 = load <2 x i64>, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %index ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <2 x i64> %wide.load, ptr %i.je, align 8
  store <2 x i64> %wide.load750, ptr %i.jf, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !1778

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.2, %middle.block
  %.0162415.2.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.2 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod904.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0162415.2.prol = phi i64 [ %i.jk, %scalar.ph.prol ], [ %.0162415.2.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter905 = phi i64 [ %prol.iter905.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.jh = getelementptr [8 x i8], ptr %i.iu, i64 %.0162415.2.prol
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.0162415.2.prol
  store i64 %i.ji, ptr %i.jj, align 8
  %i.jk = add nuw i64 %.0162415.2.prol, 1         ; 2 uses
  %prol.iter905.next = add i64 %prol.iter905, 1   ; 2 uses
  %prol.iter905.cmp.not = icmp eq i64 %prol.iter905.next, %xtraiter903
  br i1 %prol.iter905.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1779

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0162415.2.unr = phi i64 [ %.0162415.2.ph, %scalar.ph.preheader ], [ %i.jk, %scalar.ph.prol ]
  %i.jl = sub i64 %.0162415.2.ph, %3
  %i.jm = icmp ugt i64 %i.jl, -4
  br i1 %i.jm, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0162415.2 = phi i64 [ %i.kc, %scalar.ph ], [ %.0162415.2.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.jn = getelementptr [8 x i8], ptr %i.iu, i64 %.0162415.2
  %i.jo = load i64, ptr %i.jn, align 8
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.0162415.2
  store i64 %i.jo, ptr %i.jp, align 8
  %i.jq = add nuw i64 %.0162415.2, 1              ; 2 uses
  %i.jr = getelementptr [8 x i8], ptr %i.iu, i64 %i.jq
  %i.js = load i64, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jq
  store i64 %i.js, ptr %i.jt, align 8
  %i.ju = add nuw i64 %.0162415.2, 2              ; 2 uses
  %i.jv = getelementptr [8 x i8], ptr %i.iu, i64 %i.ju
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ju
  store i64 %i.jw, ptr %i.jx, align 8
  %i.jy = add nuw i64 %.0162415.2, 3              ; 2 uses
  %i.jz = getelementptr [8 x i8], ptr %i.iu, i64 %i.jy
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jy
  store i64 %i.ka, ptr %i.kb, align 8
  %i.kc = add nuw i64 %.0162415.2, 4              ; 2 uses
  %exitcond.2.not.3 = icmp eq i64 %i.kc, %3
  br i1 %exitcond.2.not.3, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2, label %scalar.ph, !llvm.loop !1780

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2, %.thread34.i.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1
  %.2.2 = phi i64 [ %.4.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.2 ], [ %.4.2, %middle.block ], [ %.2.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.1 ], [ %.2.1, %.thread34.i.2 ], [ %.4.2, %scalar.ph.prol.loopexit ], [ %.4.2, %scalar.ph ], [ %.2.1, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i.2 ] ; 3 uses
  %i.kd = add nsw i64 %.0164419, 1                ; 2 uses
  %exitcond519.not = icmp eq i64 %i.kd, %i.cl
  br i1 %exitcond519.not, label %._crit_edge, label %.lr.ph420, !llvm.loop !1781

._crit_edge:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread.2
  %i.ke = icmp ugt i64 %.2.2, 1
  br i1 %i.ke, label %.preheader386, label %.thread350

.preheader386:                                    ; preds = %._crit_edge
  %i.kf = uitofp i64 %.0166440 to double
  %i.kg = mul i64 %i.by, %4
  %i.kh = getelementptr [8 x i8], ptr %1, i64 %i.kg ; 2 uses
  %i.ki = uitofp i64 %.0168439 to double          ; 2 uses
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge430
  %i.kj = load i32, ptr %i.m, align 8
  %i.kk = icmp eq i32 %i.kj, 1
  br i1 %i.kk, label %bb.ar, label %bb.ax

bb.am:                                            ; preds = %.preheader386, %._crit_edge430
  %.0156434 = phi i64 [ 0, %.preheader386 ], [ %i.kv, %._crit_edge430 ] ; 4 uses
  %.0158433 = phi double [ 1.797690e+308, %.preheader386 ], [ %.1159, %._crit_edge430 ] ; 2 uses
  %.0160432 = phi i64 [ 4294967295, %.preheader386 ], [ %.1161, %._crit_edge430 ]
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0156434
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = uitofp i64 %i.km to double
  %i.ko = fadd double %i.kn, 1.000000e+00
  %i.kp = fdiv double %i.ko, %i.kf
  %i.kq = call double @log(double noundef %i.kp) #30
  %i.kr = fdiv double %i.kq, f0xBFE62E42FEFA39EF  ; 2 uses
  br i1 %.not453, label %._crit_edge430, label %.lr.ph429

.lr.ph429:                                        ; preds = %bb.am
  %i.ks = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %.0156434
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 624
  br label %bb.an

._crit_edge430:                                   ; preds = %bb.aq, %bb.am
  %.0157.lcssa = phi double [ %i.kr, %bb.am ], [ %.1, %bb.aq ] ; 2 uses
  %i.ku = fcmp olt double %.0157.lcssa, %.0158433 ; 2 uses
  %.1161 = select i1 %i.ku, i64 %.0156434, i64 %.0160432 ; 5 uses
  %.1159 = select i1 %i.ku, double %.0157.lcssa, double %.0158433
  %i.kv = add nuw i64 %.0156434, 1                ; 2 uses
  %exitcond523.not = icmp eq i64 %i.kv, %.2.2
  br i1 %exitcond523.not, label %bb.al, label %bb.am, !llvm.loop !1782

bb.an:                                            ; preds = %.lr.ph429, %bb.aq
  %.0155427 = phi i64 [ 0, %.lr.ph429 ], [ %i.lz, %bb.aq ] ; 3 uses
  %.0157426 = phi double [ %i.kr, %.lr.ph429 ], [ %.1, %bb.aq ] ; 2 uses
  %i.kw = getelementptr [8 x i8], ptr %i.kh, i64 %.0155427
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %.0155427
  %i.kz = load i64, ptr %i.ky, align 8
  %i.la = sub nsw i64 %i.kx, %i.kz                ; 2 uses
  %i.lb = shl nsw i64 %i.la, 1
  %.lobit.i = ashr i64 %i.la, 63
  %i.lc = xor i64 %i.lb, %.lobit.i                ; 3 uses
  %i.ld = icmp slt i64 %i.lc, 256
  br i1 %i.ld, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.le = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.lc
  %i.lf = load i64, ptr %i.le, align 8
  %i.lg = uitofp i64 %i.lf to double
  %i.lh = fadd double %i.lg, 1.000000e+00
  %i.li = fdiv double %i.lh, %i.ki
  %i.lj = call double @log(double noundef %i.li) #30
  %i.lk = fdiv double %i.lj, f0x3FE62E42FEFA39EF
  %i.ll = fsub double %.0157426, %i.lk
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.lm = load i64, ptr %i.bp, align 8
  %i.ln = uitofp i64 %i.lm to double
  %i.lo = fadd double %i.ln, 1.000000e+00
  %i.lp = fdiv double %i.lo, %i.ki
  %i.lq = call double @log(double noundef %i.lp) #30
  %i.lr = add nsw i64 %i.lc, -256
  %i.ls = uitofp nneg i64 %i.lr to double
  %i.lt = call double @log(double noundef %i.ls) #30
  %i.lu = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.lv = insertelement <2 x double> %i.lu, double %i.lq, i64 1
  %i.lw = fdiv <2 x double> %i.lv, splat (double f0x3FE62E42FEFA39EF) ; 2 uses
  %shift = shufflevector <2 x double> %i.lw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.lw, %shift
  %i.lx = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ly = fadd double %.0157426, %i.lx
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.1 = phi double [ %i.ll, %bb.ao ], [ %i.ly, %bb.ap ] ; 2 uses
  %i.lz = add nuw i64 %.0155427, 1                ; 2 uses
  %exitcond522.not = icmp eq i64 %i.lz, %3
  br i1 %exitcond522.not, label %._crit_edge430, label %bb.an, !llvm.loop !1783

bb.ar:                                            ; preds = %bb.al
  %i.ma = and i64 %.1161, 255
  %i.mb = load i64, ptr %i.br, align 8            ; 3 uses
  %i.mc = load i64, ptr %i.bs, align 8
  %i.md = icmp eq i64 %i.mb, %i.mc
  br i1 %i.md, label %bb.as, label %._crit_edge.i216

._crit_edge.i216:                                 ; preds = %bb.ar
  %.pre.i = load ptr, ptr %i.bq, align 8
  br label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.me = shl i64 %i.mb, 1                        ; 2 uses
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.me, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.bs, align 8
  %i.mf = icmp ugt i64 %i.me, 2305843009213693951
  %i.mg = shl i64 %spec.select.i, 3
  %i.mh = select i1 %i.mf, i64 -1, i64 %i.mg
  %i.mi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mh) #33
          to label %.noexc218 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.spl892 ; 3 uses

.noexc218:                                        ; preds = %bb.as
  %i.mj = load i64, ptr %i.br, align 8            ; 3 uses
  %.not.i217 = icmp eq i64 %i.mj, 0
  br i1 %.not.i217, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.noexc218
  %i.mk = load ptr, ptr %i.bq, align 8            ; 3 uses
  %i.ml = shl i64 %i.mj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mi, ptr align 8 %i.mk, i64 %i.ml, i1 false)
  %i.mm = icmp eq ptr %i.mk, null
  br i1 %i.mm, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZdaPv(ptr noundef nonnull %i.mk) #31
end_hunk_2
