Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerTypeTests?download=true
inline.NumInlined: 12352
inline.NumDeleted: 6356
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm8MetadataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE3$_0EEEvT_SG_T0_":bb.a
  %i.cn = and i32 %i.ch, 31
  %i.co = lshr i32 %i.cm, %i.cn
  %i.cp = trunc i32 %i.co to i1
  br i1 %i.cp, label %.lr.ph.i27, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i16, !prof !397, !llvm.loop !3

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i16: ; preds = %bb.k, %.lr.ph.i27, %bb.j, %.loopexit.i.i9
  %.val7.i.i.i17 = phi ptr [ %i.ak, %.loopexit.i.i9 ], [ %i.bp, %bb.j ], [ %i.bp, %.lr.ph.i27 ], [ %i.bp, %bb.k ]
  %.val4.i.i.i18 = phi ptr [ %i.al, %.loopexit.i.i9 ], [ %i.bq, %bb.j ], [ %i.bq, %.lr.ph.i27 ], [ %i.bq, %bb.k ]
  %i.cq = phi ptr [ %.lcssa9.sink.i.ph.i.i10, %.loopexit.i.i9 ], [ %i.bw, %bb.j ], [ %i.cj, %bb.k ], [ %i.cd, %.lr.ph.i27 ] ; 3 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %.val7.i.i.i17 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 40                ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = and i32 %i.cv, 31
  %i.cx = shl nuw i32 1, %i.cw
  %i.cy = lshr i64 %i.cu, 5
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i18, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !173
  %i.db = or i32 %i.cx, %i.da
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !173
  %.val.i.i.i.i19 = load i32, ptr %i.d, align 8, !tbaa !465
  %i.dc = add i32 %.val.i.i.i.i19, 1
  store i32 %i.dc, ptr %i.d, align 8, !tbaa !465
  store ptr %i.m, ptr %i.cq, align 8, !tbaa !426
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i8 0, i64 32, i1 false)
  %.pre57 = load ptr, ptr %2, align 8, !tbaa !462, !noalias !2245
  %.pre58 = load ptr, ptr %i.b, align 8, !tbaa !463, !noalias !2245
  %.pre59 = load i32, ptr %i.c, align 4, !tbaa !464, !noalias !2245
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23.loopexit: ; preds = %.lr.ph.i.i.i21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !472
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i16
  %i.de = phi i32 [ %.pre59, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i16 ], [ %i.am, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23.loopexit ] ; 4 uses
  %i.df = phi ptr [ %.pre58, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i16 ], [ %i.al, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23.loopexit ] ; 3 uses
  %i.dg = phi ptr [ %.pre57, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i16 ], [ %i.ak, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23.loopexit ] ; 3 uses
  %i.dh = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i.i16 ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23.loopexit ]
  %i.di = icmp eq i32 %i.de, 0
  br i1 %i.di, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23
  %i.dj = add i32 %i.de, -1                       ; 2 uses
  %i.dk = ptrtoint ptr %i.aj to i64
  %i.dl = mul i64 %i.dk, -4658895280553007687     ; 2 uses
  %i.dm = lshr i64 %i.dl, 31
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = trunc i64 %i.dn to i32
  %i.dp = and i32 %i.dj, %i.do                    ; 3 uses
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.dq ; 2 uses
  %i.ds = lshr i64 %i.dq, 5
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !173
  %i.dv = and i32 %i.dp, 31
  %i.dw = lshr i32 %i.du, %i.dv
  %i.dx = trunc i32 %i.dw to i1
  br i1 %i.dx, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !396

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.m
  %i.dy = phi ptr [ %i.ee, %bb.m ], [ %i.dr, %bb.l ] ; 2 uses
  %.05.i.i.i = phi i32 [ %i.ec, %bb.m ], [ %i.dp, %bb.l ]
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !426
  %i.ea = icmp eq ptr %i.aj, %i.dz
  br i1 %i.ea, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit, label %bb.m, !prof !379

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.eb = add nuw i32 %.05.i.i.i, 1
  %i.ec = and i32 %i.eb, %i.dj                    ; 3 uses
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.ed ; 2 uses
  %i.ef = lshr i64 %i.ed, 5
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !173
  %i.ei = and i32 %i.ec, 31
  %i.ej = lshr i32 %i.eh, %i.ei
  %i.ek = trunc i32 %i.ej to i1
  br i1 %i.ek, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !397, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %bb.l, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23, %bb.m
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.ee, %bb.m ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit23 ], [ %i.dr, %bb.l ]
  %.val6.i.i.i = load i32, ptr %i.d, align 8, !tbaa !465
  %i.el = shl i32 %.val6.i.i.i, 2
  %i.em = add i32 %i.el, 4
  %i.en = mul i32 %i.de, 3
  %.not.i.i.i = icmp ult i32 %i.em, %i.en
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit.thread, label %bb.n, !prof !379

bb.n:                                             ; preds = %.loopexit.i.i
  %i.eo = shl i32 %i.de, 1
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.eo)
  %i.ep = load ptr, ptr %2, align 8, !tbaa !462, !noalias !2246 ; 5 uses
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !463, !noalias !2246 ; 5 uses
  %i.er = load i32, ptr %i.c, align 4, !tbaa !464, !noalias !2246 ; 2 uses
  %i.es = icmp ne i32 %i.er, 0
  tail call void @llvm.assume(i1 %i.es)
  %i.et = add i32 %i.er, -1                       ; 2 uses
  %i.eu = ptrtoint ptr %i.aj to i64
  %i.ev = mul i64 %i.eu, -4658895280553007687     ; 2 uses
  %i.ew = lshr i64 %i.ev, 31
  %i.ex = xor i64 %i.ew, %i.ev
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = and i32 %i.et, %i.ey                    ; 3 uses
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = getelementptr inbounds nuw [40 x i8], ptr %i.ep, i64 %i.fa ; 2 uses
  %i.fc = lshr i64 %i.fa, 5
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !173
  %i.ff = and i32 %i.ez, 31
  %i.fg = lshr i32 %i.fe, %i.ff
  %i.fh = trunc i32 %i.fg to i1
  br i1 %i.fh, label %.lr.ph.i24, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit.thread, !prof !396

.lr.ph.i24:                                       ; preds = %bb.n, %bb.o
  %i.fi = phi ptr [ %i.fo, %bb.o ], [ %i.fb, %bb.n ] ; 2 uses
  %.05.i = phi i32 [ %i.fm, %bb.o ], [ %i.ez, %bb.n ]
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !426
  %i.fk = icmp eq ptr %i.aj, %i.fj
  br i1 %i.fk, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit.thread, label %bb.o, !prof !379

bb.o:                                             ; preds = %.lr.ph.i24
  %i.fl = add nuw i32 %.05.i, 1
  %i.fm = and i32 %i.fl, %i.et                    ; 3 uses
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %i.ep, i64 %i.fn ; 2 uses
  %i.fp = lshr i64 %i.fn, 5
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !173
  %i.fs = and i32 %i.fm, 31
  %i.ft = lshr i32 %i.fr, %i.fs
  %i.fu = trunc i32 %i.ft to i1
  br i1 %i.fu, label %.lr.ph.i24, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit.thread, !prof !397, !llvm.loop !3

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit.thread: ; preds = %.lr.ph.i24, %bb.o, %.loopexit.i.i, %bb.n
  %.val7.i.i.i = phi ptr [ %i.dg, %.loopexit.i.i ], [ %i.ep, %bb.n ], [ %i.ep, %bb.o ], [ %i.ep, %.lr.ph.i24 ]
  %.val4.i.i.i = phi ptr [ %i.df, %.loopexit.i.i ], [ %i.eq, %bb.n ], [ %i.eq, %bb.o ], [ %i.eq, %.lr.ph.i24 ]
  %i.fv = phi ptr [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ], [ %i.fb, %bb.n ], [ %i.fi, %.lr.ph.i24 ], [ %i.fo, %bb.o ] ; 3 uses
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %.val7.i.i.i to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = sdiv exact i64 %i.fy, 40                ; 2 uses
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = and i32 %i.ga, 31
  %i.gc = shl nuw i32 1, %i.gb
  %i.gd = lshr i64 %i.fz, 5
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i, i64 %i.gd ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !173
  %i.gg = or i32 %i.gc, %i.gf
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !173
  %.val.i.i.i.i = load i32, ptr %i.d, align 8, !tbaa !465
  %i.gh = add i32 %.val.i.i.i.i, 1
  store i32 %i.gh, ptr %i.d, align 8, !tbaa !465
  store ptr %i.aj, ptr %i.fv, align 8, !tbaa !426
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gi, i8 0, i64 32, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm8MetadataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit: ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.pre61 = load i32, ptr %.phi.trans.insert60, align 8, !tbaa !472
  %i.gj = icmp ult i32 %i.dh, %.pre61
  br i1 %i.gj, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm8MetadataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, !llvm.loop !7

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm8MetadataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit, %bb.g, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit.thread, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.049, %bb.g ], [ %.sroa.0.010.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit.thread ], [ %.sroa.0.010.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEZN12_GLOBAL__N_120LowerTypeTestsModule5lowerEvE6TIInfoNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_.exit ]
  store ptr %i.m, ptr %.sink, align 8, !tbaa !426
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.049, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !2242

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm8MetadataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %.fr31 = freeze ptr %1                          ; 3 uses
  %.fr30 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr30 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr31 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr30, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph55

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEET_SF_SF_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph55, !llvm.loop !2247

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i29.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ep, %bb.b ] ; 3 uses
  %storemerge27.lcssa = phi ptr [ %.fr31, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i29.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i29.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !540  ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !540
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !540
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val2.i.i.us.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !487
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val3.i.i.us.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !487
  %i.ae = icmp ult i32 %.val2.i.i.us.i.i.i, %.val3.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !540
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.038.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !540
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !2248

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 8
  %.val16.val.i.i.us.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !487
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.06.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.097.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.097.in.i.i.us.i.i.i = add nsw i64 %.06.i.i.us.i.i.i, -1
  %.097.i.i.us.i.i.i = sdiv i64 %.097.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.097.i.i.us.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !540 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val2.i.i.i.us.i.i.i = load i32, ptr %i.am, align 8, !tbaa !487
  %i.an = icmp ult i32 %.val2.i.i.i.us.i.i.i, %.val16.val.i.i.us.i.i.i
  br i1 %i.an, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.06.i.i.us.i.i.i
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !540
  %i.ap = icmp sgt i64 %.097.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", !llvm.loop !2249

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.097.i.i.us.i.i.i, %bb.d ], [ %.06.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.aq, align 8, !tbaa !540
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !2250

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.09.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !540 ; 2 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.ay
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !540
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !540
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  %.val2.i.i.i.i.i = load i32, ptr %i.bc, align 8, !tbaa !487
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  %.val3.i.i.i.i.i = load i32, ptr %i.bd, align 8, !tbaa !487
  %i.be = icmp ult i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !540
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.038.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !540
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2248

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !540
  store ptr %i.bk, ptr %i.r, align 8, !tbaa !540
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.at, i64 8
  %.val16.val.i.i.i.i.i = load i32, ptr %i.bm, align 8, !tbaa !487
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.097.i.i.i.i.i, %bb.h ] ; 3 uses
  %.097.in.i.i.i.i.i = add nsw i64 %.06.i.i.i.i.i, -1
  %.097.i.i.i.i.i = sdiv i64 %.097.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.097.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !540 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val2.i.i.i.i.i.i = load i32, ptr %i.bp, align 8, !tbaa !487
  %i.bq = icmp ult i32 %.val2.i.i.i.i.i.i, %.val16.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.06.i.i.i.i.i
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !540
  %i.bs = icmp sgt i64 %.097.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i", !llvm.loop !2249

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.06.i.i.i.i.i, %bb.g ], [ %.097.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.at, ptr %i.bt, align 8, !tbaa !540
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !2250

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_T0_SG_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i29.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_RT0_.exit.i.i"
  %.sroa.0.02.i.i = phi ptr [ %i.bv, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_RT0_.exit.i.i" ], [ %storemerge27.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_RT0_.exit.i.i" ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !540 ; 2 uses
  %i.bx = load ptr, ptr %.fr30, align 8, !tbaa !540
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !540
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 3                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.038.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.038.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %i.ch
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !540
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !540
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
  %.val2.i.i.i.i21.i = load i32, ptr %i.cl, align 8, !tbaa !487
  %i.cm = getelementptr i8, ptr %i.ck, i64 8
  %.val3.i.i.i.i22.i = load i32, ptr %i.cm, align 8, !tbaa !487
  %i.cn = icmp ult i32 %.val2.i.i.i.i21.i, %.val3.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %spec.select.i.i.i23.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !540
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.038.i.i.i20.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !540
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !2248

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !540
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.da, ptr %i.db, align 8, !tbaa !540
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i4.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.bw, i64 8
  %.val16.val.i.i.i.i14.i = load i32, ptr %i.dc, align 8, !tbaa !487
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.06.i.i.i.i15.i = phi i64 [ %.1.i4.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.097.i.i56.i.i.i, %bb.l ] ; 3 uses
  %.097.in.i.i.i.i16.i = add nsw i64 %.06.i.i.i.i15.i, -1
  %.097.i.i56.i.i.i = lshr i64 %.097.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %.097.i.i56.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !540 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %.val2.i.i.i.i.i17.i = load i32, ptr %i.df, align 8, !tbaa !487
  %i.dg = icmp ult i32 %.val2.i.i.i.i.i17.i, %.val16.val.i.i.i.i14.i
  br i1 %i.dg, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.06.i.i.i.i15.i
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !540
  %.not7.i.i.i = icmp eq i64 %.097.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_RT0_.exit.i.i", label %bb.k, !llvm.loop !2249

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.06.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr30, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bw, ptr %i.di, align 8, !tbaa !540
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_T0_.exit", !llvm.loop !2251

.lr.ph55:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2754 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr31, %.lr.ph ] ; 3 uses
  %.02853 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.eq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02853, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr30, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2754, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !540 ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !540 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 8
  %.val2.i.i.i = load i32, ptr %i.dr, align 8, !tbaa !487 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  %.val3.i.i.i = load i32, ptr %i.ds, align 8, !tbaa !487 ; 3 uses
  %i.dt = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !540 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %.val3.i27.i.i = load i32, ptr %i.dv, align 8, !tbaa !487 ; 4 uses
  br i1 %i.dt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph55
  %i.dw = icmp ult i32 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %.fr30, align 8, !tbaa !540
  store ptr %i.dq, ptr %.fr30, align 8, !tbaa !540
  store ptr %i.dx, ptr %i.dn, align 8, !tbaa !540
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dy = icmp ult i32 %.val2.i.i.i, %.val3.i27.i.i
  %i.dz = load ptr, ptr %.fr30, align 8, !tbaa !540 ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.du, ptr %.fr30, align 8, !tbaa !540
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !540
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %.fr30, align 8, !tbaa !540
  store ptr %i.dz, ptr %i.f, align 8, !tbaa !540
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph55
  %i.ea = icmp ult i32 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %.fr30, align 8, !tbaa !540
  store ptr %i.dp, ptr %.fr30, align 8, !tbaa !540
  store ptr %i.eb, ptr %i.f, align 8, !tbaa !540
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.ec = icmp ult i32 %.val3.i.i.i, %.val3.i27.i.i
  %i.ed = load ptr, ptr %.fr30, align 8, !tbaa !540 ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.du, ptr %.fr30, align 8, !tbaa !540
  store ptr %i.ed, ptr %i.do, align 8, !tbaa !540
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store ptr %i.dq, ptr %.fr30, align 8, !tbaa !540
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !540
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ej, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2754, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %i.ee = load ptr, ptr %.fr30, align 8, !tbaa !540
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %.val3.i.i18.i = load i32, ptr %i.ef, align 8, !tbaa !487 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.ej, %bb.w ] ; 8 uses
  %i.eg = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !540 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %.val2.i.i19.i = load i32, ptr %i.eh, align 8, !tbaa !487
  %i.ei = icmp ult i32 %.val2.i.i19.i, %.val3.i.i18.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.w, label %.preheader.i.i, !llvm.loop !2252

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !540 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %.val3.i10.i.i = load i32, ptr %i.el, align 8, !tbaa !487
  %i.em = icmp ult i32 %.val3.i.i18.i, %.val3.i10.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.x, !llvm.loop !2253

bb.x:                                             ; preds = %.preheader.i.i
  %i.en = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.en, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEET_SF_SF_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store ptr %i.ek, ptr %.sroa.012.1.i.i, align 8, !tbaa !540
  store ptr %i.eg, ptr %.sroa.0.1.i.i, align 8, !tbaa !540
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !2254

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEET_SF_SF_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2754, i64 noundef %i.dl)
  %i.eo = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ep = sub i64 %i.eo, %i.a                     ; 2 uses
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 16
  br i1 %i.er, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_T0_.exit", !llvm.loop !2247

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEET_SF_SF_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_SF_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_117ICallBranchFunnelESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule5lowerEvE3$_1EEEvT_SF_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_116GlobalTypeMemberEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_EixERKS4_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.val.i = load ptr, ptr %1, align 8             ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !747, !noalias !2259 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !748, !noalias !2259 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !749, !noalias !2259 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !173
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i, !prof !396

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.05.i.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !459
  %i.y = icmp eq ptr %.val.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_116GlobalTypeMemberEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit, label %bb.c, !prof !379

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.z = add nuw i32 %.05.i.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !173
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i, label %.loopexit.i, !prof !397, !llvm.loop !40

.loopexit.i:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa9.sink.i.ph.i = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa9.sink.i.ph.i, ptr %i.a, align 8, !tbaa !828
  %i.aj = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %.val6.i.i = load i32, ptr %i.aj, align 8, !tbaa !750
  %i.ak = shl i32 %.val6.i.i, 2
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_116GlobalTypeMemberEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i, label %bb.d, !prof !379

bb.d:                                             ; preds = %.loopexit.i
  %i.an = shl i32 %i.f, 1
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_116GlobalTypeMemberEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.an)
  %.val5.i.i = load ptr, ptr %1, align 8
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_116GlobalTypeMemberEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.val5.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !828
  %.val4.i.pre.i = load ptr, ptr %i.c, align 8, !tbaa !748
  %.val7.i.pre.i = load ptr, ptr %0, align 8, !tbaa !747
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !459
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_116GlobalTypeMemberEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_116GlobalTypeMemberEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i: ; preds = %bb.d, %.loopexit.i
  %i.ao = phi ptr [ %.pre.i, %bb.d ], [ %.val.i, %.loopexit.i ]
  %.val7.i.i = phi ptr [ %.val7.i.pre.i, %bb.d ], [ %i.b, %.loopexit.i ]
  %.val4.i.i = phi ptr [ %.val4.i.pre.i, %bb.d ], [ %i.d, %.loopexit.i ]
  %i.ap = phi ptr [ %.pre.i.i, %bb.d ], [ %.lcssa9.sink.i.ph.i, %.loopexit.i ] ; 4 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.val7.i.i to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 4                 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 31
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = lshr i64 %i.at, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !173
  %i.ba = or i32 %i.aw, %i.az
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !173
  %.val.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !750
  %i.bb = add i32 %.val.i.i.i, 1
  store i32 %i.bb, ptr %i.aj, align 8, !tbaa !750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !459
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !101
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_116GlobalTypeMemberEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_116GlobalTypeMemberEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_116GlobalTypeMemberEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_116GlobalTypeMemberEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit.i ], [ %i.w, %.lr.ph.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  ret ptr %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !742, !noalias !2264 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !743, !noalias !2264 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !744, !noalias !2264 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !426    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !173
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !396

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !426
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !379

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !173
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !397, !llvm.loop !43

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !829
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !830
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !379

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !829
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !743
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !742
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8MetadataEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !173
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !173
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !830
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !830
end_hunk_0
