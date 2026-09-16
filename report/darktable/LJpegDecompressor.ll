Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/LJpegDecompressor?download=true
inline.NumInlined: 939
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.022.0.copyload = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 3 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.223.0.copyload = load i32, ptr %.sroa.223.0..sroa_idx, align 8, !tbaa !22 ; 7 uses
  %i.ay = icmp sgt i32 %.sroa.223.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !24 ; 3 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = icmp eq ptr %i.al, %i.ba
  %.not36905 = icmp eq i32 %i.ap, 0
  %i.bd = icmp sgt i32 %i.x, -1
  %i.be = icmp sgt i32 %i.z, -1
  %i.bf = icmp samesign ugt i32 %i.x, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 92
  %invariant.op = add i32 %i.x, -2
  %i.bh = icmp sgt i32 %i.n, 1                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = zext nneg i32 %.sroa.223.0.copyload to i64
  %i.bl = zext i32 %invariant.op to i64
  %i.bm = zext i32 %i.x to i64
  %i.bn = zext nneg i32 %i.n to i64
  %i.bo = zext i32 %i.ap to i64
  %i.bp = and i64 %i.at, 4294967295
  %i.bq = zext nneg i32 %i.av to i64
  %i.br = add i64 %i.bb, -16
  %i.bs = sub i64 %i.br, %i.am                    ; 3 uses
  %i.bt = lshr i64 %i.bs, 4
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.bs, 64
  %min.iters.check1056 = icmp ult i64 %i.bs, 256
  %i.bv = and i64 %i.bu, 15                       ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = select i1 %i.bw, i64 16, i64 %i.bv      ; 2 uses
  %n.vec = sub nsw i64 %i.bu, %i.bx               ; 4 uses
  %i.by = shl nsw i64 %n.vec, 1
  %i.bz = getelementptr i8, ptr %4, i64 %i.by
  %i.ca = shl i64 %n.vec, 4
  %i.cb = getelementptr i8, ptr %i.al, i64 %i.ca
  %min.epilog.iters.check = icmp samesign ult i64 %i.bx, 5
  %i.cc = and i64 %i.bu, 3                        ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  %i.ce = select i1 %i.cd, i64 4, i64 %i.cc
  %n.vec1059 = sub nsw i64 %i.bu, %i.ce           ; 3 uses
  %i.cf = shl nsw i64 %n.vec1059, 1
  %i.cg = getelementptr i8, ptr %4, i64 %i.cf
  %i.ch = shl i64 %n.vec1059, 4
  %i.ci = getelementptr i8, ptr %i.al, i64 %i.ch
  %.sroa.0.0.vec.extract1096 = extractelement <3 x ptr> %i.an, i64 0
  %.sroa.0.8.vec.extract = extractelement <3 x ptr> %i.an, i64 2
  %.sroa.0.0.vec.extract1094 = extractelement <3 x ptr> %i.an, i64 0
  %.sroa.0.8.vec.extract1098 = extractelement <3 x ptr> %i.an, i64 2
  %.sroa.0.0.vec.extract = extractelement <3 x ptr> %i.an, i64 0
  %.sroa.0.8.vec.extract1100 = extractelement <3 x ptr> %i.an, i64 2
  br label %bb.b

bb.a:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit168
  ret i32 %i.xz

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit168
  %indvars.iv967 = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next968, %_ZN8rawspeed10ByteStream9skipBytesEj.exit168 ] ; 5 uses
  %.sroa.10429.0917 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.xz, %_ZN8rawspeed10ByteStream9skipBytesEj.exit168 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.bc, label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1056, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.cj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %4, i64 %i.cj
  %i.ck = shl i64 %index, 4
  %next.gep1057 = getelementptr i8, ptr %i.al, i64 %i.ck
  %i.cl = getelementptr inbounds nuw i8, ptr %next.gep1057, i64 8
  %wide.vec = load <128 x i16>, ptr %i.cl, align 8, !tbaa !148
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 4, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !191

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1060 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1065, %vec.epilog.vector.body ] ; 3 uses
  %i.cn = shl i64 %index1060, 1
  %next.gep1061 = getelementptr i8, ptr %4, i64 %i.cn
  %i.co = shl i64 %index1060, 4
  %next.gep1062 = getelementptr i8, ptr %i.al, i64 %i.co
  %i.cp = getelementptr inbounds nuw i8, ptr %next.gep1062, i64 8
  %wide.vec1063 = load <32 x i16>, ptr %i.cp, align 8, !tbaa !148
  %strided.vec1064 = shufflevector <32 x i16> %wide.vec1063, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec1064, ptr %next.gep1061, align 2, !tbaa !149
  %index.next1065 = add nuw i64 %index1060, 4     ; 2 uses
  %i.cq = icmp eq i64 %index.next1065, %n.vec1059
  br i1 %i.cq, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !192

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.al, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !148
  store i16 %i.cs, ptr %.07.i.i, align 2, !tbaa !149
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.cv = icmp eq ptr %i.ct, %i.ba
  br i1 %i.cv, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !193

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i32, ptr %4, align 4
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %i.cw = phi i32 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i32 %i.cw, ptr %5, align 4
  %.not34 = icmp eq i64 %indvars.iv967, 0
  br i1 %.not34, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10429.0917, %.sroa.223.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.cx = add nuw nsw i32 %.sroa.10429.0917, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.cx, %.sroa.223.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.cy = zext nneg i32 %.sroa.10429.0917 to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 %i.cy
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.cz, align 1
  %i.da = zext nneg i32 %i.cx to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 %i.da
  %.0.copyload.i.i.i.i.i10.i = load i8, ptr %i.db, align 1 ; 3 uses
  %i.dc = icmp ne i8 %.0.copyload.i.i.i.i.i.i, -1
  %i.dd = add i8 %.0.copyload.i.i.i.i.i10.i, 1
  %i.de = icmp ult i8 %i.dd, 2
  %or.cond5.i.not = or i1 %i.dc, %i.de
  br i1 %or.cond5.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  %i.df = and i8 %.0.copyload.i.i.i.i.i10.i, -8
  %switch.i.not = icmp eq i8 %i.df, -48
  br i1 %switch.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.dg = zext i8 %.0.copyload.i.i.i.i.i10.i to i32
  %i.dh = add nsw i32 %i.dg, -208
  %i.di = trunc i64 %indvars.iv967 to i32
  %i.dj = add i32 %i.di, -1
  %i.dk = srem i32 %i.dj, 8
  %.not35 = icmp eq i32 %i.dh, %i.dk
  br i1 %.not35, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dl = add nuw nsw i32 %.sroa.10429.0917, 2    ; 2 uses
  %i.dm = icmp samesign ule i32 %i.dl, %.sroa.223.0.copyload
  tail call void @llvm.assume(i1 %i.dm)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit
  %.sroa.10429.1 = phi i32 [ %.sroa.10429.0917, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit ], [ %i.dl, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dn = zext i32 %.sroa.10429.1 to i64          ; 2 uses
  %i.do = sub nuw nsw i32 %.sroa.223.0.copyload, %.sroa.10429.1 ; 14 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 %i.dn ; 6 uses
  %i.dq = icmp samesign ult i32 %i.do, 8
  br i1 %i.dq, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not36905, label %.loopexit756.thread, label %.lr.ph912

.lr.ph912:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.dr = mul nsw i64 %indvars.iv967, %i.ar
  %i.ds = add nuw nsw i32 %i.do, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph912, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv964 = phi i64 [ 0, %.lr.ph912 ], [ %indvars.iv.next965, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0289.0910 = phi i64 [ 0, %.lr.ph912 ], [ %.sroa.0289.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.48.0909 = phi i32 [ 0, %.lr.ph912 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.137365.0908 = phi i32 [ 0, %.lr.ph912 ], [ %.sroa.137365.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.169393.0907 = phi i32 [ -1, %.lr.ph912 ], [ %.sroa.169393.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.0404.0906 = phi ptr [ %5, %.lr.ph912 ], [ %i.ea, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.dt = add nsw i64 %indvars.iv964, %i.dr       ; 5 uses
  %i.du = icmp sgt i64 %i.dt, -1
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = icmp sle i64 %i.dt, %i.aq
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = trunc nuw nsw i64 %i.dt to i32
  %.not37 = icmp eq i32 %i.z, %i.dw
  br i1 %.not37, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.dx = icmp eq i64 %indvars.iv967, %i.bp
  tail call void @llvm.assume(i1 %i.dx)
  br label %.loopexit756

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bd)
  tail call void @llvm.assume(i1 %i.be)
  %i.dy = icmp samesign ult i64 %i.dt, %i.aq
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = mul nuw nsw i64 %i.dt, %i.bn
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.dz ; 3 uses
  tail call void @llvm.assume(i1 %i.bf)
  %i.eb = load i32, ptr %i.bg, align 4, !tbaa !37 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bh)
  %wide.trip.count = zext nneg i32 %i.eb to i64
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.loopexit
  %indvars.iv954 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next955, %.loopexit ] ; 2 uses
  %.sroa.0508.0870 = phi ptr [ %.sroa.0404.0906, %.lr.ph ], [ %i.ef, %.loopexit ]
  %.sroa.0289.2869 = phi i64 [ %.sroa.0289.0910, %.lr.ph ], [ %.sroa.0289.14, %.loopexit ]
  %.sroa.48.3868 = phi i32 [ %.sroa.48.0909, %.lr.ph ], [ %.sroa.48.15, %.loopexit ]
  %.sroa.137365.3867 = phi i32 [ %.sroa.137365.0908, %.lr.ph ], [ %.sroa.137365.11, %.loopexit ]
  %.sroa.169393.3866 = phi i32 [ %.sroa.169393.0907, %.lr.ph ], [ %.sroa.169393.11, %.loopexit ]
  %i.ed = shl nuw nsw i64 %indvars.iv954, 1       ; 2 uses
  %i.ee = icmp samesign ule i64 %i.ed, %i.bl
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.ed ; 3 uses
  br label %bb.o

.loopexit:                                        ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next955, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !194

bb.o:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %.not55.i = phi i1 [ false, %.preheader ], [ true, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ]
  %indvars.iv.sroa.phi.sroa.speculated = phi ptr [ %.sroa.0.0.vec.extract1096, %.preheader ], [ %.sroa.0.8.vec.extract, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ 1, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 2 uses
  %.sroa.0289.13860 = phi i64 [ %.sroa.0289.2869, %.preheader ], [ %.sroa.0289.14, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 3 uses
  %.sroa.48.14859 = phi i32 [ %.sroa.48.3868, %.preheader ], [ %.sroa.48.15, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 7 uses
  %.sroa.137365.10856 = phi i32 [ %.sroa.137365.3867, %.preheader ], [ %.sroa.137365.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 8 uses
  %.sroa.169393.10855 = phi i32 [ %.sroa.169393.3866, %.preheader ], [ %.sroa.169393.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0508.0870, i64 %indvars.iv
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !149
  %i.ei = icmp samesign ult i32 %.sroa.48.14859, 65
  tail call void @llvm.assume(i1 %i.ei)
  %.not.i56 = icmp samesign ult i32 %.sroa.48.14859, 32
  br i1 %.not.i56, label %bb.p, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.ej = add nuw nsw i32 %.sroa.137365.10856, 8
  %.not.i.i57 = icmp samesign ugt i32 %i.ej, %i.do
  br i1 %.not.i.i57, label %bb.r, label %bb.q, !prof !141

bb.q:                                             ; preds = %bb.p
  %i.ek = zext nneg i32 %.sroa.137365.10856 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ek
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.em = icmp samesign ugt i32 %.sroa.137365.10856, %i.ds
  br i1 %i.em, label %bb.s, label %bb.t, !prof !141

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.t:                                             ; preds = %bb.r
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.do, i32 %.sroa.137365.10856) ; 3 uses
  %i.en = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.do, i32 %i.en)
  %i.eo = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.ep = icmp samesign ult i32 %i.eo, 9
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.eq
  %i.es = zext nneg i32 %i.eo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.er, i64 %i.es, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.t ], [ %i.el, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %3, align 8
  %i.et = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.eu = icmp ne i8 %i.et, -1
  %i.ev = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.ew = trunc i64 %i.ev to i8                   ; 3 uses
  %i.ex = icmp ne i8 %i.ew, -1
  %i.ey = and i1 %i.eu, %i.ex
  %i.ez = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.fa = trunc i64 %i.ez to i8                   ; 2 uses
  %i.fb = icmp ne i8 %i.fa, -1
  %i.fc = and i1 %i.fb, %i.ey
  %i.fd = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.fe = icmp ne i64 %i.fd, 4278190080
  %i.ff = and i1 %i.fe, %i.fc
  br i1 %i.ff, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fg = zext nneg i32 %.sroa.48.14859 to i64    ; 8 uses
  %i.fh = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.fg, 8
  %i.fi = sub nuw nsw i64 56, %i.fg
  %i.fj = shl nuw i64 %i.fh, %i.fi
  %i.fk = or i64 %i.fj, %.sroa.0289.13860         ; 2 uses
  %.not.i171 = icmp eq i8 %i.et, -1
  br i1 %.not.i171, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fl = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.fm = tail call i32 @llvm.bswap.i32(i32 %i.fl)
  %i.fn = zext i32 %i.fm to i64
  %i.fo = sub nuw nsw i32 32, %.sroa.48.14859
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = shl nuw i64 %i.fn, %i.fp
  %i.fr = or i64 %i.fq, %.sroa.0289.13860
  %i.fs = or disjoint i32 %.sroa.48.14859, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.v:                                             ; preds = %.preheader.i
  %i.ft = icmp eq i8 %i.ew, 0
  br i1 %i.ft, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v
  %.062.lcssa.i.neg920 = phi i32 [ 0, %bb.v ], [ -1, %bb.y ], [ -2, %bb.aa ], [ -3, %bb.ac ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.v ], [ %.2.ph.i, %bb.y ], [ %i.gl, %bb.aa ], [ %i.gw, %bb.ac ]
  %.lcssa66.wide.i = phi i64 [ %i.fg, %bb.v ], [ %indvars.iv.next.i, %bb.y ], [ %indvars.iv.next.1.i, %bb.aa ], [ %indvars.iv.next.2.i, %bb.ac ]
  %.lcssa.i = phi i64 [ %i.fk, %bb.v ], [ %i.gf, %bb.y ], [ %i.gs, %bb.aa ], [ %i.hd, %bb.ac ]
  %i.fu = add nuw nsw i32 %.01861.lcssa.i, %.sroa.137365.10856
  %i.fv = icmp slt i32 %.sroa.169393.10855, 0
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = lshr i64 -1, %.lcssa66.wide.i
  %i.fx = xor i64 %i.fw, -1
  %i.fy = and i64 %.lcssa.i, %i.fx
  %.neg752 = sub nsw i32 %i.do, %.sroa.137365.10856
  %reass.sub.i = add nsw i32 %.neg752, %.062.lcssa.i.neg920 ; 2 uses
  %i.fz = add nuw nsw i32 %reass.sub.i, 4
  %i.ga = icmp ugt i32 %reass.sub.i, 1
  tail call void @llvm.assume(i1 %i.ga)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v, %.preheader.i
  %i.gb = phi i8 [ %i.ew, %.preheader.i ], [ %i.fa, %bb.v ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.v ] ; 3 uses
  %i.gc = zext i8 %i.gb to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.fg, 16
  %i.gd = sub nuw nsw i64 48, %i.fg
  %i.ge = shl nuw nsw i64 %i.gc, %i.gd
  %i.gf = or i64 %i.ge, %i.fk                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.gb, -1
  br i1 %.not.1.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gg = zext nneg i32 %.2.ph.i to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !140
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi3ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.aw = udiv i64 %i.av, %i.au                   ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, 1                    ; 2 uses
  %i.az = icmp ne i32 %i.ay, 0
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.020.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 3 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.221.0.copyload = load i32, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !22 ; 7 uses
  %i.bb = icmp sgt i32 %.sroa.221.0.copyload, -1
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !24 ; 3 uses
  %i.be = ptrtoaddr ptr %i.bd to i64
  %i.bf = icmp eq ptr %i.al, %i.bd
  %.not33904 = icmp eq i32 %i.as, 0
  %i.bg = icmp sgt i32 %i.x, -1
  %i.bh = icmp sgt i32 %i.z, -1
  %.sroa.0226.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bi = icmp samesign ugt i32 %i.x, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %invariant.op = add i32 %i.x, -3
  %i.bk = icmp sgt i32 %i.n, 2                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = zext nneg i32 %.sroa.221.0.copyload to i64
  %i.bo = zext i32 %invariant.op to i64
  %i.bp = zext i32 %i.x to i64
  %i.bq = zext nneg i32 %i.n to i64
  %i.br = zext i32 %i.as to i64
  %i.bs = and i64 %i.aw, 4294967295
  %i.bt = zext nneg i32 %i.ay to i64
  %i.bu = add i64 %i.be, -16
  %i.bv = sub i64 %i.bu, %i.am                    ; 3 uses
  %i.bw = lshr i64 %i.bv, 4
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.bv, 64
  %min.iters.check1055 = icmp ult i64 %i.bv, 256
  %i.by = and i64 %i.bx, 15                       ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 16, i64 %i.by      ; 2 uses
  %n.vec = sub nsw i64 %i.bx, %i.ca               ; 4 uses
  %i.cb = shl nsw i64 %n.vec, 1
  %i.cc = getelementptr i8, ptr %4, i64 %i.cb
  %i.cd = shl i64 %n.vec, 4
  %i.ce = getelementptr i8, ptr %i.al, i64 %i.cd
  %min.epilog.iters.check = icmp samesign ult i64 %i.ca, 5
  %i.cf = and i64 %i.bx, 3                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = select i1 %i.cg, i64 4, i64 %i.cf
  %n.vec1058 = sub nsw i64 %i.bx, %i.ch           ; 3 uses
  %i.ci = shl nsw i64 %n.vec1058, 1
  %i.cj = getelementptr i8, ptr %4, i64 %i.ci
  %i.ck = shl i64 %n.vec1058, 4
  %i.cl = getelementptr i8, ptr %i.al, i64 %i.ck
  br label %bb.b

bb.a:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  ret i32 %i.yh

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  %indvars.iv966 = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next967, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  %.sroa.10425.0916 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.yh, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.bf, label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1055, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.cm = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %4, i64 %i.cm
  %i.cn = shl i64 %index, 4
  %next.gep1056 = getelementptr i8, ptr %i.al, i64 %i.cn
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep1056, i64 8
  %wide.vec = load <128 x i16>, ptr %i.co, align 8, !tbaa !148
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 8, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !208

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1059 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1064, %vec.epilog.vector.body ] ; 3 uses
  %i.cq = shl i64 %index1059, 1
  %next.gep1060 = getelementptr i8, ptr %4, i64 %i.cq
  %i.cr = shl i64 %index1059, 4
  %next.gep1061 = getelementptr i8, ptr %i.al, i64 %i.cr
  %i.cs = getelementptr inbounds nuw i8, ptr %next.gep1061, i64 8
  %wide.vec1062 = load <32 x i16>, ptr %i.cs, align 8, !tbaa !148
  %strided.vec1063 = shufflevector <32 x i16> %wide.vec1062, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec1063, ptr %next.gep1060, align 2, !tbaa !149
  %index.next1064 = add nuw i64 %index1059, 4     ; 2 uses
  %i.ct = icmp eq i64 %index.next1064, %n.vec1058
  br i1 %i.ct, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !209

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.al, %iter.check ], [ %i.ce, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.cv = load i16, ptr %i.cu, align 8, !tbaa !148
  store i16 %i.cv, ptr %.07.i.i, align 2, !tbaa !149
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.cy = icmp eq ptr %i.cw, %i.bd
  br i1 %i.cy, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi3EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !210

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi3EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.0.copyload.pre.i = load i48, ptr %4, align 8
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi3EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %.0.copyload.i = phi i48 [ %.0.copyload.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi3EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i48 %.0.copyload.i, ptr %6, align 8
  %.not31 = icmp eq i64 %indvars.iv966, 0
  br i1 %.not31, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10425.0916, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.cz = add nuw nsw i32 %.sroa.10425.0916, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.cz, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.da = zext nneg i32 %.sroa.10425.0916 to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.da
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.db, align 1
  %i.dc = zext nneg i32 %i.cz to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dc
  %.0.copyload.i.i.i.i.i10.i = load i8, ptr %i.dd, align 1 ; 3 uses
  %i.de = icmp ne i8 %.0.copyload.i.i.i.i.i.i, -1
  %i.df = add i8 %.0.copyload.i.i.i.i.i10.i, 1
  %i.dg = icmp ult i8 %i.df, 2
  %or.cond5.i.not = or i1 %i.de, %i.dg
  br i1 %or.cond5.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  %i.dh = and i8 %.0.copyload.i.i.i.i.i10.i, -8
  %switch.i.not = icmp eq i8 %i.dh, -48
  br i1 %switch.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.di = zext i8 %.0.copyload.i.i.i.i.i10.i to i32
  %i.dj = add nsw i32 %i.di, -208
  %i.dk = trunc i64 %indvars.iv966 to i32
  %i.dl = add i32 %i.dk, -1
  %i.dm = srem i32 %i.dl, 8
  %.not32 = icmp eq i32 %i.dj, %i.dm
  br i1 %.not32, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dn = add nuw nsw i32 %.sroa.10425.0916, 2    ; 2 uses
  %i.do = icmp samesign ule i32 %i.dn, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.do)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit
  %.sroa.10425.1 = phi i32 [ %.sroa.10425.0916, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit ], [ %i.dn, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dp = zext i32 %.sroa.10425.1 to i64          ; 2 uses
  %i.dq = sub nuw nsw i32 %.sroa.221.0.copyload, %.sroa.10425.1 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dp ; 6 uses
  %i.ds = icmp samesign ult i32 %i.dq, 8
  br i1 %i.ds, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not33904, label %.loopexit755.thread, label %.lr.ph911

.lr.ph911:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.dt = mul nsw i64 %indvars.iv966, %i.au
  %i.du = add nuw nsw i32 %i.dq, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph911, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv963 = phi i64 [ 0, %.lr.ph911 ], [ %indvars.iv.next964, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0285.0909 = phi i64 [ 0, %.lr.ph911 ], [ %.sroa.0285.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.48.0908 = phi i32 [ 0, %.lr.ph911 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.137361.0907 = phi i32 [ 0, %.lr.ph911 ], [ %.sroa.137361.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.169389.0906 = phi i32 [ -1, %.lr.ph911 ], [ %.sroa.169389.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.0400.0905 = phi ptr [ %6, %.lr.ph911 ], [ %i.ec, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.dv = add nsw i64 %indvars.iv963, %i.dt       ; 5 uses
  %i.dw = icmp sgt i64 %i.dv, -1
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp sle i64 %i.dv, %i.at
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = trunc nuw nsw i64 %i.dv to i32
  %.not34 = icmp eq i32 %i.z, %i.dy
  br i1 %.not34, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.dz = icmp eq i64 %indvars.iv966, %i.bs
  tail call void @llvm.assume(i1 %i.dz)
  br label %.loopexit755

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bg)
  tail call void @llvm.assume(i1 %i.bh)
  %i.ea = icmp samesign ult i64 %i.dv, %i.at
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = mul nuw nsw i64 %i.dv, %i.bq
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.eb ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.ao, ptr %5, align 16
  store ptr %i.aq, ptr %.sroa.0226.sroa.3.0..sroa_idx, align 16
  tail call void @llvm.assume(i1 %i.bi)
  %i.ed = load i32, ptr %i.bj, align 4, !tbaa !37 ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bk)
  %wide.trip.count = zext nneg i32 %i.ed to i64
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.loopexit
  %indvars.iv953 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next954, %.loopexit ] ; 2 uses
  %.sroa.0507.0869 = phi ptr [ %.sroa.0400.0905, %.lr.ph ], [ %i.eh, %.loopexit ]
  %.sroa.0285.2868 = phi i64 [ %.sroa.0285.0909, %.lr.ph ], [ %.sroa.0285.14, %.loopexit ]
  %.sroa.48.3867 = phi i32 [ %.sroa.48.0908, %.lr.ph ], [ %.sroa.48.15, %.loopexit ]
  %.sroa.137361.3866 = phi i32 [ %.sroa.137361.0907, %.lr.ph ], [ %.sroa.137361.11, %.loopexit ]
  %.sroa.169389.3865 = phi i32 [ %.sroa.169389.0906, %.lr.ph ], [ %.sroa.169389.11, %.loopexit ]
  %i.ef = mul nuw nsw i64 %indvars.iv953, 3       ; 2 uses
  %i.eg = icmp samesign ule i64 %i.ef, %i.bo
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.ef ; 3 uses
  br label %bb.o

.loopexit:                                        ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %indvars.iv.next954 = add nuw nsw i64 %indvars.iv953, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next954, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !211

bb.o:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %.sroa.0285.13859 = phi i64 [ %.sroa.0285.2868, %.preheader ], [ %.sroa.0285.14, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 3 uses
  %.sroa.48.14858 = phi i32 [ %.sroa.48.3867, %.preheader ], [ %.sroa.48.15, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 7 uses
  %.sroa.137361.10855 = phi i32 [ %.sroa.137361.3866, %.preheader ], [ %.sroa.137361.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 8 uses
  %.sroa.169389.10854 = phi i32 [ %.sroa.169389.3865, %.preheader ], [ %.sroa.169389.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0507.0869, i64 %indvars.iv
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !149
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !165 ; 8 uses
  %i.em = icmp samesign ult i32 %.sroa.48.14858, 65
  tail call void @llvm.assume(i1 %i.em)
  %.not.i51 = icmp samesign ult i32 %.sroa.48.14858, 32
  br i1 %.not.i51, label %bb.p, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.en = add nuw nsw i32 %.sroa.137361.10855, 8
  %.not.i.i52 = icmp samesign ugt i32 %i.en, %i.dq
  br i1 %.not.i.i52, label %bb.r, label %bb.q, !prof !141

bb.q:                                             ; preds = %bb.p
  %i.eo = zext nneg i32 %.sroa.137361.10855 to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.eo
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.eq = icmp samesign ugt i32 %.sroa.137361.10855, %i.du
  br i1 %i.eq, label %bb.s, label %bb.t, !prof !141

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.t:                                             ; preds = %bb.r
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %.sroa.137361.10855) ; 3 uses
  %i.er = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.er)
  %i.es = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.et = icmp samesign ult i32 %i.es, 9
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.eu
  %i.ew = zext nneg i32 %i.es to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.ev, i64 %i.ew, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.t ], [ %i.ep, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %3, align 8
  %i.ex = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.ey = icmp ne i8 %i.ex, -1
  %i.ez = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.fa = trunc i64 %i.ez to i8                   ; 3 uses
  %i.fb = icmp ne i8 %i.fa, -1
  %i.fc = and i1 %i.ey, %i.fb
  %i.fd = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.fe = trunc i64 %i.fd to i8                   ; 2 uses
  %i.ff = icmp ne i8 %i.fe, -1
  %i.fg = and i1 %i.ff, %i.fc
  %i.fh = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.fi = icmp ne i64 %i.fh, 4278190080
  %i.fj = and i1 %i.fi, %i.fg
  br i1 %i.fj, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fk = zext nneg i32 %.sroa.48.14858 to i64    ; 8 uses
  %i.fl = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.fk, 8
  %i.fm = sub nuw nsw i64 56, %i.fk
  %i.fn = shl nuw i64 %i.fl, %i.fm
  %i.fo = or i64 %i.fn, %.sroa.0285.13859         ; 2 uses
  %.not.i166 = icmp eq i8 %i.ex, -1
  br i1 %.not.i166, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fp = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.fq = tail call i32 @llvm.bswap.i32(i32 %i.fp)
  %i.fr = zext i32 %i.fq to i64
  %i.fs = sub nuw nsw i32 32, %.sroa.48.14858
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = shl nuw i64 %i.fr, %i.ft
  %i.fv = or i64 %i.fu, %.sroa.0285.13859
  %i.fw = or disjoint i32 %.sroa.48.14858, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.v:                                             ; preds = %.preheader.i
  %i.fx = icmp eq i8 %i.fa, 0
  br i1 %i.fx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v
  %.062.lcssa.i.neg919 = phi i32 [ 0, %bb.v ], [ -1, %bb.y ], [ -2, %bb.aa ], [ -3, %bb.ac ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.v ], [ %.2.ph.i, %bb.y ], [ %i.gp, %bb.aa ], [ %i.ha, %bb.ac ]
  %.lcssa66.wide.i = phi i64 [ %i.fk, %bb.v ], [ %indvars.iv.next.i, %bb.y ], [ %indvars.iv.next.1.i, %bb.aa ], [ %indvars.iv.next.2.i, %bb.ac ]
  %.lcssa.i = phi i64 [ %i.fo, %bb.v ], [ %i.gj, %bb.y ], [ %i.gw, %bb.aa ], [ %i.hh, %bb.ac ]
  %i.fy = add nuw nsw i32 %.01861.lcssa.i, %.sroa.137361.10855
  %i.fz = icmp slt i32 %.sroa.169389.10854, 0
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = lshr i64 -1, %.lcssa66.wide.i
  %i.gb = xor i64 %i.ga, -1
  %i.gc = and i64 %.lcssa.i, %i.gb
  %.neg751 = sub nsw i32 %i.dq, %.sroa.137361.10855
  %reass.sub.i = add nsw i32 %.neg751, %.062.lcssa.i.neg919 ; 2 uses
  %i.gd = add nuw nsw i32 %reass.sub.i, 4
  %i.ge = icmp ugt i32 %reass.sub.i, 1
  tail call void @llvm.assume(i1 %i.ge)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v, %.preheader.i
  %i.gf = phi i8 [ %i.fa, %.preheader.i ], [ %i.fe, %bb.v ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.v ] ; 3 uses
  %i.gg = zext i8 %i.gf to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.fk, 16
  %i.gh = sub nuw nsw i64 48, %i.fk
  %i.gi = shl nuw nsw i64 %i.gg, %i.gh
  %i.gj = or i64 %i.gi, %i.fo                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.gf, -1
  br i1 %.not.1.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gk = zext nneg i32 %.2.ph.i to i64
end_hunk_1
begin_hunk_2_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi4ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.av = udiv i64 %i.au, %i.at                   ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  %i.ay = icmp ne i32 %i.ax, 0
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.020.0.copyload = load ptr, ptr %i.az, align 8, !tbaa !21 ; 3 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.221.0.copyload = load i32, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !22 ; 7 uses
  %i.ba = icmp sgt i32 %.sroa.221.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !24 ; 3 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64
  %i.be = icmp eq ptr %i.al, %i.bc
  %.not33905 = icmp eq i32 %i.ar, 0
  %i.bf = icmp sgt i32 %i.x, -1
  %i.bg = icmp sgt i32 %i.z, -1
  %i.bh = icmp samesign ugt i32 %i.x, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 92
  %invariant.op = add i32 %i.x, -4
  %i.bj = icmp sgt i32 %i.n, 3                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = zext nneg i32 %.sroa.221.0.copyload to i64
  %i.bn = zext i32 %invariant.op to i64
  %i.bo = zext i32 %i.x to i64
  %i.bp = zext nneg i32 %i.n to i64
  %i.bq = zext i32 %i.ar to i64
  %i.br = and i64 %i.av, 4294967295
  %i.bs = zext nneg i32 %i.ax to i64
  %i.bt = add i64 %i.bd, -16
  %i.bu = sub i64 %i.bt, %i.am                    ; 3 uses
  %i.bv = lshr i64 %i.bu, 4
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.bu, 64
  %min.iters.check1056 = icmp ult i64 %i.bu, 256
  %i.bx = and i64 %i.bw, 15                       ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 16, i64 %i.bx      ; 2 uses
  %n.vec = sub nsw i64 %i.bw, %i.bz               ; 4 uses
  %i.ca = shl nsw i64 %n.vec, 1
  %i.cb = getelementptr i8, ptr %4, i64 %i.ca
  %i.cc = shl i64 %n.vec, 4
  %i.cd = getelementptr i8, ptr %i.al, i64 %i.cc
  %min.epilog.iters.check = icmp samesign ult i64 %i.bz, 5
  %i.ce = and i64 %i.bw, 3                        ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = select i1 %i.cf, i64 4, i64 %i.ce
  %n.vec1059 = sub nsw i64 %i.bw, %i.cg           ; 3 uses
  %i.ch = shl nsw i64 %n.vec1059, 1
  %i.ci = getelementptr i8, ptr %4, i64 %i.ch
  %i.cj = shl i64 %n.vec1059, 4
  %i.ck = getelementptr i8, ptr %i.al, i64 %i.cj
  %i.cl = shufflevector <3 x ptr> %i.ao, <3 x ptr> %i.ap, <4 x i32> <i32 0, i32 2, i32 3, i32 5>
  br label %bb.b

bb.a:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  ret i32 %i.yi

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  %indvars.iv967 = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next968, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  %.sroa.10425.0917 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.yi, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.be, label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1056, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.cm = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %4, i64 %i.cm
  %i.cn = shl i64 %index, 4
  %next.gep1057 = getelementptr i8, ptr %i.al, i64 %i.cn
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep1057, i64 8
  %wide.vec = load <128 x i16>, ptr %i.co, align 8, !tbaa !148
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 8, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !226

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1060 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1065, %vec.epilog.vector.body ] ; 3 uses
  %i.cq = shl i64 %index1060, 1
  %next.gep1061 = getelementptr i8, ptr %4, i64 %i.cq
  %i.cr = shl i64 %index1060, 4
  %next.gep1062 = getelementptr i8, ptr %i.al, i64 %i.cr
  %i.cs = getelementptr inbounds nuw i8, ptr %next.gep1062, i64 8
  %wide.vec1063 = load <32 x i16>, ptr %i.cs, align 8, !tbaa !148
  %strided.vec1064 = shufflevector <32 x i16> %wide.vec1063, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec1064, ptr %next.gep1061, align 2, !tbaa !149
  %index.next1065 = add nuw i64 %index1060, 4     ; 2 uses
  %i.ct = icmp eq i64 %index.next1065, %n.vec1059
  br i1 %i.ct, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !227

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.al, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.cv = load i16, ptr %i.cu, align 8, !tbaa !148
  store i16 %i.cv, ptr %.07.i.i, align 2, !tbaa !149
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.cy = icmp eq ptr %i.cw, %i.bc
  br i1 %i.cy, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !228

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i64, ptr %4, align 8
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %i.cz = phi i64 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %i.cz, ptr %6, align 8
  %.not31 = icmp eq i64 %indvars.iv967, 0
  br i1 %.not31, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10425.0917, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.da = add nuw nsw i32 %.sroa.10425.0917, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.da, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.db = zext nneg i32 %.sroa.10425.0917 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.db
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.dc, align 1
  %i.dd = zext nneg i32 %i.da to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dd
  %.0.copyload.i.i.i.i.i10.i = load i8, ptr %i.de, align 1 ; 3 uses
  %i.df = icmp ne i8 %.0.copyload.i.i.i.i.i.i, -1
  %i.dg = add i8 %.0.copyload.i.i.i.i.i10.i, 1
  %i.dh = icmp ult i8 %i.dg, 2
  %or.cond5.i.not = or i1 %i.df, %i.dh
  br i1 %or.cond5.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  %i.di = and i8 %.0.copyload.i.i.i.i.i10.i, -8
  %switch.i.not = icmp eq i8 %i.di, -48
  br i1 %switch.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.dj = zext i8 %.0.copyload.i.i.i.i.i10.i to i32
  %i.dk = add nsw i32 %i.dj, -208
  %i.dl = trunc i64 %indvars.iv967 to i32
  %i.dm = add i32 %i.dl, -1
  %i.dn = srem i32 %i.dm, 8
  %.not32 = icmp eq i32 %i.dk, %i.dn
  br i1 %.not32, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.do = add nuw nsw i32 %.sroa.10425.0917, 2    ; 2 uses
  %i.dp = icmp samesign ule i32 %i.do, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.dp)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %.sroa.10425.1 = phi i32 [ %.sroa.10425.0917, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit ], [ %i.do, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dq = zext i32 %.sroa.10425.1 to i64          ; 2 uses
  %i.dr = sub nuw nsw i32 %.sroa.221.0.copyload, %.sroa.10425.1 ; 14 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dq ; 6 uses
  %i.dt = icmp samesign ult i32 %i.dr, 8
  br i1 %i.dt, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not33905, label %.loopexit756.thread, label %.lr.ph912

.lr.ph912:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.du = mul nsw i64 %indvars.iv967, %i.at
  %i.dv = add nuw nsw i32 %i.dr, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph912, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv964 = phi i64 [ 0, %.lr.ph912 ], [ %indvars.iv.next965, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0285.0910 = phi i64 [ 0, %.lr.ph912 ], [ %.sroa.0285.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.48.0909 = phi i32 [ 0, %.lr.ph912 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.137361.0908 = phi i32 [ 0, %.lr.ph912 ], [ %.sroa.137361.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.169389.0907 = phi i32 [ -1, %.lr.ph912 ], [ %.sroa.169389.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.0400.0906 = phi ptr [ %6, %.lr.ph912 ], [ %i.ed, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.dw = add nsw i64 %indvars.iv964, %i.du       ; 5 uses
  %i.dx = icmp sgt i64 %i.dw, -1
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp sle i64 %i.dw, %i.as
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = trunc nuw nsw i64 %i.dw to i32
  %.not34 = icmp eq i32 %i.z, %i.dz
  br i1 %.not34, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.ea = icmp eq i64 %indvars.iv967, %i.br
  tail call void @llvm.assume(i1 %i.ea)
  br label %.loopexit756

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bf)
  tail call void @llvm.assume(i1 %i.bg)
  %i.eb = icmp samesign ult i64 %i.dw, %i.as
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = mul nuw nsw i64 %i.dw, %i.bp
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ec ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <4 x ptr> %i.cl, ptr %5, align 8
  tail call void @llvm.assume(i1 %i.bh)
  %i.ee = load i32, ptr %i.bi, align 4, !tbaa !37 ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bj)
  %wide.trip.count = zext nneg i32 %i.ee to i64
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.loopexit
  %indvars.iv954 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next955, %.loopexit ] ; 2 uses
  %.sroa.0508.0870 = phi ptr [ %.sroa.0400.0906, %.lr.ph ], [ %i.ei, %.loopexit ]
  %.sroa.0285.2869 = phi i64 [ %.sroa.0285.0910, %.lr.ph ], [ %.sroa.0285.14, %.loopexit ]
  %.sroa.48.3868 = phi i32 [ %.sroa.48.0909, %.lr.ph ], [ %.sroa.48.15, %.loopexit ]
  %.sroa.137361.3867 = phi i32 [ %.sroa.137361.0908, %.lr.ph ], [ %.sroa.137361.11, %.loopexit ]
  %.sroa.169389.3866 = phi i32 [ %.sroa.169389.0907, %.lr.ph ], [ %.sroa.169389.11, %.loopexit ]
  %i.eg = shl nuw nsw i64 %indvars.iv954, 2       ; 2 uses
  %i.eh = icmp samesign ule i64 %i.eg, %i.bn
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.eg ; 3 uses
  br label %bb.o

.loopexit:                                        ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %indvars.iv.next955 = add nuw nsw i64 %indvars.iv954, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next955, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !229

bb.o:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %.sroa.0285.13860 = phi i64 [ %.sroa.0285.2869, %.preheader ], [ %.sroa.0285.14, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 3 uses
  %.sroa.48.14859 = phi i32 [ %.sroa.48.3868, %.preheader ], [ %.sroa.48.15, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 7 uses
  %.sroa.137361.10856 = phi i32 [ %.sroa.137361.3867, %.preheader ], [ %.sroa.137361.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 8 uses
  %.sroa.169389.10855 = phi i32 [ %.sroa.169389.3866, %.preheader ], [ %.sroa.169389.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0508.0870, i64 %indvars.iv
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !149
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !165 ; 8 uses
  %i.en = icmp samesign ult i32 %.sroa.48.14859, 65
  tail call void @llvm.assume(i1 %i.en)
  %.not.i51 = icmp samesign ult i32 %.sroa.48.14859, 32
  br i1 %.not.i51, label %bb.p, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.eo = add nuw nsw i32 %.sroa.137361.10856, 8
  %.not.i.i52 = icmp samesign ugt i32 %i.eo, %i.dr
  br i1 %.not.i.i52, label %bb.r, label %bb.q, !prof !141

bb.q:                                             ; preds = %bb.p
  %i.ep = zext nneg i32 %.sroa.137361.10856 to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ep
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.er = icmp samesign ugt i32 %.sroa.137361.10856, %i.dv
  br i1 %i.er, label %bb.s, label %bb.t, !prof !141

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.t:                                             ; preds = %bb.r
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 %.sroa.137361.10856) ; 3 uses
  %i.es = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 %i.es)
  %i.et = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.eu = icmp samesign ult i32 %i.et, 9
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ev
  %i.ex = zext nneg i32 %i.et to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.ew, i64 %i.ex, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.t ], [ %i.eq, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %3, align 8
  %i.ey = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.ez = icmp ne i8 %i.ey, -1
  %i.fa = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.fb = trunc i64 %i.fa to i8                   ; 3 uses
  %i.fc = icmp ne i8 %i.fb, -1
  %i.fd = and i1 %i.ez, %i.fc
  %i.fe = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.ff = trunc i64 %i.fe to i8                   ; 2 uses
  %i.fg = icmp ne i8 %i.ff, -1
  %i.fh = and i1 %i.fg, %i.fd
  %i.fi = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.fj = icmp ne i64 %i.fi, 4278190080
  %i.fk = and i1 %i.fj, %i.fh
  br i1 %i.fk, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fl = zext nneg i32 %.sroa.48.14859 to i64    ; 8 uses
  %i.fm = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.fl, 8
  %i.fn = sub nuw nsw i64 56, %i.fl
  %i.fo = shl nuw i64 %i.fm, %i.fn
  %i.fp = or i64 %i.fo, %.sroa.0285.13860         ; 2 uses
  %.not.i166 = icmp eq i8 %i.ey, -1
  br i1 %.not.i166, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fq = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.fr = tail call i32 @llvm.bswap.i32(i32 %i.fq)
  %i.fs = zext i32 %i.fr to i64
  %i.ft = sub nuw nsw i32 32, %.sroa.48.14859
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = shl nuw i64 %i.fs, %i.fu
  %i.fw = or i64 %i.fv, %.sroa.0285.13860
  %i.fx = or disjoint i32 %.sroa.48.14859, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.v:                                             ; preds = %.preheader.i
  %i.fy = icmp eq i8 %i.fb, 0
  br i1 %i.fy, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v
  %.062.lcssa.i.neg920 = phi i32 [ 0, %bb.v ], [ -1, %bb.y ], [ -2, %bb.aa ], [ -3, %bb.ac ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.v ], [ %.2.ph.i, %bb.y ], [ %i.gq, %bb.aa ], [ %i.hb, %bb.ac ]
  %.lcssa66.wide.i = phi i64 [ %i.fl, %bb.v ], [ %indvars.iv.next.i, %bb.y ], [ %indvars.iv.next.1.i, %bb.aa ], [ %indvars.iv.next.2.i, %bb.ac ]
  %.lcssa.i = phi i64 [ %i.fp, %bb.v ], [ %i.gk, %bb.y ], [ %i.gx, %bb.aa ], [ %i.hi, %bb.ac ]
  %i.fz = add nuw nsw i32 %.01861.lcssa.i, %.sroa.137361.10856
  %i.ga = icmp slt i32 %.sroa.169389.10855, 0
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = lshr i64 -1, %.lcssa66.wide.i
  %i.gc = xor i64 %i.gb, -1
  %i.gd = and i64 %.lcssa.i, %i.gc
  %.neg752 = sub nsw i32 %i.dr, %.sroa.137361.10856
  %reass.sub.i = add nsw i32 %.neg752, %.062.lcssa.i.neg920 ; 2 uses
  %i.ge = add nuw nsw i32 %reass.sub.i, 4
  %i.gf = icmp ugt i32 %reass.sub.i, 1
  tail call void @llvm.assume(i1 %i.gf)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v, %.preheader.i
  %i.gg = phi i8 [ %i.fb, %.preheader.i ], [ %i.ff, %bb.v ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.v ] ; 3 uses
  %i.gh = zext i8 %i.gg to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.fl, 16
  %i.gi = sub nuw nsw i64 48, %i.fl
  %i.gj = shl nuw nsw i64 %i.gh, %i.gi
  %i.gk = or i64 %i.gj, %i.fp                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.gg, -1
  br i1 %.not.1.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gl = zext nneg i32 %.2.ph.i to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 %i.gl
end_hunk_2
begin_hunk_3_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi2EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.020.0.copyload = load ptr, ptr %i.bc, align 8, !tbaa !21 ; 3 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.221.0.copyload = load i32, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !22 ; 7 uses
  %i.bd = icmp sgt i32 %.sroa.221.0.copyload, -1
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !24 ; 3 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = icmp eq ptr %i.al, %i.bf
  %.not33913 = icmp eq i32 %i.at, 0
  %i.bi = icmp sgt i32 %i.x, -1
  %i.bj = icmp sgt i32 %i.z, -1
  %i.bk = and i32 %i.m, -2
  %i.bl = icmp samesign ugt i32 %i.x, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 92
  %invariant.op = add i32 %i.x, -2
  %i.bn = icmp samesign ule i32 %i.x, %i.bk       ; 2 uses
  %i.bo = icmp sgt i32 %i.n, 1                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = zext nneg i32 %.sroa.221.0.copyload to i64
  %i.bs = zext nneg i32 %i.n to i64               ; 2 uses
  %i.bt = zext i32 %invariant.op to i64
  %i.bu = zext i32 %i.x to i64
  %i.bv = sext i32 %i.z to i64                    ; 2 uses
  %i.bw = zext nneg i32 %i.n to i64
  %i.bx = zext i32 %i.at to i64
  %i.by = and i64 %i.ax, 4294967295
  %i.bz = zext nneg i32 %i.az to i64
  %i.ca = add i64 %i.bg, -16
  %i.cb = sub i64 %i.ca, %i.am                    ; 3 uses
  %i.cc = lshr i64 %i.cb, 4
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.cb, 64
  %min.iters.check1074 = icmp ult i64 %i.cb, 256
  %i.ce = and i64 %i.cd, 15                       ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = select i1 %i.cf, i64 16, i64 %i.ce      ; 2 uses
  %n.vec = sub nsw i64 %i.cd, %i.cg               ; 4 uses
  %i.ch = shl nsw i64 %n.vec, 1
  %i.ci = getelementptr i8, ptr %4, i64 %i.ch
  %i.cj = shl i64 %n.vec, 4
  %i.ck = getelementptr i8, ptr %i.al, i64 %i.cj
  %min.epilog.iters.check = icmp samesign ult i64 %i.cg, 5
  %i.cl = and i64 %i.cd, 3                        ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = select i1 %i.cm, i64 4, i64 %i.cl
  %n.vec1077 = sub nsw i64 %i.cd, %i.cn           ; 3 uses
  %i.co = shl nsw i64 %n.vec1077, 1
  %i.cp = getelementptr i8, ptr %4, i64 %i.co
  %i.cq = shl i64 %n.vec1077, 4
  %i.cr = getelementptr i8, ptr %i.al, i64 %i.cq
  %i.cs = shufflevector <3 x ptr> %i.ao, <3 x ptr> %i.ap, <4 x i32> <i32 0, i32 2, i32 3, i32 5>
  br label %bb.b

bb.a:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  ret i32 %i.yy

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  %indvars.iv983 = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next984, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  %.sroa.10425.0927 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.yy, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  br i1 %i.bh, label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1074, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ct = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %4, i64 %i.ct
  %i.cu = shl i64 %index, 4
  %next.gep1075 = getelementptr i8, ptr %i.al, i64 %i.cu
  %i.cv = getelementptr inbounds nuw i8, ptr %next.gep1075, i64 8
  %wide.vec = load <128 x i16>, ptr %i.cv, align 8, !tbaa !148
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 8, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !244

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1078 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1083, %vec.epilog.vector.body ] ; 3 uses
  %i.cx = shl i64 %index1078, 1
  %next.gep1079 = getelementptr i8, ptr %4, i64 %i.cx
  %i.cy = shl i64 %index1078, 4
  %next.gep1080 = getelementptr i8, ptr %i.al, i64 %i.cy
  %i.cz = getelementptr inbounds nuw i8, ptr %next.gep1080, i64 8
  %wide.vec1081 = load <32 x i16>, ptr %i.cz, align 8, !tbaa !148
  %strided.vec1082 = shufflevector <32 x i16> %wide.vec1081, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec1082, ptr %next.gep1079, align 2, !tbaa !149
  %index.next1083 = add nuw i64 %index1078, 4     ; 2 uses
  %i.da = icmp eq i64 %index.next1083, %n.vec1077
  br i1 %i.da, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !245

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.ci, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.al, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.dc = load i16, ptr %i.db, align 8, !tbaa !148
  store i16 %i.dc, ptr %.07.i.i, align 2, !tbaa !149
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.df = icmp eq ptr %i.dd, %i.bf
  br i1 %i.df, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !246

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i64, ptr %4, align 8
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %i.dg = phi i64 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %i.dg, ptr %6, align 8
  %.not31 = icmp eq i64 %indvars.iv983, 0
  br i1 %.not31, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10425.0927, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.dh = add nuw nsw i32 %.sroa.10425.0927, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.dh, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.di = zext nneg i32 %.sroa.10425.0927 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.di
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.dj, align 1
  %i.dk = zext nneg i32 %i.dh to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dk
  %.0.copyload.i.i.i.i.i10.i = load i8, ptr %i.dl, align 1 ; 3 uses
  %i.dm = icmp ne i8 %.0.copyload.i.i.i.i.i.i, -1
  %i.dn = add i8 %.0.copyload.i.i.i.i.i10.i, 1
  %i.do = icmp ult i8 %i.dn, 2
  %or.cond5.i.not = or i1 %i.dm, %i.do
  br i1 %or.cond5.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit
  %i.dp = and i8 %.0.copyload.i.i.i.i.i10.i, -8
  %switch.i.not = icmp eq i8 %i.dp, -48
  br i1 %switch.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.dq = zext i8 %.0.copyload.i.i.i.i.i10.i to i32
  %i.dr = add nsw i32 %i.dq, -208
  %i.ds = trunc i64 %indvars.iv983 to i32
  %i.dt = add i32 %i.ds, -1
  %i.du = srem i32 %i.dt, 8
  %.not32 = icmp eq i32 %i.dr, %i.du
  br i1 %.not32, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dv = add nuw nsw i32 %.sroa.10425.0927, 2    ; 2 uses
  %i.dw = icmp samesign ule i32 %i.dv, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.dw)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %.sroa.10425.1 = phi i32 [ %.sroa.10425.0927, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit ], [ %i.dv, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dx = zext i32 %.sroa.10425.1 to i64          ; 2 uses
  %i.dy = sub nuw nsw i32 %.sroa.221.0.copyload, %.sroa.10425.1 ; 14 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dx ; 6 uses
  %i.ea = icmp samesign ult i32 %i.dy, 8
  br i1 %i.ea, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not33913, label %.loopexit.thread, label %.lr.ph922

.lr.ph922:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.eb = mul nsw i64 %indvars.iv983, %i.av
  %i.ec = add nuw nsw i32 %i.dy, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph922, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv980 = phi i64 [ 0, %.lr.ph922 ], [ %indvars.iv.next981, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0285.0920 = phi i64 [ 0, %.lr.ph922 ], [ %.sroa.0285.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.48.0919 = phi i32 [ 0, %.lr.ph922 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.137361.0918 = phi i32 [ 0, %.lr.ph922 ], [ %.sroa.137361.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.169389.0917 = phi i32 [ -1, %.lr.ph922 ], [ %.sroa.169389.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.0400.0916 = phi ptr [ %6, %.lr.ph922 ], [ %i.el, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.8403.0914 = phi i32 [ 2, %.lr.ph922 ], [ %i.n, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.ed = add nsw i64 %indvars.iv980, %i.eb       ; 2 uses
  %i.ee = shl nuw nsw i64 %i.ed, 1                ; 4 uses
  %i.ef = icmp sgt i64 %i.ed, -1
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp sle i64 %i.ee, %i.bv
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = trunc nuw nsw i64 %i.ee to i32
  %.not34 = icmp eq i32 %i.z, %i.eh
  br i1 %.not34, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.ei = icmp eq i64 %indvars.iv983, %i.by
  tail call void @llvm.assume(i1 %i.ei)
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bi)
  tail call void @llvm.assume(i1 %i.bj)
  %i.ej = icmp samesign ult i64 %i.ee, %i.bv
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = mul nuw nsw i64 %i.ee, %i.bw
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ek ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <4 x ptr> %i.cs, ptr %5, align 8
  tail call void @llvm.assume(i1 %i.bl)
  %i.em = load i32, ptr %i.bm, align 4, !tbaa !37 ; 3 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bn)
  tail call void @llvm.assume(i1 %i.bo)
  %wide.trip.count = zext nneg i32 %i.em to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv967 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next968, %bb.p ] ; 2 uses
  %.sroa.22.0875 = phi i32 [ %.sroa.8403.0914, %.lr.ph ], [ %i.n, %bb.p ]
  %.sroa.0508.0873 = phi ptr [ %.sroa.0400.0916, %.lr.ph ], [ %i.eq, %bb.p ]
  %.sroa.0285.2872 = phi i64 [ %.sroa.0285.0920, %.lr.ph ], [ %.sroa.0285.14, %bb.p ]
  %.sroa.48.3871 = phi i32 [ %.sroa.48.0919, %.lr.ph ], [ %.sroa.48.15, %bb.p ]
  %.sroa.137361.3870 = phi i32 [ %.sroa.137361.0918, %.lr.ph ], [ %.sroa.137361.11, %bb.p ]
  %.sroa.169389.3869 = phi i32 [ %.sroa.169389.0917, %.lr.ph ], [ %.sroa.169389.11, %bb.p ]
  %i.eo = shl nuw nsw i64 %indvars.iv967, 1       ; 2 uses
  %i.ep = icmp samesign ule i64 %i.eo, %i.bt
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %i.eo ; 3 uses
  %i.er = zext nneg i32 %.sroa.22.0875 to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.o, %bb.q
  %.not54.i = phi i1 [ false, %bb.o ], [ true, %bb.q ]
  %indvars.iv964 = phi i64 [ 0, %bb.o ], [ 1, %bb.q ] ; 3 uses
  %.sroa.0285.12867 = phi i64 [ %.sroa.0285.2872, %bb.o ], [ %.sroa.0285.14, %bb.q ]
  %.sroa.48.13866 = phi i32 [ %.sroa.48.3871, %bb.o ], [ %.sroa.48.15, %bb.q ]
  %.sroa.137361.9865 = phi i32 [ %.sroa.137361.3870, %bb.o ], [ %.sroa.137361.11, %bb.q ]
  %.sroa.169389.9864 = phi i32 [ %.sroa.169389.3869, %bb.o ], [ %.sroa.169389.11, %bb.q ]
  %i.es = mul nuw nsw i64 %indvars.iv964, %i.er
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0508.0873, i64 %i.es
  %i.eu = mul nuw nsw i64 %indvars.iv964, %i.bs
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.eu
  %.idx = shl nuw nsw i64 %indvars.iv964, 4
  %invariant.gep = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  br label %bb.r

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next968 = add nuw nsw i64 %indvars.iv967, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next968, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !247

bb.q:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  br i1 %.not54.i, label %bb.p, label %.preheader, !llvm.loop !248

bb.r:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %.not55.i = phi i1 [ false, %.preheader ], [ true, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ 1, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 3 uses
  %.sroa.0285.13862 = phi i64 [ %.sroa.0285.12867, %.preheader ], [ %.sroa.0285.14, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 3 uses
  %.sroa.48.14861 = phi i32 [ %.sroa.48.13866, %.preheader ], [ %.sroa.48.15, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 7 uses
  %.sroa.137361.10858 = phi i32 [ %.sroa.137361.9865, %.preheader ], [ %.sroa.137361.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 8 uses
  %.sroa.169389.10857 = phi i32 [ %.sroa.169389.9864, %.preheader ], [ %.sroa.169389.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %indvars.iv
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !149
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ey = load ptr, ptr %gep, align 8, !tbaa !165 ; 8 uses
  %i.ez = icmp samesign ult i32 %.sroa.48.14861, 65
  tail call void @llvm.assume(i1 %i.ez)
  %.not.i51 = icmp samesign ult i32 %.sroa.48.14861, 32
  br i1 %.not.i51, label %bb.s, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.fa = add nuw nsw i32 %.sroa.137361.10858, 8
  %.not.i.i52 = icmp samesign ugt i32 %i.fa, %i.dy
  br i1 %.not.i.i52, label %bb.u, label %bb.t, !prof !141

bb.t:                                             ; preds = %bb.s
  %i.fb = zext nneg i32 %.sroa.137361.10858 to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.fb
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.u:                                             ; preds = %bb.s
  %i.fd = icmp samesign ugt i32 %.sroa.137361.10858, %i.ec
  br i1 %i.fd, label %bb.v, label %bb.w, !prof !141

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.w:                                             ; preds = %bb.u
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 %.sroa.137361.10858) ; 3 uses
  %i.fe = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 %i.fe)
  %i.ff = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.fg = icmp samesign ult i32 %i.ff, 9
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.fh
  %i.fj = zext nneg i32 %i.ff to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.fi, i64 %i.fj, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.w, %bb.t
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.w ], [ %i.fc, %bb.t ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %3, align 8
  %i.fk = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.fl = icmp ne i8 %i.fk, -1
  %i.fm = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.fn = trunc i64 %i.fm to i8                   ; 3 uses
  %i.fo = icmp ne i8 %i.fn, -1
  %i.fp = and i1 %i.fl, %i.fo
  %i.fq = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.fr = trunc i64 %i.fq to i8                   ; 2 uses
  %i.fs = icmp ne i8 %i.fr, -1
  %i.ft = and i1 %i.fs, %i.fp
  %i.fu = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.fv = icmp ne i64 %i.fu, 4278190080
  %i.fw = and i1 %i.fv, %i.ft
  br i1 %i.fw, label %bb.x, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fx = zext nneg i32 %.sroa.48.14861 to i64    ; 8 uses
  %i.fy = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.fx, 8
  %i.fz = sub nuw nsw i64 56, %i.fx
  %i.ga = shl nuw i64 %i.fy, %i.fz
  %i.gb = or i64 %i.ga, %.sroa.0285.13862         ; 2 uses
  %.not.i166 = icmp eq i8 %i.fk, -1
  br i1 %.not.i166, label %bb.y, label %bb.aa

bb.x:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.gc = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.gd = tail call i32 @llvm.bswap.i32(i32 %i.gc)
  %i.ge = zext i32 %i.gd to i64
  %i.gf = sub nuw nsw i32 32, %.sroa.48.14861
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = shl nuw i64 %i.ge, %i.gg
  %i.gi = or i64 %i.gh, %.sroa.0285.13862
  %i.gj = or disjoint i32 %.sroa.48.14861, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.y:                                             ; preds = %.preheader.i
  %i.gk = icmp eq i8 %i.fn, 0
  br i1 %i.gk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.af, %bb.ad, %bb.ab, %bb.y
  %.062.lcssa.i.neg930 = phi i32 [ 0, %bb.y ], [ -1, %bb.ab ], [ -2, %bb.ad ], [ -3, %bb.af ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.y ], [ %.2.ph.i, %bb.ab ], [ %i.hc, %bb.ad ], [ %i.hn, %bb.af ]
  %.lcssa66.wide.i = phi i64 [ %i.fx, %bb.y ], [ %indvars.iv.next.i, %bb.ab ], [ %indvars.iv.next.1.i, %bb.ad ], [ %indvars.iv.next.2.i, %bb.af ]
  %.lcssa.i = phi i64 [ %i.gb, %bb.y ], [ %i.gw, %bb.ab ], [ %i.hj, %bb.ad ], [ %i.hu, %bb.af ]
  %i.gl = add nuw nsw i32 %.01861.lcssa.i, %.sroa.137361.10858
  %i.gm = icmp slt i32 %.sroa.169389.10857, 0
  tail call void @llvm.assume(i1 %i.gm)
end_hunk_3
