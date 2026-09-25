Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/LJpegDecompressor?download=true
inline.NumInlined: 939
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.au = add nsw i32 %i.at, 1                    ; 2 uses
  %i.av = icmp ne i32 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.021.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 3 uses
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.222.0.copyload = load i32, ptr %.sroa.222.0..sroa_idx, align 8, !tbaa !22 ; 7 uses
  %i.ax = icmp sgt i32 %.sroa.222.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24 ; 3 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = icmp eq ptr %i.ak, %i.az
  %invariant.op.a = add nsw i32 %i.z, -1
  %.not35689 = icmp eq i32 %i.ao, 0
  %i.bc = icmp sgt i32 %i.z, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.be = icmp sgt i32 %i.n, 0                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 128 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = zext nneg i32 %.sroa.222.0.copyload to i64
  %i.bo = zext i32 %i.x to i64
  %i.bp = zext nneg i32 %i.n to i64
  %i.bq = zext i32 %i.ao to i64
  %i.br = and i64 %i.as, 4294967295
  %i.bs = zext nneg i32 %i.au to i64
  %i.bt = add i64 %i.ba, -16
  %i.bu = sub i64 %i.bt, %i.al                    ; 3 uses
  %i.bv = lshr i64 %i.bu, 4
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.bu, 64
  %min.iters.check795 = icmp ult i64 %i.bu, 256
  %i.bx = and i64 %i.bw, 15                       ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.by, i64 16, i64 %i.bx      ; 2 uses
  %n.vec = sub nsw i64 %i.bw, %i.bz               ; 4 uses
  %i.ca = shl nsw i64 %n.vec, 1
  %i.cb = getelementptr i8, ptr %3, i64 %i.ca
  %i.cc = shl i64 %n.vec, 4
  %i.cd = getelementptr i8, ptr %i.ak, i64 %i.cc
  %min.epilog.iters.check = icmp samesign ult i64 %i.bz, 5
  %i.ce = and i64 %i.bw, 3                        ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = select i1 %i.cf, i64 4, i64 %i.ce
  %n.vec798 = sub nsw i64 %i.bw, %i.cg            ; 3 uses
  %i.ch = shl nsw i64 %n.vec798, 1
  %i.ci = getelementptr i8, ptr %3, i64 %i.ch
  %i.cj = shl i64 %n.vec798, 4
  %i.ck = getelementptr i8, ptr %i.ak, i64 %i.cj
  br label %bb.b

bb.a:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit120
  ret i32 %i.ql

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit120
  %indvars.iv732 = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next733, %_ZN8rawspeed10ByteStream9skipBytesEj.exit120 ] ; 5 uses
  %.sroa.10322.0701 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.ql, %_ZN8rawspeed10ByteStream9skipBytesEj.exit120 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %i.bb, label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check795, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.cl = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %3, i64 %i.cl
  %i.cm = shl i64 %index, 4
  %next.gep796 = getelementptr i8, ptr %i.ak, i64 %i.cm
  %i.cn = getelementptr inbounds nuw i8, ptr %next.gep796, i64 8
  %wide.vec = load <128 x i16>, ptr %i.cn, align 8, !tbaa !148
  %strided.vec = shufflevector <128 x i16> %wide.vec, <128 x i16> poison, <16 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120>
  store <16 x i16> %strided.vec, ptr %next.gep, align 2, !tbaa !149
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !181

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index799 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next804, %vec.epilog.vector.body ] ; 3 uses
  %i.cp = shl i64 %index799, 1
  %next.gep800 = getelementptr i8, ptr %3, i64 %i.cp
  %i.cq = shl i64 %index799, 4
  %next.gep801 = getelementptr i8, ptr %i.ak, i64 %i.cq
  %i.cr = getelementptr inbounds nuw i8, ptr %next.gep801, i64 8
  %wide.vec802 = load <32 x i16>, ptr %i.cr, align 8, !tbaa !148
  %strided.vec803 = shufflevector <32 x i16> %wide.vec802, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec803, ptr %next.gep800, align 2, !tbaa !149
  %index.next804 = add nuw i64 %index799, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next804, %n.vec798
  br i1 %i.cs, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !182

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %3, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.cu = load i16, ptr %i.ct, align 8, !tbaa !148
  store i16 %i.cu, ptr %.07.i.i, align 2, !tbaa !149
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.cx = icmp eq ptr %i.cv, %i.az
  br i1 %i.cx, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !183

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i16, ptr %3, align 2
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %i.cy = phi i16 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i16 %i.cy, ptr %.sroa.0, align 2
  %.not33 = icmp eq i64 %indvars.iv732, 0
  br i1 %.not33, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10322.0701, %.sroa.222.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.cz = add nuw nsw i32 %.sroa.10322.0701, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.cz, %.sroa.222.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.da = zext nneg i32 %.sroa.10322.0701 to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.da
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.db, align 1
  %i.dc = zext nneg i32 %i.cz to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.dc
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
  %i.dk = trunc i64 %indvars.iv732 to i32
  %i.dl = add i32 %i.dk, -1
  %i.dm = srem i32 %i.dl, 8
  %.not34 = icmp eq i32 %i.dj, %i.dm
  br i1 %.not34, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dn = add nuw nsw i32 %.sroa.10322.0701, 2    ; 2 uses
  %i.do = icmp samesign ule i32 %i.dn, %.sroa.222.0.copyload
  tail call void @llvm.assume(i1 %i.do)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit
  %.sroa.10322.1 = phi i32 [ %.sroa.10322.0701, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit ], [ %i.dn, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dp = zext nneg i32 %.sroa.10322.1 to i64     ; 2 uses
  %i.dq = sub nuw nsw i32 %.sroa.222.0.copyload, %.sroa.10322.1 ; 10 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.dp ; 4 uses
  %i.ds = icmp samesign ult i32 %i.dq, 8
  br i1 %i.ds, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not35689, label %.loopexit580.thread, label %.lr.ph696

.lr.ph696:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.dt = mul nsw i64 %indvars.iv732, %i.aq
  %i.du = add nuw nsw i32 %i.dq, 16               ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph696, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv729 = phi i64 [ 0, %.lr.ph696 ], [ %indvars.iv.next730, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0217.0694 = phi i64 [ 0, %.lr.ph696 ], [ %.sroa.0217.3.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.33.0693 = phi i32 [ 0, %.lr.ph696 ], [ %.sroa.33.4.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.94268.0692 = phi i32 [ 0, %.lr.ph696 ], [ %.sroa.94268.4.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.116287.0691 = phi i32 [ -1, %.lr.ph696 ], [ %.sroa.116287.4.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.0297.0690 = phi ptr [ %.sroa.0, %.lr.ph696 ], [ %i.ec, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %i.dv = add nsw i64 %indvars.iv729, %i.dt       ; 4 uses
  %i.dw = icmp sgt i64 %i.dv, -1
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp sle i64 %i.dv, %i.ap
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = trunc nuw nsw i64 %i.dv to i32          ; 2 uses
  %.not36 = icmp eq i32 %i.z, %i.dy
  br i1 %.not36, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.dz = icmp eq i64 %indvars.iv732, %i.br
  tail call void @llvm.assume(i1 %i.dz)
  br label %.loopexit580

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bc)
  %i.ea = icmp uge i32 %invariant.op.a, %i.dy
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = mul nuw nsw i64 %i.dv, %i.bp
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.bd, align 4, !tbaa !37 ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.be)
  %wide.trip.count = zext nneg i32 %i.ed to i64
  %.pre = load i16, ptr %.sroa.0297.0690, align 2, !tbaa !149
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46
  %i.ef = phi i16 [ %.pre, %.lr.ph ], [ %i.kj, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 3 uses
  %.sroa.0217.2666 = phi i64 [ %.sroa.0217.0694, %.lr.ph ], [ %.sroa.0217.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 3 uses
  %.sroa.33.3665 = phi i32 [ %.sroa.33.0693, %.lr.ph ], [ %.sroa.33.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 7 uses
  %.sroa.94268.3664 = phi i32 [ %.sroa.94268.0692, %.lr.ph ], [ %.sroa.94268.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 8 uses
  %.sroa.116287.3663 = phi i32 [ %.sroa.116287.0691, %.lr.ph ], [ %.sroa.116287.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eg = icmp samesign ult i64 %indvars.iv, %i.bo
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %indvars.iv
  %i.ei = icmp samesign ult i32 %.sroa.33.3665, 65
  tail call void @llvm.assume(i1 %i.ei)
  %.not.i62 = icmp samesign ult i32 %.sroa.33.3665, 32
  br i1 %.not.i62, label %bb.o, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.o:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %4 = add nuw nsw i32 %.sroa.94268.3664, 8
  %.not.i.i63 = icmp samesign ugt i32 %4, %i.dq
  br i1 %.not.i.i63, label %bb.q, label %bb.p, !prof !141

bb.p:                                             ; preds = %bb.o
  %i.ej = zext nneg i32 %.sroa.94268.3664 to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ej
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.q:                                             ; preds = %bb.o
  %i.el = icmp samesign ugt i32 %.sroa.94268.3664, %i.du
  br i1 %i.el, label %bb.r, label %bb.s, !prof !141

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.s:                                             ; preds = %bb.q
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %.sroa.94268.3664) ; 3 uses
  %i.em = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.em)
  %i.en = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.eo = icmp samesign ult i32 %i.en, 9
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ep
  %i.er = zext nneg i32 %i.en to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.eq, i64 %i.er, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.s, %bb.p
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.s ], [ %i.ek, %bb.p ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %2, align 8
  %i.es = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.et = icmp ne i8 %i.es, -1
  %i.eu = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.ev = trunc i64 %i.eu to i8                   ; 3 uses
  %i.ew = icmp ne i8 %i.ev, -1
  %i.ex = and i1 %i.et, %i.ew
  %i.ey = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.ez = trunc i64 %i.ey to i8                   ; 2 uses
  %i.fa = icmp ne i8 %i.ez, -1
  %i.fb = and i1 %i.fa, %i.ex
  %i.fc = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.fd = icmp ne i64 %i.fc, 4278190080
  %i.fe = and i1 %i.fd, %i.fb
  br i1 %i.fe, label %bb.t, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.ff = zext nneg i32 %.sroa.33.3665 to i64     ; 8 uses
  %i.fg = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.ff, 8
  %i.fh = sub nuw nsw i64 56, %i.ff
  %i.fi = shl nuw i64 %i.fg, %i.fh
  %i.fj = or i64 %i.fi, %.sroa.0217.2666          ; 2 uses
  %.not.i123 = icmp eq i8 %i.es, -1
  br i1 %.not.i123, label %bb.u, label %bb.w

bb.t:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fk = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.fl = tail call i32 @llvm.bswap.i32(i32 %i.fk)
  %i.fm = zext i32 %i.fl to i64
  %i.fn = sub nuw nsw i32 32, %.sroa.33.3665
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = shl nuw i64 %i.fm, %i.fo
  %i.fq = or i64 %i.fp, %.sroa.0217.2666
  %i.fr = or disjoint i32 %.sroa.33.3665, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.u:                                             ; preds = %.preheader.i
  %i.fs = icmp eq i8 %i.ev, 0
  br i1 %i.fs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.ab, %bb.z, %bb.x, %bb.u
  %.062.lcssa.i.neg704 = phi i32 [ 0, %bb.u ], [ -1, %bb.x ], [ -2, %bb.z ], [ -3, %bb.ab ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.u ], [ %.2.ph.i, %bb.x ], [ %i.gk, %bb.z ], [ %i.gv, %bb.ab ]
  %.lcssa66.wide.i = phi i64 [ %i.ff, %bb.u ], [ %indvars.iv.next.i, %bb.x ], [ %indvars.iv.next.1.i, %bb.z ], [ %indvars.iv.next.2.i, %bb.ab ]
  %.lcssa.i = phi i64 [ %i.fj, %bb.u ], [ %i.ge, %bb.x ], [ %i.gr, %bb.z ], [ %i.hc, %bb.ab ]
  %i.ft = add nuw nsw i32 %.01861.lcssa.i, %.sroa.94268.3664
  %i.fu = icmp slt i32 %.sroa.116287.3663, 0
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = lshr i64 -1, %.lcssa66.wide.i
  %i.fw = xor i64 %i.fv, -1
  %i.fx = and i64 %.lcssa.i, %i.fw
  %.neg577 = sub nsw i32 %i.dq, %.sroa.94268.3664
  %reass.sub.i = add nsw i32 %.neg577, %.062.lcssa.i.neg704 ; 2 uses
  %i.fy = add nuw nsw i32 %reass.sub.i, 4
  %i.fz = icmp ugt i32 %reass.sub.i, 1
  tail call void @llvm.assume(i1 %i.fz)
  br label %bb.ac

bb.w:                                             ; preds = %bb.u, %.preheader.i
  %i.ga = phi i8 [ %i.ev, %.preheader.i ], [ %i.ez, %bb.u ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.u ] ; 3 uses
  %i.gb = zext i8 %i.ga to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.ff, 16
  %i.gc = sub nuw nsw i64 48, %i.ff
  %i.gd = shl nuw nsw i64 %i.gb, %i.gc
  %i.ge = or i64 %i.gd, %i.fj                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.ga, -1
  br i1 %.not.1.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gf = zext nneg i32 %.2.ph.i to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !140
  %i.gj = icmp eq i8 %i.gi, 0
  br i1 %i.gj, label %bb.y, label %bb.v

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink.i = phi i32 [ 1, %bb.w ], [ 2, %bb.x ]
  %i.gk = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 %i.gl ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !140 ; 2 uses
  %i.go = zext i8 %i.gn to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.ff, 24
  %i.gp = sub nuw nsw i64 40, %i.ff
  %i.gq = shl nuw nsw i64 %i.go, %i.gp
  %i.gr = or i64 %i.gq, %i.ge                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.gn, -1
  br i1 %.not.2.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !140
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %bb.aa, label %bb.v

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink72.i = phi i32 [ 1, %bb.y ], [ 2, %bb.z ]
  %i.gv = add nuw nsw i32 %.sink72.i, %i.gk       ; 3 uses
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 %i.gw ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !140 ; 2 uses
  %i.gz = zext i8 %i.gy to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.33.3665, 32
  %i.ha = sub nuw nsw i64 32, %i.ff
  %i.hb = shl nuw nsw i64 %i.gz, %i.ha
  %i.hc = or i64 %i.hb, %i.gr                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.gy, -1
  br i1 %.not.3.i, label %bb.ab, label %.loopexit.i

bb.ab:                                            ; preds = %bb.aa
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !140
  %i.hf = icmp eq i8 %i.he, 0
  br i1 %i.hf, label %.loopexit.i, label %bb.v

.loopexit.i:                                      ; preds = %bb.ab, %bb.aa
  %.sink73.i = phi i32 [ 1, %bb.aa ], [ 2, %bb.ab ]
  %i.hg = add nuw nsw i32 %.sink73.i, %i.gv
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i, %bb.v
  %.sroa.116287.10 = phi i32 [ %.sroa.116287.3663, %.loopexit.i ], [ %i.ft, %bb.v ]
  %.sroa.33.20 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.v ]
  %.sroa.0217.19 = phi i64 [ %i.hc, %.loopexit.i ], [ %i.fx, %bb.v ]
  %.3.i = phi i32 [ %i.hg, %.loopexit.i ], [ %i.fy, %bb.v ] ; 2 uses
  %i.hh = icmp sgt i32 %.3.i, 4
  tail call void @llvm.assume(i1 %i.hh)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.t, %bb.ac
  %.sroa.116287.11 = phi i32 [ %.sroa.116287.3663, %bb.t ], [ %.sroa.116287.10, %bb.ac ]
  %.sroa.33.21 = phi i32 [ %i.fr, %bb.t ], [ %.sroa.33.20, %bb.ac ]
  %.sroa.0217.20 = phi i64 [ %i.fq, %bb.t ], [ %.sroa.0217.19, %bb.ac ]
  %.021.i = phi i32 [ 4, %bb.t ], [ %.3.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.hi = add nuw nsw i32 %.021.i, %.sroa.94268.3664
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %.preheader, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.116287.8 = phi i32 [ %.sroa.116287.11, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.116287.3663, %.preheader ] ; 2 uses
  %.sroa.94268.8 = phi i32 [ %i.hi, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.94268.3664, %.preheader ] ; 2 uses
  %.sroa.33.12 = phi i32 [ %.sroa.33.21, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.33.3665, %.preheader ]
  %.sroa.0217.11 = phi i64 [ %.sroa.0217.20, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0217.2666, %.preheader ] ; 2 uses
  %i.hj = lshr i64 %.sroa.0217.11, 53             ; 3 uses
  %i.hk = trunc nuw nsw i64 %i.hj to i32          ; 2 uses
  %i.hl = load ptr, ptr %i.bf, align 8, !tbaa !155
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hj
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !22 ; 4 uses
  %i.ho = ashr i32 %i.hn, 9                       ; 2 uses
  %i.hp = and i32 %i.hn, 255                      ; 4 uses
  %i.hq = icmp samesign ult i32 %i.hp, 33
  tail call void @llvm.assume(i1 %i.hq)
  %i.hr = sub nuw nsw i32 %.sroa.33.12, %i.hp     ; 3 uses
  %i.hs = zext nneg i32 %i.hp to i64
  %i.ht = shl i64 %.sroa.0217.11, %i.hs           ; 3 uses
  %i.hu = and i32 %i.hn, 256
  %.not.i41 = icmp eq i32 %i.hu, 0
  br i1 %.not.i41, label %bb.ad, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46

bb.ad:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i43 = icmp eq i32 %i.hn, 0
  br i1 %.not17.i43, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hv = trunc i32 %i.ho to i8                   ; 2 uses
  %i.hw = icmp ne i8 %i.hv, 0
  tail call void @llvm.assume(i1 %i.hw)
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.hx = icmp eq i32 %i.hp, 0
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = add nsw i32 %i.hr, -11                  ; 2 uses
  %i.hz = shl i64 %i.ht, 11                       ; 2 uses
  %i.ia = load ptr, ptr %i.bh, align 8, !tbaa !156
  %i.ib = load ptr, ptr %i.bg, align 8, !tbaa !157
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = ashr exact i64 %i.ie, 2
  %i.ig = add nsw i64 %i.if, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.hj to i16 ; 2 uses
  %i.ih = icmp ugt i64 %i.ig, 11
  br i1 %i.ih, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.af
  %i.ii = load ptr, ptr %i.bi, align 8, !tbaa !160
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge2.i, %.lr.ph.i
  %.sroa.33.14 = phi i32 [ %i.hy, %.lr.ph.i ], [ %i.is, %.critedge2.i ] ; 4 uses
  %.sroa.0217.13 = phi i64 [ %i.hz, %.lr.ph.i ], [ %i.it, %.critedge2.i ] ; 3 uses
  %i.ij = phi i64 [ 11, %.lr.ph.i ], [ %i.iy, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i ], [ %i.ix, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.hk, %.lr.ph.i ], [ %i.iw, %.critedge2.i ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.ij
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !149 ; 2 uses
  %i.im = icmp eq i16 %i.il, -1
  %i.in = icmp ult i16 %i.il, %.sroa.0.021.i
  %or.cond.i = select i1 %i.im, i1 true, i1 %i.in
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ag
  %i.io = icmp samesign ult i32 %.sroa.33.14, 65
  tail call void @llvm.assume(i1 %i.io)
  %i.ip = icmp ne i32 %.sroa.33.14, 0
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = lshr i64 %.sroa.0217.13, 63
  %i.ir = trunc nuw nsw i64 %i.iq to i32
  %i.is = add nsw i32 %.sroa.33.14, -1            ; 2 uses
  %i.it = shl i64 %.sroa.0217.13, 1               ; 2 uses
  %i.iu = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.iv = and i32 %i.iu, 131070
  %i.iw = or disjoint i32 %i.iv, %i.ir            ; 3 uses
  %i.ix = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.iw to i16           ; 2 uses
  %i.iy = zext i8 %i.ix to i64                    ; 3 uses
  %i.iz = icmp ugt i64 %i.ig, %i.iy
  br i1 %i.iz, label %bb.ag, label %.critedge.i.loopexit, !llvm.loop !1

.critedge.i.loopexit:                             ; preds = %bb.ag, %.critedge2.i
  %.sroa.33.13.ph = phi i32 [ %i.is, %.critedge2.i ], [ %.sroa.33.14, %bb.ag ]
  %.sroa.0217.12.ph = phi i64 [ %i.it, %.critedge2.i ], [ %.sroa.0217.13, %bb.ag ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.iw, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ag ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.ix, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ag ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ag ]
  %.lcssa17.i.ph = phi i64 [ %i.iy, %.critedge2.i ], [ %i.ij, %bb.ag ]
  %i.ja = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.af
  %.sroa.33.13 = phi i32 [ %i.hy, %bb.af ], [ %.sroa.33.13.ph, %.critedge.i.loopexit ]
  %.sroa.0217.12 = phi i64 [ %i.hz, %bb.af ], [ %.sroa.0217.12.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.hk, %bb.af ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.af ], [ %i.ja, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.af ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.af ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.jb = icmp ult i64 %i.ig, %.lcssa17.i
  br i1 %i.jb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i
  %i.jc = load ptr, ptr %i.bi, align 8, !tbaa !160
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.jc, i64 %.lcssa17.i
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !149
  %i.jf = icmp ult i16 %i.je, %.sroa.0.0.lcssa.i
  br i1 %i.jf, label %bb.ai, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.ai:                                            ; preds = %bb.ah, %.critedge.i
  %i.jg = and i32 %.sroa.0.0.in.lcssa.i, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.jg, i32 noundef %.sroa.8.0.lcssa.i) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.ah
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.jh = load ptr, ptr %i.bj, align 8, !tbaa !160
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.jh, i64 %.lcssa17.i
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !149
  %.tr.i = zext i16 %i.jj to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.jk = zext i32 %.narrow.i to i64
  %i.jl = load ptr, ptr %i.bk, align 8, !tbaa !161
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jk
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !140
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.ae
  %.0562 = phi i8 [ %i.jn, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hv, %bb.ae ] ; 5 uses
  %.sroa.33.10 = phi i32 [ %.sroa.33.13, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hr, %bb.ae ] ; 8 uses
  %.sroa.0217.9 = phi i64 [ %.sroa.0217.12, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.ht, %bb.ae ] ; 6 uses
  %i.jo = icmp ult i8 %.0562, 17
  tail call void @llvm.assume(i1 %i.jo)
  switch i8 %.0562, label %bb.am [
    i8 16, label %bb.ak
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.jp = load i8, ptr %i.bl, align 1, !tbaa !162, !range !130, !noundef !116
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.al, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46

bb.al:                                            ; preds = %bb.ak
  %i.jr = icmp samesign ult i32 %.sroa.33.10, 65
  tail call void @llvm.assume(i1 %i.jr)
  %i.js = icmp samesign ugt i32 %.sroa.33.10, 15
  tail call void @llvm.assume(i1 %i.js)
  %i.jt = add nsw i32 %.sroa.33.10, -16
  %i.ju = shl i64 %.sroa.0217.9, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46

bb.am:                                            ; preds = %bb.aj
  %i.jv = zext nneg i8 %.0562 to i32              ; 4 uses
  %i.jw = icmp samesign ult i32 %.sroa.33.10, 65
  tail call void @llvm.assume(i1 %i.jw)
  %i.jx = icmp ne i8 %.0562, 0
  tail call void @llvm.assume(i1 %i.jx)
  %i.jy = icmp samesign uge i32 %.sroa.33.10, %i.jv
  tail call void @llvm.assume(i1 %i.jy)
  %i.jz = sub nuw nsw i32 64, %i.jv
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = lshr i64 %.sroa.0217.9, %i.ka
  %i.kc = trunc nuw nsw i64 %i.kb to i32
  %i.kd = sub nuw nsw i32 %.sroa.33.10, %i.jv
  %i.ke = zext nneg i8 %.0562 to i64
  %i.kf = shl i64 %.sroa.0217.9, %i.ke
  %i.kg = icmp sgt i64 %.sroa.0217.9, -1
  %notmask.i.i = shl nsw i32 -1, %i.jv
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.kh = select i1 %i.kg, i32 %.neg.i.i, i32 0
  %.0.i.i = add nsw i32 %i.kh, %i.kc
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.33.11 = phi i32 [ %i.hr, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kd, %bb.am ], [ %i.jt, %bb.al ], [ %.sroa.33.10, %bb.ak ], [ %.sroa.33.10, %bb.aj ] ; 2 uses
  %.sroa.0217.10 = phi i64 [ %i.ht, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kf, %bb.am ], [ %i.ju, %bb.al ], [ %.sroa.0217.9, %bb.ak ], [ %.sroa.0217.9, %bb.aj ] ; 2 uses
  %.0.i42 = phi i32 [ %i.ho, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i, %bb.am ], [ -32768, %bb.al ], [ -32768, %bb.ak ], [ 0, %bb.aj ]
  %i.ki = trunc i32 %.0.i42 to i16
  %i.kj = add i16 %i.ef, %i.ki                    ; 2 uses
  store i16 %i.kj, ptr %i.eh, align 2, !tbaa !149
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !184

._crit_edge:                                      ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46, %bb.n
  %.sroa.116287.3.lcssa = phi i32 [ %.sroa.116287.0691, %bb.n ], [ %.sroa.116287.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 2 uses
  %.sroa.94268.3.lcssa = phi i32 [ %.sroa.94268.0692, %bb.n ], [ %.sroa.94268.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 2 uses
  %.sroa.33.3.lcssa = phi i32 [ %.sroa.33.0693, %bb.n ], [ %.sroa.33.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 2 uses
  %.sroa.0217.2.lcssa = phi i64 [ %.sroa.0217.0694, %bb.n ], [ %.sroa.0217.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 2 uses
  %.024.i.lcssa = phi i32 [ 0, %bb.n ], [ %i.ed, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 2 uses
  %i.kk = load i32, ptr %i.bm, align 8, !tbaa !163 ; 2 uses
  %i.kl = icmp slt i32 %.024.i.lcssa, %i.kk
  br i1 %i.kl, label %.preheader578, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

.preheader578:                                    ; preds = %._crit_edge, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %.1.i683 = phi i32 [ %i.qg, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ], [ %.024.i.lcssa, %._crit_edge ]
  %.sroa.0217.3682 = phi i64 [ %.sroa.0217.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ], [ %.sroa.0217.2.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.33.4681 = phi i32 [ %.sroa.33.9, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ], [ %.sroa.33.3.lcssa, %._crit_edge ] ; 7 uses
  %.sroa.94268.4680 = phi i32 [ %.sroa.94268.9, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ], [ %.sroa.94268.3.lcssa, %._crit_edge ] ; 8 uses
  %.sroa.116287.4679 = phi i32 [ %.sroa.116287.9, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ], [ %.sroa.116287.3.lcssa, %._crit_edge ] ; 4 uses
  %i.km = icmp samesign ult i32 %.sroa.33.4681, 65
  tail call void @llvm.assume(i1 %i.km)
  %.not.i71 = icmp samesign ult i32 %.sroa.33.4681, 32
  br i1 %.not.i71, label %bb.an, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80

bb.an:                                            ; preds = %.preheader578
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i70)
  %5 = add nuw nsw i32 %.sroa.94268.4680, 8
  %.not.i.i72 = icmp samesign ugt i32 %5, %i.dq
  br i1 %.not.i.i72, label %bb.ap, label %bb.ao, !prof !141

bb.ao:                                            ; preds = %bb.an
  %i.kn = zext nneg i32 %.sroa.94268.4680 to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.kn
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i74

bb.ap:                                            ; preds = %bb.an
  %i.kp = icmp samesign ugt i32 %.sroa.94268.4680, %i.du
  br i1 %i.kp, label %bb.aq, label %bb.ar, !prof !141

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.ar:                                            ; preds = %bb.ap
  store i64 0, ptr %.sroa.0.i.i70, align 8
  %.sroa.speculated27.i.i.i78 = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %.sroa.94268.4680) ; 3 uses
  %i.kq = add nuw nsw i32 %.sroa.speculated27.i.i.i78, 8
  %.sroa.speculated.i.i.i79 = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.kq)
  %i.kr = sub nsw i32 %.sroa.speculated.i.i.i79, %.sroa.speculated27.i.i.i78 ; 2 uses
  %i.ks = icmp samesign ult i32 %i.kr, 9
  tail call void @llvm.assume(i1 %i.ks)
  %i.kt = zext nneg i32 %.sroa.speculated27.i.i.i78 to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.kt
  %i.kv = zext nneg i32 %i.kr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i70, ptr align 1 %i.ku, i64 %i.kv, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i74

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i74: ; preds = %bb.ar, %bb.ao
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i75 = phi ptr [ %.sroa.0.i.i70, %bb.ar ], [ %i.ko, %bb.ao ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i75, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i70)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76, ptr %1, align 8
  %i.kw = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76 to i8 ; 2 uses
  %i.kx = icmp ne i8 %i.kw, -1
  %i.ky = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76, 8
  %i.kz = trunc i64 %i.ky to i8                   ; 3 uses
  %i.la = icmp ne i8 %i.kz, -1
  %i.lb = and i1 %i.kx, %i.la
  %i.lc = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76, 16
  %i.ld = trunc i64 %i.lc to i8                   ; 2 uses
  %i.le = icmp ne i8 %i.ld, -1
  %i.lf = and i1 %i.le, %i.lb
  %i.lg = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76, 4278190080
  %i.lh = icmp ne i64 %i.lg, 4278190080
  %i.li = and i1 %i.lh, %i.lf
  br i1 %i.li, label %bb.as, label %.preheader.i126

.preheader.i126:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i74
  %i.lj = zext nneg i32 %.sroa.33.4681 to i64     ; 8 uses
  %i.lk = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76, 255
  %indvars.iv.next.i127 = add nuw nsw i64 %i.lj, 8
  %i.ll = sub nuw nsw i64 56, %i.lj
  %i.lm = shl nuw i64 %i.lk, %i.ll
  %i.ln = or i64 %i.lm, %.sroa.0217.3682          ; 2 uses
  %.not.i128 = icmp eq i8 %i.kw, -1
  br i1 %.not.i128, label %bb.at, label %bb.av

bb.as:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i74
  %i.lo = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76 to i32
  %i.lp = tail call i32 @llvm.bswap.i32(i32 %i.lo)
  %i.lq = zext i32 %i.lp to i64
  %i.lr = sub nuw nsw i32 32, %.sroa.33.4681
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = shl nuw i64 %i.lq, %i.ls
  %i.lu = or i64 %i.lt, %.sroa.0217.3682
  %i.lv = or disjoint i32 %.sroa.33.4681, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit147

bb.at:                                            ; preds = %.preheader.i126
  %i.lw = icmp eq i8 %i.kz, 0
  br i1 %i.lw, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.ba, %bb.ay, %bb.aw, %bb.at
  %.062.lcssa.i142.neg705 = phi i32 [ 0, %bb.at ], [ -1, %bb.aw ], [ -2, %bb.ay ], [ -3, %bb.ba ]
  %.01861.lcssa.i143 = phi i32 [ 0, %bb.at ], [ %.2.ph.i129, %bb.aw ], [ %i.mo, %bb.ay ], [ %i.mz, %bb.ba ]
  %.lcssa66.wide.i144 = phi i64 [ %i.lj, %bb.at ], [ %indvars.iv.next.i127, %bb.aw ], [ %indvars.iv.next.1.i130, %bb.ay ], [ %indvars.iv.next.2.i133, %bb.ba ]
  %.lcssa.i145 = phi i64 [ %i.ln, %bb.at ], [ %i.mi, %bb.aw ], [ %i.mv, %bb.ay ], [ %i.ng, %bb.ba ]
  %i.lx = add nuw nsw i32 %.01861.lcssa.i143, %.sroa.94268.4680
  %i.ly = icmp slt i32 %.sroa.116287.4679, 0
  tail call void @llvm.assume(i1 %i.ly)
  %i.lz = lshr i64 -1, %.lcssa66.wide.i144
  %i.ma = xor i64 %i.lz, -1
  %i.mb = and i64 %.lcssa.i145, %i.ma
  %.neg = sub nsw i32 %i.dq, %.sroa.94268.4680
  %reass.sub.i146 = add nsw i32 %.neg, %.062.lcssa.i142.neg705 ; 2 uses
  %i.mc = add nuw nsw i32 %reass.sub.i146, 4
  %i.md = icmp ugt i32 %reass.sub.i146, 1
  tail call void @llvm.assume(i1 %i.md)
  br label %bb.bb

bb.av:                                            ; preds = %bb.at, %.preheader.i126
  %i.me = phi i8 [ %i.kz, %.preheader.i126 ], [ %i.ld, %bb.at ] ; 2 uses
  %.2.ph.i129 = phi i32 [ 1, %.preheader.i126 ], [ 2, %bb.at ] ; 3 uses
  %i.mf = zext i8 %i.me to i64
  %indvars.iv.next.1.i130 = add nuw nsw i64 %i.lj, 16
  %i.mg = sub nuw nsw i64 48, %i.lj
  %i.mh = shl nuw nsw i64 %i.mf, %i.mg
  %i.mi = or i64 %i.mh, %i.ln                     ; 2 uses
  %.not.1.i131 = icmp eq i8 %i.me, -1
  br i1 %.not.1.i131, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mj = zext nneg i32 %.2.ph.i129 to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !140
  %i.mn = icmp eq i8 %i.mm, 0
  br i1 %i.mn, label %bb.ax, label %bb.au

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sink.i132 = phi i32 [ 1, %bb.av ], [ 2, %bb.aw ]
  %i.mo = add nuw nsw i32 %.sink.i132, %.2.ph.i129 ; 3 uses
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 %i.mp ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !140 ; 2 uses
  %i.ms = zext i8 %i.mr to i64
  %indvars.iv.next.2.i133 = add nuw nsw i64 %i.lj, 24
  %i.mt = sub nuw nsw i64 40, %i.lj
  %i.mu = shl nuw nsw i64 %i.ms, %i.mt
  %i.mv = or i64 %i.mu, %i.mi                     ; 2 uses
  %.not.2.i134 = icmp eq i8 %i.mr, -1
  br i1 %.not.2.i134, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !140
  %i.my = icmp eq i8 %i.mx, 0
  br i1 %i.my, label %bb.az, label %bb.au

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink72.i135 = phi i32 [ 1, %bb.ax ], [ 2, %bb.ay ]
  %i.mz = add nuw nsw i32 %.sink72.i135, %i.mo    ; 3 uses
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 %i.na ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !140 ; 2 uses
  %i.nd = zext i8 %i.nc to i64
  %indvars.iv.next.3.i136 = or disjoint i32 %.sroa.33.4681, 32
  %i.ne = sub nuw nsw i64 32, %i.lj
  %i.nf = shl nuw nsw i64 %i.nd, %i.ne
  %i.ng = or i64 %i.nf, %i.mv                     ; 2 uses
  %.not.3.i137 = icmp eq i8 %i.nc, -1
  br i1 %.not.3.i137, label %bb.ba, label %.loopexit.i138

bb.ba:                                            ; preds = %bb.az
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 1
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !140
  %i.nj = icmp eq i8 %i.ni, 0
  br i1 %i.nj, label %.loopexit.i138, label %bb.au

.loopexit.i138:                                   ; preds = %bb.ba, %bb.az
  %.sink73.i139 = phi i32 [ 1, %bb.az ], [ 2, %bb.ba ]
  %i.nk = add nuw nsw i32 %.sink73.i139, %i.mz
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit.i138, %bb.au
  %.sroa.116287.12 = phi i32 [ %.sroa.116287.4679, %.loopexit.i138 ], [ %i.lx, %bb.au ]
  %.sroa.33.22 = phi i32 [ %indvars.iv.next.3.i136, %.loopexit.i138 ], [ 64, %bb.au ]
  %.sroa.0217.21 = phi i64 [ %i.ng, %.loopexit.i138 ], [ %i.mb, %bb.au ]
  %.3.i140 = phi i32 [ %i.nk, %.loopexit.i138 ], [ %i.mc, %bb.au ] ; 2 uses
  %i.nl = icmp sgt i32 %.3.i140, 4
  tail call void @llvm.assume(i1 %i.nl)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit147

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit147: ; preds = %bb.as, %bb.bb
  %.sroa.116287.13 = phi i32 [ %.sroa.116287.4679, %bb.as ], [ %.sroa.116287.12, %bb.bb ]
  %.sroa.33.23 = phi i32 [ %i.lv, %bb.as ], [ %.sroa.33.22, %bb.bb ]
  %.sroa.0217.22 = phi i64 [ %i.lu, %bb.as ], [ %.sroa.0217.21, %bb.bb ]
  %.021.i141 = phi i32 [ 4, %bb.as ], [ %.3.i140, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.nm = add nuw nsw i32 %.021.i141, %.sroa.94268.4680
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80: ; preds = %.preheader578, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit147
  %.sroa.116287.9 = phi i32 [ %.sroa.116287.13, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit147 ], [ %.sroa.116287.4679, %.preheader578 ] ; 2 uses
  %.sroa.94268.9 = phi i32 [ %i.nm, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit147 ], [ %.sroa.94268.4680, %.preheader578 ] ; 2 uses
  %.sroa.33.16 = phi i32 [ %.sroa.33.23, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit147 ], [ %.sroa.33.4681, %.preheader578 ]
  %.sroa.0217.15 = phi i64 [ %.sroa.0217.22, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit147 ], [ %.sroa.0217.3682, %.preheader578 ] ; 2 uses
  %i.nn = lshr i64 %.sroa.0217.15, 53             ; 3 uses
  %i.no = trunc nuw nsw i64 %i.nn to i32          ; 2 uses
  %i.np = load ptr, ptr %i.bf, align 8, !tbaa !155
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.nn
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !22 ; 4 uses
  %i.ns = lshr i32 %i.nr, 9
  %i.nt = and i32 %i.nr, 255                      ; 4 uses
  %i.nu = icmp samesign ult i32 %i.nt, 33
  tail call void @llvm.assume(i1 %i.nu)
  %i.nv = sub nuw nsw i32 %.sroa.33.16, %i.nt     ; 3 uses
  %i.nw = zext nneg i32 %i.nt to i64
  %i.nx = shl i64 %.sroa.0217.15, %i.nw           ; 3 uses
  %i.ny = and i32 %i.nr, 256
  %.not.i40 = icmp eq i32 %i.ny, 0
  br i1 %.not.i40, label %bb.bc, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.bc:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80
  %.not17.i = icmp eq i32 %i.nr, 0
  br i1 %.not17.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nz = trunc i32 %i.ns to i8                   ; 2 uses
  %i.oa = icmp ne i8 %i.nz, 0
  tail call void @llvm.assume(i1 %i.oa)
  br label %bb.bi

bb.be:                                            ; preds = %bb.bc
  %i.ob = icmp eq i32 %i.nt, 0
  tail call void @llvm.assume(i1 %i.ob)
  %i.oc = add nsw i32 %i.nv, -11                  ; 2 uses
  %i.od = shl i64 %i.nx, 11                       ; 2 uses
  %i.oe = load ptr, ptr %i.bh, align 8, !tbaa !156
  %i.of = load ptr, ptr %i.bg, align 8, !tbaa !157
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = ashr exact i64 %i.oi, 2
  %i.ok = add nsw i64 %i.oj, -1                   ; 3 uses
  %.sroa.0.018.i83 = trunc nuw nsw i64 %i.nn to i16 ; 2 uses
  %i.ol = icmp ugt i64 %i.ok, 11
  br i1 %i.ol, label %.lr.ph.i102, label %.critedge.i85

.lr.ph.i102:                                      ; preds = %bb.be
  %i.om = load ptr, ptr %i.bi, align 8, !tbaa !160
  br label %bb.bf

bb.bf:                                            ; preds = %.critedge2.i109, %.lr.ph.i102
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
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
  %invariant.op.a = add i32 %i.x, -2
  %i.bh = icmp sgt i32 %i.n, 1                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = zext nneg i32 %.sroa.223.0.copyload to i64
  %i.bl = zext i32 %invariant.op.a to i64
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
  ret i32 %i.xw

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit168
  %indvars.iv967.a = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next968, %_ZN8rawspeed10ByteStream9skipBytesEj.exit168 ] ; 5 uses
  %.sroa.10429.0917 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.xw, %_ZN8rawspeed10ByteStream9skipBytesEj.exit168 ] ; 5 uses
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
  %.not34 = icmp eq i64 %indvars.iv967.a, 0
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
  %i.di = trunc i64 %indvars.iv967.a to i32
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
  %i.dr = mul nsw i64 %indvars.iv967.a, %i.ar
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
  %i.dx = icmp eq i64 %indvars.iv967.a, %i.bp
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
  %6 = add nuw nsw i32 %.sroa.137365.10856, 8
  %.not.i.i57 = icmp samesign ugt i32 %6, %i.do
  br i1 %.not.i.i57, label %bb.r, label %bb.q, !prof !141

bb.q:                                             ; preds = %bb.p
  %i.ej = zext nneg i32 %.sroa.137365.10856 to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ej
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.el = icmp samesign ugt i32 %.sroa.137365.10856, %i.ds
  br i1 %i.el, label %bb.s, label %bb.t, !prof !141

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.t:                                             ; preds = %bb.r
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.do, i32 %.sroa.137365.10856) ; 3 uses
  %i.em = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.do, i32 %i.em)
  %i.en = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.eo = icmp samesign ult i32 %i.en, 9
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ep
  %i.er = zext nneg i32 %i.en to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.eq, i64 %i.er, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.t ], [ %i.ek, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %3, align 8
  %i.es = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.et = icmp ne i8 %i.es, -1
  %i.eu = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.ev = trunc i64 %i.eu to i8                   ; 3 uses
  %i.ew = icmp ne i8 %i.ev, -1
  %i.ex = and i1 %i.et, %i.ew
  %i.ey = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.ez = trunc i64 %i.ey to i8                   ; 2 uses
  %i.fa = icmp ne i8 %i.ez, -1
  %i.fb = and i1 %i.fa, %i.ex
  %i.fc = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.fd = icmp ne i64 %i.fc, 4278190080
  %i.fe = and i1 %i.fd, %i.fb
  br i1 %i.fe, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.ff = zext nneg i32 %.sroa.48.14859 to i64    ; 8 uses
  %i.fg = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.ff, 8
  %i.fh = sub nuw nsw i64 56, %i.ff
  %i.fi = shl nuw i64 %i.fg, %i.fh
  %i.fj = or i64 %i.fi, %.sroa.0289.13860         ; 2 uses
  %.not.i171 = icmp eq i8 %i.es, -1
  br i1 %.not.i171, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fk = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.fl = tail call i32 @llvm.bswap.i32(i32 %i.fk)
  %i.fm = zext i32 %i.fl to i64
  %i.fn = sub nuw nsw i32 32, %.sroa.48.14859
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = shl nuw i64 %i.fm, %i.fo
  %i.fq = or i64 %i.fp, %.sroa.0289.13860
  %i.fr = or disjoint i32 %.sroa.48.14859, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.v:                                             ; preds = %.preheader.i
  %i.fs = icmp eq i8 %i.ev, 0
  br i1 %i.fs, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v
  %.062.lcssa.i.neg920 = phi i32 [ 0, %bb.v ], [ -1, %bb.y ], [ -2, %bb.aa ], [ -3, %bb.ac ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.v ], [ %.2.ph.i, %bb.y ], [ %i.gk, %bb.aa ], [ %i.gv, %bb.ac ]
  %.lcssa66.wide.i = phi i64 [ %i.ff, %bb.v ], [ %indvars.iv.next.i, %bb.y ], [ %indvars.iv.next.1.i, %bb.aa ], [ %indvars.iv.next.2.i, %bb.ac ]
  %.lcssa.i = phi i64 [ %i.fj, %bb.v ], [ %i.ge, %bb.y ], [ %i.gr, %bb.aa ], [ %i.hc, %bb.ac ]
  %i.ft = add nuw nsw i32 %.01861.lcssa.i, %.sroa.137365.10856
  %i.fu = icmp slt i32 %.sroa.169393.10855, 0
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = lshr i64 -1, %.lcssa66.wide.i
  %i.fw = xor i64 %i.fv, -1
  %i.fx = and i64 %.lcssa.i, %i.fw
  %.neg752 = sub nsw i32 %i.do, %.sroa.137365.10856
  %reass.sub.i = add nsw i32 %.neg752, %.062.lcssa.i.neg920 ; 2 uses
  %i.fy = add nuw nsw i32 %reass.sub.i, 4
  %i.fz = icmp ugt i32 %reass.sub.i, 1
  tail call void @llvm.assume(i1 %i.fz)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v, %.preheader.i
  %i.ga = phi i8 [ %i.ev, %.preheader.i ], [ %i.ez, %bb.v ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.v ] ; 3 uses
  %i.gb = zext i8 %i.ga to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.ff, 16
  %i.gc = sub nuw nsw i64 48, %i.ff
  %i.gd = shl nuw nsw i64 %i.gb, %i.gc
  %i.ge = or i64 %i.gd, %i.fj                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.ga, -1
  br i1 %.not.1.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gf = zext nneg i32 %.2.ph.i to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !140
  %i.gj = icmp eq i8 %i.gi, 0
  br i1 %i.gj, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink.i = phi i32 [ 1, %bb.x ], [ 2, %bb.y ]
  %i.gk = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 %i.gl ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !140 ; 2 uses
  %i.go = zext i8 %i.gn to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.ff, 24
  %i.gp = sub nuw nsw i64 40, %i.ff
  %i.gq = shl nuw nsw i64 %i.go, %i.gp
  %i.gr = or i64 %i.gq, %i.ge                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.gn, -1
  br i1 %.not.2.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !140
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %bb.ab, label %bb.w

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink72.i = phi i32 [ 1, %bb.z ], [ 2, %bb.aa ]
  %i.gv = add nuw nsw i32 %.sink72.i, %i.gk       ; 3 uses
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 %i.gw ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !140 ; 2 uses
  %i.gz = zext i8 %i.gy to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.48.14859, 32
  %i.ha = sub nuw nsw i64 32, %i.ff
  %i.hb = shl nuw nsw i64 %i.gz, %i.ha
  %i.hc = or i64 %i.hb, %i.gr                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.gy, -1
  br i1 %.not.3.i, label %bb.ac, label %.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !140
  %i.hf = icmp eq i8 %i.he, 0
  br i1 %i.hf, label %.loopexit.i, label %bb.w

.loopexit.i:                                      ; preds = %bb.ac, %bb.ab
  %.sink73.i = phi i32 [ 1, %bb.ab ], [ 2, %bb.ac ]
  %i.hg = add nuw nsw i32 %.sink73.i, %i.gv
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i, %bb.w
  %.sroa.169393.14 = phi i32 [ %.sroa.169393.10855, %.loopexit.i ], [ %i.ft, %bb.w ]
  %.sroa.48.29 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.w ]
  %.sroa.0289.28 = phi i64 [ %i.hc, %.loopexit.i ], [ %i.fx, %bb.w ]
  %.3.i = phi i32 [ %i.hg, %.loopexit.i ], [ %i.fy, %bb.w ] ; 2 uses
  %i.hh = icmp sgt i32 %.3.i, 4
  tail call void @llvm.assume(i1 %i.hh)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.u, %bb.ad
  %.sroa.169393.15 = phi i32 [ %.sroa.169393.10855, %bb.u ], [ %.sroa.169393.14, %bb.ad ]
  %.sroa.48.30 = phi i32 [ %i.fr, %bb.u ], [ %.sroa.48.29, %bb.ad ]
  %.sroa.0289.29 = phi i64 [ %i.fq, %bb.u ], [ %.sroa.0289.28, %bb.ad ]
  %.021.i = phi i32 [ 4, %bb.u ], [ %.3.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hi = add nuw nsw i32 %.021.i, %.sroa.137365.10856
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.o, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.169393.11 = phi i32 [ %.sroa.169393.15, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.169393.10855, %bb.o ] ; 3 uses
  %.sroa.137365.11 = phi i32 [ %i.hi, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.137365.10856, %bb.o ] ; 3 uses
  %.sroa.48.17 = phi i32 [ %.sroa.48.30, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.48.14859, %bb.o ]
  %.sroa.0289.16 = phi i64 [ %.sroa.0289.29, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0289.13860, %bb.o ] ; 2 uses
  %i.hj = lshr i64 %.sroa.0289.16, 53             ; 3 uses
  %i.hk = trunc nuw nsw i64 %i.hj to i32          ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 128
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !155
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hj
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !22 ; 4 uses
  %i.hp = ashr i32 %i.ho, 9                       ; 2 uses
  %i.hq = and i32 %i.ho, 255                      ; 4 uses
  %i.hr = icmp samesign ult i32 %i.hq, 33
  tail call void @llvm.assume(i1 %i.hr)
  %i.hs = sub nuw nsw i32 %.sroa.48.17, %i.hq     ; 3 uses
  %i.ht = zext nneg i32 %i.hq to i64
  %i.hu = shl i64 %.sroa.0289.16, %i.ht           ; 3 uses
  %i.hv = and i32 %i.ho, 256
  %.not.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i, label %bb.ae, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.ae:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i.i = icmp eq i32 %i.ho, 0
  br i1 %.not17.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hw = trunc i32 %i.hp to i8                   ; 2 uses
  %i.hx = icmp ne i8 %i.hw, 0
  tail call void @llvm.assume(i1 %i.hx)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.hy = icmp eq i32 %i.hq, 0
  tail call void @llvm.assume(i1 %i.hy)
  %i.hz = add nsw i32 %i.hs, -11                  ; 2 uses
  %i.ia = shl i64 %i.hu, 11                       ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 32
  %i.ic = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !156
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !157
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = ashr exact i64 %i.ih, 2
  %i.ij = add nsw i64 %i.ii, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.hj to i16 ; 2 uses
  %i.ik = icmp ugt i64 %i.ij, 11
  br i1 %i.ik, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.ag
  %i.il = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 80
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !160
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge2.i, %.lr.ph.i
  %.sroa.48.19 = phi i32 [ %i.hz, %.lr.ph.i ], [ %i.iw, %.critedge2.i ] ; 4 uses
  %.sroa.0289.18 = phi i64 [ %i.ia, %.lr.ph.i ], [ %i.ix, %.critedge2.i ] ; 3 uses
  %i.in = phi i64 [ 11, %.lr.ph.i ], [ %i.jc, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i ], [ %i.jb, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.hk, %.lr.ph.i ], [ %i.ja, %.critedge2.i ] ; 2 uses
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.im, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !149 ; 2 uses
  %i.iq = icmp eq i16 %i.ip, -1
  %i.ir = icmp ult i16 %i.ip, %.sroa.0.021.i
  %or.cond.i = select i1 %i.iq, i1 true, i1 %i.ir
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ah
  %i.is = icmp samesign ult i32 %.sroa.48.19, 65
  tail call void @llvm.assume(i1 %i.is)
  %i.it = icmp ne i32 %.sroa.48.19, 0
  tail call void @llvm.assume(i1 %i.it)
  %i.iu = lshr i64 %.sroa.0289.18, 63
  %i.iv = trunc nuw nsw i64 %i.iu to i32
  %i.iw = add nsw i32 %.sroa.48.19, -1            ; 2 uses
  %i.ix = shl i64 %.sroa.0289.18, 1               ; 2 uses
  %i.iy = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.iz = and i32 %i.iy, 131070
  %i.ja = or disjoint i32 %i.iz, %i.iv            ; 3 uses
  %i.jb = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.ja to i16           ; 2 uses
  %i.jc = zext i8 %i.jb to i64                    ; 3 uses
  %i.jd = icmp ugt i64 %i.ij, %i.jc
  br i1 %i.jd, label %bb.ah, label %.critedge.i.loopexit, !llvm.loop !1

.critedge.i.loopexit:                             ; preds = %bb.ah, %.critedge2.i
  %.sroa.48.18.ph = phi i32 [ %i.iw, %.critedge2.i ], [ %.sroa.48.19, %bb.ah ]
  %.sroa.0289.17.ph = phi i64 [ %i.ix, %.critedge2.i ], [ %.sroa.0289.18, %bb.ah ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.ja, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ah ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.jb, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ah ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ah ]
  %.lcssa17.i.ph = phi i64 [ %i.jc, %.critedge2.i ], [ %i.in, %bb.ah ]
  %i.je = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.ag
  %.sroa.48.18 = phi i32 [ %i.hz, %bb.ag ], [ %.sroa.48.18.ph, %.critedge.i.loopexit ]
  %.sroa.0289.17 = phi i64 [ %i.ia, %bb.ag ], [ %.sroa.0289.17.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.hk, %bb.ag ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.ag ], [ %i.je, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.ag ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.ag ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.jf = icmp ult i64 %i.ij, %.lcssa17.i
  br i1 %i.jf, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i
  %i.jg = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 80
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !160
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.jh, i64 %.lcssa17.i
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !149
  %i.jk = icmp ult i16 %i.jj, %.sroa.0.0.lcssa.i
  br i1 %i.jk, label %bb.aj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.aj:                                            ; preds = %bb.ai, %.critedge.i
  %i.jl = and i32 %.sroa.0.0.in.lcssa.i, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.jl, i32 noundef %.sroa.8.0.lcssa.i) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.ai
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.jm = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 104
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !160
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %.lcssa17.i
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !149
  %i.jq = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 8
  %.tr.i = zext i16 %i.jp to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.jr = zext i32 %.narrow.i to i64
  %i.js = load ptr, ptr %i.jq, align 8, !tbaa !161
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jr
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !140
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.af
  %.0734 = phi i8 [ %i.ju, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hw, %bb.af ] ; 5 uses
  %.sroa.48.16 = phi i32 [ %.sroa.48.18, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hs, %bb.af ] ; 8 uses
  %.sroa.0289.15 = phi i64 [ %.sroa.0289.17, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hu, %bb.af ] ; 6 uses
  %i.jv = icmp ult i8 %.0734, 17
  tail call void @llvm.assume(i1 %i.jv)
  switch i8 %.0734, label %bb.an [
    i8 16, label %bb.al
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  ]

bb.al:                                            ; preds = %bb.ak
  %i.jw = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !162, !range !130, !noundef !116
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.am, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.jz = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.jz)
  %i.ka = icmp samesign ugt i32 %.sroa.48.16, 15
  tail call void @llvm.assume(i1 %i.ka)
  %i.kb = add nsw i32 %.sroa.48.16, -16
  %i.kc = shl i64 %.sroa.0289.15, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.an:                                            ; preds = %bb.ak
  %i.kd = zext nneg i8 %.0734 to i32              ; 4 uses
  %i.ke = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = icmp ne i8 %.0734, 0
  tail call void @llvm.assume(i1 %i.kf)
  %i.kg = icmp samesign uge i32 %.sroa.48.16, %i.kd
  tail call void @llvm.assume(i1 %i.kg)
  %i.kh = sub nuw nsw i32 64, %i.kd
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = lshr i64 %.sroa.0289.15, %i.ki
  %i.kk = trunc nuw nsw i64 %i.kj to i32
  %i.kl = sub nuw nsw i32 %.sroa.48.16, %i.kd
  %i.km = zext nneg i8 %.0734 to i64
  %i.kn = shl i64 %.sroa.0289.15, %i.km
  %i.ko = icmp sgt i64 %.sroa.0289.15, -1
  %notmask.i.i = shl nsw i32 -1, %i.kd
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.kp = select i1 %i.ko, i32 %.neg.i.i, i32 0
  %.0.i.i61 = add nsw i32 %i.kp, %i.kk
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.48.15 = phi i32 [ %i.hs, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kl, %bb.an ], [ %i.kb, %bb.am ], [ %.sroa.48.16, %bb.al ], [ %.sroa.48.16, %bb.ak ] ; 3 uses
  %.sroa.0289.14 = phi i64 [ %i.hu, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kn, %bb.an ], [ %i.kc, %bb.am ], [ %.sroa.0289.15, %bb.al ], [ %.sroa.0289.15, %bb.ak ] ; 3 uses
  %.0.i.i = phi i32 [ %i.hp, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i61, %bb.an ], [ -32768, %bb.am ], [ -32768, %bb.al ], [ 0, %bb.ak ]
  %i.kq = trunc i32 %.0.i.i to i16
  %i.kr = add i16 %i.eh, %i.kq
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.ef, i64 %indvars.iv
  store i16 %i.kr, ptr %i.ks, align 2, !tbaa !149
  br i1 %.not55.i, label %.loopexit, label %bb.o, !llvm.loop !195

._crit_edge:                                      ; preds = %.loopexit, %bb.n
  %.sroa.169393.3.lcssa = phi i32 [ %.sroa.169393.0907, %bb.n ], [ %.sroa.169393.11, %.loopexit ] ; 2 uses
  %.sroa.137365.3.lcssa = phi i32 [ %.sroa.137365.0908, %bb.n ], [ %.sroa.137365.11, %.loopexit ] ; 2 uses
  %.sroa.48.3.lcssa = phi i32 [ %.sroa.48.0909, %bb.n ], [ %.sroa.48.15, %.loopexit ] ; 2 uses
  %.sroa.0289.2.lcssa = phi i64 [ %.sroa.0289.0910, %bb.n ], [ %.sroa.0289.14, %.loopexit ] ; 2 uses
  %.sroa.0508.0.lcssa = phi ptr [ %.sroa.0404.0906, %bb.n ], [ %i.ef, %.loopexit ]
  %.046.i.lcssa = phi i32 [ 0, %bb.n ], [ %i.eb, %.loopexit ] ; 3 uses
  %i.kt = load i32, ptr %i.bi, align 8, !tbaa !38 ; 2 uses
  %.not.i = icmp eq i32 %i.kt, 0
  br i1 %.not.i, label %bb.bq, label %.preheader754

.preheader754:                                    ; preds = %._crit_edge
  %i.ku = icmp eq i32 %i.kt, 1
  tail call void @llvm.assume(i1 %i.ku)
  %i.kv = shl nuw nsw i32 %.046.i.lcssa, 1
  %i.kw = zext nneg i32 %i.kv to i64
  br label %bb.ao

.loopexit755:                                     ; preds = %bb.bp
  %i.kx = add nuw nsw i32 %.046.i.lcssa, 1
  br label %bb.bq

bb.ao:                                            ; preds = %.preheader754, %bb.bp
  %.not53.i = phi i1 [ false, %.preheader754 ], [ true, %bb.bp ]
  %indvars.iv957.sroa.phi.sroa.speculated = phi ptr [ %.sroa.0.0.vec.extract1094, %.preheader754 ], [ %.sroa.0.8.vec.extract1098, %bb.bp ] ; 8 uses
  %indvars.iv957 = phi i64 [ 0, %.preheader754 ], [ 1, %bb.bp ] ; 2 uses
  %.sroa.0289.4882 = phi i64 [ %.sroa.0289.2.lcssa, %.preheader754 ], [ %.sroa.0289.5, %bb.bp ] ; 3 uses
  %.sroa.48.5881 = phi i32 [ %.sroa.48.3.lcssa, %.preheader754 ], [ %.sroa.48.6, %bb.bp ] ; 7 uses
  %.sroa.137365.5878 = phi i32 [ %.sroa.137365.3.lcssa, %.preheader754 ], [ %.sroa.137365.12, %bb.bp ] ; 8 uses
  %.sroa.169393.5877 = phi i32 [ %.sroa.169393.3.lcssa, %.preheader754 ], [ %.sroa.169393.12, %bb.bp ] ; 4 uses
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0508.0.lcssa, i64 %indvars.iv957
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !149
  %i.la = icmp samesign ult i32 %.sroa.48.5881, 65
  tail call void @llvm.assume(i1 %i.la)
  %.not.i69 = icmp samesign ult i32 %.sroa.48.5881, 32
  br i1 %.not.i69, label %bb.ap, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i68)
  %7 = add nuw nsw i32 %.sroa.137365.5878, 8
  %.not.i.i70 = icmp samesign ugt i32 %7, %i.do
  br i1 %.not.i.i70, label %bb.ar, label %bb.aq, !prof !141

bb.aq:                                            ; preds = %bb.ap
  %i.lb = zext nneg i32 %.sroa.137365.5878 to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.lb
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i72

bb.ar:                                            ; preds = %bb.ap
  %i.ld = icmp samesign ugt i32 %.sroa.137365.5878, %i.ds
  br i1 %i.ld, label %bb.as, label %bb.at, !prof !141

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 0, ptr %.sroa.0.i.i68, align 8
  %.sroa.speculated27.i.i.i76 = tail call i32 @llvm.umin.i32(i32 %i.do, i32 %.sroa.137365.5878) ; 3 uses
  %i.le = add nuw nsw i32 %.sroa.speculated27.i.i.i76, 8
  %.sroa.speculated.i.i.i77 = tail call i32 @llvm.umin.i32(i32 %i.do, i32 %i.le)
  %i.lf = sub nsw i32 %.sroa.speculated.i.i.i77, %.sroa.speculated27.i.i.i76 ; 2 uses
  %i.lg = icmp samesign ult i32 %i.lf, 9
  tail call void @llvm.assume(i1 %i.lg)
  %i.lh = zext nneg i32 %.sroa.speculated27.i.i.i76 to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.lh
  %i.lj = zext nneg i32 %i.lf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i68, ptr align 1 %i.li, i64 %i.lj, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i72

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i72: ; preds = %bb.at, %bb.aq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i73 = phi ptr [ %.sroa.0.i.i68, %bb.at ], [ %i.lc, %bb.aq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i73, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i68)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74, ptr %2, align 8
  %i.lk = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74 to i8 ; 2 uses
  %i.ll = icmp ne i8 %i.lk, -1
  %i.lm = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74, 8
  %i.ln = trunc i64 %i.lm to i8                   ; 3 uses
  %i.lo = icmp ne i8 %i.ln, -1
  %i.lp = and i1 %i.ll, %i.lo
  %i.lq = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74, 16
  %i.lr = trunc i64 %i.lq to i8                   ; 2 uses
  %i.ls = icmp ne i8 %i.lr, -1
  %i.lt = and i1 %i.ls, %i.lp
  %i.lu = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74, 4278190080
  %i.lv = icmp ne i64 %i.lu, 4278190080
  %i.lw = and i1 %i.lv, %i.lt
  br i1 %i.lw, label %bb.au, label %.preheader.i174

.preheader.i174:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i72
  %i.lx = zext nneg i32 %.sroa.48.5881 to i64     ; 8 uses
  %i.ly = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74, 255
  %indvars.iv.next.i175 = add nuw nsw i64 %i.lx, 8
  %i.lz = sub nuw nsw i64 56, %i.lx
  %i.ma = shl nuw i64 %i.ly, %i.lz
  %i.mb = or i64 %i.ma, %.sroa.0289.4882          ; 2 uses
  %.not.i176 = icmp eq i8 %i.lk, -1
  br i1 %.not.i176, label %bb.av, label %bb.ax

bb.au:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i72
  %i.mc = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74 to i32
  %i.md = tail call i32 @llvm.bswap.i32(i32 %i.mc)
  %i.me = zext i32 %i.md to i64
  %i.mf = sub nuw nsw i32 32, %.sroa.48.5881
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = shl nuw i64 %i.me, %i.mg
  %i.mi = or i64 %i.mh, %.sroa.0289.4882
  %i.mj = or disjoint i32 %.sroa.48.5881, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit195

bb.av:                                            ; preds = %.preheader.i174
  %i.mk = icmp eq i8 %i.ln, 0
  br i1 %i.mk, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.bc, %bb.ba, %bb.ay, %bb.av
  %.062.lcssa.i190.neg921 = phi i32 [ 0, %bb.av ], [ -1, %bb.ay ], [ -2, %bb.ba ], [ -3, %bb.bc ]
  %.01861.lcssa.i191 = phi i32 [ 0, %bb.av ], [ %.2.ph.i177, %bb.ay ], [ %i.nc, %bb.ba ], [ %i.nn, %bb.bc ]
  %.lcssa66.wide.i192 = phi i64 [ %i.lx, %bb.av ], [ %indvars.iv.next.i175, %bb.ay ], [ %indvars.iv.next.1.i178, %bb.ba ], [ %indvars.iv.next.2.i181, %bb.bc ]
  %.lcssa.i193 = phi i64 [ %i.mb, %bb.av ], [ %i.mw, %bb.ay ], [ %i.nj, %bb.ba ], [ %i.nu, %bb.bc ]
  %i.ml = add nuw nsw i32 %.01861.lcssa.i191, %.sroa.137365.5878
  %i.mm = icmp slt i32 %.sroa.169393.5877, 0
  tail call void @llvm.assume(i1 %i.mm)
  %i.mn = lshr i64 -1, %.lcssa66.wide.i192
  %i.mo = xor i64 %i.mn, -1
  %i.mp = and i64 %.lcssa.i193, %i.mo
  %.neg = sub nsw i32 %i.do, %.sroa.137365.5878
  %reass.sub.i194 = add nsw i32 %.neg, %.062.lcssa.i190.neg921 ; 2 uses
  %i.mq = add nuw nsw i32 %reass.sub.i194, 4
  %i.mr = icmp ugt i32 %reass.sub.i194, 1
  tail call void @llvm.assume(i1 %i.mr)
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av, %.preheader.i174
  %i.ms = phi i8 [ %i.ln, %.preheader.i174 ], [ %i.lr, %bb.av ] ; 2 uses
  %.2.ph.i177 = phi i32 [ 1, %.preheader.i174 ], [ 2, %bb.av ] ; 3 uses
  %i.mt = zext i8 %i.ms to i64
  %indvars.iv.next.1.i178 = add nuw nsw i64 %i.lx, 16
  %i.mu = sub nuw nsw i64 48, %i.lx
  %i.mv = shl nuw nsw i64 %i.mt, %i.mu
  %i.mw = or i64 %i.mv, %i.mb                     ; 2 uses
  %.not.1.i179 = icmp eq i8 %i.ms, -1
  br i1 %.not.1.i179, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mx = zext nneg i32 %.2.ph.i177 to i64
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !140
  %i.nb = icmp eq i8 %i.na, 0
  br i1 %i.nb, label %bb.az, label %bb.aw

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink.i180 = phi i32 [ 1, %bb.ax ], [ 2, %bb.ay ]
  %i.nc = add nuw nsw i32 %.sink.i180, %.2.ph.i177 ; 3 uses
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 %i.nd ; 2 uses
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !140 ; 2 uses
  %i.ng = zext i8 %i.nf to i64
  %indvars.iv.next.2.i181 = add nuw nsw i64 %i.lx, 24
  %i.nh = sub nuw nsw i64 40, %i.lx
  %i.ni = shl nuw nsw i64 %i.ng, %i.nh
  %i.nj = or i64 %i.ni, %i.mw                     ; 2 uses
  %.not.2.i182 = icmp eq i8 %i.nf, -1
  br i1 %.not.2.i182, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !140
  %i.nm = icmp eq i8 %i.nl, 0
  br i1 %i.nm, label %bb.bb, label %bb.aw

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink72.i183 = phi i32 [ 1, %bb.az ], [ 2, %bb.ba ]
  %i.nn = add nuw nsw i32 %.sink72.i183, %i.nc    ; 3 uses
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 %i.no ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !140 ; 2 uses
  %i.nr = zext i8 %i.nq to i64
  %indvars.iv.next.3.i184 = or disjoint i32 %.sroa.48.5881, 32
  %i.ns = sub nuw nsw i64 32, %i.lx
  %i.nt = shl nuw nsw i64 %i.nr, %i.ns
  %i.nu = or i64 %i.nt, %i.nj                     ; 2 uses
  %.not.3.i185 = icmp eq i8 %i.nq, -1
  br i1 %.not.3.i185, label %bb.bc, label %.loopexit.i186

bb.bc:                                            ; preds = %bb.bb
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !140
  %i.nx = icmp eq i8 %i.nw, 0
  br i1 %i.nx, label %.loopexit.i186, label %bb.aw

.loopexit.i186:                                   ; preds = %bb.bc, %bb.bb
  %.sink73.i187 = phi i32 [ 1, %bb.bb ], [ 2, %bb.bc ]
  %i.ny = add nuw nsw i32 %.sink73.i187, %i.nn
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i186, %bb.aw
  %.sroa.169393.16 = phi i32 [ %.sroa.169393.5877, %.loopexit.i186 ], [ %i.ml, %bb.aw ]
  %.sroa.48.31 = phi i32 [ %indvars.iv.next.3.i184, %.loopexit.i186 ], [ 64, %bb.aw ]
  %.sroa.0289.30 = phi i64 [ %i.nu, %.loopexit.i186 ], [ %i.mp, %bb.aw ]
  %.3.i188 = phi i32 [ %i.ny, %.loopexit.i186 ], [ %i.mq, %bb.aw ] ; 2 uses
  %i.nz = icmp sgt i32 %.3.i188, 4
  tail call void @llvm.assume(i1 %i.nz)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit195

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit195: ; preds = %bb.au, %bb.bd
  %.sroa.169393.17 = phi i32 [ %.sroa.169393.5877, %bb.au ], [ %.sroa.169393.16, %bb.bd ]
  %.sroa.48.32 = phi i32 [ %i.mj, %bb.au ], [ %.sroa.48.31, %bb.bd ]
  %.sroa.0289.31 = phi i64 [ %i.mi, %bb.au ], [ %.sroa.0289.30, %bb.bd ]
  %.021.i189 = phi i32 [ 4, %bb.au ], [ %.3.i188, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.oa = add nuw nsw i32 %.021.i189, %.sroa.137365.5878
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78: ; preds = %bb.ao, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit195
  %.sroa.169393.12 = phi i32 [ %.sroa.169393.17, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit195 ], [ %.sroa.169393.5877, %bb.ao ] ; 2 uses
  %.sroa.137365.12 = phi i32 [ %i.oa, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit195 ], [ %.sroa.137365.5878, %bb.ao ] ; 2 uses
  %.sroa.48.21 = phi i32 [ %.sroa.48.32, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit195 ], [ %.sroa.48.5881, %bb.ao ]
  %.sroa.0289.20 = phi i64 [ %.sroa.0289.31, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit195 ], [ %.sroa.0289.4882, %bb.ao ] ; 2 uses
  %i.ob = lshr i64 %.sroa.0289.20, 53             ; 3 uses
  %i.oc = trunc nuw nsw i64 %i.ob to i32          ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %indvars.iv957.sroa.phi.sroa.speculated, i64 128
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !155
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.ob
  %i.og = load i32, ptr %i.of, align 4, !tbaa !22 ; 4 uses
  %i.oh = ashr i32 %i.og, 9                       ; 2 uses
  %i.oi = and i32 %i.og, 255                      ; 4 uses
  %i.oj = icmp samesign ult i32 %i.oi, 33
  tail call void @llvm.assume(i1 %i.oj)
  %i.ok = sub nuw nsw i32 %.sroa.48.21, %i.oi     ; 3 uses
  %i.ol = zext nneg i32 %i.oi to i64
  %i.om = shl i64 %.sroa.0289.20, %i.ol           ; 3 uses
  %i.on = and i32 %i.og, 256
  %.not.i65.i = icmp eq i32 %i.on, 0
  br i1 %.not.i65.i, label %bb.be, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.be:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78
  %.not17.i67.i = icmp eq i32 %i.og, 0
  br i1 %.not17.i67.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oo = trunc i32 %i.oh to i8                   ; 2 uses
  %i.op = icmp ne i8 %i.oo, 0
  tail call void @llvm.assume(i1 %i.op)
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.oq = icmp eq i32 %i.oi, 0
  tail call void @llvm.assume(i1 %i.oq)
  %i.or = add nsw i32 %i.ok, -11                  ; 2 uses
  %i.os = shl i64 %i.om, 11                       ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %indvars.iv957.sroa.phi.sroa.speculated, i64 32
  %i.ou = getelementptr inbounds nuw i8, ptr %indvars.iv957.sroa.phi.sroa.speculated, i64 40
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !156
  %i.ow = load ptr, ptr %i.ot, align 8, !tbaa !157
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = ashr exact i64 %i.oz, 2
  %i.pb = add nsw i64 %i.pa, -1                   ; 3 uses
  %.sroa.0.018.i81 = trunc nuw nsw i64 %i.ob to i16 ; 2 uses
  %i.pc = icmp ugt i64 %i.pb, 11
  br i1 %i.pc, label %.lr.ph.i100, label %.critedge.i83

.lr.ph.i100:                                      ; preds = %bb.bg
  %i.pd = getelementptr inbounds nuw i8, ptr %indvars.iv957.sroa.phi.sroa.speculated, i64 80
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !160
  br label %bb.bh

bb.bh:                                            ; preds = %.critedge2.i107, %.lr.ph.i100
  %.sroa.48.23 = phi i32 [ %i.or, %.lr.ph.i100 ], [ %i.po, %.critedge2.i107 ] ; 4 uses
  %.sroa.0289.22 = phi i64 [ %i.os, %.lr.ph.i100 ], [ %i.pp, %.critedge2.i107 ] ; 3 uses
  %i.pf = phi i64 [ 11, %.lr.ph.i100 ], [ %i.pu, %.critedge2.i107 ] ; 2 uses
  %.sroa.0.021.i103 = phi i16 [ %.sroa.0.018.i81, %.lr.ph.i100 ], [ %.sroa.0.0.i108, %.critedge2.i107 ] ; 2 uses
  %.sroa.8.020.i104 = phi i8 [ 11, %.lr.ph.i100 ], [ %i.pt, %.critedge2.i107 ] ; 2 uses
  %.sroa.0.0.in19.i105 = phi i32 [ %i.oc, %.lr.ph.i100 ], [ %i.ps, %.critedge2.i107 ] ; 2 uses
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %i.pf
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !149 ; 2 uses
  %i.pi = icmp eq i16 %i.ph, -1
  %i.pj = icmp ult i16 %i.ph, %.sroa.0.021.i103
  %or.cond.i106 = select i1 %i.pi, i1 true, i1 %i.pj
  br i1 %or.cond.i106, label %.critedge2.i107, label %.critedge.i83.loopexit

.critedge2.i107:                                  ; preds = %bb.bh
  %i.pk = icmp samesign ult i32 %.sroa.48.23, 65
  tail call void @llvm.assume(i1 %i.pk)
  %i.pl = icmp ne i32 %.sroa.48.23, 0
  tail call void @llvm.assume(i1 %i.pl)
  %i.pm = lshr i64 %.sroa.0289.22, 63
  %i.pn = trunc nuw nsw i64 %i.pm to i32
  %i.po = add nsw i32 %.sroa.48.23, -1            ; 2 uses
  %i.pp = shl i64 %.sroa.0289.22, 1               ; 2 uses
  %i.pq = shl nsw i32 %.sroa.0.0.in19.i105, 1
  %i.pr = and i32 %i.pq, 131070
  %i.ps = or disjoint i32 %i.pr, %i.pn            ; 3 uses
  %i.pt = add i8 %.sroa.8.020.i104, 1             ; 3 uses
  %.sroa.0.0.i108 = trunc i32 %i.ps to i16        ; 2 uses
  %i.pu = zext i8 %i.pt to i64                    ; 3 uses
  %i.pv = icmp ugt i64 %i.pb, %i.pu
  br i1 %i.pv, label %bb.bh, label %.critedge.i83.loopexit, !llvm.loop !1

.critedge.i83.loopexit:                           ; preds = %bb.bh, %.critedge2.i107
  %.sroa.48.22.ph = phi i32 [ %i.po, %.critedge2.i107 ], [ %.sroa.48.23, %bb.bh ]
  %.sroa.0289.21.ph = phi i64 [ %i.pp, %.critedge2.i107 ], [ %.sroa.0289.22, %bb.bh ]
  %.sroa.0.0.in.lcssa.i84.ph = phi i32 [ %i.ps, %.critedge2.i107 ], [ %.sroa.0.0.in19.i105, %bb.bh ]
  %.sroa.8.0.lcssa.i85.ph = phi i8 [ %i.pt, %.critedge2.i107 ], [ %.sroa.8.020.i104, %bb.bh ]
  %.sroa.0.0.lcssa.i86.ph = phi i16 [ %.sroa.0.0.i108, %.critedge2.i107 ], [ %.sroa.0.021.i103, %bb.bh ]
  %.lcssa17.i87.ph = phi i64 [ %i.pu, %.critedge2.i107 ], [ %i.pf, %bb.bh ]
  %i.pw = zext i8 %.sroa.8.0.lcssa.i85.ph to i32
  br label %.critedge.i83

.critedge.i83:                                    ; preds = %.critedge.i83.loopexit, %bb.bg
  %.sroa.48.22 = phi i32 [ %i.or, %bb.bg ], [ %.sroa.48.22.ph, %.critedge.i83.loopexit ]
  %.sroa.0289.21 = phi i64 [ %i.os, %bb.bg ], [ %.sroa.0289.21.ph, %.critedge.i83.loopexit ]
  %.sroa.0.0.in.lcssa.i84 = phi i32 [ %i.oc, %bb.bg ], [ %.sroa.0.0.in.lcssa.i84.ph, %.critedge.i83.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i85 = phi i32 [ 11, %bb.bg ], [ %i.pw, %.critedge.i83.loopexit ]
  %.sroa.0.0.lcssa.i86 = phi i16 [ %.sroa.0.018.i81, %bb.bg ], [ %.sroa.0.0.lcssa.i86.ph, %.critedge.i83.loopexit ]
  %.lcssa17.i87 = phi i64 [ 11, %bb.bg ], [ %.lcssa17.i87.ph, %.critedge.i83.loopexit ] ; 3 uses
  %i.px = icmp ult i64 %i.pb, %.lcssa17.i87
  br i1 %i.px, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i83
  %i.py = getelementptr inbounds nuw i8, ptr %indvars.iv957.sroa.phi.sroa.speculated, i64 80
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !160
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.pz, i64 %.lcssa17.i87
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !149
  %i.qc = icmp ult i16 %i.qb, %.sroa.0.0.lcssa.i86
  br i1 %i.qc, label %bb.bj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109

bb.bj:                                            ; preds = %bb.bi, %.critedge.i83
  %i.qd = and i32 %.sroa.0.0.in.lcssa.i84, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.qd, i32 noundef %.sroa.8.0.lcssa.i85) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109: ; preds = %bb.bi
  %.sroa.0.0.mask.i89 = and i32 %.sroa.0.0.in.lcssa.i84, 65535
  %i.qe = getelementptr inbounds nuw i8, ptr %indvars.iv957.sroa.phi.sroa.speculated, i64 104
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !160
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %.lcssa17.i87
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !149
  %i.qi = getelementptr inbounds nuw i8, ptr %indvars.iv957.sroa.phi.sroa.speculated, i64 8
  %.tr.i90 = zext i16 %i.qh to i32
  %.narrow.i91 = sub nsw i32 %.sroa.0.0.mask.i89, %.tr.i90
  %i.qj = zext i32 %.narrow.i91 to i64
  %i.qk = load ptr, ptr %i.qi, align 8, !tbaa !161
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qj
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !140
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109, %bb.bf
  %.0736 = phi i8 [ %i.qm, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109 ], [ %i.oo, %bb.bf ] ; 5 uses
  %.sroa.48.7 = phi i32 [ %.sroa.48.22, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109 ], [ %i.ok, %bb.bf ] ; 8 uses
  %.sroa.0289.6 = phi i64 [ %.sroa.0289.21, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109 ], [ %i.om, %bb.bf ] ; 6 uses
  %i.qn = icmp ult i8 %.0736, 17
  tail call void @llvm.assume(i1 %i.qn)
  switch i8 %.0736, label %bb.bn [
    i8 16, label %bb.bl
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.qo = getelementptr inbounds nuw i8, ptr %indvars.iv957.sroa.phi.sroa.speculated, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !162, !range !130, !noundef !116
  %i.qq = trunc nuw i8 %i.qp to i1
  br i1 %i.qq, label %bb.bm, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bm:                                            ; preds = %bb.bl
  %i.qr = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.qr)
  %i.qs = icmp samesign ugt i32 %.sroa.48.7, 15
  tail call void @llvm.assume(i1 %i.qs)
  %i.qt = add nsw i32 %.sroa.48.7, -16
  %i.qu = shl i64 %.sroa.0289.6, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bn:                                            ; preds = %bb.bk
  %i.qv = zext nneg i8 %.0736 to i32              ; 4 uses
  %i.qw = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.qw)
  %i.qx = icmp ne i8 %.0736, 0
  tail call void @llvm.assume(i1 %i.qx)
  %i.qy = icmp samesign uge i32 %.sroa.48.7, %i.qv
  tail call void @llvm.assume(i1 %i.qy)
  %i.qz = sub nuw nsw i32 64, %i.qv
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = lshr i64 %.sroa.0289.6, %i.ra
  %i.rc = trunc nuw nsw i64 %i.rb to i32
  %i.rd = sub nuw nsw i32 %.sroa.48.7, %i.qv
  %i.re = zext nneg i8 %.0736 to i64
  %i.rf = shl i64 %.sroa.0289.6, %i.re
  %i.rg = icmp sgt i64 %.sroa.0289.6, -1
  %notmask.i.i111 = shl nsw i32 -1, %i.qv
  %.neg.i.i112 = or disjoint i32 %notmask.i.i111, 1
  %i.rh = select i1 %i.rg, i32 %.neg.i.i112, i32 0
  %.0.i.i113 = add nsw i32 %i.rh, %i.rc
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78
  %.sroa.48.6 = phi i32 [ %i.ok, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78 ], [ %i.rd, %bb.bn ], [ %i.qt, %bb.bm ], [ %.sroa.48.7, %bb.bl ], [ %.sroa.48.7, %bb.bk ] ; 2 uses
  %.sroa.0289.5 = phi i64 [ %i.om, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78 ], [ %i.rf, %bb.bn ], [ %i.qu, %bb.bm ], [ %.sroa.0289.6, %bb.bl ], [ %.sroa.0289.6, %bb.bk ] ; 2 uses
  %.0.i66.i = phi i32 [ %i.oh, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78 ], [ %.0.i.i113, %bb.bn ], [ -32768, %bb.bm ], [ -32768, %bb.bl ], [ 0, %bb.bk ]
  %i.ri = or disjoint i64 %indvars.iv957, %i.kw   ; 2 uses
  %i.rj = icmp samesign ult i64 %i.ri, %i.bm
  br i1 %i.rj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %i.rk = trunc i32 %.0.i66.i to i16
  %i.rl = add i16 %i.kz, %i.rk
  %i.rm = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.ri
  store i16 %i.rl, ptr %i.rm, align 2, !tbaa !149
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  br i1 %.not53.i, label %.loopexit755, label %bb.ao, !llvm.loop !196

bb.bq:                                            ; preds = %.loopexit755, %._crit_edge
  %.sroa.169393.6 = phi i32 [ %.sroa.169393.3.lcssa, %._crit_edge ], [ %.sroa.169393.12, %.loopexit755 ] ; 2 uses
  %.sroa.137365.6 = phi i32 [ %.sroa.137365.3.lcssa, %._crit_edge ], [ %.sroa.137365.12, %.loopexit755 ] ; 2 uses
  %.sroa.48.8 = phi i32 [ %.sroa.48.3.lcssa, %._crit_edge ], [ %.sroa.48.6, %.loopexit755 ] ; 2 uses
  %.sroa.0289.7 = phi i64 [ %.sroa.0289.2.lcssa, %._crit_edge ], [ %.sroa.0289.5, %.loopexit755 ] ; 2 uses
  %.1.i = phi i32 [ %.046.i.lcssa, %._crit_edge ], [ %i.kx, %.loopexit755 ] ; 2 uses
  %i.rn = load i32, ptr %i.bj, align 8, !tbaa !163 ; 2 uses
  %i.ro = icmp slt i32 %.1.i, %i.rn
  br i1 %i.ro, label %.preheader753, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

.preheader753:                                    ; preds = %bb.bq, %bb.br
  %.2.i899 = phi i32 [ %i.rp, %bb.br ], [ %.1.i, %bb.bq ]
  %.sroa.0289.8898 = phi i64 [ %.sroa.0289.10, %bb.br ], [ %.sroa.0289.7, %bb.bq ]
  %.sroa.48.9897 = phi i32 [ %.sroa.48.11, %bb.br ], [ %.sroa.48.8, %bb.bq ]
  %.sroa.137365.7896 = phi i32 [ %.sroa.137365.13, %bb.br ], [ %.sroa.137365.6, %bb.bq ]
  %.sroa.169393.7895 = phi i32 [ %.sroa.169393.13, %bb.br ], [ %.sroa.169393.6, %bb.bq ]
  br label %bb.bs

bb.br:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %i.rp = add nsw i32 %.2.i899, 1                 ; 2 uses
  %exitcond963.not = icmp eq i32 %i.rp, %i.rn
  br i1 %exitcond963.not, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, label %.preheader753, !llvm.loop !197

bb.bs:                                            ; preds = %.preheader753, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %.not52.i = phi i1 [ false, %.preheader753 ], [ true, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ]
  %indvars.iv960.sroa.phi.sroa.speculated = phi ptr [ %.sroa.0.0.vec.extract, %.preheader753 ], [ %.sroa.0.8.vec.extract1100, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 8 uses
  %.sroa.0289.9893 = phi i64 [ %.sroa.0289.8898, %.preheader753 ], [ %.sroa.0289.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 3 uses
  %.sroa.48.10892 = phi i32 [ %.sroa.48.9897, %.preheader753 ], [ %.sroa.48.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 7 uses
  %.sroa.137365.8889 = phi i32 [ %.sroa.137365.7896, %.preheader753 ], [ %.sroa.137365.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 8 uses
  %.sroa.169393.8888 = phi i32 [ %.sroa.169393.7895, %.preheader753 ], [ %.sroa.169393.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 4 uses
  %i.rq = icmp samesign ult i32 %.sroa.48.10892, 65
  tail call void @llvm.assume(i1 %i.rq)
  %.not.i119 = icmp samesign ult i32 %.sroa.48.10892, 32
  br i1 %.not.i119, label %bb.bt, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i118)
  %8 = add nuw nsw i32 %.sroa.137365.8889, 8
  %.not.i.i120 = icmp samesign ugt i32 %8, %i.do
  br i1 %.not.i.i120, label %bb.bv, label %bb.bu, !prof !141

bb.bu:                                            ; preds = %bb.bt
  %i.rr = zext nneg i32 %.sroa.137365.8889 to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.rr
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i122

bb.bv:                                            ; preds = %bb.bt
  %i.rt = icmp samesign ugt i32 %.sroa.137365.8889, %i.ds
  br i1 %i.rt, label %bb.bw, label %bb.bx, !prof !141

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.bx:                                            ; preds = %bb.bv
  store i64 0, ptr %.sroa.0.i.i118, align 8
  %.sroa.speculated27.i.i.i126 = tail call i32 @llvm.umin.i32(i32 %i.do, i32 %.sroa.137365.8889) ; 3 uses
  %i.ru = add nuw nsw i32 %.sroa.speculated27.i.i.i126, 8
  %.sroa.speculated.i.i.i127 = tail call i32 @llvm.umin.i32(i32 %i.do, i32 %i.ru)
  %i.rv = sub nsw i32 %.sroa.speculated.i.i.i127, %.sroa.speculated27.i.i.i126 ; 2 uses
  %i.rw = icmp samesign ult i32 %i.rv, 9
  tail call void @llvm.assume(i1 %i.rw)
  %i.rx = zext nneg i32 %.sroa.speculated27.i.i.i126 to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.rx
  %i.rz = zext nneg i32 %i.rv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i118, ptr align 1 %i.ry, i64 %i.rz, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i122

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i122: ; preds = %bb.bx, %bb.bu
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i123 = phi ptr [ %.sroa.0.i.i118, %bb.bx ], [ %i.rs, %bb.bu ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i123, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i118)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124, ptr %1, align 8
  %i.sa = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124 to i8 ; 2 uses
  %i.sb = icmp ne i8 %i.sa, -1
  %i.sc = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124, 8
  %i.sd = trunc i64 %i.sc to i8                   ; 3 uses
  %i.se = icmp ne i8 %i.sd, -1
  %i.sf = and i1 %i.sb, %i.se
  %i.sg = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124, 16
  %i.sh = trunc i64 %i.sg to i8                   ; 2 uses
  %i.si = icmp ne i8 %i.sh, -1
  %i.sj = and i1 %i.si, %i.sf
  %i.sk = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124, 4278190080
  %i.sl = icmp ne i64 %i.sk, 4278190080
  %i.sm = and i1 %i.sl, %i.sj
  br i1 %i.sm, label %bb.by, label %.preheader.i198

.preheader.i198:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i122
  %i.sn = zext nneg i32 %.sroa.48.10892 to i64    ; 8 uses
  %i.so = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124, 255
  %indvars.iv.next.i199 = add nuw nsw i64 %i.sn, 8
  %i.sp = sub nuw nsw i64 56, %i.sn
  %i.sq = shl nuw i64 %i.so, %i.sp
  %i.sr = or i64 %i.sq, %.sroa.0289.9893          ; 2 uses
  %.not.i200 = icmp eq i8 %i.sa, -1
  br i1 %.not.i200, label %bb.bz, label %bb.cb

bb.by:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i122
  %i.ss = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124 to i32
  %i.st = tail call i32 @llvm.bswap.i32(i32 %i.ss)
  %i.su = zext i32 %i.st to i64
  %i.sv = sub nuw nsw i32 32, %.sroa.48.10892
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = shl nuw i64 %i.su, %i.sw
  %i.sy = or i64 %i.sx, %.sroa.0289.9893
  %i.sz = or disjoint i32 %.sroa.48.10892, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit219

bb.bz:                                            ; preds = %.preheader.i198
  %i.ta = icmp eq i8 %i.sd, 0
  br i1 %i.ta, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.cg, %bb.ce, %bb.cc, %bb.bz
  %.062.lcssa.i214.neg922 = phi i32 [ 0, %bb.bz ], [ -1, %bb.cc ], [ -2, %bb.ce ], [ -3, %bb.cg ]
  %.01861.lcssa.i215 = phi i32 [ 0, %bb.bz ], [ %.2.ph.i201, %bb.cc ], [ %i.ts, %bb.ce ], [ %i.ud, %bb.cg ]
  %.lcssa66.wide.i216 = phi i64 [ %i.sn, %bb.bz ], [ %indvars.iv.next.i199, %bb.cc ], [ %indvars.iv.next.1.i202, %bb.ce ], [ %indvars.iv.next.2.i205, %bb.cg ]
  %.lcssa.i217 = phi i64 [ %i.sr, %bb.bz ], [ %i.tm, %bb.cc ], [ %i.tz, %bb.ce ], [ %i.uk, %bb.cg ]
  %i.tb = add nuw nsw i32 %.01861.lcssa.i215, %.sroa.137365.8889
  %i.tc = icmp slt i32 %.sroa.169393.8888, 0
  tail call void @llvm.assume(i1 %i.tc)
  %i.td = lshr i64 -1, %.lcssa66.wide.i216
  %i.te = xor i64 %i.td, -1
  %i.tf = and i64 %.lcssa.i217, %i.te
  %.neg751 = sub nsw i32 %i.do, %.sroa.137365.8889
  %reass.sub.i218 = add nsw i32 %.neg751, %.062.lcssa.i214.neg922 ; 2 uses
  %i.tg = add nuw nsw i32 %reass.sub.i218, 4
  %i.th = icmp ugt i32 %reass.sub.i218, 1
  tail call void @llvm.assume(i1 %i.th)
  br label %bb.ch

bb.cb:                                            ; preds = %bb.bz, %.preheader.i198
  %i.ti = phi i8 [ %i.sd, %.preheader.i198 ], [ %i.sh, %bb.bz ] ; 2 uses
  %.2.ph.i201 = phi i32 [ 1, %.preheader.i198 ], [ 2, %bb.bz ] ; 3 uses
  %i.tj = zext i8 %i.ti to i64
  %indvars.iv.next.1.i202 = add nuw nsw i64 %i.sn, 16
  %i.tk = sub nuw nsw i64 48, %i.sn
  %i.tl = shl nuw nsw i64 %i.tj, %i.tk
  %i.tm = or i64 %i.tl, %i.sr                     ; 2 uses
  %.not.1.i203 = icmp eq i8 %i.ti, -1
  br i1 %.not.1.i203, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.tn = zext nneg i32 %.2.ph.i201 to i64
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 1
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !140
  %i.tr = icmp eq i8 %i.tq, 0
  br i1 %i.tr, label %bb.cd, label %bb.ca

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink.i204 = phi i32 [ 1, %bb.cb ], [ 2, %bb.cc ]
  %i.ts = add nuw nsw i32 %.sink.i204, %.2.ph.i201 ; 3 uses
  %i.tt = zext nneg i32 %i.ts to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 %i.tt ; 2 uses
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !140 ; 2 uses
  %i.tw = zext i8 %i.tv to i64
  %indvars.iv.next.2.i205 = add nuw nsw i64 %i.sn, 24
  %i.tx = sub nuw nsw i64 40, %i.sn
  %i.ty = shl nuw nsw i64 %i.tw, %i.tx
  %i.tz = or i64 %i.ty, %i.tm                     ; 2 uses
  %.not.2.i206 = icmp eq i8 %i.tv, -1
  br i1 %.not.2.i206, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 1
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !140
  %i.uc = icmp eq i8 %i.ub, 0
  br i1 %i.uc, label %bb.cf, label %bb.ca

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sink72.i207 = phi i32 [ 1, %bb.cd ], [ 2, %bb.ce ]
  %i.ud = add nuw nsw i32 %.sink72.i207, %i.ts    ; 3 uses
  %i.ue = zext nneg i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ue ; 2 uses
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !140 ; 2 uses
  %i.uh = zext i8 %i.ug to i64
  %indvars.iv.next.3.i208 = or disjoint i32 %.sroa.48.10892, 32
  %i.ui = sub nuw nsw i64 32, %i.sn
  %i.uj = shl nuw nsw i64 %i.uh, %i.ui
  %i.uk = or i64 %i.uj, %i.tz                     ; 2 uses
  %.not.3.i209 = icmp eq i8 %i.ug, -1
  br i1 %.not.3.i209, label %bb.cg, label %.loopexit.i210

bb.cg:                                            ; preds = %bb.cf
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !140
  %i.un = icmp eq i8 %i.um, 0
  br i1 %i.un, label %.loopexit.i210, label %bb.ca

.loopexit.i210:                                   ; preds = %bb.cg, %bb.cf
  %.sink73.i211 = phi i32 [ 1, %bb.cf ], [ 2, %bb.cg ]
  %i.uo = add nuw nsw i32 %.sink73.i211, %i.ud
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i210, %bb.ca
  %.sroa.169393.18 = phi i32 [ %.sroa.169393.8888, %.loopexit.i210 ], [ %i.tb, %bb.ca ]
  %.sroa.48.33 = phi i32 [ %indvars.iv.next.3.i208, %.loopexit.i210 ], [ 64, %bb.ca ]
  %.sroa.0289.32 = phi i64 [ %i.uk, %.loopexit.i210 ], [ %i.tf, %bb.ca ]
  %.3.i212 = phi i32 [ %i.uo, %.loopexit.i210 ], [ %i.tg, %bb.ca ] ; 2 uses
  %i.up = icmp sgt i32 %.3.i212, 4
  tail call void @llvm.assume(i1 %i.up)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit219

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit219: ; preds = %bb.by, %bb.ch
  %.sroa.169393.19 = phi i32 [ %.sroa.169393.8888, %bb.by ], [ %.sroa.169393.18, %bb.ch ]
  %.sroa.48.34 = phi i32 [ %i.sz, %bb.by ], [ %.sroa.48.33, %bb.ch ]
  %.sroa.0289.33 = phi i64 [ %i.sy, %bb.by ], [ %.sroa.0289.32, %bb.ch ]
  %.021.i213 = phi i32 [ 4, %bb.by ], [ %.3.i212, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.uq = add nuw nsw i32 %.021.i213, %.sroa.137365.8889
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128: ; preds = %bb.bs, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit219
  %.sroa.169393.13 = phi i32 [ %.sroa.169393.19, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit219 ], [ %.sroa.169393.8888, %bb.bs ] ; 3 uses
  %.sroa.137365.13 = phi i32 [ %i.uq, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit219 ], [ %.sroa.137365.8889, %bb.bs ] ; 3 uses
  %.sroa.48.25 = phi i32 [ %.sroa.48.34, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit219 ], [ %.sroa.48.10892, %bb.bs ]
  %.sroa.0289.24 = phi i64 [ %.sroa.0289.33, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit219 ], [ %.sroa.0289.9893, %bb.bs ] ; 2 uses
  %i.ur = lshr i64 %.sroa.0289.24, 53             ; 3 uses
  %i.us = trunc nuw nsw i64 %i.ur to i32          ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %indvars.iv960.sroa.phi.sroa.speculated, i64 128
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !155
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.ur
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !22 ; 4 uses
  %i.ux = lshr i32 %i.uw, 9
  %i.uy = and i32 %i.uw, 255                      ; 4 uses
  %i.uz = icmp samesign ult i32 %i.uy, 33
  tail call void @llvm.assume(i1 %i.uz)
  %i.va = sub nuw nsw i32 %.sroa.48.25, %i.uy     ; 3 uses
  %i.vb = zext nneg i32 %i.uy to i64
  %i.vc = shl i64 %.sroa.0289.24, %i.vb           ; 3 uses
  %i.vd = and i32 %i.uw, 256
  %.not.i71.i = icmp eq i32 %i.vd, 0
  br i1 %.not.i71.i, label %bb.ci, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.ci:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128
  %.not17.i73.i = icmp eq i32 %i.uw, 0
  br i1 %.not17.i73.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ve = trunc i32 %i.ux to i8                   ; 2 uses
  %i.vf = icmp ne i8 %i.ve, 0
  tail call void @llvm.assume(i1 %i.vf)
  br label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.vg = icmp eq i32 %i.uy, 0
  tail call void @llvm.assume(i1 %i.vg)
  %i.vh = add nsw i32 %i.va, -11                  ; 2 uses
  %i.vi = shl i64 %i.vc, 11                       ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %indvars.iv960.sroa.phi.sroa.speculated, i64 32
  %i.vk = getelementptr inbounds nuw i8, ptr %indvars.iv960.sroa.phi.sroa.speculated, i64 40
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !156
  %i.vm = load ptr, ptr %i.vj, align 8, !tbaa !157
  %i.vn = ptrtoint ptr %i.vl to i64
  %i.vo = ptrtoint ptr %i.vm to i64
  %i.vp = sub i64 %i.vn, %i.vo
  %i.vq = ashr exact i64 %i.vp, 2
  %i.vr = add nsw i64 %i.vq, -1                   ; 3 uses
  %.sroa.0.018.i131 = trunc nuw nsw i64 %i.ur to i16 ; 2 uses
  %i.vs = icmp ugt i64 %i.vr, 11
  br i1 %i.vs, label %.lr.ph.i150, label %.critedge.i133

.lr.ph.i150:                                      ; preds = %bb.ck
  %i.vt = getelementptr inbounds nuw i8, ptr %indvars.iv960.sroa.phi.sroa.speculated, i64 80
end_hunk_1
begin_hunk_2_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi3ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
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
  %invariant.op.a = add i32 %i.x, -3
  %i.bk = icmp sgt i32 %i.n, 2                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = zext nneg i32 %.sroa.221.0.copyload to i64
  %i.bo = zext i32 %invariant.op.a to i64
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
  ret i32 %i.ye

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  %indvars.iv966.a = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next967, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  %.sroa.10425.0916 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.ye, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
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
  %.not31 = icmp eq i64 %indvars.iv966.a, 0
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
  %i.dk = trunc i64 %indvars.iv966.a to i32
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
  %i.dt = mul nsw i64 %indvars.iv966.a, %i.au
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
  %i.dz = icmp eq i64 %indvars.iv966.a, %i.bs
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
  %7 = add nuw nsw i32 %.sroa.137361.10855, 8
  %.not.i.i52 = icmp samesign ugt i32 %7, %i.dq
  br i1 %.not.i.i52, label %bb.r, label %bb.q, !prof !141

bb.q:                                             ; preds = %bb.p
  %i.en = zext nneg i32 %.sroa.137361.10855 to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.en
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ep = icmp samesign ugt i32 %.sroa.137361.10855, %i.du
  br i1 %i.ep, label %bb.s, label %bb.t, !prof !141

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.t:                                             ; preds = %bb.r
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %.sroa.137361.10855) ; 3 uses
  %i.eq = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.eq)
  %i.er = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.es = icmp samesign ult i32 %i.er, 9
  tail call void @llvm.assume(i1 %i.es)
  %i.et = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.et
  %i.ev = zext nneg i32 %i.er to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.eu, i64 %i.ev, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.t ], [ %i.eo, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %3, align 8
  %i.ew = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.ex = icmp ne i8 %i.ew, -1
  %i.ey = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.ez = trunc i64 %i.ey to i8                   ; 3 uses
  %i.fa = icmp ne i8 %i.ez, -1
  %i.fb = and i1 %i.ex, %i.fa
  %i.fc = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.fd = trunc i64 %i.fc to i8                   ; 2 uses
  %i.fe = icmp ne i8 %i.fd, -1
  %i.ff = and i1 %i.fe, %i.fb
  %i.fg = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.fh = icmp ne i64 %i.fg, 4278190080
  %i.fi = and i1 %i.fh, %i.ff
  br i1 %i.fi, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fj = zext nneg i32 %.sroa.48.14858 to i64    ; 8 uses
  %i.fk = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.fj, 8
  %i.fl = sub nuw nsw i64 56, %i.fj
  %i.fm = shl nuw i64 %i.fk, %i.fl
  %i.fn = or i64 %i.fm, %.sroa.0285.13859         ; 2 uses
  %.not.i166 = icmp eq i8 %i.ew, -1
  br i1 %.not.i166, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fo = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.fp = tail call i32 @llvm.bswap.i32(i32 %i.fo)
  %i.fq = zext i32 %i.fp to i64
  %i.fr = sub nuw nsw i32 32, %.sroa.48.14858
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = shl nuw i64 %i.fq, %i.fs
  %i.fu = or i64 %i.ft, %.sroa.0285.13859
  %i.fv = or disjoint i32 %.sroa.48.14858, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.v:                                             ; preds = %.preheader.i
  %i.fw = icmp eq i8 %i.ez, 0
  br i1 %i.fw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v
  %.062.lcssa.i.neg919 = phi i32 [ 0, %bb.v ], [ -1, %bb.y ], [ -2, %bb.aa ], [ -3, %bb.ac ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.v ], [ %.2.ph.i, %bb.y ], [ %i.go, %bb.aa ], [ %i.gz, %bb.ac ]
  %.lcssa66.wide.i = phi i64 [ %i.fj, %bb.v ], [ %indvars.iv.next.i, %bb.y ], [ %indvars.iv.next.1.i, %bb.aa ], [ %indvars.iv.next.2.i, %bb.ac ]
  %.lcssa.i = phi i64 [ %i.fn, %bb.v ], [ %i.gi, %bb.y ], [ %i.gv, %bb.aa ], [ %i.hg, %bb.ac ]
  %i.fx = add nuw nsw i32 %.01861.lcssa.i, %.sroa.137361.10855
  %i.fy = icmp slt i32 %.sroa.169389.10854, 0
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = lshr i64 -1, %.lcssa66.wide.i
  %i.ga = xor i64 %i.fz, -1
  %i.gb = and i64 %.lcssa.i, %i.ga
  %.neg751 = sub nsw i32 %i.dq, %.sroa.137361.10855
  %reass.sub.i = add nsw i32 %.neg751, %.062.lcssa.i.neg919 ; 2 uses
  %i.gc = add nuw nsw i32 %reass.sub.i, 4
  %i.gd = icmp ugt i32 %reass.sub.i, 1
  tail call void @llvm.assume(i1 %i.gd)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v, %.preheader.i
  %i.ge = phi i8 [ %i.ez, %.preheader.i ], [ %i.fd, %bb.v ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.v ] ; 3 uses
  %i.gf = zext i8 %i.ge to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.fj, 16
  %i.gg = sub nuw nsw i64 48, %i.fj
  %i.gh = shl nuw nsw i64 %i.gf, %i.gg
  %i.gi = or i64 %i.gh, %i.fn                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.ge, -1
  br i1 %.not.1.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gj = zext nneg i32 %.2.ph.i to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !140
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink.i = phi i32 [ 1, %bb.x ], [ 2, %bb.y ]
  %i.go = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !140 ; 2 uses
  %i.gs = zext i8 %i.gr to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.fj, 24
  %i.gt = sub nuw nsw i64 40, %i.fj
  %i.gu = shl nuw nsw i64 %i.gs, %i.gt
  %i.gv = or i64 %i.gu, %i.gi                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.gr, -1
  br i1 %.not.2.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !140
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %bb.ab, label %bb.w

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink72.i = phi i32 [ 1, %bb.z ], [ 2, %bb.aa ]
  %i.gz = add nuw nsw i32 %.sink72.i, %i.go       ; 3 uses
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ha ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !140 ; 2 uses
  %i.hd = zext i8 %i.hc to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.48.14858, 32
  %i.he = sub nuw nsw i64 32, %i.fj
  %i.hf = shl nuw nsw i64 %i.hd, %i.he
  %i.hg = or i64 %i.hf, %i.gv                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.hc, -1
  br i1 %.not.3.i, label %bb.ac, label %.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !140
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %.loopexit.i, label %bb.w

.loopexit.i:                                      ; preds = %bb.ac, %bb.ab
  %.sink73.i = phi i32 [ 1, %bb.ab ], [ 2, %bb.ac ]
  %i.hk = add nuw nsw i32 %.sink73.i, %i.gz
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i, %bb.w
  %.sroa.169389.14 = phi i32 [ %.sroa.169389.10854, %.loopexit.i ], [ %i.fx, %bb.w ]
  %.sroa.48.29 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.w ]
  %.sroa.0285.28 = phi i64 [ %i.hg, %.loopexit.i ], [ %i.gb, %bb.w ]
  %.3.i = phi i32 [ %i.hk, %.loopexit.i ], [ %i.gc, %bb.w ] ; 2 uses
  %i.hl = icmp sgt i32 %.3.i, 4
  tail call void @llvm.assume(i1 %i.hl)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.u, %bb.ad
  %.sroa.169389.15 = phi i32 [ %.sroa.169389.10854, %bb.u ], [ %.sroa.169389.14, %bb.ad ]
  %.sroa.48.30 = phi i32 [ %i.fv, %bb.u ], [ %.sroa.48.29, %bb.ad ]
  %.sroa.0285.29 = phi i64 [ %i.fu, %bb.u ], [ %.sroa.0285.28, %bb.ad ]
  %.021.i = phi i32 [ 4, %bb.u ], [ %.3.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hm = add nuw nsw i32 %.021.i, %.sroa.137361.10855
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.o, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.169389.11 = phi i32 [ %.sroa.169389.15, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.169389.10854, %bb.o ] ; 3 uses
  %.sroa.137361.11 = phi i32 [ %i.hm, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.137361.10855, %bb.o ] ; 3 uses
  %.sroa.48.17 = phi i32 [ %.sroa.48.30, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.48.14858, %bb.o ]
  %.sroa.0285.16 = phi i64 [ %.sroa.0285.29, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0285.13859, %bb.o ] ; 2 uses
  %i.hn = lshr i64 %.sroa.0285.16, 53             ; 3 uses
  %i.ho = trunc nuw nsw i64 %i.hn to i32          ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.el, i64 128
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !155
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hn
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !22 ; 4 uses
  %i.ht = ashr i32 %i.hs, 9                       ; 2 uses
  %i.hu = and i32 %i.hs, 255                      ; 4 uses
  %i.hv = icmp samesign ult i32 %i.hu, 33
  tail call void @llvm.assume(i1 %i.hv)
  %i.hw = sub nuw nsw i32 %.sroa.48.17, %i.hu     ; 3 uses
  %i.hx = zext nneg i32 %i.hu to i64
  %i.hy = shl i64 %.sroa.0285.16, %i.hx           ; 3 uses
  %i.hz = and i32 %i.hs, 256
  %.not.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not.i.i, label %bb.ae, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.ae:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i.i = icmp eq i32 %i.hs, 0
  br i1 %.not17.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ia = trunc i32 %i.ht to i8                   ; 2 uses
  %i.ib = icmp ne i8 %i.ia, 0
  tail call void @llvm.assume(i1 %i.ib)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.ic = icmp eq i32 %i.hu, 0
  tail call void @llvm.assume(i1 %i.ic)
  %i.id = add nsw i32 %i.hw, -11                  ; 2 uses
  %i.ie = shl i64 %i.hy, 11                       ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !156
  %i.ii = load ptr, ptr %i.if, align 8, !tbaa !157
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = ashr exact i64 %i.il, 2
  %i.in = add nsw i64 %i.im, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.hn to i16 ; 2 uses
  %i.io = icmp ugt i64 %i.in, 11
  br i1 %i.io, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.ag
  %i.ip = getelementptr inbounds nuw i8, ptr %i.el, i64 80
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !160
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge2.i, %.lr.ph.i
  %.sroa.48.19 = phi i32 [ %i.id, %.lr.ph.i ], [ %i.ja, %.critedge2.i ] ; 4 uses
  %.sroa.0285.18 = phi i64 [ %i.ie, %.lr.ph.i ], [ %i.jb, %.critedge2.i ] ; 3 uses
  %i.ir = phi i64 [ 11, %.lr.ph.i ], [ %i.jg, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i ], [ %i.jf, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.ho, %.lr.ph.i ], [ %i.je, %.critedge2.i ] ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2, !tbaa !149 ; 2 uses
  %i.iu = icmp eq i16 %i.it, -1
  %i.iv = icmp ult i16 %i.it, %.sroa.0.021.i
  %or.cond.i = select i1 %i.iu, i1 true, i1 %i.iv
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ah
  %i.iw = icmp samesign ult i32 %.sroa.48.19, 65
  tail call void @llvm.assume(i1 %i.iw)
  %i.ix = icmp ne i32 %.sroa.48.19, 0
  tail call void @llvm.assume(i1 %i.ix)
  %i.iy = lshr i64 %.sroa.0285.18, 63
  %i.iz = trunc nuw nsw i64 %i.iy to i32
  %i.ja = add nsw i32 %.sroa.48.19, -1            ; 2 uses
  %i.jb = shl i64 %.sroa.0285.18, 1               ; 2 uses
  %i.jc = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.jd = and i32 %i.jc, 131070
  %i.je = or disjoint i32 %i.jd, %i.iz            ; 3 uses
  %i.jf = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.je to i16           ; 2 uses
  %i.jg = zext i8 %i.jf to i64                    ; 3 uses
  %i.jh = icmp ugt i64 %i.in, %i.jg
  br i1 %i.jh, label %bb.ah, label %.critedge.i.loopexit, !llvm.loop !1

.critedge.i.loopexit:                             ; preds = %bb.ah, %.critedge2.i
  %.sroa.48.18.ph = phi i32 [ %i.ja, %.critedge2.i ], [ %.sroa.48.19, %bb.ah ]
  %.sroa.0285.17.ph = phi i64 [ %i.jb, %.critedge2.i ], [ %.sroa.0285.18, %bb.ah ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.je, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ah ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.jf, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ah ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ah ]
  %.lcssa17.i.ph = phi i64 [ %i.jg, %.critedge2.i ], [ %i.ir, %bb.ah ]
  %i.ji = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.ag
  %.sroa.48.18 = phi i32 [ %i.id, %bb.ag ], [ %.sroa.48.18.ph, %.critedge.i.loopexit ]
  %.sroa.0285.17 = phi i64 [ %i.ie, %bb.ag ], [ %.sroa.0285.17.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.ho, %bb.ag ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.ag ], [ %i.ji, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.ag ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.ag ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.jj = icmp ult i64 %i.in, %.lcssa17.i
  br i1 %i.jj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.el, i64 80
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !160
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %.lcssa17.i
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !149
  %i.jo = icmp ult i16 %i.jn, %.sroa.0.0.lcssa.i
  br i1 %i.jo, label %bb.aj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.aj:                                            ; preds = %bb.ai, %.critedge.i
  %i.jp = and i32 %.sroa.0.0.in.lcssa.i, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.jp, i32 noundef %.sroa.8.0.lcssa.i) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.ai
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.jq = getelementptr inbounds nuw i8, ptr %i.el, i64 104
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !160
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %.lcssa17.i
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !149
  %i.ju = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.tr.i = zext i16 %i.jt to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.jv = zext i32 %.narrow.i to i64
  %i.jw = load ptr, ptr %i.ju, align 8, !tbaa !161
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jv
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !140
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.af
  %.0733 = phi i8 [ %i.jy, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.ia, %bb.af ] ; 5 uses
  %.sroa.48.16 = phi i32 [ %.sroa.48.18, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hw, %bb.af ] ; 8 uses
  %.sroa.0285.15 = phi i64 [ %.sroa.0285.17, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hy, %bb.af ] ; 6 uses
  %i.jz = icmp ult i8 %.0733, 17
  tail call void @llvm.assume(i1 %i.jz)
  switch i8 %.0733, label %bb.an [
    i8 16, label %bb.al
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ka = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !162, !range !130, !noundef !116
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.am, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.kd = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.kd)
  %i.ke = icmp samesign ugt i32 %.sroa.48.16, 15
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = add nsw i32 %.sroa.48.16, -16
  %i.kg = shl i64 %.sroa.0285.15, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.an:                                            ; preds = %bb.ak
  %i.kh = zext nneg i8 %.0733 to i32              ; 4 uses
  %i.ki = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.ki)
  %i.kj = icmp ne i8 %.0733, 0
  tail call void @llvm.assume(i1 %i.kj)
  %i.kk = icmp samesign uge i32 %.sroa.48.16, %i.kh
  tail call void @llvm.assume(i1 %i.kk)
  %i.kl = sub nuw nsw i32 64, %i.kh
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = lshr i64 %.sroa.0285.15, %i.km
  %i.ko = trunc nuw nsw i64 %i.kn to i32
  %i.kp = sub nuw nsw i32 %.sroa.48.16, %i.kh
  %i.kq = zext nneg i8 %.0733 to i64
  %i.kr = shl i64 %.sroa.0285.15, %i.kq
  %i.ks = icmp sgt i64 %.sroa.0285.15, -1
  %notmask.i.i = shl nsw i32 -1, %i.kh
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.kt = select i1 %i.ks, i32 %.neg.i.i, i32 0
  %.0.i.i56 = add nsw i32 %i.kt, %i.ko
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.48.15 = phi i32 [ %i.hw, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kp, %bb.an ], [ %i.kf, %bb.am ], [ %.sroa.48.16, %bb.al ], [ %.sroa.48.16, %bb.ak ] ; 3 uses
  %.sroa.0285.14 = phi i64 [ %i.hy, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kr, %bb.an ], [ %i.kg, %bb.am ], [ %.sroa.0285.15, %bb.al ], [ %.sroa.0285.15, %bb.ak ] ; 3 uses
  %.0.i.i = phi i32 [ %i.ht, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i56, %bb.an ], [ -32768, %bb.am ], [ -32768, %bb.al ], [ 0, %bb.ak ]
  %i.ku = trunc i32 %.0.i.i to i16
  %i.kv = add i16 %i.ej, %i.ku
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %indvars.iv
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !149
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not55.i = icmp eq i64 %indvars.iv.next, 3
  br i1 %.not55.i, label %.loopexit, label %bb.o, !llvm.loop !212

._crit_edge:                                      ; preds = %.loopexit, %bb.n
  %.sroa.169389.3.lcssa = phi i32 [ %.sroa.169389.0906, %bb.n ], [ %.sroa.169389.11, %.loopexit ] ; 2 uses
  %.sroa.137361.3.lcssa = phi i32 [ %.sroa.137361.0907, %bb.n ], [ %.sroa.137361.11, %.loopexit ] ; 2 uses
  %.sroa.48.3.lcssa = phi i32 [ %.sroa.48.0908, %bb.n ], [ %.sroa.48.15, %.loopexit ] ; 2 uses
  %.sroa.0285.2.lcssa = phi i64 [ %.sroa.0285.0909, %bb.n ], [ %.sroa.0285.14, %.loopexit ] ; 2 uses
  %.sroa.0507.0.lcssa = phi ptr [ %.sroa.0400.0905, %bb.n ], [ %i.eh, %.loopexit ]
  %.046.i.lcssa = phi i32 [ 0, %bb.n ], [ %i.ed, %.loopexit ] ; 3 uses
  %i.kx = load i32, ptr %i.bl, align 8, !tbaa !38 ; 2 uses
  %.not.i = icmp eq i32 %i.kx, 0
  br i1 %.not.i, label %bb.bq, label %.preheader753

.preheader753:                                    ; preds = %._crit_edge
  %i.ky = icmp samesign ult i32 %i.kx, 3
  tail call void @llvm.assume(i1 %i.ky)
  %i.kz = mul nuw nsw i32 %.046.i.lcssa, 3
  %i.la = zext nneg i32 %i.kz to i64
  br label %bb.ao

.loopexit754:                                     ; preds = %bb.bp
  %i.lb = add nuw nsw i32 %.046.i.lcssa, 1
  br label %bb.bq

bb.ao:                                            ; preds = %.preheader753, %bb.bp
  %indvars.iv956 = phi i64 [ 0, %.preheader753 ], [ %indvars.iv.next957, %bb.bp ] ; 4 uses
  %.sroa.0285.4881 = phi i64 [ %.sroa.0285.2.lcssa, %.preheader753 ], [ %.sroa.0285.5, %bb.bp ] ; 3 uses
  %.sroa.48.5880 = phi i32 [ %.sroa.48.3.lcssa, %.preheader753 ], [ %.sroa.48.6, %bb.bp ] ; 7 uses
  %.sroa.137361.5877 = phi i32 [ %.sroa.137361.3.lcssa, %.preheader753 ], [ %.sroa.137361.12, %bb.bp ] ; 8 uses
  %.sroa.169389.5876 = phi i32 [ %.sroa.169389.3.lcssa, %.preheader753 ], [ %.sroa.169389.12, %bb.bp ] ; 4 uses
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0507.0.lcssa, i64 %indvars.iv956
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !149
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv956
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !165 ; 8 uses
  %i.lg = icmp samesign ult i32 %.sroa.48.5880, 65
  tail call void @llvm.assume(i1 %i.lg)
  %.not.i64 = icmp samesign ult i32 %.sroa.48.5880, 32
  br i1 %.not.i64, label %bb.ap, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i63)
  %8 = add nuw nsw i32 %.sroa.137361.5877, 8
  %.not.i.i65 = icmp samesign ugt i32 %8, %i.dq
  br i1 %.not.i.i65, label %bb.ar, label %bb.aq, !prof !141

bb.aq:                                            ; preds = %bb.ap
  %i.lh = zext nneg i32 %.sroa.137361.5877 to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.lh
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

bb.ar:                                            ; preds = %bb.ap
  %i.lj = icmp samesign ugt i32 %.sroa.137361.5877, %i.du
  br i1 %i.lj, label %bb.as, label %bb.at, !prof !141

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 0, ptr %.sroa.0.i.i63, align 8
  %.sroa.speculated27.i.i.i71 = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %.sroa.137361.5877) ; 3 uses
  %i.lk = add nuw nsw i32 %.sroa.speculated27.i.i.i71, 8
  %.sroa.speculated.i.i.i72 = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.lk)
  %i.ll = sub nsw i32 %.sroa.speculated.i.i.i72, %.sroa.speculated27.i.i.i71 ; 2 uses
  %i.lm = icmp samesign ult i32 %i.ll, 9
  tail call void @llvm.assume(i1 %i.lm)
  %i.ln = zext nneg i32 %.sroa.speculated27.i.i.i71 to i64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ln
  %i.lp = zext nneg i32 %i.ll to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i63, ptr align 1 %i.lo, i64 %i.lp, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67: ; preds = %bb.at, %bb.aq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68 = phi ptr [ %.sroa.0.i.i63, %bb.at ], [ %i.li, %bb.aq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i63)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, ptr %2, align 8
  %i.lq = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i8 ; 2 uses
  %i.lr = icmp ne i8 %i.lq, -1
  %i.ls = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 8
  %i.lt = trunc i64 %i.ls to i8                   ; 3 uses
  %i.lu = icmp ne i8 %i.lt, -1
  %i.lv = and i1 %i.lr, %i.lu
  %i.lw = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 16
  %i.lx = trunc i64 %i.lw to i8                   ; 2 uses
  %i.ly = icmp ne i8 %i.lx, -1
  %i.lz = and i1 %i.ly, %i.lv
  %i.ma = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 4278190080
  %i.mb = icmp ne i64 %i.ma, 4278190080
  %i.mc = and i1 %i.mb, %i.lz
  br i1 %i.mc, label %bb.au, label %.preheader.i169

.preheader.i169:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.md = zext nneg i32 %.sroa.48.5880 to i64     ; 8 uses
  %i.me = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 255
  %indvars.iv.next.i170 = add nuw nsw i64 %i.md, 8
  %i.mf = sub nuw nsw i64 56, %i.md
  %i.mg = shl nuw i64 %i.me, %i.mf
  %i.mh = or i64 %i.mg, %.sroa.0285.4881          ; 2 uses
  %.not.i171 = icmp eq i8 %i.lq, -1
  br i1 %.not.i171, label %bb.av, label %bb.ax

bb.au:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.mi = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i32
  %i.mj = tail call i32 @llvm.bswap.i32(i32 %i.mi)
  %i.mk = zext i32 %i.mj to i64
  %i.ml = sub nuw nsw i32 32, %.sroa.48.5880
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = shl nuw i64 %i.mk, %i.mm
  %i.mo = or i64 %i.mn, %.sroa.0285.4881
  %i.mp = or disjoint i32 %.sroa.48.5880, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190

bb.av:                                            ; preds = %.preheader.i169
  %i.mq = icmp eq i8 %i.lt, 0
  br i1 %i.mq, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.bc, %bb.ba, %bb.ay, %bb.av
  %.062.lcssa.i185.neg920 = phi i32 [ 0, %bb.av ], [ -1, %bb.ay ], [ -2, %bb.ba ], [ -3, %bb.bc ]
  %.01861.lcssa.i186 = phi i32 [ 0, %bb.av ], [ %.2.ph.i172, %bb.ay ], [ %i.ni, %bb.ba ], [ %i.nt, %bb.bc ]
  %.lcssa66.wide.i187 = phi i64 [ %i.md, %bb.av ], [ %indvars.iv.next.i170, %bb.ay ], [ %indvars.iv.next.1.i173, %bb.ba ], [ %indvars.iv.next.2.i176, %bb.bc ]
  %.lcssa.i188 = phi i64 [ %i.mh, %bb.av ], [ %i.nc, %bb.ay ], [ %i.np, %bb.ba ], [ %i.oa, %bb.bc ]
  %i.mr = add nuw nsw i32 %.01861.lcssa.i186, %.sroa.137361.5877
  %i.ms = icmp slt i32 %.sroa.169389.5876, 0
  tail call void @llvm.assume(i1 %i.ms)
  %i.mt = lshr i64 -1, %.lcssa66.wide.i187
  %i.mu = xor i64 %i.mt, -1
  %i.mv = and i64 %.lcssa.i188, %i.mu
  %.neg = sub nsw i32 %i.dq, %.sroa.137361.5877
  %reass.sub.i189 = add nsw i32 %.neg, %.062.lcssa.i185.neg920 ; 2 uses
  %i.mw = add nuw nsw i32 %reass.sub.i189, 4
  %i.mx = icmp ugt i32 %reass.sub.i189, 1
  tail call void @llvm.assume(i1 %i.mx)
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av, %.preheader.i169
  %i.my = phi i8 [ %i.lt, %.preheader.i169 ], [ %i.lx, %bb.av ] ; 2 uses
  %.2.ph.i172 = phi i32 [ 1, %.preheader.i169 ], [ 2, %bb.av ] ; 3 uses
  %i.mz = zext i8 %i.my to i64
  %indvars.iv.next.1.i173 = add nuw nsw i64 %i.md, 16
  %i.na = sub nuw nsw i64 48, %i.md
  %i.nb = shl nuw nsw i64 %i.mz, %i.na
  %i.nc = or i64 %i.nb, %i.mh                     ; 2 uses
  %.not.1.i174 = icmp eq i8 %i.my, -1
  br i1 %.not.1.i174, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.nd = zext nneg i32 %.2.ph.i172 to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !140
  %i.nh = icmp eq i8 %i.ng, 0
  br i1 %i.nh, label %bb.az, label %bb.aw

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink.i175 = phi i32 [ 1, %bb.ax ], [ 2, %bb.ay ]
  %i.ni = add nuw nsw i32 %.sink.i175, %.2.ph.i172 ; 3 uses
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 %i.nj ; 2 uses
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !140 ; 2 uses
  %i.nm = zext i8 %i.nl to i64
  %indvars.iv.next.2.i176 = add nuw nsw i64 %i.md, 24
  %i.nn = sub nuw nsw i64 40, %i.md
  %i.no = shl nuw nsw i64 %i.nm, %i.nn
  %i.np = or i64 %i.no, %i.nc                     ; 2 uses
  %.not.2.i177 = icmp eq i8 %i.nl, -1
  br i1 %.not.2.i177, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nk, i64 1
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !140
  %i.ns = icmp eq i8 %i.nr, 0
  br i1 %i.ns, label %bb.bb, label %bb.aw

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink72.i178 = phi i32 [ 1, %bb.az ], [ 2, %bb.ba ]
  %i.nt = add nuw nsw i32 %.sink72.i178, %i.ni    ; 3 uses
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 %i.nu ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !140 ; 2 uses
  %i.nx = zext i8 %i.nw to i64
  %indvars.iv.next.3.i179 = or disjoint i32 %.sroa.48.5880, 32
  %i.ny = sub nuw nsw i64 32, %i.md
  %i.nz = shl nuw nsw i64 %i.nx, %i.ny
  %i.oa = or i64 %i.nz, %i.np                     ; 2 uses
  %.not.3.i180 = icmp eq i8 %i.nw, -1
  br i1 %.not.3.i180, label %bb.bc, label %.loopexit.i181

bb.bc:                                            ; preds = %bb.bb
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nv, i64 1
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !140
  %i.od = icmp eq i8 %i.oc, 0
  br i1 %i.od, label %.loopexit.i181, label %bb.aw

.loopexit.i181:                                   ; preds = %bb.bc, %bb.bb
  %.sink73.i182 = phi i32 [ 1, %bb.bb ], [ 2, %bb.bc ]
  %i.oe = add nuw nsw i32 %.sink73.i182, %i.nt
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i181, %bb.aw
  %.sroa.169389.16 = phi i32 [ %.sroa.169389.5876, %.loopexit.i181 ], [ %i.mr, %bb.aw ]
  %.sroa.48.31 = phi i32 [ %indvars.iv.next.3.i179, %.loopexit.i181 ], [ 64, %bb.aw ]
  %.sroa.0285.30 = phi i64 [ %i.oa, %.loopexit.i181 ], [ %i.mv, %bb.aw ]
  %.3.i183 = phi i32 [ %i.oe, %.loopexit.i181 ], [ %i.mw, %bb.aw ] ; 2 uses
  %i.of = icmp sgt i32 %.3.i183, 4
  tail call void @llvm.assume(i1 %i.of)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190: ; preds = %bb.au, %bb.bd
  %.sroa.169389.17 = phi i32 [ %.sroa.169389.5876, %bb.au ], [ %.sroa.169389.16, %bb.bd ]
  %.sroa.48.32 = phi i32 [ %i.mp, %bb.au ], [ %.sroa.48.31, %bb.bd ]
  %.sroa.0285.31 = phi i64 [ %i.mo, %bb.au ], [ %.sroa.0285.30, %bb.bd ]
  %.021.i184 = phi i32 [ 4, %bb.au ], [ %.3.i183, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.og = add nuw nsw i32 %.021.i184, %.sroa.137361.5877
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73: ; preds = %bb.ao, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190
  %.sroa.169389.12 = phi i32 [ %.sroa.169389.17, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.169389.5876, %bb.ao ] ; 2 uses
  %.sroa.137361.12 = phi i32 [ %i.og, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.137361.5877, %bb.ao ] ; 2 uses
  %.sroa.48.21 = phi i32 [ %.sroa.48.32, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.48.5880, %bb.ao ]
  %.sroa.0285.20 = phi i64 [ %.sroa.0285.31, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.0285.4881, %bb.ao ] ; 2 uses
  %i.oh = lshr i64 %.sroa.0285.20, 53             ; 3 uses
  %i.oi = trunc nuw nsw i64 %i.oh to i32          ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lf, i64 128
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !155
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.oh
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !22 ; 4 uses
  %i.on = ashr i32 %i.om, 9                       ; 2 uses
  %i.oo = and i32 %i.om, 255                      ; 4 uses
  %i.op = icmp samesign ult i32 %i.oo, 33
  tail call void @llvm.assume(i1 %i.op)
  %i.oq = sub nuw nsw i32 %.sroa.48.21, %i.oo     ; 3 uses
  %i.or = zext nneg i32 %i.oo to i64
  %i.os = shl i64 %.sroa.0285.20, %i.or           ; 3 uses
  %i.ot = and i32 %i.om, 256
  %.not.i65.i = icmp eq i32 %i.ot, 0
  br i1 %.not.i65.i, label %bb.be, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.be:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.not17.i67.i = icmp eq i32 %i.om, 0
  br i1 %.not17.i67.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ou = trunc i32 %i.on to i8                   ; 2 uses
  %i.ov = icmp ne i8 %i.ou, 0
  tail call void @llvm.assume(i1 %i.ov)
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.ow = icmp eq i32 %i.oo, 0
  tail call void @llvm.assume(i1 %i.ow)
  %i.ox = add nsw i32 %i.oq, -11                  ; 2 uses
  %i.oy = shl i64 %i.os, 11                       ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.pa = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !156
  %i.pc = load ptr, ptr %i.oz, align 8, !tbaa !157
  %i.pd = ptrtoint ptr %i.pb to i64
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = ashr exact i64 %i.pf, 2
  %i.ph = add nsw i64 %i.pg, -1                   ; 3 uses
  %.sroa.0.018.i76 = trunc nuw nsw i64 %i.oh to i16 ; 2 uses
  %i.pi = icmp ugt i64 %i.ph, 11
  br i1 %i.pi, label %.lr.ph.i95, label %.critedge.i78

.lr.ph.i95:                                       ; preds = %bb.bg
  %i.pj = getelementptr inbounds nuw i8, ptr %i.lf, i64 80
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !160
  br label %bb.bh

bb.bh:                                            ; preds = %.critedge2.i102, %.lr.ph.i95
  %.sroa.48.23 = phi i32 [ %i.ox, %.lr.ph.i95 ], [ %i.pu, %.critedge2.i102 ] ; 4 uses
  %.sroa.0285.22 = phi i64 [ %i.oy, %.lr.ph.i95 ], [ %i.pv, %.critedge2.i102 ] ; 3 uses
  %i.pl = phi i64 [ 11, %.lr.ph.i95 ], [ %i.qa, %.critedge2.i102 ] ; 2 uses
  %.sroa.0.021.i98 = phi i16 [ %.sroa.0.018.i76, %.lr.ph.i95 ], [ %.sroa.0.0.i103, %.critedge2.i102 ] ; 2 uses
  %.sroa.8.020.i99 = phi i8 [ 11, %.lr.ph.i95 ], [ %i.pz, %.critedge2.i102 ] ; 2 uses
  %.sroa.0.0.in19.i100 = phi i32 [ %i.oi, %.lr.ph.i95 ], [ %i.py, %.critedge2.i102 ] ; 2 uses
  %i.pm = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %i.pl
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !149 ; 2 uses
  %i.po = icmp eq i16 %i.pn, -1
  %i.pp = icmp ult i16 %i.pn, %.sroa.0.021.i98
  %or.cond.i101 = select i1 %i.po, i1 true, i1 %i.pp
  br i1 %or.cond.i101, label %.critedge2.i102, label %.critedge.i78.loopexit

.critedge2.i102:                                  ; preds = %bb.bh
  %i.pq = icmp samesign ult i32 %.sroa.48.23, 65
  tail call void @llvm.assume(i1 %i.pq)
  %i.pr = icmp ne i32 %.sroa.48.23, 0
  tail call void @llvm.assume(i1 %i.pr)
  %i.ps = lshr i64 %.sroa.0285.22, 63
  %i.pt = trunc nuw nsw i64 %i.ps to i32
  %i.pu = add nsw i32 %.sroa.48.23, -1            ; 2 uses
  %i.pv = shl i64 %.sroa.0285.22, 1               ; 2 uses
  %i.pw = shl nsw i32 %.sroa.0.0.in19.i100, 1
  %i.px = and i32 %i.pw, 131070
  %i.py = or disjoint i32 %i.px, %i.pt            ; 3 uses
  %i.pz = add i8 %.sroa.8.020.i99, 1              ; 3 uses
  %.sroa.0.0.i103 = trunc i32 %i.py to i16        ; 2 uses
  %i.qa = zext i8 %i.pz to i64                    ; 3 uses
  %i.qb = icmp ugt i64 %i.ph, %i.qa
  br i1 %i.qb, label %bb.bh, label %.critedge.i78.loopexit, !llvm.loop !1

.critedge.i78.loopexit:                           ; preds = %bb.bh, %.critedge2.i102
  %.sroa.48.22.ph = phi i32 [ %i.pu, %.critedge2.i102 ], [ %.sroa.48.23, %bb.bh ]
  %.sroa.0285.21.ph = phi i64 [ %i.pv, %.critedge2.i102 ], [ %.sroa.0285.22, %bb.bh ]
  %.sroa.0.0.in.lcssa.i79.ph = phi i32 [ %i.py, %.critedge2.i102 ], [ %.sroa.0.0.in19.i100, %bb.bh ]
  %.sroa.8.0.lcssa.i80.ph = phi i8 [ %i.pz, %.critedge2.i102 ], [ %.sroa.8.020.i99, %bb.bh ]
  %.sroa.0.0.lcssa.i81.ph = phi i16 [ %.sroa.0.0.i103, %.critedge2.i102 ], [ %.sroa.0.021.i98, %bb.bh ]
  %.lcssa17.i82.ph = phi i64 [ %i.qa, %.critedge2.i102 ], [ %i.pl, %bb.bh ]
  %i.qc = zext i8 %.sroa.8.0.lcssa.i80.ph to i32
  br label %.critedge.i78

.critedge.i78:                                    ; preds = %.critedge.i78.loopexit, %bb.bg
  %.sroa.48.22 = phi i32 [ %i.ox, %bb.bg ], [ %.sroa.48.22.ph, %.critedge.i78.loopexit ]
  %.sroa.0285.21 = phi i64 [ %i.oy, %bb.bg ], [ %.sroa.0285.21.ph, %.critedge.i78.loopexit ]
  %.sroa.0.0.in.lcssa.i79 = phi i32 [ %i.oi, %bb.bg ], [ %.sroa.0.0.in.lcssa.i79.ph, %.critedge.i78.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i80 = phi i32 [ 11, %bb.bg ], [ %i.qc, %.critedge.i78.loopexit ]
  %.sroa.0.0.lcssa.i81 = phi i16 [ %.sroa.0.018.i76, %bb.bg ], [ %.sroa.0.0.lcssa.i81.ph, %.critedge.i78.loopexit ]
  %.lcssa17.i82 = phi i64 [ 11, %bb.bg ], [ %.lcssa17.i82.ph, %.critedge.i78.loopexit ] ; 3 uses
  %i.qd = icmp ult i64 %i.ph, %.lcssa17.i82
  br i1 %i.qd, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i78
  %i.qe = getelementptr inbounds nuw i8, ptr %i.lf, i64 80
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !160
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %.lcssa17.i82
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !149
  %i.qi = icmp ult i16 %i.qh, %.sroa.0.0.lcssa.i81
  br i1 %i.qi, label %bb.bj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104

bb.bj:                                            ; preds = %bb.bi, %.critedge.i78
  %i.qj = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.qj, i32 noundef %.sroa.8.0.lcssa.i80) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104: ; preds = %bb.bi
  %.sroa.0.0.mask.i84 = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  %i.qk = getelementptr inbounds nuw i8, ptr %i.lf, i64 104
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !160
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.ql, i64 %.lcssa17.i82
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !149
  %i.qo = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %.tr.i85 = zext i16 %i.qn to i32
  %.narrow.i86 = sub nsw i32 %.sroa.0.0.mask.i84, %.tr.i85
  %i.qp = zext i32 %.narrow.i86 to i64
  %i.qq = load ptr, ptr %i.qo, align 8, !tbaa !161
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qp
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !140
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104, %bb.bf
  %.0735 = phi i8 [ %i.qs, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.ou, %bb.bf ] ; 5 uses
  %.sroa.48.7 = phi i32 [ %.sroa.48.22, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.oq, %bb.bf ] ; 8 uses
  %.sroa.0285.6 = phi i64 [ %.sroa.0285.21, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.os, %bb.bf ] ; 6 uses
  %i.qt = icmp ult i8 %.0735, 17
  tail call void @llvm.assume(i1 %i.qt)
  switch i8 %.0735, label %bb.bn [
    i8 16, label %bb.bl
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.qu = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !162, !range !130, !noundef !116
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %bb.bm, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bm:                                            ; preds = %bb.bl
  %i.qx = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.qx)
  %i.qy = icmp samesign ugt i32 %.sroa.48.7, 15
  tail call void @llvm.assume(i1 %i.qy)
  %i.qz = add nsw i32 %.sroa.48.7, -16
  %i.ra = shl i64 %.sroa.0285.6, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bn:                                            ; preds = %bb.bk
  %i.rb = zext nneg i8 %.0735 to i32              ; 4 uses
  %i.rc = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.rc)
  %i.rd = icmp ne i8 %.0735, 0
  tail call void @llvm.assume(i1 %i.rd)
  %i.re = icmp samesign uge i32 %.sroa.48.7, %i.rb
  tail call void @llvm.assume(i1 %i.re)
  %i.rf = sub nuw nsw i32 64, %i.rb
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = lshr i64 %.sroa.0285.6, %i.rg
  %i.ri = trunc nuw nsw i64 %i.rh to i32
  %i.rj = sub nuw nsw i32 %.sroa.48.7, %i.rb
  %i.rk = zext nneg i8 %.0735 to i64
  %i.rl = shl i64 %.sroa.0285.6, %i.rk
  %i.rm = icmp sgt i64 %.sroa.0285.6, -1
  %notmask.i.i106 = shl nsw i32 -1, %i.rb
  %.neg.i.i107 = or disjoint i32 %notmask.i.i106, 1
  %i.rn = select i1 %i.rm, i32 %.neg.i.i107, i32 0
  %.0.i.i108 = add nsw i32 %i.rn, %i.ri
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.sroa.48.6 = phi i32 [ %i.oq, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.rj, %bb.bn ], [ %i.qz, %bb.bm ], [ %.sroa.48.7, %bb.bl ], [ %.sroa.48.7, %bb.bk ] ; 2 uses
  %.sroa.0285.5 = phi i64 [ %i.os, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.rl, %bb.bn ], [ %i.ra, %bb.bm ], [ %.sroa.0285.6, %bb.bl ], [ %.sroa.0285.6, %bb.bk ] ; 2 uses
  %.0.i66.i = phi i32 [ %i.on, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %.0.i.i108, %bb.bn ], [ -32768, %bb.bm ], [ -32768, %bb.bl ], [ 0, %bb.bk ]
  %i.ro = add nuw nsw i64 %indvars.iv956, %i.la   ; 2 uses
  %i.rp = icmp samesign ult i64 %i.ro, %i.bp
  br i1 %i.rp, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %i.rq = trunc i32 %.0.i66.i to i16
  %i.rr = add i16 %i.ld, %i.rq
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.ro
  store i16 %i.rr, ptr %i.rs, align 2, !tbaa !149
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1 ; 2 uses
  %.not53.i = icmp eq i64 %indvars.iv.next957, 3
  br i1 %.not53.i, label %.loopexit754, label %bb.ao, !llvm.loop !213

bb.bq:                                            ; preds = %.loopexit754, %._crit_edge
  %.sroa.169389.6 = phi i32 [ %.sroa.169389.3.lcssa, %._crit_edge ], [ %.sroa.169389.12, %.loopexit754 ] ; 2 uses
  %.sroa.137361.6 = phi i32 [ %.sroa.137361.3.lcssa, %._crit_edge ], [ %.sroa.137361.12, %.loopexit754 ] ; 2 uses
  %.sroa.48.8 = phi i32 [ %.sroa.48.3.lcssa, %._crit_edge ], [ %.sroa.48.6, %.loopexit754 ] ; 2 uses
  %.sroa.0285.7 = phi i64 [ %.sroa.0285.2.lcssa, %._crit_edge ], [ %.sroa.0285.5, %.loopexit754 ] ; 2 uses
  %.1.i = phi i32 [ %.046.i.lcssa, %._crit_edge ], [ %i.lb, %.loopexit754 ] ; 2 uses
  %i.rt = load i32, ptr %i.bm, align 8, !tbaa !163 ; 2 uses
  %i.ru = icmp slt i32 %.1.i, %i.rt
  br i1 %i.ru, label %.preheader752, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

.preheader752:                                    ; preds = %bb.bq, %bb.br
  %.2.i898 = phi i32 [ %i.rv, %bb.br ], [ %.1.i, %bb.bq ]
  %.sroa.0285.8897 = phi i64 [ %.sroa.0285.10, %bb.br ], [ %.sroa.0285.7, %bb.bq ]
  %.sroa.48.9896 = phi i32 [ %.sroa.48.11, %bb.br ], [ %.sroa.48.8, %bb.bq ]
  %.sroa.137361.7895 = phi i32 [ %.sroa.137361.13, %bb.br ], [ %.sroa.137361.6, %bb.bq ]
  %.sroa.169389.7894 = phi i32 [ %.sroa.169389.13, %bb.br ], [ %.sroa.169389.6, %bb.bq ]
  br label %bb.bs

bb.br:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %i.rv = add nsw i32 %.2.i898, 1                 ; 2 uses
  %exitcond962.not = icmp eq i32 %i.rv, %i.rt
  br i1 %exitcond962.not, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, label %.preheader752, !llvm.loop !214

bb.bs:                                            ; preds = %.preheader752, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %indvars.iv959 = phi i64 [ 0, %.preheader752 ], [ %indvars.iv.next960, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 2 uses
  %.sroa.0285.9892 = phi i64 [ %.sroa.0285.8897, %.preheader752 ], [ %.sroa.0285.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 3 uses
  %.sroa.48.10891 = phi i32 [ %.sroa.48.9896, %.preheader752 ], [ %.sroa.48.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 7 uses
  %.sroa.137361.8888 = phi i32 [ %.sroa.137361.7895, %.preheader752 ], [ %.sroa.137361.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 8 uses
  %.sroa.169389.8887 = phi i32 [ %.sroa.169389.7894, %.preheader752 ], [ %.sroa.169389.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 4 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv959
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !165 ; 8 uses
  %i.ry = icmp samesign ult i32 %.sroa.48.10891, 65
  tail call void @llvm.assume(i1 %i.ry)
  %.not.i114 = icmp samesign ult i32 %.sroa.48.10891, 32
  br i1 %.not.i114, label %bb.bt, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i113)
  %9 = add nuw nsw i32 %.sroa.137361.8888, 8
  %.not.i.i115 = icmp samesign ugt i32 %9, %i.dq
  br i1 %.not.i.i115, label %bb.bv, label %bb.bu, !prof !141

bb.bu:                                            ; preds = %bb.bt
  %i.rz = zext nneg i32 %.sroa.137361.8888 to i64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.rz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

bb.bv:                                            ; preds = %bb.bt
  %i.sb = icmp samesign ugt i32 %.sroa.137361.8888, %i.du
  br i1 %i.sb, label %bb.bw, label %bb.bx, !prof !141

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.bx:                                            ; preds = %bb.bv
  store i64 0, ptr %.sroa.0.i.i113, align 8
  %.sroa.speculated27.i.i.i121 = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %.sroa.137361.8888) ; 3 uses
  %i.sc = add nuw nsw i32 %.sroa.speculated27.i.i.i121, 8
  %.sroa.speculated.i.i.i122 = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.sc)
  %i.sd = sub nsw i32 %.sroa.speculated.i.i.i122, %.sroa.speculated27.i.i.i121 ; 2 uses
  %i.se = icmp samesign ult i32 %i.sd, 9
  tail call void @llvm.assume(i1 %i.se)
  %i.sf = zext nneg i32 %.sroa.speculated27.i.i.i121 to i64
  %i.sg = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.sf
  %i.sh = zext nneg i32 %i.sd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i113, ptr align 1 %i.sg, i64 %i.sh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117: ; preds = %bb.bx, %bb.bu
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118 = phi ptr [ %.sroa.0.i.i113, %bb.bx ], [ %i.sa, %bb.bu ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i113)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, ptr %1, align 8
  %i.si = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i8 ; 2 uses
  %i.sj = icmp ne i8 %i.si, -1
  %i.sk = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 8
  %i.sl = trunc i64 %i.sk to i8                   ; 3 uses
  %i.sm = icmp ne i8 %i.sl, -1
  %i.sn = and i1 %i.sj, %i.sm
  %i.so = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 16
  %i.sp = trunc i64 %i.so to i8                   ; 2 uses
  %i.sq = icmp ne i8 %i.sp, -1
  %i.sr = and i1 %i.sq, %i.sn
  %i.ss = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 4278190080
  %i.st = icmp ne i64 %i.ss, 4278190080
  %i.su = and i1 %i.st, %i.sr
  br i1 %i.su, label %bb.by, label %.preheader.i193

.preheader.i193:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.sv = zext nneg i32 %.sroa.48.10891 to i64    ; 8 uses
  %i.sw = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 255
  %indvars.iv.next.i194 = add nuw nsw i64 %i.sv, 8
  %i.sx = sub nuw nsw i64 56, %i.sv
  %i.sy = shl nuw i64 %i.sw, %i.sx
  %i.sz = or i64 %i.sy, %.sroa.0285.9892          ; 2 uses
  %.not.i195 = icmp eq i8 %i.si, -1
  br i1 %.not.i195, label %bb.bz, label %bb.cb

bb.by:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.ta = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i32
  %i.tb = tail call i32 @llvm.bswap.i32(i32 %i.ta)
  %i.tc = zext i32 %i.tb to i64
  %i.td = sub nuw nsw i32 32, %.sroa.48.10891
  %i.te = zext nneg i32 %i.td to i64
  %i.tf = shl nuw i64 %i.tc, %i.te
  %i.tg = or i64 %i.tf, %.sroa.0285.9892
  %i.th = or disjoint i32 %.sroa.48.10891, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214

bb.bz:                                            ; preds = %.preheader.i193
  %i.ti = icmp eq i8 %i.sl, 0
  br i1 %i.ti, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.cg, %bb.ce, %bb.cc, %bb.bz
  %.062.lcssa.i209.neg921 = phi i32 [ 0, %bb.bz ], [ -1, %bb.cc ], [ -2, %bb.ce ], [ -3, %bb.cg ]
  %.01861.lcssa.i210 = phi i32 [ 0, %bb.bz ], [ %.2.ph.i196, %bb.cc ], [ %i.ua, %bb.ce ], [ %i.ul, %bb.cg ]
  %.lcssa66.wide.i211 = phi i64 [ %i.sv, %bb.bz ], [ %indvars.iv.next.i194, %bb.cc ], [ %indvars.iv.next.1.i197, %bb.ce ], [ %indvars.iv.next.2.i200, %bb.cg ]
  %.lcssa.i212 = phi i64 [ %i.sz, %bb.bz ], [ %i.tu, %bb.cc ], [ %i.uh, %bb.ce ], [ %i.us, %bb.cg ]
  %i.tj = add nuw nsw i32 %.01861.lcssa.i210, %.sroa.137361.8888
  %i.tk = icmp slt i32 %.sroa.169389.8887, 0
  tail call void @llvm.assume(i1 %i.tk)
  %i.tl = lshr i64 -1, %.lcssa66.wide.i211
  %i.tm = xor i64 %i.tl, -1
  %i.tn = and i64 %.lcssa.i212, %i.tm
  %.neg750 = sub nsw i32 %i.dq, %.sroa.137361.8888
  %reass.sub.i213 = add nsw i32 %.neg750, %.062.lcssa.i209.neg921 ; 2 uses
  %i.to = add nuw nsw i32 %reass.sub.i213, 4
  %i.tp = icmp ugt i32 %reass.sub.i213, 1
  tail call void @llvm.assume(i1 %i.tp)
  br label %bb.ch

bb.cb:                                            ; preds = %bb.bz, %.preheader.i193
  %i.tq = phi i8 [ %i.sl, %.preheader.i193 ], [ %i.sp, %bb.bz ] ; 2 uses
  %.2.ph.i196 = phi i32 [ 1, %.preheader.i193 ], [ 2, %bb.bz ] ; 3 uses
  %i.tr = zext i8 %i.tq to i64
  %indvars.iv.next.1.i197 = add nuw nsw i64 %i.sv, 16
  %i.ts = sub nuw nsw i64 48, %i.sv
  %i.tt = shl nuw nsw i64 %i.tr, %i.ts
  %i.tu = or i64 %i.tt, %i.sz                     ; 2 uses
  %.not.1.i198 = icmp eq i8 %i.tq, -1
  br i1 %.not.1.i198, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.tv = zext nneg i32 %.2.ph.i196 to i64
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !140
  %i.tz = icmp eq i8 %i.ty, 0
  br i1 %i.tz, label %bb.cd, label %bb.ca

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink.i199 = phi i32 [ 1, %bb.cb ], [ 2, %bb.cc ]
  %i.ua = add nuw nsw i32 %.sink.i199, %.2.ph.i196 ; 3 uses
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ub ; 2 uses
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !140 ; 2 uses
  %i.ue = zext i8 %i.ud to i64
  %indvars.iv.next.2.i200 = add nuw nsw i64 %i.sv, 24
  %i.uf = sub nuw nsw i64 40, %i.sv
  %i.ug = shl nuw nsw i64 %i.ue, %i.uf
  %i.uh = or i64 %i.ug, %i.tu                     ; 2 uses
  %.not.2.i201 = icmp eq i8 %i.ud, -1
  br i1 %.not.2.i201, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uc, i64 1
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !140
  %i.uk = icmp eq i8 %i.uj, 0
  br i1 %i.uk, label %bb.cf, label %bb.ca

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sink72.i202 = phi i32 [ 1, %bb.cd ], [ 2, %bb.ce ]
  %i.ul = add nuw nsw i32 %.sink72.i202, %i.ua    ; 3 uses
  %i.um = zext nneg i32 %i.ul to i64
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 %i.um ; 2 uses
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !140 ; 2 uses
  %i.up = zext i8 %i.uo to i64
  %indvars.iv.next.3.i203 = or disjoint i32 %.sroa.48.10891, 32
  %i.uq = sub nuw nsw i64 32, %i.sv
  %i.ur = shl nuw nsw i64 %i.up, %i.uq
  %i.us = or i64 %i.ur, %i.uh                     ; 2 uses
  %.not.3.i204 = icmp eq i8 %i.uo, -1
  br i1 %.not.3.i204, label %bb.cg, label %.loopexit.i205

bb.cg:                                            ; preds = %bb.cf
  %i.ut = getelementptr inbounds nuw i8, ptr %i.un, i64 1
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !140
  %i.uv = icmp eq i8 %i.uu, 0
  br i1 %i.uv, label %.loopexit.i205, label %bb.ca

.loopexit.i205:                                   ; preds = %bb.cg, %bb.cf
  %.sink73.i206 = phi i32 [ 1, %bb.cf ], [ 2, %bb.cg ]
  %i.uw = add nuw nsw i32 %.sink73.i206, %i.ul
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i205, %bb.ca
  %.sroa.169389.18 = phi i32 [ %.sroa.169389.8887, %.loopexit.i205 ], [ %i.tj, %bb.ca ]
  %.sroa.48.33 = phi i32 [ %indvars.iv.next.3.i203, %.loopexit.i205 ], [ 64, %bb.ca ]
  %.sroa.0285.32 = phi i64 [ %i.us, %.loopexit.i205 ], [ %i.tn, %bb.ca ]
  %.3.i207 = phi i32 [ %i.uw, %.loopexit.i205 ], [ %i.to, %bb.ca ] ; 2 uses
  %i.ux = icmp sgt i32 %.3.i207, 4
  tail call void @llvm.assume(i1 %i.ux)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214: ; preds = %bb.by, %bb.ch
  %.sroa.169389.19 = phi i32 [ %.sroa.169389.8887, %bb.by ], [ %.sroa.169389.18, %bb.ch ]
  %.sroa.48.34 = phi i32 [ %i.th, %bb.by ], [ %.sroa.48.33, %bb.ch ]
  %.sroa.0285.33 = phi i64 [ %i.tg, %bb.by ], [ %.sroa.0285.32, %bb.ch ]
  %.021.i208 = phi i32 [ 4, %bb.by ], [ %.3.i207, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.uy = add nuw nsw i32 %.021.i208, %.sroa.137361.8888
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123: ; preds = %bb.bs, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214
  %.sroa.169389.13 = phi i32 [ %.sroa.169389.19, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.169389.8887, %bb.bs ] ; 3 uses
  %.sroa.137361.13 = phi i32 [ %i.uy, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.137361.8888, %bb.bs ] ; 3 uses
  %.sroa.48.25 = phi i32 [ %.sroa.48.34, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.48.10891, %bb.bs ]
  %.sroa.0285.24 = phi i64 [ %.sroa.0285.33, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.0285.9892, %bb.bs ] ; 2 uses
  %i.uz = lshr i64 %.sroa.0285.24, 53             ; 3 uses
  %i.va = trunc nuw nsw i64 %i.uz to i32          ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.rx, i64 128
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !155
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.uz
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !22 ; 4 uses
  %i.vf = lshr i32 %i.ve, 9
  %i.vg = and i32 %i.ve, 255                      ; 4 uses
  %i.vh = icmp samesign ult i32 %i.vg, 33
  tail call void @llvm.assume(i1 %i.vh)
  %i.vi = sub nuw nsw i32 %.sroa.48.25, %i.vg     ; 3 uses
  %i.vj = zext nneg i32 %i.vg to i64
  %i.vk = shl i64 %.sroa.0285.24, %i.vj           ; 3 uses
  %i.vl = and i32 %i.ve, 256
  %.not.i71.i = icmp eq i32 %i.vl, 0
  br i1 %.not.i71.i, label %bb.ci, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.ci:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.not17.i73.i = icmp eq i32 %i.ve, 0
  br i1 %.not17.i73.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.vm = trunc i32 %i.vf to i8                   ; 2 uses
  %i.vn = icmp ne i8 %i.vm, 0
  tail call void @llvm.assume(i1 %i.vn)
  br label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.vo = icmp eq i32 %i.vg, 0
  tail call void @llvm.assume(i1 %i.vo)
  %i.vp = add nsw i32 %i.vi, -11                  ; 2 uses
  %i.vq = shl i64 %i.vk, 11                       ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.rx, i64 32
  %i.vs = getelementptr inbounds nuw i8, ptr %i.rx, i64 40
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !156
  %i.vu = load ptr, ptr %i.vr, align 8, !tbaa !157
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = sub i64 %i.vv, %i.vw
  %i.vy = ashr exact i64 %i.vx, 2
  %i.vz = add nsw i64 %i.vy, -1                   ; 3 uses
  %.sroa.0.018.i126 = trunc nuw nsw i64 %i.uz to i16 ; 2 uses
  %i.wa = icmp ugt i64 %i.vz, 11
  br i1 %i.wa, label %.lr.ph.i145, label %.critedge.i128

.lr.ph.i145:                                      ; preds = %bb.ck
  %i.wb = getelementptr inbounds nuw i8, ptr %i.rx, i64 80
end_hunk_2
begin_hunk_3_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi4ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
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
  %invariant.op.a = add i32 %i.x, -4
  %i.bj = icmp sgt i32 %i.n, 3                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = zext nneg i32 %.sroa.221.0.copyload to i64
  %i.bn = zext i32 %invariant.op.a to i64
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
  ret i32 %i.yf

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  %indvars.iv967.a = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next968, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  %.sroa.10425.0917 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.yf, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
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
  %.not31 = icmp eq i64 %indvars.iv967.a, 0
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
  %i.dl = trunc i64 %indvars.iv967.a to i32
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
  %i.du = mul nsw i64 %indvars.iv967.a, %i.at
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
  %i.ea = icmp eq i64 %indvars.iv967.a, %i.br
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
  %7 = add nuw nsw i32 %.sroa.137361.10856, 8
  %.not.i.i52 = icmp samesign ugt i32 %7, %i.dr
  br i1 %.not.i.i52, label %bb.r, label %bb.q, !prof !141

bb.q:                                             ; preds = %bb.p
  %i.eo = zext nneg i32 %.sroa.137361.10856 to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.eo
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.eq = icmp samesign ugt i32 %.sroa.137361.10856, %i.dv
  br i1 %i.eq, label %bb.s, label %bb.t, !prof !141

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.t:                                             ; preds = %bb.r
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 %.sroa.137361.10856) ; 3 uses
  %i.er = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 %i.er)
  %i.es = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.et = icmp samesign ult i32 %i.es, 9
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.eu
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
  %i.fk = zext nneg i32 %.sroa.48.14859 to i64    ; 8 uses
  %i.fl = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.fk, 8
  %i.fm = sub nuw nsw i64 56, %i.fk
  %i.fn = shl nuw i64 %i.fl, %i.fm
  %i.fo = or i64 %i.fn, %.sroa.0285.13860         ; 2 uses
  %.not.i166 = icmp eq i8 %i.ex, -1
  br i1 %.not.i166, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fp = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.fq = tail call i32 @llvm.bswap.i32(i32 %i.fp)
  %i.fr = zext i32 %i.fq to i64
  %i.fs = sub nuw nsw i32 32, %.sroa.48.14859
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = shl nuw i64 %i.fr, %i.ft
  %i.fv = or i64 %i.fu, %.sroa.0285.13860
  %i.fw = or disjoint i32 %.sroa.48.14859, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.v:                                             ; preds = %.preheader.i
  %i.fx = icmp eq i8 %i.fa, 0
  br i1 %i.fx, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v
  %.062.lcssa.i.neg920 = phi i32 [ 0, %bb.v ], [ -1, %bb.y ], [ -2, %bb.aa ], [ -3, %bb.ac ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.v ], [ %.2.ph.i, %bb.y ], [ %i.gp, %bb.aa ], [ %i.ha, %bb.ac ]
  %.lcssa66.wide.i = phi i64 [ %i.fk, %bb.v ], [ %indvars.iv.next.i, %bb.y ], [ %indvars.iv.next.1.i, %bb.aa ], [ %indvars.iv.next.2.i, %bb.ac ]
  %.lcssa.i = phi i64 [ %i.fo, %bb.v ], [ %i.gj, %bb.y ], [ %i.gw, %bb.aa ], [ %i.hh, %bb.ac ]
  %i.fy = add nuw nsw i32 %.01861.lcssa.i, %.sroa.137361.10856
  %i.fz = icmp slt i32 %.sroa.169389.10855, 0
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = lshr i64 -1, %.lcssa66.wide.i
  %i.gb = xor i64 %i.ga, -1
  %i.gc = and i64 %.lcssa.i, %i.gb
  %.neg752 = sub nsw i32 %i.dr, %.sroa.137361.10856
  %reass.sub.i = add nsw i32 %.neg752, %.062.lcssa.i.neg920 ; 2 uses
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
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !140
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink.i = phi i32 [ 1, %bb.x ], [ 2, %bb.y ]
  %i.gp = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 %i.gq ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !140 ; 2 uses
  %i.gt = zext i8 %i.gs to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.fk, 24
  %i.gu = sub nuw nsw i64 40, %i.fk
  %i.gv = shl nuw nsw i64 %i.gt, %i.gu
  %i.gw = or i64 %i.gv, %i.gj                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.gs, -1
  br i1 %.not.2.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !140
  %i.gz = icmp eq i8 %i.gy, 0
  br i1 %i.gz, label %bb.ab, label %bb.w

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink72.i = phi i32 [ 1, %bb.z ], [ 2, %bb.aa ]
  %i.ha = add nuw nsw i32 %.sink72.i, %i.gp       ; 3 uses
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 %i.hb ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !140 ; 2 uses
  %i.he = zext i8 %i.hd to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.48.14859, 32
  %i.hf = sub nuw nsw i64 32, %i.fk
  %i.hg = shl nuw nsw i64 %i.he, %i.hf
  %i.hh = or i64 %i.hg, %i.gw                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.hd, -1
  br i1 %.not.3.i, label %bb.ac, label %.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !140
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %.loopexit.i, label %bb.w

.loopexit.i:                                      ; preds = %bb.ac, %bb.ab
  %.sink73.i = phi i32 [ 1, %bb.ab ], [ 2, %bb.ac ]
  %i.hl = add nuw nsw i32 %.sink73.i, %i.ha
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i, %bb.w
  %.sroa.169389.14 = phi i32 [ %.sroa.169389.10855, %.loopexit.i ], [ %i.fy, %bb.w ]
  %.sroa.48.29 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.w ]
  %.sroa.0285.28 = phi i64 [ %i.hh, %.loopexit.i ], [ %i.gc, %bb.w ]
  %.3.i = phi i32 [ %i.hl, %.loopexit.i ], [ %i.gd, %bb.w ] ; 2 uses
  %i.hm = icmp sgt i32 %.3.i, 4
  tail call void @llvm.assume(i1 %i.hm)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.u, %bb.ad
  %.sroa.169389.15 = phi i32 [ %.sroa.169389.10855, %bb.u ], [ %.sroa.169389.14, %bb.ad ]
  %.sroa.48.30 = phi i32 [ %i.fw, %bb.u ], [ %.sroa.48.29, %bb.ad ]
  %.sroa.0285.29 = phi i64 [ %i.fv, %bb.u ], [ %.sroa.0285.28, %bb.ad ]
  %.021.i = phi i32 [ 4, %bb.u ], [ %.3.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hn = add nuw nsw i32 %.021.i, %.sroa.137361.10856
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.o, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.169389.11 = phi i32 [ %.sroa.169389.15, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.169389.10855, %bb.o ] ; 3 uses
  %.sroa.137361.11 = phi i32 [ %i.hn, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.137361.10856, %bb.o ] ; 3 uses
  %.sroa.48.17 = phi i32 [ %.sroa.48.30, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.48.14859, %bb.o ]
  %.sroa.0285.16 = phi i64 [ %.sroa.0285.29, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0285.13860, %bb.o ] ; 2 uses
  %i.ho = lshr i64 %.sroa.0285.16, 53             ; 3 uses
  %i.hp = trunc nuw nsw i64 %i.ho to i32          ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.em, i64 128
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !155
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ho
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !22 ; 4 uses
  %i.hu = ashr i32 %i.ht, 9                       ; 2 uses
  %i.hv = and i32 %i.ht, 255                      ; 4 uses
  %i.hw = icmp samesign ult i32 %i.hv, 33
  tail call void @llvm.assume(i1 %i.hw)
  %i.hx = sub nuw nsw i32 %.sroa.48.17, %i.hv     ; 3 uses
  %i.hy = zext nneg i32 %i.hv to i64
  %i.hz = shl i64 %.sroa.0285.16, %i.hy           ; 3 uses
  %i.ia = and i32 %i.ht, 256
  %.not.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i, label %bb.ae, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.ae:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i.i = icmp eq i32 %i.ht, 0
  br i1 %.not17.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ib = trunc i32 %i.hu to i8                   ; 2 uses
  %i.ic = icmp ne i8 %i.ib, 0
  tail call void @llvm.assume(i1 %i.ic)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.id = icmp eq i32 %i.hv, 0
  tail call void @llvm.assume(i1 %i.id)
  %i.ie = add nsw i32 %i.hx, -11                  ; 2 uses
  %i.if = shl i64 %i.hz, 11                       ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !156
  %i.ij = load ptr, ptr %i.ig, align 8, !tbaa !157
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = ashr exact i64 %i.im, 2
  %i.io = add nsw i64 %i.in, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.ho to i16 ; 2 uses
  %i.ip = icmp ugt i64 %i.io, 11
  br i1 %i.ip, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.ag
  %i.iq = getelementptr inbounds nuw i8, ptr %i.em, i64 80
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !160
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge2.i, %.lr.ph.i
  %.sroa.48.19 = phi i32 [ %i.ie, %.lr.ph.i ], [ %i.jb, %.critedge2.i ] ; 4 uses
  %.sroa.0285.18 = phi i64 [ %i.if, %.lr.ph.i ], [ %i.jc, %.critedge2.i ] ; 3 uses
  %i.is = phi i64 [ 11, %.lr.ph.i ], [ %i.jh, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i ], [ %i.jg, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.hp, %.lr.ph.i ], [ %i.jf, %.critedge2.i ] ; 2 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !149 ; 2 uses
  %i.iv = icmp eq i16 %i.iu, -1
  %i.iw = icmp ult i16 %i.iu, %.sroa.0.021.i
  %or.cond.i = select i1 %i.iv, i1 true, i1 %i.iw
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ah
  %i.ix = icmp samesign ult i32 %.sroa.48.19, 65
  tail call void @llvm.assume(i1 %i.ix)
  %i.iy = icmp ne i32 %.sroa.48.19, 0
  tail call void @llvm.assume(i1 %i.iy)
  %i.iz = lshr i64 %.sroa.0285.18, 63
  %i.ja = trunc nuw nsw i64 %i.iz to i32
  %i.jb = add nsw i32 %.sroa.48.19, -1            ; 2 uses
  %i.jc = shl i64 %.sroa.0285.18, 1               ; 2 uses
  %i.jd = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.je = and i32 %i.jd, 131070
  %i.jf = or disjoint i32 %i.je, %i.ja            ; 3 uses
  %i.jg = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.jf to i16           ; 2 uses
  %i.jh = zext i8 %i.jg to i64                    ; 3 uses
  %i.ji = icmp ugt i64 %i.io, %i.jh
  br i1 %i.ji, label %bb.ah, label %.critedge.i.loopexit, !llvm.loop !1

.critedge.i.loopexit:                             ; preds = %bb.ah, %.critedge2.i
  %.sroa.48.18.ph = phi i32 [ %i.jb, %.critedge2.i ], [ %.sroa.48.19, %bb.ah ]
  %.sroa.0285.17.ph = phi i64 [ %i.jc, %.critedge2.i ], [ %.sroa.0285.18, %bb.ah ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.jf, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ah ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.jg, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ah ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ah ]
  %.lcssa17.i.ph = phi i64 [ %i.jh, %.critedge2.i ], [ %i.is, %bb.ah ]
  %i.jj = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.ag
  %.sroa.48.18 = phi i32 [ %i.ie, %bb.ag ], [ %.sroa.48.18.ph, %.critedge.i.loopexit ]
  %.sroa.0285.17 = phi i64 [ %i.if, %bb.ag ], [ %.sroa.0285.17.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.hp, %bb.ag ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.ag ], [ %i.jj, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.ag ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.ag ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.jk = icmp ult i64 %i.io, %.lcssa17.i
  br i1 %i.jk, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.em, i64 80
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !160
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %.lcssa17.i
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !149
  %i.jp = icmp ult i16 %i.jo, %.sroa.0.0.lcssa.i
  br i1 %i.jp, label %bb.aj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.aj:                                            ; preds = %bb.ai, %.critedge.i
  %i.jq = and i32 %.sroa.0.0.in.lcssa.i, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.jq, i32 noundef %.sroa.8.0.lcssa.i) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.ai
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.jr = getelementptr inbounds nuw i8, ptr %i.em, i64 104
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !160
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %.lcssa17.i
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !149
  %i.jv = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.tr.i = zext i16 %i.ju to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.jw = zext i32 %.narrow.i to i64
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !161
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jw
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !140
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.af
  %.0734 = phi i8 [ %i.jz, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.ib, %bb.af ] ; 5 uses
  %.sroa.48.16 = phi i32 [ %.sroa.48.18, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hx, %bb.af ] ; 8 uses
  %.sroa.0285.15 = phi i64 [ %.sroa.0285.17, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hz, %bb.af ] ; 6 uses
  %i.ka = icmp ult i8 %.0734, 17
  tail call void @llvm.assume(i1 %i.ka)
  switch i8 %.0734, label %bb.an [
    i8 16, label %bb.al
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  ]

bb.al:                                            ; preds = %bb.ak
  %i.kb = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !162, !range !130, !noundef !116
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.am, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ke = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = icmp samesign ugt i32 %.sroa.48.16, 15
  tail call void @llvm.assume(i1 %i.kf)
  %i.kg = add nsw i32 %.sroa.48.16, -16
  %i.kh = shl i64 %.sroa.0285.15, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.an:                                            ; preds = %bb.ak
  %i.ki = zext nneg i8 %.0734 to i32              ; 4 uses
  %i.kj = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.kj)
  %i.kk = icmp ne i8 %.0734, 0
  tail call void @llvm.assume(i1 %i.kk)
  %i.kl = icmp samesign uge i32 %.sroa.48.16, %i.ki
  tail call void @llvm.assume(i1 %i.kl)
  %i.km = sub nuw nsw i32 64, %i.ki
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = lshr i64 %.sroa.0285.15, %i.kn
  %i.kp = trunc nuw nsw i64 %i.ko to i32
  %i.kq = sub nuw nsw i32 %.sroa.48.16, %i.ki
  %i.kr = zext nneg i8 %.0734 to i64
  %i.ks = shl i64 %.sroa.0285.15, %i.kr
  %i.kt = icmp sgt i64 %.sroa.0285.15, -1
  %notmask.i.i = shl nsw i32 -1, %i.ki
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.ku = select i1 %i.kt, i32 %.neg.i.i, i32 0
  %.0.i.i56 = add nsw i32 %i.ku, %i.kp
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.48.15 = phi i32 [ %i.hx, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kq, %bb.an ], [ %i.kg, %bb.am ], [ %.sroa.48.16, %bb.al ], [ %.sroa.48.16, %bb.ak ] ; 3 uses
  %.sroa.0285.14 = phi i64 [ %i.hz, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.ks, %bb.an ], [ %i.kh, %bb.am ], [ %.sroa.0285.15, %bb.al ], [ %.sroa.0285.15, %bb.ak ] ; 3 uses
  %.0.i.i = phi i32 [ %i.hu, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i56, %bb.an ], [ -32768, %bb.am ], [ -32768, %bb.al ], [ 0, %bb.ak ]
  %i.kv = trunc i32 %.0.i.i to i16
  %i.kw = add i16 %i.ek, %i.kv
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !149
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not55.i = icmp eq i64 %indvars.iv.next, 4
  br i1 %.not55.i, label %.loopexit, label %bb.o, !llvm.loop !230

._crit_edge:                                      ; preds = %.loopexit, %bb.n
  %.sroa.169389.3.lcssa = phi i32 [ %.sroa.169389.0907, %bb.n ], [ %.sroa.169389.11, %.loopexit ] ; 2 uses
  %.sroa.137361.3.lcssa = phi i32 [ %.sroa.137361.0908, %bb.n ], [ %.sroa.137361.11, %.loopexit ] ; 2 uses
  %.sroa.48.3.lcssa = phi i32 [ %.sroa.48.0909, %bb.n ], [ %.sroa.48.15, %.loopexit ] ; 2 uses
  %.sroa.0285.2.lcssa = phi i64 [ %.sroa.0285.0910, %bb.n ], [ %.sroa.0285.14, %.loopexit ] ; 2 uses
  %.sroa.0508.0.lcssa = phi ptr [ %.sroa.0400.0906, %bb.n ], [ %i.ei, %.loopexit ]
  %.046.i.lcssa = phi i32 [ 0, %bb.n ], [ %i.ee, %.loopexit ] ; 3 uses
  %i.ky = load i32, ptr %i.bk, align 8, !tbaa !38 ; 2 uses
  %.not.i = icmp eq i32 %i.ky, 0
  br i1 %.not.i, label %bb.bq, label %.preheader754

.preheader754:                                    ; preds = %._crit_edge
  %i.kz = icmp samesign ult i32 %i.ky, 4
  tail call void @llvm.assume(i1 %i.kz)
  %i.la = shl nuw nsw i32 %.046.i.lcssa, 2
  %i.lb = zext nneg i32 %i.la to i64
  br label %bb.ao

.loopexit755:                                     ; preds = %bb.bp
  %i.lc = add nuw nsw i32 %.046.i.lcssa, 1
  br label %bb.bq

bb.ao:                                            ; preds = %.preheader754, %bb.bp
  %indvars.iv957 = phi i64 [ 0, %.preheader754 ], [ %indvars.iv.next958, %bb.bp ] ; 4 uses
  %.sroa.0285.4882 = phi i64 [ %.sroa.0285.2.lcssa, %.preheader754 ], [ %.sroa.0285.5, %bb.bp ] ; 3 uses
  %.sroa.48.5881 = phi i32 [ %.sroa.48.3.lcssa, %.preheader754 ], [ %.sroa.48.6, %bb.bp ] ; 7 uses
  %.sroa.137361.5878 = phi i32 [ %.sroa.137361.3.lcssa, %.preheader754 ], [ %.sroa.137361.12, %bb.bp ] ; 8 uses
  %.sroa.169389.5877 = phi i32 [ %.sroa.169389.3.lcssa, %.preheader754 ], [ %.sroa.169389.12, %bb.bp ] ; 4 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0508.0.lcssa, i64 %indvars.iv957
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !149
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv957
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !165 ; 8 uses
  %i.lh = icmp samesign ult i32 %.sroa.48.5881, 65
  tail call void @llvm.assume(i1 %i.lh)
  %.not.i64 = icmp samesign ult i32 %.sroa.48.5881, 32
  br i1 %.not.i64, label %bb.ap, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i63)
  %8 = add nuw nsw i32 %.sroa.137361.5878, 8
  %.not.i.i65 = icmp samesign ugt i32 %8, %i.dr
  br i1 %.not.i.i65, label %bb.ar, label %bb.aq, !prof !141

bb.aq:                                            ; preds = %bb.ap
  %i.li = zext nneg i32 %.sroa.137361.5878 to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.li
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

bb.ar:                                            ; preds = %bb.ap
  %i.lk = icmp samesign ugt i32 %.sroa.137361.5878, %i.dv
  br i1 %i.lk, label %bb.as, label %bb.at, !prof !141

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 0, ptr %.sroa.0.i.i63, align 8
  %.sroa.speculated27.i.i.i71 = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 %.sroa.137361.5878) ; 3 uses
  %i.ll = add nuw nsw i32 %.sroa.speculated27.i.i.i71, 8
  %.sroa.speculated.i.i.i72 = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 %i.ll)
  %i.lm = sub nsw i32 %.sroa.speculated.i.i.i72, %.sroa.speculated27.i.i.i71 ; 2 uses
  %i.ln = icmp samesign ult i32 %i.lm, 9
  tail call void @llvm.assume(i1 %i.ln)
  %i.lo = zext nneg i32 %.sroa.speculated27.i.i.i71 to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.lo
  %i.lq = zext nneg i32 %i.lm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i63, ptr align 1 %i.lp, i64 %i.lq, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67: ; preds = %bb.at, %bb.aq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68 = phi ptr [ %.sroa.0.i.i63, %bb.at ], [ %i.lj, %bb.aq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i63)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, ptr %2, align 8
  %i.lr = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i8 ; 2 uses
  %i.ls = icmp ne i8 %i.lr, -1
  %i.lt = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 8
  %i.lu = trunc i64 %i.lt to i8                   ; 3 uses
  %i.lv = icmp ne i8 %i.lu, -1
  %i.lw = and i1 %i.ls, %i.lv
  %i.lx = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 16
  %i.ly = trunc i64 %i.lx to i8                   ; 2 uses
  %i.lz = icmp ne i8 %i.ly, -1
  %i.ma = and i1 %i.lz, %i.lw
  %i.mb = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 4278190080
  %i.mc = icmp ne i64 %i.mb, 4278190080
  %i.md = and i1 %i.mc, %i.ma
  br i1 %i.md, label %bb.au, label %.preheader.i169

.preheader.i169:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.me = zext nneg i32 %.sroa.48.5881 to i64     ; 8 uses
  %i.mf = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 255
  %indvars.iv.next.i170 = add nuw nsw i64 %i.me, 8
  %i.mg = sub nuw nsw i64 56, %i.me
  %i.mh = shl nuw i64 %i.mf, %i.mg
  %i.mi = or i64 %i.mh, %.sroa.0285.4882          ; 2 uses
  %.not.i171 = icmp eq i8 %i.lr, -1
  br i1 %.not.i171, label %bb.av, label %bb.ax

bb.au:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.mj = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i32
  %i.mk = tail call i32 @llvm.bswap.i32(i32 %i.mj)
  %i.ml = zext i32 %i.mk to i64
  %i.mm = sub nuw nsw i32 32, %.sroa.48.5881
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = shl nuw i64 %i.ml, %i.mn
  %i.mp = or i64 %i.mo, %.sroa.0285.4882
  %i.mq = or disjoint i32 %.sroa.48.5881, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190

bb.av:                                            ; preds = %.preheader.i169
  %i.mr = icmp eq i8 %i.lu, 0
  br i1 %i.mr, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.bc, %bb.ba, %bb.ay, %bb.av
  %.062.lcssa.i185.neg921 = phi i32 [ 0, %bb.av ], [ -1, %bb.ay ], [ -2, %bb.ba ], [ -3, %bb.bc ]
  %.01861.lcssa.i186 = phi i32 [ 0, %bb.av ], [ %.2.ph.i172, %bb.ay ], [ %i.nj, %bb.ba ], [ %i.nu, %bb.bc ]
  %.lcssa66.wide.i187 = phi i64 [ %i.me, %bb.av ], [ %indvars.iv.next.i170, %bb.ay ], [ %indvars.iv.next.1.i173, %bb.ba ], [ %indvars.iv.next.2.i176, %bb.bc ]
  %.lcssa.i188 = phi i64 [ %i.mi, %bb.av ], [ %i.nd, %bb.ay ], [ %i.nq, %bb.ba ], [ %i.ob, %bb.bc ]
  %i.ms = add nuw nsw i32 %.01861.lcssa.i186, %.sroa.137361.5878
  %i.mt = icmp slt i32 %.sroa.169389.5877, 0
  tail call void @llvm.assume(i1 %i.mt)
  %i.mu = lshr i64 -1, %.lcssa66.wide.i187
  %i.mv = xor i64 %i.mu, -1
  %i.mw = and i64 %.lcssa.i188, %i.mv
  %.neg = sub nsw i32 %i.dr, %.sroa.137361.5878
  %reass.sub.i189 = add nsw i32 %.neg, %.062.lcssa.i185.neg921 ; 2 uses
  %i.mx = add nuw nsw i32 %reass.sub.i189, 4
  %i.my = icmp ugt i32 %reass.sub.i189, 1
  tail call void @llvm.assume(i1 %i.my)
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av, %.preheader.i169
  %i.mz = phi i8 [ %i.lu, %.preheader.i169 ], [ %i.ly, %bb.av ] ; 2 uses
  %.2.ph.i172 = phi i32 [ 1, %.preheader.i169 ], [ 2, %bb.av ] ; 3 uses
  %i.na = zext i8 %i.mz to i64
  %indvars.iv.next.1.i173 = add nuw nsw i64 %i.me, 16
  %i.nb = sub nuw nsw i64 48, %i.me
  %i.nc = shl nuw nsw i64 %i.na, %i.nb
  %i.nd = or i64 %i.nc, %i.mi                     ; 2 uses
  %.not.1.i174 = icmp eq i8 %i.mz, -1
  br i1 %.not.1.i174, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ne = zext nneg i32 %.2.ph.i172 to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !140
  %i.ni = icmp eq i8 %i.nh, 0
  br i1 %i.ni, label %bb.az, label %bb.aw

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink.i175 = phi i32 [ 1, %bb.ax ], [ 2, %bb.ay ]
  %i.nj = add nuw nsw i32 %.sink.i175, %.2.ph.i172 ; 3 uses
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 %i.nk ; 2 uses
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !140 ; 2 uses
  %i.nn = zext i8 %i.nm to i64
  %indvars.iv.next.2.i176 = add nuw nsw i64 %i.me, 24
  %i.no = sub nuw nsw i64 40, %i.me
  %i.np = shl nuw nsw i64 %i.nn, %i.no
  %i.nq = or i64 %i.np, %i.nd                     ; 2 uses
  %.not.2.i177 = icmp eq i8 %i.nm, -1
  br i1 %.not.2.i177, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !140
  %i.nt = icmp eq i8 %i.ns, 0
  br i1 %i.nt, label %bb.bb, label %bb.aw

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink72.i178 = phi i32 [ 1, %bb.az ], [ 2, %bb.ba ]
  %i.nu = add nuw nsw i32 %.sink72.i178, %i.nj    ; 3 uses
  %i.nv = zext nneg i32 %i.nu to i64
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 %i.nv ; 2 uses
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !140 ; 2 uses
  %i.ny = zext i8 %i.nx to i64
  %indvars.iv.next.3.i179 = or disjoint i32 %.sroa.48.5881, 32
  %i.nz = sub nuw nsw i64 32, %i.me
  %i.oa = shl nuw nsw i64 %i.ny, %i.nz
  %i.ob = or i64 %i.oa, %i.nq                     ; 2 uses
  %.not.3.i180 = icmp eq i8 %i.nx, -1
  br i1 %.not.3.i180, label %bb.bc, label %.loopexit.i181

bb.bc:                                            ; preds = %bb.bb
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !140
  %i.oe = icmp eq i8 %i.od, 0
  br i1 %i.oe, label %.loopexit.i181, label %bb.aw

.loopexit.i181:                                   ; preds = %bb.bc, %bb.bb
  %.sink73.i182 = phi i32 [ 1, %bb.bb ], [ 2, %bb.bc ]
  %i.of = add nuw nsw i32 %.sink73.i182, %i.nu
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i181, %bb.aw
  %.sroa.169389.16 = phi i32 [ %.sroa.169389.5877, %.loopexit.i181 ], [ %i.ms, %bb.aw ]
  %.sroa.48.31 = phi i32 [ %indvars.iv.next.3.i179, %.loopexit.i181 ], [ 64, %bb.aw ]
  %.sroa.0285.30 = phi i64 [ %i.ob, %.loopexit.i181 ], [ %i.mw, %bb.aw ]
  %.3.i183 = phi i32 [ %i.of, %.loopexit.i181 ], [ %i.mx, %bb.aw ] ; 2 uses
  %i.og = icmp sgt i32 %.3.i183, 4
  tail call void @llvm.assume(i1 %i.og)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190: ; preds = %bb.au, %bb.bd
  %.sroa.169389.17 = phi i32 [ %.sroa.169389.5877, %bb.au ], [ %.sroa.169389.16, %bb.bd ]
  %.sroa.48.32 = phi i32 [ %i.mq, %bb.au ], [ %.sroa.48.31, %bb.bd ]
  %.sroa.0285.31 = phi i64 [ %i.mp, %bb.au ], [ %.sroa.0285.30, %bb.bd ]
  %.021.i184 = phi i32 [ 4, %bb.au ], [ %.3.i183, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.oh = add nuw nsw i32 %.021.i184, %.sroa.137361.5878
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73: ; preds = %bb.ao, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190
  %.sroa.169389.12 = phi i32 [ %.sroa.169389.17, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.169389.5877, %bb.ao ] ; 2 uses
  %.sroa.137361.12 = phi i32 [ %i.oh, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.137361.5878, %bb.ao ] ; 2 uses
  %.sroa.48.21 = phi i32 [ %.sroa.48.32, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.48.5881, %bb.ao ]
  %.sroa.0285.20 = phi i64 [ %.sroa.0285.31, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.0285.4882, %bb.ao ] ; 2 uses
  %i.oi = lshr i64 %.sroa.0285.20, 53             ; 3 uses
  %i.oj = trunc nuw nsw i64 %i.oi to i32          ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lg, i64 128
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !155
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.oi
  %i.on = load i32, ptr %i.om, align 4, !tbaa !22 ; 4 uses
  %i.oo = ashr i32 %i.on, 9                       ; 2 uses
  %i.op = and i32 %i.on, 255                      ; 4 uses
  %i.oq = icmp samesign ult i32 %i.op, 33
  tail call void @llvm.assume(i1 %i.oq)
  %i.or = sub nuw nsw i32 %.sroa.48.21, %i.op     ; 3 uses
  %i.os = zext nneg i32 %i.op to i64
  %i.ot = shl i64 %.sroa.0285.20, %i.os           ; 3 uses
  %i.ou = and i32 %i.on, 256
  %.not.i65.i = icmp eq i32 %i.ou, 0
  br i1 %.not.i65.i, label %bb.be, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.be:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.not17.i67.i = icmp eq i32 %i.on, 0
  br i1 %.not17.i67.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ov = trunc i32 %i.oo to i8                   ; 2 uses
  %i.ow = icmp ne i8 %i.ov, 0
  tail call void @llvm.assume(i1 %i.ow)
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.ox = icmp eq i32 %i.op, 0
  tail call void @llvm.assume(i1 %i.ox)
  %i.oy = add nsw i32 %i.or, -11                  ; 2 uses
  %i.oz = shl i64 %i.ot, 11                       ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.pb = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !156
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !157
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = ashr exact i64 %i.pg, 2
  %i.pi = add nsw i64 %i.ph, -1                   ; 3 uses
  %.sroa.0.018.i76 = trunc nuw nsw i64 %i.oi to i16 ; 2 uses
  %i.pj = icmp ugt i64 %i.pi, 11
  br i1 %i.pj, label %.lr.ph.i95, label %.critedge.i78

.lr.ph.i95:                                       ; preds = %bb.bg
  %i.pk = getelementptr inbounds nuw i8, ptr %i.lg, i64 80
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !160
  br label %bb.bh

bb.bh:                                            ; preds = %.critedge2.i102, %.lr.ph.i95
  %.sroa.48.23 = phi i32 [ %i.oy, %.lr.ph.i95 ], [ %i.pv, %.critedge2.i102 ] ; 4 uses
  %.sroa.0285.22 = phi i64 [ %i.oz, %.lr.ph.i95 ], [ %i.pw, %.critedge2.i102 ] ; 3 uses
  %i.pm = phi i64 [ 11, %.lr.ph.i95 ], [ %i.qb, %.critedge2.i102 ] ; 2 uses
  %.sroa.0.021.i98 = phi i16 [ %.sroa.0.018.i76, %.lr.ph.i95 ], [ %.sroa.0.0.i103, %.critedge2.i102 ] ; 2 uses
  %.sroa.8.020.i99 = phi i8 [ 11, %.lr.ph.i95 ], [ %i.qa, %.critedge2.i102 ] ; 2 uses
  %.sroa.0.0.in19.i100 = phi i32 [ %i.oj, %.lr.ph.i95 ], [ %i.pz, %.critedge2.i102 ] ; 2 uses
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %i.pl, i64 %i.pm
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !149 ; 2 uses
  %i.pp = icmp eq i16 %i.po, -1
  %i.pq = icmp ult i16 %i.po, %.sroa.0.021.i98
  %or.cond.i101 = select i1 %i.pp, i1 true, i1 %i.pq
  br i1 %or.cond.i101, label %.critedge2.i102, label %.critedge.i78.loopexit

.critedge2.i102:                                  ; preds = %bb.bh
  %i.pr = icmp samesign ult i32 %.sroa.48.23, 65
  tail call void @llvm.assume(i1 %i.pr)
  %i.ps = icmp ne i32 %.sroa.48.23, 0
  tail call void @llvm.assume(i1 %i.ps)
  %i.pt = lshr i64 %.sroa.0285.22, 63
  %i.pu = trunc nuw nsw i64 %i.pt to i32
  %i.pv = add nsw i32 %.sroa.48.23, -1            ; 2 uses
  %i.pw = shl i64 %.sroa.0285.22, 1               ; 2 uses
  %i.px = shl nsw i32 %.sroa.0.0.in19.i100, 1
  %i.py = and i32 %i.px, 131070
  %i.pz = or disjoint i32 %i.py, %i.pu            ; 3 uses
  %i.qa = add i8 %.sroa.8.020.i99, 1              ; 3 uses
  %.sroa.0.0.i103 = trunc i32 %i.pz to i16        ; 2 uses
  %i.qb = zext i8 %i.qa to i64                    ; 3 uses
  %i.qc = icmp ugt i64 %i.pi, %i.qb
  br i1 %i.qc, label %bb.bh, label %.critedge.i78.loopexit, !llvm.loop !1

.critedge.i78.loopexit:                           ; preds = %bb.bh, %.critedge2.i102
  %.sroa.48.22.ph = phi i32 [ %i.pv, %.critedge2.i102 ], [ %.sroa.48.23, %bb.bh ]
  %.sroa.0285.21.ph = phi i64 [ %i.pw, %.critedge2.i102 ], [ %.sroa.0285.22, %bb.bh ]
  %.sroa.0.0.in.lcssa.i79.ph = phi i32 [ %i.pz, %.critedge2.i102 ], [ %.sroa.0.0.in19.i100, %bb.bh ]
  %.sroa.8.0.lcssa.i80.ph = phi i8 [ %i.qa, %.critedge2.i102 ], [ %.sroa.8.020.i99, %bb.bh ]
  %.sroa.0.0.lcssa.i81.ph = phi i16 [ %.sroa.0.0.i103, %.critedge2.i102 ], [ %.sroa.0.021.i98, %bb.bh ]
  %.lcssa17.i82.ph = phi i64 [ %i.qb, %.critedge2.i102 ], [ %i.pm, %bb.bh ]
  %i.qd = zext i8 %.sroa.8.0.lcssa.i80.ph to i32
  br label %.critedge.i78

.critedge.i78:                                    ; preds = %.critedge.i78.loopexit, %bb.bg
  %.sroa.48.22 = phi i32 [ %i.oy, %bb.bg ], [ %.sroa.48.22.ph, %.critedge.i78.loopexit ]
  %.sroa.0285.21 = phi i64 [ %i.oz, %bb.bg ], [ %.sroa.0285.21.ph, %.critedge.i78.loopexit ]
  %.sroa.0.0.in.lcssa.i79 = phi i32 [ %i.oj, %bb.bg ], [ %.sroa.0.0.in.lcssa.i79.ph, %.critedge.i78.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i80 = phi i32 [ 11, %bb.bg ], [ %i.qd, %.critedge.i78.loopexit ]
  %.sroa.0.0.lcssa.i81 = phi i16 [ %.sroa.0.018.i76, %bb.bg ], [ %.sroa.0.0.lcssa.i81.ph, %.critedge.i78.loopexit ]
  %.lcssa17.i82 = phi i64 [ 11, %bb.bg ], [ %.lcssa17.i82.ph, %.critedge.i78.loopexit ] ; 3 uses
  %i.qe = icmp ult i64 %i.pi, %.lcssa17.i82
  br i1 %i.qe, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i78
  %i.qf = getelementptr inbounds nuw i8, ptr %i.lg, i64 80
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !160
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %i.qg, i64 %.lcssa17.i82
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !149
  %i.qj = icmp ult i16 %i.qi, %.sroa.0.0.lcssa.i81
  br i1 %i.qj, label %bb.bj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104

bb.bj:                                            ; preds = %bb.bi, %.critedge.i78
  %i.qk = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.qk, i32 noundef %.sroa.8.0.lcssa.i80) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104: ; preds = %bb.bi
  %.sroa.0.0.mask.i84 = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  %i.ql = getelementptr inbounds nuw i8, ptr %i.lg, i64 104
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !160
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %.lcssa17.i82
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !149
  %i.qp = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %.tr.i85 = zext i16 %i.qo to i32
  %.narrow.i86 = sub nsw i32 %.sroa.0.0.mask.i84, %.tr.i85
  %i.qq = zext i32 %.narrow.i86 to i64
  %i.qr = load ptr, ptr %i.qp, align 8, !tbaa !161
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qq
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !140
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104, %bb.bf
  %.0736 = phi i8 [ %i.qt, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.ov, %bb.bf ] ; 5 uses
  %.sroa.48.7 = phi i32 [ %.sroa.48.22, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.or, %bb.bf ] ; 8 uses
  %.sroa.0285.6 = phi i64 [ %.sroa.0285.21, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.ot, %bb.bf ] ; 6 uses
  %i.qu = icmp ult i8 %.0736, 17
  tail call void @llvm.assume(i1 %i.qu)
  switch i8 %.0736, label %bb.bn [
    i8 16, label %bb.bl
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.qv = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !162, !range !130, !noundef !116
  %i.qx = trunc nuw i8 %i.qw to i1
  br i1 %i.qx, label %bb.bm, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bm:                                            ; preds = %bb.bl
  %i.qy = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.qy)
  %i.qz = icmp samesign ugt i32 %.sroa.48.7, 15
  tail call void @llvm.assume(i1 %i.qz)
  %i.ra = add nsw i32 %.sroa.48.7, -16
  %i.rb = shl i64 %.sroa.0285.6, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bn:                                            ; preds = %bb.bk
  %i.rc = zext nneg i8 %.0736 to i32              ; 4 uses
  %i.rd = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.rd)
  %i.re = icmp ne i8 %.0736, 0
  tail call void @llvm.assume(i1 %i.re)
  %i.rf = icmp samesign uge i32 %.sroa.48.7, %i.rc
  tail call void @llvm.assume(i1 %i.rf)
  %i.rg = sub nuw nsw i32 64, %i.rc
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = lshr i64 %.sroa.0285.6, %i.rh
  %i.rj = trunc nuw nsw i64 %i.ri to i32
  %i.rk = sub nuw nsw i32 %.sroa.48.7, %i.rc
  %i.rl = zext nneg i8 %.0736 to i64
  %i.rm = shl i64 %.sroa.0285.6, %i.rl
  %i.rn = icmp sgt i64 %.sroa.0285.6, -1
  %notmask.i.i106 = shl nsw i32 -1, %i.rc
  %.neg.i.i107 = or disjoint i32 %notmask.i.i106, 1
  %i.ro = select i1 %i.rn, i32 %.neg.i.i107, i32 0
  %.0.i.i108 = add nsw i32 %i.ro, %i.rj
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.sroa.48.6 = phi i32 [ %i.or, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.rk, %bb.bn ], [ %i.ra, %bb.bm ], [ %.sroa.48.7, %bb.bl ], [ %.sroa.48.7, %bb.bk ] ; 2 uses
  %.sroa.0285.5 = phi i64 [ %i.ot, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.rm, %bb.bn ], [ %i.rb, %bb.bm ], [ %.sroa.0285.6, %bb.bl ], [ %.sroa.0285.6, %bb.bk ] ; 2 uses
  %.0.i66.i = phi i32 [ %i.oo, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %.0.i.i108, %bb.bn ], [ -32768, %bb.bm ], [ -32768, %bb.bl ], [ 0, %bb.bk ]
  %i.rp = or disjoint i64 %indvars.iv957, %i.lb   ; 2 uses
  %i.rq = icmp samesign ult i64 %i.rp, %i.bo
  br i1 %i.rq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %i.rr = trunc i32 %.0.i66.i to i16
  %i.rs = add i16 %i.le, %i.rr
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.rp
  store i16 %i.rs, ptr %i.rt, align 2, !tbaa !149
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %indvars.iv.next958 = add nuw nsw i64 %indvars.iv957, 1 ; 2 uses
  %.not53.i = icmp eq i64 %indvars.iv.next958, 4
  br i1 %.not53.i, label %.loopexit755, label %bb.ao, !llvm.loop !231

bb.bq:                                            ; preds = %.loopexit755, %._crit_edge
  %.sroa.169389.6 = phi i32 [ %.sroa.169389.3.lcssa, %._crit_edge ], [ %.sroa.169389.12, %.loopexit755 ] ; 2 uses
  %.sroa.137361.6 = phi i32 [ %.sroa.137361.3.lcssa, %._crit_edge ], [ %.sroa.137361.12, %.loopexit755 ] ; 2 uses
  %.sroa.48.8 = phi i32 [ %.sroa.48.3.lcssa, %._crit_edge ], [ %.sroa.48.6, %.loopexit755 ] ; 2 uses
  %.sroa.0285.7 = phi i64 [ %.sroa.0285.2.lcssa, %._crit_edge ], [ %.sroa.0285.5, %.loopexit755 ] ; 2 uses
  %.1.i = phi i32 [ %.046.i.lcssa, %._crit_edge ], [ %i.lc, %.loopexit755 ] ; 2 uses
  %i.ru = load i32, ptr %i.bl, align 8, !tbaa !163 ; 2 uses
  %i.rv = icmp slt i32 %.1.i, %i.ru
  br i1 %i.rv, label %.preheader753, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

.preheader753:                                    ; preds = %bb.bq, %bb.br
  %.2.i899 = phi i32 [ %i.rw, %bb.br ], [ %.1.i, %bb.bq ]
  %.sroa.0285.8898 = phi i64 [ %.sroa.0285.10, %bb.br ], [ %.sroa.0285.7, %bb.bq ]
  %.sroa.48.9897 = phi i32 [ %.sroa.48.11, %bb.br ], [ %.sroa.48.8, %bb.bq ]
  %.sroa.137361.7896 = phi i32 [ %.sroa.137361.13, %bb.br ], [ %.sroa.137361.6, %bb.bq ]
  %.sroa.169389.7895 = phi i32 [ %.sroa.169389.13, %bb.br ], [ %.sroa.169389.6, %bb.bq ]
  br label %bb.bs

bb.br:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %i.rw = add nsw i32 %.2.i899, 1                 ; 2 uses
  %exitcond963.not = icmp eq i32 %i.rw, %i.ru
  br i1 %exitcond963.not, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, label %.preheader753, !llvm.loop !232

bb.bs:                                            ; preds = %.preheader753, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %indvars.iv960 = phi i64 [ 0, %.preheader753 ], [ %indvars.iv.next961, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 2 uses
  %.sroa.0285.9893 = phi i64 [ %.sroa.0285.8898, %.preheader753 ], [ %.sroa.0285.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 3 uses
  %.sroa.48.10892 = phi i32 [ %.sroa.48.9897, %.preheader753 ], [ %.sroa.48.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 7 uses
  %.sroa.137361.8889 = phi i32 [ %.sroa.137361.7896, %.preheader753 ], [ %.sroa.137361.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 8 uses
  %.sroa.169389.8888 = phi i32 [ %.sroa.169389.7895, %.preheader753 ], [ %.sroa.169389.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 4 uses
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv960
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !165 ; 8 uses
  %i.rz = icmp samesign ult i32 %.sroa.48.10892, 65
  tail call void @llvm.assume(i1 %i.rz)
  %.not.i114 = icmp samesign ult i32 %.sroa.48.10892, 32
  br i1 %.not.i114, label %bb.bt, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i113)
  %9 = add nuw nsw i32 %.sroa.137361.8889, 8
  %.not.i.i115 = icmp samesign ugt i32 %9, %i.dr
  br i1 %.not.i.i115, label %bb.bv, label %bb.bu, !prof !141

bb.bu:                                            ; preds = %bb.bt
  %i.sa = zext nneg i32 %.sroa.137361.8889 to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.sa
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

bb.bv:                                            ; preds = %bb.bt
  %i.sc = icmp samesign ugt i32 %.sroa.137361.8889, %i.dv
  br i1 %i.sc, label %bb.bw, label %bb.bx, !prof !141

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.bx:                                            ; preds = %bb.bv
  store i64 0, ptr %.sroa.0.i.i113, align 8
  %.sroa.speculated27.i.i.i121 = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 %.sroa.137361.8889) ; 3 uses
  %i.sd = add nuw nsw i32 %.sroa.speculated27.i.i.i121, 8
  %.sroa.speculated.i.i.i122 = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 %i.sd)
  %i.se = sub nsw i32 %.sroa.speculated.i.i.i122, %.sroa.speculated27.i.i.i121 ; 2 uses
  %i.sf = icmp samesign ult i32 %i.se, 9
  tail call void @llvm.assume(i1 %i.sf)
  %i.sg = zext nneg i32 %.sroa.speculated27.i.i.i121 to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.sg
  %i.si = zext nneg i32 %i.se to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i113, ptr align 1 %i.sh, i64 %i.si, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117: ; preds = %bb.bx, %bb.bu
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118 = phi ptr [ %.sroa.0.i.i113, %bb.bx ], [ %i.sb, %bb.bu ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i113)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, ptr %1, align 8
  %i.sj = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i8 ; 2 uses
  %i.sk = icmp ne i8 %i.sj, -1
  %i.sl = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 8
  %i.sm = trunc i64 %i.sl to i8                   ; 3 uses
  %i.sn = icmp ne i8 %i.sm, -1
  %i.so = and i1 %i.sk, %i.sn
  %i.sp = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 16
  %i.sq = trunc i64 %i.sp to i8                   ; 2 uses
  %i.sr = icmp ne i8 %i.sq, -1
  %i.ss = and i1 %i.sr, %i.so
  %i.st = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 4278190080
  %i.su = icmp ne i64 %i.st, 4278190080
  %i.sv = and i1 %i.su, %i.ss
  br i1 %i.sv, label %bb.by, label %.preheader.i193

.preheader.i193:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.sw = zext nneg i32 %.sroa.48.10892 to i64    ; 8 uses
  %i.sx = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 255
  %indvars.iv.next.i194 = add nuw nsw i64 %i.sw, 8
  %i.sy = sub nuw nsw i64 56, %i.sw
  %i.sz = shl nuw i64 %i.sx, %i.sy
  %i.ta = or i64 %i.sz, %.sroa.0285.9893          ; 2 uses
  %.not.i195 = icmp eq i8 %i.sj, -1
  br i1 %.not.i195, label %bb.bz, label %bb.cb

bb.by:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.tb = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i32
  %i.tc = tail call i32 @llvm.bswap.i32(i32 %i.tb)
  %i.td = zext i32 %i.tc to i64
  %i.te = sub nuw nsw i32 32, %.sroa.48.10892
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = shl nuw i64 %i.td, %i.tf
  %i.th = or i64 %i.tg, %.sroa.0285.9893
  %i.ti = or disjoint i32 %.sroa.48.10892, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214

bb.bz:                                            ; preds = %.preheader.i193
  %i.tj = icmp eq i8 %i.sm, 0
  br i1 %i.tj, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.cg, %bb.ce, %bb.cc, %bb.bz
  %.062.lcssa.i209.neg922 = phi i32 [ 0, %bb.bz ], [ -1, %bb.cc ], [ -2, %bb.ce ], [ -3, %bb.cg ]
  %.01861.lcssa.i210 = phi i32 [ 0, %bb.bz ], [ %.2.ph.i196, %bb.cc ], [ %i.ub, %bb.ce ], [ %i.um, %bb.cg ]
  %.lcssa66.wide.i211 = phi i64 [ %i.sw, %bb.bz ], [ %indvars.iv.next.i194, %bb.cc ], [ %indvars.iv.next.1.i197, %bb.ce ], [ %indvars.iv.next.2.i200, %bb.cg ]
  %.lcssa.i212 = phi i64 [ %i.ta, %bb.bz ], [ %i.tv, %bb.cc ], [ %i.ui, %bb.ce ], [ %i.ut, %bb.cg ]
  %i.tk = add nuw nsw i32 %.01861.lcssa.i210, %.sroa.137361.8889
  %i.tl = icmp slt i32 %.sroa.169389.8888, 0
  tail call void @llvm.assume(i1 %i.tl)
  %i.tm = lshr i64 -1, %.lcssa66.wide.i211
  %i.tn = xor i64 %i.tm, -1
  %i.to = and i64 %.lcssa.i212, %i.tn
  %.neg751 = sub nsw i32 %i.dr, %.sroa.137361.8889
  %reass.sub.i213 = add nsw i32 %.neg751, %.062.lcssa.i209.neg922 ; 2 uses
  %i.tp = add nuw nsw i32 %reass.sub.i213, 4
  %i.tq = icmp ugt i32 %reass.sub.i213, 1
  tail call void @llvm.assume(i1 %i.tq)
  br label %bb.ch

bb.cb:                                            ; preds = %bb.bz, %.preheader.i193
  %i.tr = phi i8 [ %i.sm, %.preheader.i193 ], [ %i.sq, %bb.bz ] ; 2 uses
  %.2.ph.i196 = phi i32 [ 1, %.preheader.i193 ], [ 2, %bb.bz ] ; 3 uses
  %i.ts = zext i8 %i.tr to i64
  %indvars.iv.next.1.i197 = add nuw nsw i64 %i.sw, 16
  %i.tt = sub nuw nsw i64 48, %i.sw
  %i.tu = shl nuw nsw i64 %i.ts, %i.tt
  %i.tv = or i64 %i.tu, %i.ta                     ; 2 uses
  %.not.1.i198 = icmp eq i8 %i.tr, -1
  br i1 %.not.1.i198, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.tw = zext nneg i32 %.2.ph.i196 to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 1
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !140
  %i.ua = icmp eq i8 %i.tz, 0
  br i1 %i.ua, label %bb.cd, label %bb.ca

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink.i199 = phi i32 [ 1, %bb.cb ], [ 2, %bb.cc ]
  %i.ub = add nuw nsw i32 %.sink.i199, %.2.ph.i196 ; 3 uses
  %i.uc = zext nneg i32 %i.ub to i64
  %i.ud = getelementptr inbounds nuw i8, ptr %1, i64 %i.uc ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !140 ; 2 uses
  %i.uf = zext i8 %i.ue to i64
  %indvars.iv.next.2.i200 = add nuw nsw i64 %i.sw, 24
  %i.ug = sub nuw nsw i64 40, %i.sw
  %i.uh = shl nuw nsw i64 %i.uf, %i.ug
  %i.ui = or i64 %i.uh, %i.tv                     ; 2 uses
  %.not.2.i201 = icmp eq i8 %i.ue, -1
  br i1 %.not.2.i201, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ud, i64 1
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !140
  %i.ul = icmp eq i8 %i.uk, 0
  br i1 %i.ul, label %bb.cf, label %bb.ca

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sink72.i202 = phi i32 [ 1, %bb.cd ], [ 2, %bb.ce ]
  %i.um = add nuw nsw i32 %.sink72.i202, %i.ub    ; 3 uses
  %i.un = zext nneg i32 %i.um to i64
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 %i.un ; 2 uses
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !140 ; 2 uses
  %i.uq = zext i8 %i.up to i64
  %indvars.iv.next.3.i203 = or disjoint i32 %.sroa.48.10892, 32
  %i.ur = sub nuw nsw i64 32, %i.sw
  %i.us = shl nuw nsw i64 %i.uq, %i.ur
  %i.ut = or i64 %i.us, %i.ui                     ; 2 uses
  %.not.3.i204 = icmp eq i8 %i.up, -1
  br i1 %.not.3.i204, label %bb.cg, label %.loopexit.i205

bb.cg:                                            ; preds = %bb.cf
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uo, i64 1
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !140
  %i.uw = icmp eq i8 %i.uv, 0
  br i1 %i.uw, label %.loopexit.i205, label %bb.ca

.loopexit.i205:                                   ; preds = %bb.cg, %bb.cf
  %.sink73.i206 = phi i32 [ 1, %bb.cf ], [ 2, %bb.cg ]
  %i.ux = add nuw nsw i32 %.sink73.i206, %i.um
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i205, %bb.ca
  %.sroa.169389.18 = phi i32 [ %.sroa.169389.8888, %.loopexit.i205 ], [ %i.tk, %bb.ca ]
  %.sroa.48.33 = phi i32 [ %indvars.iv.next.3.i203, %.loopexit.i205 ], [ 64, %bb.ca ]
  %.sroa.0285.32 = phi i64 [ %i.ut, %.loopexit.i205 ], [ %i.to, %bb.ca ]
  %.3.i207 = phi i32 [ %i.ux, %.loopexit.i205 ], [ %i.tp, %bb.ca ] ; 2 uses
  %i.uy = icmp sgt i32 %.3.i207, 4
  tail call void @llvm.assume(i1 %i.uy)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214: ; preds = %bb.by, %bb.ch
  %.sroa.169389.19 = phi i32 [ %.sroa.169389.8888, %bb.by ], [ %.sroa.169389.18, %bb.ch ]
  %.sroa.48.34 = phi i32 [ %i.ti, %bb.by ], [ %.sroa.48.33, %bb.ch ]
  %.sroa.0285.33 = phi i64 [ %i.th, %bb.by ], [ %.sroa.0285.32, %bb.ch ]
  %.021.i208 = phi i32 [ 4, %bb.by ], [ %.3.i207, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.uz = add nuw nsw i32 %.021.i208, %.sroa.137361.8889
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123: ; preds = %bb.bs, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214
  %.sroa.169389.13 = phi i32 [ %.sroa.169389.19, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.169389.8888, %bb.bs ] ; 3 uses
  %.sroa.137361.13 = phi i32 [ %i.uz, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.137361.8889, %bb.bs ] ; 3 uses
  %.sroa.48.25 = phi i32 [ %.sroa.48.34, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.48.10892, %bb.bs ]
  %.sroa.0285.24 = phi i64 [ %.sroa.0285.33, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.0285.9893, %bb.bs ] ; 2 uses
  %i.va = lshr i64 %.sroa.0285.24, 53             ; 3 uses
  %i.vb = trunc nuw nsw i64 %i.va to i32          ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ry, i64 128
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !155
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.va
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !22 ; 4 uses
  %i.vg = lshr i32 %i.vf, 9
  %i.vh = and i32 %i.vf, 255                      ; 4 uses
  %i.vi = icmp samesign ult i32 %i.vh, 33
  tail call void @llvm.assume(i1 %i.vi)
  %i.vj = sub nuw nsw i32 %.sroa.48.25, %i.vh     ; 3 uses
  %i.vk = zext nneg i32 %i.vh to i64
  %i.vl = shl i64 %.sroa.0285.24, %i.vk           ; 3 uses
  %i.vm = and i32 %i.vf, 256
  %.not.i71.i = icmp eq i32 %i.vm, 0
  br i1 %.not.i71.i, label %bb.ci, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.ci:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.not17.i73.i = icmp eq i32 %i.vf, 0
  br i1 %.not17.i73.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.vn = trunc i32 %i.vg to i8                   ; 2 uses
  %i.vo = icmp ne i8 %i.vn, 0
  tail call void @llvm.assume(i1 %i.vo)
  br label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.vp = icmp eq i32 %i.vh, 0
  tail call void @llvm.assume(i1 %i.vp)
  %i.vq = add nsw i32 %i.vj, -11                  ; 2 uses
  %i.vr = shl i64 %i.vl, 11                       ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ry, i64 40
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !156
  %i.vv = load ptr, ptr %i.vs, align 8, !tbaa !157
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = ptrtoint ptr %i.vv to i64
  %i.vy = sub i64 %i.vw, %i.vx
  %i.vz = ashr exact i64 %i.vy, 2
  %i.wa = add nsw i64 %i.vz, -1                   ; 3 uses
  %.sroa.0.018.i126 = trunc nuw nsw i64 %i.va to i16 ; 2 uses
  %i.wb = icmp ugt i64 %i.wa, 11
  br i1 %i.wb, label %.lr.ph.i145, label %.critedge.i128

.lr.ph.i145:                                      ; preds = %bb.ck
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ry, i64 80
end_hunk_3
begin_hunk_4_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi2EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
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
  %invariant.op.a = add i32 %i.x, -2
  %i.bn = icmp samesign ule i32 %i.x, %i.bk       ; 2 uses
  %i.bo = icmp sgt i32 %i.n, 1                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = zext nneg i32 %.sroa.221.0.copyload to i64
  %i.bs = zext nneg i32 %i.n to i64               ; 2 uses
  %i.bt = zext i32 %invariant.op.a to i64
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
  ret i32 %i.yv

bb.b:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163
  %indvars.iv983.a = phi i64 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %indvars.iv.next984, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
  %.sroa.10425.0927 = phi i32 [ 0, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ %i.yv, %_ZN8rawspeed10ByteStream9skipBytesEj.exit163 ] ; 5 uses
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
  %.not31 = icmp eq i64 %indvars.iv983.a, 0
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
  %i.ds = trunc i64 %indvars.iv983.a to i32
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
  %i.eb = mul nsw i64 %indvars.iv983.a, %i.av
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
  %i.ei = icmp eq i64 %indvars.iv983.a, %i.by
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
  %indvars.iv967.a = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next968, %bb.p ] ; 2 uses
  %.sroa.22.0875 = phi i32 [ %.sroa.8403.0914, %.lr.ph ], [ %i.n, %bb.p ]
  %.sroa.0508.0873 = phi ptr [ %.sroa.0400.0916, %.lr.ph ], [ %i.eq, %bb.p ]
  %.sroa.0285.2872 = phi i64 [ %.sroa.0285.0920, %.lr.ph ], [ %.sroa.0285.14, %bb.p ]
  %.sroa.48.3871 = phi i32 [ %.sroa.48.0919, %.lr.ph ], [ %.sroa.48.15, %bb.p ]
  %.sroa.137361.3870 = phi i32 [ %.sroa.137361.0918, %.lr.ph ], [ %.sroa.137361.11, %bb.p ]
  %.sroa.169389.3869 = phi i32 [ %.sroa.169389.0917, %.lr.ph ], [ %.sroa.169389.11, %bb.p ]
  %i.eo = shl nuw nsw i64 %indvars.iv967.a, 1     ; 2 uses
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
  %indvars.iv.next968 = add nuw nsw i64 %indvars.iv967.a, 1 ; 2 uses
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
  %7 = add nuw nsw i32 %.sroa.137361.10858, 8
  %.not.i.i52 = icmp samesign ugt i32 %7, %i.dy
  br i1 %.not.i.i52, label %bb.u, label %bb.t, !prof !141

bb.t:                                             ; preds = %bb.s
  %i.fa = zext nneg i32 %.sroa.137361.10858 to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.fa
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.u:                                             ; preds = %bb.s
  %i.fc = icmp samesign ugt i32 %.sroa.137361.10858, %i.ec
  br i1 %i.fc, label %bb.v, label %bb.w, !prof !141

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.w:                                             ; preds = %bb.u
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 %.sroa.137361.10858) ; 3 uses
  %i.fd = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 %i.fd)
  %i.fe = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.ff = icmp samesign ult i32 %i.fe, 9
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.fg
  %i.fi = zext nneg i32 %i.fe to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.fh, i64 %i.fi, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.w, %bb.t
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.w ], [ %i.fb, %bb.t ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %3, align 8
  %i.fj = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.fk = icmp ne i8 %i.fj, -1
  %i.fl = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.fm = trunc i64 %i.fl to i8                   ; 3 uses
  %i.fn = icmp ne i8 %i.fm, -1
  %i.fo = and i1 %i.fk, %i.fn
  %i.fp = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.fq = trunc i64 %i.fp to i8                   ; 2 uses
  %i.fr = icmp ne i8 %i.fq, -1
  %i.fs = and i1 %i.fr, %i.fo
  %i.ft = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.fu = icmp ne i64 %i.ft, 4278190080
  %i.fv = and i1 %i.fu, %i.fs
  br i1 %i.fv, label %bb.x, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fw = zext nneg i32 %.sroa.48.14861 to i64    ; 8 uses
  %i.fx = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.fw, 8
  %i.fy = sub nuw nsw i64 56, %i.fw
  %i.fz = shl nuw i64 %i.fx, %i.fy
  %i.ga = or i64 %i.fz, %.sroa.0285.13862         ; 2 uses
  %.not.i166 = icmp eq i8 %i.fj, -1
  br i1 %.not.i166, label %bb.y, label %bb.aa

bb.x:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.gb = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.gc = tail call i32 @llvm.bswap.i32(i32 %i.gb)
  %i.gd = zext i32 %i.gc to i64
  %i.ge = sub nuw nsw i32 32, %.sroa.48.14861
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = shl nuw i64 %i.gd, %i.gf
  %i.gh = or i64 %i.gg, %.sroa.0285.13862
  %i.gi = or disjoint i32 %.sroa.48.14861, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.y:                                             ; preds = %.preheader.i
  %i.gj = icmp eq i8 %i.fm, 0
  br i1 %i.gj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.af, %bb.ad, %bb.ab, %bb.y
  %.062.lcssa.i.neg930 = phi i32 [ 0, %bb.y ], [ -1, %bb.ab ], [ -2, %bb.ad ], [ -3, %bb.af ]
  %.01861.lcssa.i = phi i32 [ 0, %bb.y ], [ %.2.ph.i, %bb.ab ], [ %i.hb, %bb.ad ], [ %i.hm, %bb.af ]
  %.lcssa66.wide.i = phi i64 [ %i.fw, %bb.y ], [ %indvars.iv.next.i, %bb.ab ], [ %indvars.iv.next.1.i, %bb.ad ], [ %indvars.iv.next.2.i, %bb.af ]
  %.lcssa.i = phi i64 [ %i.ga, %bb.y ], [ %i.gv, %bb.ab ], [ %i.hi, %bb.ad ], [ %i.ht, %bb.af ]
  %i.gk = add nuw nsw i32 %.01861.lcssa.i, %.sroa.137361.10858
  %i.gl = icmp slt i32 %.sroa.169389.10857, 0
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = lshr i64 -1, %.lcssa66.wide.i
  %i.gn = xor i64 %i.gm, -1
  %i.go = and i64 %.lcssa.i, %i.gn
  %.neg752 = sub nsw i32 %i.dy, %.sroa.137361.10858
  %reass.sub.i = add nsw i32 %.neg752, %.062.lcssa.i.neg930 ; 2 uses
  %i.gp = add nuw nsw i32 %reass.sub.i, 4
  %i.gq = icmp ugt i32 %reass.sub.i, 1
  tail call void @llvm.assume(i1 %i.gq)
  br label %bb.ag

bb.aa:                                            ; preds = %bb.y, %.preheader.i
  %i.gr = phi i8 [ %i.fm, %.preheader.i ], [ %i.fq, %bb.y ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.y ] ; 3 uses
  %i.gs = zext i8 %i.gr to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.fw, 16
  %i.gt = sub nuw nsw i64 48, %i.fw
  %i.gu = shl nuw nsw i64 %i.gs, %i.gt
  %i.gv = or i64 %i.gu, %i.ga                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.gr, -1
  br i1 %.not.1.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gw = zext nneg i32 %.2.ph.i to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !140
  %i.ha = icmp eq i8 %i.gz, 0
  br i1 %i.ha, label %bb.ac, label %bb.z

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink.i = phi i32 [ 1, %bb.aa ], [ 2, %bb.ab ]
  %i.hb = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 %i.hc ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !140 ; 2 uses
  %i.hf = zext i8 %i.he to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.fw, 24
  %i.hg = sub nuw nsw i64 40, %i.fw
  %i.hh = shl nuw nsw i64 %i.hf, %i.hg
  %i.hi = or i64 %i.hh, %i.gv                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.he, -1
  br i1 %.not.2.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !140
  %i.hl = icmp eq i8 %i.hk, 0
  br i1 %i.hl, label %bb.ae, label %bb.z

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink72.i = phi i32 [ 1, %bb.ac ], [ 2, %bb.ad ]
  %i.hm = add nuw nsw i32 %.sink72.i, %i.hb       ; 3 uses
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 %i.hn ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !140 ; 2 uses
  %i.hq = zext i8 %i.hp to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.48.14861, 32
  %i.hr = sub nuw nsw i64 32, %i.fw
  %i.hs = shl nuw nsw i64 %i.hq, %i.hr
  %i.ht = or i64 %i.hs, %i.hi                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.hp, -1
  br i1 %.not.3.i, label %bb.af, label %.loopexit.i

bb.af:                                            ; preds = %bb.ae
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !140
  %i.hw = icmp eq i8 %i.hv, 0
  br i1 %i.hw, label %.loopexit.i, label %bb.z

.loopexit.i:                                      ; preds = %bb.af, %bb.ae
  %.sink73.i = phi i32 [ 1, %bb.ae ], [ 2, %bb.af ]
  %i.hx = add nuw nsw i32 %.sink73.i, %i.hm
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i, %bb.z
  %.sroa.169389.14 = phi i32 [ %.sroa.169389.10857, %.loopexit.i ], [ %i.gk, %bb.z ]
  %.sroa.48.29 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.z ]
  %.sroa.0285.28 = phi i64 [ %i.ht, %.loopexit.i ], [ %i.go, %bb.z ]
  %.3.i = phi i32 [ %i.hx, %.loopexit.i ], [ %i.gp, %bb.z ] ; 2 uses
  %i.hy = icmp sgt i32 %.3.i, 4
  tail call void @llvm.assume(i1 %i.hy)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.x, %bb.ag
  %.sroa.169389.15 = phi i32 [ %.sroa.169389.10857, %bb.x ], [ %.sroa.169389.14, %bb.ag ]
  %.sroa.48.30 = phi i32 [ %i.gi, %bb.x ], [ %.sroa.48.29, %bb.ag ]
  %.sroa.0285.29 = phi i64 [ %i.gh, %bb.x ], [ %.sroa.0285.28, %bb.ag ]
  %.021.i = phi i32 [ 4, %bb.x ], [ %.3.i, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hz = add nuw nsw i32 %.021.i, %.sroa.137361.10858
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.r, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.169389.11 = phi i32 [ %.sroa.169389.15, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.169389.10857, %bb.r ] ; 4 uses
  %.sroa.137361.11 = phi i32 [ %i.hz, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.137361.10858, %bb.r ] ; 4 uses
  %.sroa.48.17 = phi i32 [ %.sroa.48.30, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.48.14861, %bb.r ]
  %.sroa.0285.16 = phi i64 [ %.sroa.0285.29, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0285.13862, %bb.r ] ; 2 uses
  %i.ia = lshr i64 %.sroa.0285.16, 53             ; 3 uses
  %i.ib = trunc nuw nsw i64 %i.ia to i32          ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !155
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ia
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !22 ; 4 uses
  %i.ig = ashr i32 %i.if, 9                       ; 2 uses
  %i.ih = and i32 %i.if, 255                      ; 4 uses
  %i.ii = icmp samesign ult i32 %i.ih, 33
  tail call void @llvm.assume(i1 %i.ii)
  %i.ij = sub nuw nsw i32 %.sroa.48.17, %i.ih     ; 3 uses
  %i.ik = zext nneg i32 %i.ih to i64
  %i.il = shl i64 %.sroa.0285.16, %i.ik           ; 3 uses
  %i.im = and i32 %i.if, 256
  %.not.i.i = icmp eq i32 %i.im, 0
  br i1 %.not.i.i, label %bb.ah, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.ah:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i.i = icmp eq i32 %i.if, 0
  br i1 %.not17.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.in = trunc i32 %i.ig to i8                   ; 2 uses
  %i.io = icmp ne i8 %i.in, 0
  tail call void @llvm.assume(i1 %i.io)
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.ip = icmp eq i32 %i.ih, 0
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = add nsw i32 %i.ij, -11                  ; 2 uses
  %i.ir = shl i64 %i.il, 11                       ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !156
  %i.iv = load ptr, ptr %i.is, align 8, !tbaa !157
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = ashr exact i64 %i.iy, 2
  %i.ja = add nsw i64 %i.iz, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.ia to i16 ; 2 uses
  %i.jb = icmp ugt i64 %i.ja, 11
  br i1 %i.jb, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.aj
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
end_hunk_4
begin_hunk_5_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi2EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge2.i, %.lr.ph.i
  %.sroa.48.19 = phi i32 [ %i.iq, %.lr.ph.i ], [ %i.jn, %.critedge2.i ] ; 4 uses
  %.sroa.0285.18 = phi i64 [ %i.ir, %.lr.ph.i ], [ %i.jo, %.critedge2.i ] ; 3 uses
  %i.je = phi i64 [ 11, %.lr.ph.i ], [ %i.jt, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i ], [ %i.js, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.ib, %.lr.ph.i ], [ %i.jr, %.critedge2.i ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !149 ; 2 uses
  %i.jh = icmp eq i16 %i.jg, -1
  %i.ji = icmp ult i16 %i.jg, %.sroa.0.021.i
  %or.cond.i = select i1 %i.jh, i1 true, i1 %i.ji
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ak
  %i.jj = icmp samesign ult i32 %.sroa.48.19, 65
  tail call void @llvm.assume(i1 %i.jj)
  %i.jk = icmp ne i32 %.sroa.48.19, 0
  tail call void @llvm.assume(i1 %i.jk)
  %i.jl = lshr i64 %.sroa.0285.18, 63
  %i.jm = trunc nuw nsw i64 %i.jl to i32
  %i.jn = add nsw i32 %.sroa.48.19, -1            ; 2 uses
  %i.jo = shl i64 %.sroa.0285.18, 1               ; 2 uses
  %i.jp = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.jq = and i32 %i.jp, 131070
  %i.jr = or disjoint i32 %i.jq, %i.jm            ; 3 uses
  %i.js = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.jr to i16           ; 2 uses
  %i.jt = zext i8 %i.js to i64                    ; 3 uses
  %i.ju = icmp ugt i64 %i.ja, %i.jt
  br i1 %i.ju, label %bb.ak, label %.critedge.i.loopexit, !llvm.loop !1

.critedge.i.loopexit:                             ; preds = %bb.ak, %.critedge2.i
  %.sroa.48.18.ph = phi i32 [ %i.jn, %.critedge2.i ], [ %.sroa.48.19, %bb.ak ]
  %.sroa.0285.17.ph = phi i64 [ %i.jo, %.critedge2.i ], [ %.sroa.0285.18, %bb.ak ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.jr, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ak ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.js, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ak ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ak ]
  %.lcssa17.i.ph = phi i64 [ %i.jt, %.critedge2.i ], [ %i.je, %bb.ak ]
  %i.jv = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.aj
  %.sroa.48.18 = phi i32 [ %i.iq, %bb.aj ], [ %.sroa.48.18.ph, %.critedge.i.loopexit ]
  %.sroa.0285.17 = phi i64 [ %i.ir, %bb.aj ], [ %.sroa.0285.17.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.ib, %bb.aj ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.aj ], [ %i.jv, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.aj ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.aj ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.jw = icmp ult i64 %i.ja, %.lcssa17.i
  br i1 %i.jw, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !160
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %.lcssa17.i
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !149
  %i.kb = icmp ult i16 %i.ka, %.sroa.0.0.lcssa.i
  br i1 %i.kb, label %bb.am, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.am:                                            ; preds = %bb.al, %.critedge.i
  %i.kc = and i32 %.sroa.0.0.in.lcssa.i, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.kc, i32 noundef %.sroa.8.0.lcssa.i) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.al
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ey, i64 104
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !160
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %.lcssa17.i
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !149
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.tr.i = zext i16 %i.kg to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.ki = zext i32 %.narrow.i to i64
  %i.kj = load ptr, ptr %i.kh, align 8, !tbaa !161
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.ki
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !140
  br label %bb.an

bb.an:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.ai
  %.0734 = phi i8 [ %i.kl, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.in, %bb.ai ] ; 5 uses
  %.sroa.48.16 = phi i32 [ %.sroa.48.18, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.ij, %bb.ai ] ; 8 uses
  %.sroa.0285.15 = phi i64 [ %.sroa.0285.17, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.il, %bb.ai ] ; 6 uses
  %i.km = icmp ult i8 %.0734, 17
  tail call void @llvm.assume(i1 %i.km)
  switch i8 %.0734, label %bb.aq [
    i8 16, label %bb.ao
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  ]

bb.ao:                                            ; preds = %bb.an
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !162, !range !130, !noundef !116
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.ap, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.kq = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.kq)
  %i.kr = icmp samesign ugt i32 %.sroa.48.16, 15
  tail call void @llvm.assume(i1 %i.kr)
  %i.ks = add nsw i32 %.sroa.48.16, -16
  %i.kt = shl i64 %.sroa.0285.15, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.aq:                                            ; preds = %bb.an
  %i.ku = zext nneg i8 %.0734 to i32              ; 4 uses
  %i.kv = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.kv)
  %i.kw = icmp ne i8 %.0734, 0
  tail call void @llvm.assume(i1 %i.kw)
  %i.kx = icmp samesign uge i32 %.sroa.48.16, %i.ku
  tail call void @llvm.assume(i1 %i.kx)
  %i.ky = sub nuw nsw i32 64, %i.ku
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = lshr i64 %.sroa.0285.15, %i.kz
  %i.lb = trunc nuw nsw i64 %i.la to i32
  %i.lc = sub nuw nsw i32 %.sroa.48.16, %i.ku
  %i.ld = zext nneg i8 %.0734 to i64
  %i.le = shl i64 %.sroa.0285.15, %i.ld
  %i.lf = icmp sgt i64 %.sroa.0285.15, -1
  %notmask.i.i = shl nsw i32 -1, %i.ku
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.lg = select i1 %i.lf, i32 %.neg.i.i, i32 0
  %.0.i.i56 = add nsw i32 %i.lg, %i.lb
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.48.15 = phi i32 [ %i.ij, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.lc, %bb.aq ], [ %i.ks, %bb.ap ], [ %.sroa.48.16, %bb.ao ], [ %.sroa.48.16, %bb.an ] ; 4 uses
  %.sroa.0285.14 = phi i64 [ %i.il, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.le, %bb.aq ], [ %i.kt, %bb.ap ], [ %.sroa.0285.15, %bb.ao ], [ %.sroa.0285.15, %bb.an ] ; 4 uses
  %.0.i.i = phi i32 [ %i.ig, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i56, %bb.aq ], [ -32768, %bb.ap ], [ -32768, %bb.ao ], [ 0, %bb.an ]
  %i.lh = trunc i32 %.0.i.i to i16
  %i.li = add i16 %i.ex, %i.lh
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %indvars.iv
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !149
  br i1 %.not55.i, label %bb.q, label %bb.r, !llvm.loop !249

._crit_edge:                                      ; preds = %bb.p, %bb.n
  %.sroa.169389.3.lcssa = phi i32 [ %.sroa.169389.0917, %bb.n ], [ %.sroa.169389.11, %bb.p ] ; 2 uses
  %.sroa.137361.3.lcssa = phi i32 [ %.sroa.137361.0918, %bb.n ], [ %.sroa.137361.11, %bb.p ] ; 2 uses
  %.sroa.48.3.lcssa = phi i32 [ %.sroa.48.0919, %bb.n ], [ %.sroa.48.15, %bb.p ] ; 2 uses
  %.sroa.0285.2.lcssa = phi i64 [ %.sroa.0285.0920, %bb.n ], [ %.sroa.0285.14, %bb.p ] ; 2 uses
  %.sroa.0508.0.lcssa = phi ptr [ %.sroa.0400.0916, %bb.n ], [ %i.eq, %bb.p ]
  %.sroa.22.0.lcssa = phi i32 [ %.sroa.8403.0914, %bb.n ], [ %i.n, %bb.p ]
  %.046.i.lcssa = phi i32 [ 0, %bb.n ], [ %i.em, %bb.p ] ; 3 uses
  %i.lk = load i32, ptr %i.bp, align 8, !tbaa !38 ; 2 uses
  %.not.i = icmp eq i32 %i.lk, 0
  br i1 %.not.i, label %bb.bw, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.ll = icmp samesign ult i32 %i.lk, 4
  tail call void @llvm.assume(i1 %i.ll)
  %i.lm = shl nuw nsw i32 %.046.i.lcssa, 1
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = zext nneg i32 %.sroa.22.0.lcssa to i64
  br label %.preheader754

.preheader754:                                    ; preds = %bb.ar, %bb.at
  %.not51.i = phi i1 [ false, %bb.ar ], [ true, %bb.at ]
  %indvars.iv973.a = phi i64 [ 0, %bb.ar ], [ 1, %bb.at ] ; 3 uses
  %.sroa.0285.3894 = phi i64 [ %.sroa.0285.2.lcssa, %bb.ar ], [ %.sroa.0285.5, %bb.at ]
  %.sroa.48.4893 = phi i32 [ %.sroa.48.3.lcssa, %bb.ar ], [ %.sroa.48.6, %bb.at ]
  %.sroa.137361.4892 = phi i32 [ %.sroa.137361.3.lcssa, %bb.ar ], [ %.sroa.137361.12, %bb.at ]
  %.sroa.169389.4891 = phi i32 [ %.sroa.169389.3.lcssa, %bb.ar ], [ %.sroa.169389.12, %bb.at ]
  %i.lp = mul nuw nsw i64 %indvars.iv973.a, %i.lo
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0508.0.lcssa, i64 %i.lp
  %i.lr = mul nuw nsw i64 %indvars.iv973.a, %i.bs
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %i.lr
  %.idx1015 = shl nuw nsw i64 %indvars.iv973.a, 4
  %invariant.gep1050 = getelementptr inbounds nuw i8, ptr %5, i64 %.idx1015
  br label %bb.au

bb.as:                                            ; preds = %bb.at
  %i.lt = add nuw nsw i32 %.046.i.lcssa, 1
  br label %bb.bw

bb.at:                                            ; preds = %bb.bv
  br i1 %.not51.i, label %bb.as, label %.preheader754, !llvm.loop !250

bb.au:                                            ; preds = %.preheader754, %bb.bv
  %.not53.i = phi i1 [ false, %.preheader754 ], [ true, %bb.bv ]
  %indvars.iv970 = phi i64 [ 0, %.preheader754 ], [ 1, %bb.bv ] ; 3 uses
  %.sroa.0285.4889 = phi i64 [ %.sroa.0285.3894, %.preheader754 ], [ %.sroa.0285.5, %bb.bv ] ; 3 uses
  %.sroa.48.5888 = phi i32 [ %.sroa.48.4893, %.preheader754 ], [ %.sroa.48.6, %bb.bv ] ; 7 uses
  %.sroa.137361.5885 = phi i32 [ %.sroa.137361.4892, %.preheader754 ], [ %.sroa.137361.12, %bb.bv ] ; 8 uses
  %.sroa.169389.5884 = phi i32 [ %.sroa.169389.4891, %.preheader754 ], [ %.sroa.169389.12, %bb.bv ] ; 4 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %indvars.iv970
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !149
  %gep1051 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1050, i64 %indvars.iv970
  %i.lw = load ptr, ptr %gep1051, align 8, !tbaa !165 ; 8 uses
  %i.lx = icmp samesign ult i32 %.sroa.48.5888, 65
  tail call void @llvm.assume(i1 %i.lx)
  %.not.i64 = icmp samesign ult i32 %.sroa.48.5888, 32
  br i1 %.not.i64, label %bb.av, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i63)
  %8 = add nuw nsw i32 %.sroa.137361.5885, 8
  %.not.i.i65 = icmp samesign ugt i32 %8, %i.dy
  br i1 %.not.i.i65, label %bb.ax, label %bb.aw, !prof !141

bb.aw:                                            ; preds = %bb.av
  %i.ly = zext nneg i32 %.sroa.137361.5885 to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ly
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

bb.ax:                                            ; preds = %bb.av
  %i.ma = icmp samesign ugt i32 %.sroa.137361.5885, %i.ec
  br i1 %i.ma, label %bb.ay, label %bb.az, !prof !141

bb.ay:                                            ; preds = %bb.ax
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.az:                                            ; preds = %bb.ax
  store i64 0, ptr %.sroa.0.i.i63, align 8
  %.sroa.speculated27.i.i.i71 = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 %.sroa.137361.5885) ; 3 uses
  %i.mb = add nuw nsw i32 %.sroa.speculated27.i.i.i71, 8
  %.sroa.speculated.i.i.i72 = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 %i.mb)
  %i.mc = sub nsw i32 %.sroa.speculated.i.i.i72, %.sroa.speculated27.i.i.i71 ; 2 uses
  %i.md = icmp samesign ult i32 %i.mc, 9
  tail call void @llvm.assume(i1 %i.md)
  %i.me = zext nneg i32 %.sroa.speculated27.i.i.i71 to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.me
  %i.mg = zext nneg i32 %i.mc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i63, ptr align 1 %i.mf, i64 %i.mg, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67: ; preds = %bb.az, %bb.aw
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68 = phi ptr [ %.sroa.0.i.i63, %bb.az ], [ %i.lz, %bb.aw ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i63)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, ptr %2, align 8
  %i.mh = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i8 ; 2 uses
  %i.mi = icmp ne i8 %i.mh, -1
  %i.mj = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 8
  %i.mk = trunc i64 %i.mj to i8                   ; 3 uses
  %i.ml = icmp ne i8 %i.mk, -1
  %i.mm = and i1 %i.mi, %i.ml
  %i.mn = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 16
  %i.mo = trunc i64 %i.mn to i8                   ; 2 uses
  %i.mp = icmp ne i8 %i.mo, -1
  %i.mq = and i1 %i.mp, %i.mm
  %i.mr = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 4278190080
  %i.ms = icmp ne i64 %i.mr, 4278190080
  %i.mt = and i1 %i.ms, %i.mq
  br i1 %i.mt, label %bb.ba, label %.preheader.i169

.preheader.i169:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.mu = zext nneg i32 %.sroa.48.5888 to i64     ; 8 uses
  %i.mv = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 255
  %indvars.iv.next.i170 = add nuw nsw i64 %i.mu, 8
  %i.mw = sub nuw nsw i64 56, %i.mu
  %i.mx = shl nuw i64 %i.mv, %i.mw
  %i.my = or i64 %i.mx, %.sroa.0285.4889          ; 2 uses
  %.not.i171 = icmp eq i8 %i.mh, -1
  br i1 %.not.i171, label %bb.bb, label %bb.bd

bb.ba:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.mz = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i32
  %i.na = tail call i32 @llvm.bswap.i32(i32 %i.mz)
  %i.nb = zext i32 %i.na to i64
  %i.nc = sub nuw nsw i32 32, %.sroa.48.5888
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = shl nuw i64 %i.nb, %i.nd
  %i.nf = or i64 %i.ne, %.sroa.0285.4889
  %i.ng = or disjoint i32 %.sroa.48.5888, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190

bb.bb:                                            ; preds = %.preheader.i169
  %i.nh = icmp eq i8 %i.mk, 0
  br i1 %i.nh, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bi, %bb.bg, %bb.be, %bb.bb
  %.062.lcssa.i185.neg931 = phi i32 [ 0, %bb.bb ], [ -1, %bb.be ], [ -2, %bb.bg ], [ -3, %bb.bi ]
  %.01861.lcssa.i186 = phi i32 [ 0, %bb.bb ], [ %.2.ph.i172, %bb.be ], [ %i.nz, %bb.bg ], [ %i.ok, %bb.bi ]
  %.lcssa66.wide.i187 = phi i64 [ %i.mu, %bb.bb ], [ %indvars.iv.next.i170, %bb.be ], [ %indvars.iv.next.1.i173, %bb.bg ], [ %indvars.iv.next.2.i176, %bb.bi ]
  %.lcssa.i188 = phi i64 [ %i.my, %bb.bb ], [ %i.nt, %bb.be ], [ %i.og, %bb.bg ], [ %i.or, %bb.bi ]
  %i.ni = add nuw nsw i32 %.01861.lcssa.i186, %.sroa.137361.5885
  %i.nj = icmp slt i32 %.sroa.169389.5884, 0
  tail call void @llvm.assume(i1 %i.nj)
  %i.nk = lshr i64 -1, %.lcssa66.wide.i187
  %i.nl = xor i64 %i.nk, -1
  %i.nm = and i64 %.lcssa.i188, %i.nl
  %.neg = sub nsw i32 %i.dy, %.sroa.137361.5885
  %reass.sub.i189 = add nsw i32 %.neg, %.062.lcssa.i185.neg931 ; 2 uses
  %i.nn = add nuw nsw i32 %reass.sub.i189, 4
  %i.no = icmp ugt i32 %reass.sub.i189, 1
  tail call void @llvm.assume(i1 %i.no)
  br label %bb.bj

bb.bd:                                            ; preds = %bb.bb, %.preheader.i169
  %i.np = phi i8 [ %i.mk, %.preheader.i169 ], [ %i.mo, %bb.bb ] ; 2 uses
  %.2.ph.i172 = phi i32 [ 1, %.preheader.i169 ], [ 2, %bb.bb ] ; 3 uses
  %i.nq = zext i8 %i.np to i64
  %indvars.iv.next.1.i173 = add nuw nsw i64 %i.mu, 16
  %i.nr = sub nuw nsw i64 48, %i.mu
  %i.ns = shl nuw nsw i64 %i.nq, %i.nr
  %i.nt = or i64 %i.ns, %i.my                     ; 2 uses
  %.not.1.i174 = icmp eq i8 %i.np, -1
  br i1 %.not.1.i174, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.nu = zext nneg i32 %.2.ph.i172 to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 1
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !140
  %i.ny = icmp eq i8 %i.nx, 0
  br i1 %i.ny, label %bb.bf, label %bb.bc

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sink.i175 = phi i32 [ 1, %bb.bd ], [ 2, %bb.be ]
  %i.nz = add nuw nsw i32 %.sink.i175, %.2.ph.i172 ; 3 uses
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 %i.oa ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !140 ; 2 uses
  %i.od = zext i8 %i.oc to i64
  %indvars.iv.next.2.i176 = add nuw nsw i64 %i.mu, 24
  %i.oe = sub nuw nsw i64 40, %i.mu
  %i.of = shl nuw nsw i64 %i.od, %i.oe
  %i.og = or i64 %i.of, %i.nt                     ; 2 uses
  %.not.2.i177 = icmp eq i8 %i.oc, -1
  br i1 %.not.2.i177, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !140
  %i.oj = icmp eq i8 %i.oi, 0
  br i1 %i.oj, label %bb.bh, label %bb.bc

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sink72.i178 = phi i32 [ 1, %bb.bf ], [ 2, %bb.bg ]
  %i.ok = add nuw nsw i32 %.sink72.i178, %i.nz    ; 3 uses
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 %i.ol ; 2 uses
  %i.on = load i8, ptr %i.om, align 1, !tbaa !140 ; 2 uses
  %i.oo = zext i8 %i.on to i64
  %indvars.iv.next.3.i179 = or disjoint i32 %.sroa.48.5888, 32
  %i.op = sub nuw nsw i64 32, %i.mu
  %i.oq = shl nuw nsw i64 %i.oo, %i.op
  %i.or = or i64 %i.oq, %i.og                     ; 2 uses
  %.not.3.i180 = icmp eq i8 %i.on, -1
  br i1 %.not.3.i180, label %bb.bi, label %.loopexit.i181

bb.bi:                                            ; preds = %bb.bh
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 1
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !140
  %i.ou = icmp eq i8 %i.ot, 0
  br i1 %i.ou, label %.loopexit.i181, label %bb.bc

.loopexit.i181:                                   ; preds = %bb.bi, %bb.bh
  %.sink73.i182 = phi i32 [ 1, %bb.bh ], [ 2, %bb.bi ]
  %i.ov = add nuw nsw i32 %.sink73.i182, %i.ok
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.i181, %bb.bc
  %.sroa.169389.16 = phi i32 [ %.sroa.169389.5884, %.loopexit.i181 ], [ %i.ni, %bb.bc ]
  %.sroa.48.31 = phi i32 [ %indvars.iv.next.3.i179, %.loopexit.i181 ], [ 64, %bb.bc ]
  %.sroa.0285.30 = phi i64 [ %i.or, %.loopexit.i181 ], [ %i.nm, %bb.bc ]
  %.3.i183 = phi i32 [ %i.ov, %.loopexit.i181 ], [ %i.nn, %bb.bc ] ; 2 uses
  %i.ow = icmp sgt i32 %.3.i183, 4
  tail call void @llvm.assume(i1 %i.ow)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190: ; preds = %bb.ba, %bb.bj
  %.sroa.169389.17 = phi i32 [ %.sroa.169389.5884, %bb.ba ], [ %.sroa.169389.16, %bb.bj ]
  %.sroa.48.32 = phi i32 [ %i.ng, %bb.ba ], [ %.sroa.48.31, %bb.bj ]
  %.sroa.0285.31 = phi i64 [ %i.nf, %bb.ba ], [ %.sroa.0285.30, %bb.bj ]
  %.021.i184 = phi i32 [ 4, %bb.ba ], [ %.3.i183, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ox = add nuw nsw i32 %.021.i184, %.sroa.137361.5885
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73: ; preds = %bb.au, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190
  %.sroa.169389.12 = phi i32 [ %.sroa.169389.17, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.169389.5884, %bb.au ] ; 3 uses
  %.sroa.137361.12 = phi i32 [ %i.ox, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.137361.5885, %bb.au ] ; 3 uses
  %.sroa.48.21 = phi i32 [ %.sroa.48.32, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.48.5888, %bb.au ]
  %.sroa.0285.20 = phi i64 [ %.sroa.0285.31, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit190 ], [ %.sroa.0285.4889, %bb.au ] ; 2 uses
  %i.oy = lshr i64 %.sroa.0285.20, 53             ; 3 uses
  %i.oz = trunc nuw nsw i64 %i.oy to i32          ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.lw, i64 128
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !155
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.oy
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !22 ; 4 uses
  %i.pe = ashr i32 %i.pd, 9                       ; 2 uses
  %i.pf = and i32 %i.pd, 255                      ; 4 uses
  %i.pg = icmp samesign ult i32 %i.pf, 33
  tail call void @llvm.assume(i1 %i.pg)
  %i.ph = sub nuw nsw i32 %.sroa.48.21, %i.pf     ; 3 uses
  %i.pi = zext nneg i32 %i.pf to i64
  %i.pj = shl i64 %.sroa.0285.20, %i.pi           ; 3 uses
  %i.pk = and i32 %i.pd, 256
  %.not.i65.i = icmp eq i32 %i.pk, 0
  br i1 %.not.i65.i, label %bb.bk, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bk:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.not17.i67.i = icmp eq i32 %i.pd, 0
  br i1 %.not17.i67.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pl = trunc i32 %i.pe to i8                   ; 2 uses
  %i.pm = icmp ne i8 %i.pl, 0
  tail call void @llvm.assume(i1 %i.pm)
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bk
  %i.pn = icmp eq i32 %i.pf, 0
  tail call void @llvm.assume(i1 %i.pn)
  %i.po = add nsw i32 %i.ph, -11                  ; 2 uses
  %i.pp = shl i64 %i.pj, 11                       ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.pr = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !156
  %i.pt = load ptr, ptr %i.pq, align 8, !tbaa !157
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = ashr exact i64 %i.pw, 2
  %i.py = add nsw i64 %i.px, -1                   ; 3 uses
  %.sroa.0.018.i76 = trunc nuw nsw i64 %i.oy to i16 ; 2 uses
  %i.pz = icmp ugt i64 %i.py, 11
  br i1 %i.pz, label %.lr.ph.i95, label %.critedge.i78

.lr.ph.i95:                                       ; preds = %bb.bm
  %i.qa = getelementptr inbounds nuw i8, ptr %i.lw, i64 80
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !160
  br label %bb.bn

bb.bn:                                            ; preds = %.critedge2.i102, %.lr.ph.i95
  %.sroa.48.23 = phi i32 [ %i.po, %.lr.ph.i95 ], [ %i.ql, %.critedge2.i102 ] ; 4 uses
  %.sroa.0285.22 = phi i64 [ %i.pp, %.lr.ph.i95 ], [ %i.qm, %.critedge2.i102 ] ; 3 uses
  %i.qc = phi i64 [ 11, %.lr.ph.i95 ], [ %i.qr, %.critedge2.i102 ] ; 2 uses
  %.sroa.0.021.i98 = phi i16 [ %.sroa.0.018.i76, %.lr.ph.i95 ], [ %.sroa.0.0.i103, %.critedge2.i102 ] ; 2 uses
  %.sroa.8.020.i99 = phi i8 [ 11, %.lr.ph.i95 ], [ %i.qq, %.critedge2.i102 ] ; 2 uses
  %.sroa.0.0.in19.i100 = phi i32 [ %i.oz, %.lr.ph.i95 ], [ %i.qp, %.critedge2.i102 ] ; 2 uses
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %i.qc
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !149 ; 2 uses
  %i.qf = icmp eq i16 %i.qe, -1
  %i.qg = icmp ult i16 %i.qe, %.sroa.0.021.i98
  %or.cond.i101 = select i1 %i.qf, i1 true, i1 %i.qg
  br i1 %or.cond.i101, label %.critedge2.i102, label %.critedge.i78.loopexit

.critedge2.i102:                                  ; preds = %bb.bn
  %i.qh = icmp samesign ult i32 %.sroa.48.23, 65
  tail call void @llvm.assume(i1 %i.qh)
  %i.qi = icmp ne i32 %.sroa.48.23, 0
  tail call void @llvm.assume(i1 %i.qi)
  %i.qj = lshr i64 %.sroa.0285.22, 63
  %i.qk = trunc nuw nsw i64 %i.qj to i32
  %i.ql = add nsw i32 %.sroa.48.23, -1            ; 2 uses
  %i.qm = shl i64 %.sroa.0285.22, 1               ; 2 uses
  %i.qn = shl nsw i32 %.sroa.0.0.in19.i100, 1
  %i.qo = and i32 %i.qn, 131070
  %i.qp = or disjoint i32 %i.qo, %i.qk            ; 3 uses
  %i.qq = add i8 %.sroa.8.020.i99, 1              ; 3 uses
  %.sroa.0.0.i103 = trunc i32 %i.qp to i16        ; 2 uses
  %i.qr = zext i8 %i.qq to i64                    ; 3 uses
  %i.qs = icmp ugt i64 %i.py, %i.qr
  br i1 %i.qs, label %bb.bn, label %.critedge.i78.loopexit, !llvm.loop !1

.critedge.i78.loopexit:                           ; preds = %bb.bn, %.critedge2.i102
  %.sroa.48.22.ph = phi i32 [ %i.ql, %.critedge2.i102 ], [ %.sroa.48.23, %bb.bn ]
  %.sroa.0285.21.ph = phi i64 [ %i.qm, %.critedge2.i102 ], [ %.sroa.0285.22, %bb.bn ]
  %.sroa.0.0.in.lcssa.i79.ph = phi i32 [ %i.qp, %.critedge2.i102 ], [ %.sroa.0.0.in19.i100, %bb.bn ]
  %.sroa.8.0.lcssa.i80.ph = phi i8 [ %i.qq, %.critedge2.i102 ], [ %.sroa.8.020.i99, %bb.bn ]
  %.sroa.0.0.lcssa.i81.ph = phi i16 [ %.sroa.0.0.i103, %.critedge2.i102 ], [ %.sroa.0.021.i98, %bb.bn ]
  %.lcssa17.i82.ph = phi i64 [ %i.qr, %.critedge2.i102 ], [ %i.qc, %bb.bn ]
  %i.qt = zext i8 %.sroa.8.0.lcssa.i80.ph to i32
  br label %.critedge.i78

.critedge.i78:                                    ; preds = %.critedge.i78.loopexit, %bb.bm
  %.sroa.48.22 = phi i32 [ %i.po, %bb.bm ], [ %.sroa.48.22.ph, %.critedge.i78.loopexit ]
  %.sroa.0285.21 = phi i64 [ %i.pp, %bb.bm ], [ %.sroa.0285.21.ph, %.critedge.i78.loopexit ]
  %.sroa.0.0.in.lcssa.i79 = phi i32 [ %i.oz, %bb.bm ], [ %.sroa.0.0.in.lcssa.i79.ph, %.critedge.i78.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i80 = phi i32 [ 11, %bb.bm ], [ %i.qt, %.critedge.i78.loopexit ]
  %.sroa.0.0.lcssa.i81 = phi i16 [ %.sroa.0.018.i76, %bb.bm ], [ %.sroa.0.0.lcssa.i81.ph, %.critedge.i78.loopexit ]
  %.lcssa17.i82 = phi i64 [ 11, %bb.bm ], [ %.lcssa17.i82.ph, %.critedge.i78.loopexit ] ; 3 uses
  %i.qu = icmp ult i64 %i.py, %.lcssa17.i82
  br i1 %i.qu, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.critedge.i78
  %i.qv = getelementptr inbounds nuw i8, ptr %i.lw, i64 80
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !160
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr %i.qw, i64 %.lcssa17.i82
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !149
  %i.qz = icmp ult i16 %i.qy, %.sroa.0.0.lcssa.i81
  br i1 %i.qz, label %bb.bp, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104

bb.bp:                                            ; preds = %bb.bo, %.critedge.i78
  %i.ra = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.ra, i32 noundef %.sroa.8.0.lcssa.i80) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104: ; preds = %bb.bo
  %.sroa.0.0.mask.i84 = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  %i.rb = getelementptr inbounds nuw i8, ptr %i.lw, i64 104
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !160
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.rc, i64 %.lcssa17.i82
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !149
  %i.rf = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %.tr.i85 = zext i16 %i.re to i32
  %.narrow.i86 = sub nsw i32 %.sroa.0.0.mask.i84, %.tr.i85
  %i.rg = zext i32 %.narrow.i86 to i64
  %i.rh = load ptr, ptr %i.rf, align 8, !tbaa !161
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.rg
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !140
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104, %bb.bl
  %.0736 = phi i8 [ %i.rj, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.pl, %bb.bl ] ; 5 uses
  %.sroa.48.7 = phi i32 [ %.sroa.48.22, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.ph, %bb.bl ] ; 8 uses
  %.sroa.0285.6 = phi i64 [ %.sroa.0285.21, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.pj, %bb.bl ] ; 6 uses
  %i.rk = icmp ult i8 %.0736, 17
  tail call void @llvm.assume(i1 %i.rk)
  switch i8 %.0736, label %bb.bt [
    i8 16, label %bb.br
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  ]

bb.br:                                            ; preds = %bb.bq
  %i.rl = getelementptr inbounds nuw i8, ptr %i.lw, i64 1
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !162, !range !130, !noundef !116
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %bb.bs, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bs:                                            ; preds = %bb.br
  %i.ro = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.ro)
  %i.rp = icmp samesign ugt i32 %.sroa.48.7, 15
  tail call void @llvm.assume(i1 %i.rp)
  %i.rq = add nsw i32 %.sroa.48.7, -16
  %i.rr = shl i64 %.sroa.0285.6, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bt:                                            ; preds = %bb.bq
  %i.rs = zext nneg i8 %.0736 to i32              ; 4 uses
  %i.rt = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.rt)
  %i.ru = icmp ne i8 %.0736, 0
  tail call void @llvm.assume(i1 %i.ru)
  %i.rv = icmp samesign uge i32 %.sroa.48.7, %i.rs
  tail call void @llvm.assume(i1 %i.rv)
  %i.rw = sub nuw nsw i32 64, %i.rs
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = lshr i64 %.sroa.0285.6, %i.rx
  %i.rz = trunc nuw nsw i64 %i.ry to i32
  %i.sa = sub nuw nsw i32 %.sroa.48.7, %i.rs
  %i.sb = zext nneg i8 %.0736 to i64
  %i.sc = shl i64 %.sroa.0285.6, %i.sb
  %i.sd = icmp sgt i64 %.sroa.0285.6, -1
  %notmask.i.i106 = shl nsw i32 -1, %i.rs
  %.neg.i.i107 = or disjoint i32 %notmask.i.i106, 1
  %i.se = select i1 %i.sd, i32 %.neg.i.i107, i32 0
  %.0.i.i108 = add nsw i32 %i.se, %i.rz
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i: ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.sroa.48.6 = phi i32 [ %i.ph, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.sa, %bb.bt ], [ %i.rq, %bb.bs ], [ %.sroa.48.7, %bb.br ], [ %.sroa.48.7, %bb.bq ] ; 3 uses
  %.sroa.0285.5 = phi i64 [ %i.pj, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.sc, %bb.bt ], [ %i.rr, %bb.bs ], [ %.sroa.0285.6, %bb.br ], [ %.sroa.0285.6, %bb.bq ] ; 3 uses
  %.0.i66.i = phi i32 [ %i.pe, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %.0.i.i108, %bb.bt ], [ -32768, %bb.bs ], [ -32768, %bb.br ], [ 0, %bb.bq ]
  %i.sf = or disjoint i64 %indvars.iv970, %i.ln   ; 2 uses
  %i.sg = icmp samesign ult i64 %i.sf, %i.bu
  br i1 %i.sg, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %i.sh = trunc i32 %.0.i66.i to i16
  %i.si = add i16 %i.lv, %i.sh
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %i.ls, i64 %i.sf
  store i16 %i.si, ptr %i.sj, align 2, !tbaa !149
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  br i1 %.not53.i, label %bb.at, label %bb.au, !llvm.loop !251

bb.bw:                                            ; preds = %bb.as, %._crit_edge
  %.sroa.169389.6 = phi i32 [ %.sroa.169389.3.lcssa, %._crit_edge ], [ %.sroa.169389.12, %bb.as ] ; 2 uses
  %.sroa.137361.6 = phi i32 [ %.sroa.137361.3.lcssa, %._crit_edge ], [ %.sroa.137361.12, %bb.as ] ; 2 uses
  %.sroa.48.8 = phi i32 [ %.sroa.48.3.lcssa, %._crit_edge ], [ %.sroa.48.6, %bb.as ] ; 2 uses
  %.sroa.0285.7 = phi i64 [ %.sroa.0285.2.lcssa, %._crit_edge ], [ %.sroa.0285.5, %bb.as ] ; 2 uses
  %.1.i = phi i32 [ %.046.i.lcssa, %._crit_edge ], [ %i.lt, %bb.as ] ; 2 uses
  %i.sk = load i32, ptr %i.bq, align 8, !tbaa !163 ; 2 uses
  %i.sl = icmp slt i32 %.1.i, %i.sk
  br i1 %i.sl, label %.preheader753, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

.preheader753:                                    ; preds = %bb.bw, %bb.bx
  %.2.i907 = phi i32 [ %i.sm, %bb.bx ], [ %.1.i, %bb.bw ]
  %.sroa.0285.8906 = phi i64 [ %.sroa.0285.10, %bb.bx ], [ %.sroa.0285.7, %bb.bw ]
  %.sroa.48.9905 = phi i32 [ %.sroa.48.11, %bb.bx ], [ %.sroa.48.8, %bb.bw ]
  %.sroa.137361.7904 = phi i32 [ %.sroa.137361.13, %bb.bx ], [ %.sroa.137361.6, %bb.bw ]
  %.sroa.169389.7903 = phi i32 [ %.sroa.169389.13, %bb.bx ], [ %.sroa.169389.6, %bb.bw ]
  br label %bb.by

bb.bx:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %i.sm = add nsw i32 %.2.i907, 1                 ; 2 uses
  %exitcond979.not = icmp eq i32 %i.sm, %i.sk
  br i1 %exitcond979.not, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, label %.preheader753, !llvm.loop !252

bb.by:                                            ; preds = %.preheader753, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %indvars.iv976 = phi i64 [ 0, %.preheader753 ], [ %indvars.iv.next977, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 2 uses
  %.sroa.0285.9901 = phi i64 [ %.sroa.0285.8906, %.preheader753 ], [ %.sroa.0285.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 3 uses
  %.sroa.48.10900 = phi i32 [ %.sroa.48.9905, %.preheader753 ], [ %.sroa.48.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 7 uses
  %.sroa.137361.8897 = phi i32 [ %.sroa.137361.7904, %.preheader753 ], [ %.sroa.137361.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 8 uses
  %.sroa.169389.8896 = phi i32 [ %.sroa.169389.7903, %.preheader753 ], [ %.sroa.169389.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 4 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv976
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !165 ; 8 uses
  %i.sp = icmp samesign ult i32 %.sroa.48.10900, 65
  tail call void @llvm.assume(i1 %i.sp)
  %.not.i114 = icmp samesign ult i32 %.sroa.48.10900, 32
  br i1 %.not.i114, label %bb.bz, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i113)
  %9 = add nuw nsw i32 %.sroa.137361.8897, 8
  %.not.i.i115 = icmp samesign ugt i32 %9, %i.dy
  br i1 %.not.i.i115, label %bb.cb, label %bb.ca, !prof !141

bb.ca:                                            ; preds = %bb.bz
  %i.sq = zext nneg i32 %.sroa.137361.8897 to i64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.sq
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

bb.cb:                                            ; preds = %bb.bz
  %i.ss = icmp samesign ugt i32 %.sroa.137361.8897, %i.ec
  br i1 %i.ss, label %bb.cc, label %bb.cd, !prof !141

bb.cc:                                            ; preds = %bb.cb
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.cd:                                            ; preds = %bb.cb
  store i64 0, ptr %.sroa.0.i.i113, align 8
  %.sroa.speculated27.i.i.i121 = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 %.sroa.137361.8897) ; 3 uses
  %i.st = add nuw nsw i32 %.sroa.speculated27.i.i.i121, 8
  %.sroa.speculated.i.i.i122 = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 %i.st)
  %i.su = sub nsw i32 %.sroa.speculated.i.i.i122, %.sroa.speculated27.i.i.i121 ; 2 uses
  %i.sv = icmp samesign ult i32 %i.su, 9
  tail call void @llvm.assume(i1 %i.sv)
  %i.sw = zext nneg i32 %.sroa.speculated27.i.i.i121 to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.sw
  %i.sy = zext nneg i32 %i.su to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i113, ptr align 1 %i.sx, i64 %i.sy, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117: ; preds = %bb.cd, %bb.ca
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118 = phi ptr [ %.sroa.0.i.i113, %bb.cd ], [ %i.sr, %bb.ca ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i113)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, ptr %1, align 8
  %i.sz = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i8 ; 2 uses
  %i.ta = icmp ne i8 %i.sz, -1
  %i.tb = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 8
  %i.tc = trunc i64 %i.tb to i8                   ; 3 uses
  %i.td = icmp ne i8 %i.tc, -1
  %i.te = and i1 %i.ta, %i.td
  %i.tf = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 16
  %i.tg = trunc i64 %i.tf to i8                   ; 2 uses
  %i.th = icmp ne i8 %i.tg, -1
  %i.ti = and i1 %i.th, %i.te
  %i.tj = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 4278190080
  %i.tk = icmp ne i64 %i.tj, 4278190080
  %i.tl = and i1 %i.tk, %i.ti
  br i1 %i.tl, label %bb.ce, label %.preheader.i193

.preheader.i193:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.tm = zext nneg i32 %.sroa.48.10900 to i64    ; 8 uses
  %i.tn = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 255
  %indvars.iv.next.i194 = add nuw nsw i64 %i.tm, 8
  %i.to = sub nuw nsw i64 56, %i.tm
  %i.tp = shl nuw i64 %i.tn, %i.to
  %i.tq = or i64 %i.tp, %.sroa.0285.9901          ; 2 uses
  %.not.i195 = icmp eq i8 %i.sz, -1
  br i1 %.not.i195, label %bb.cf, label %bb.ch

bb.ce:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.tr = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i32
  %i.ts = tail call i32 @llvm.bswap.i32(i32 %i.tr)
  %i.tt = zext i32 %i.ts to i64
  %i.tu = sub nuw nsw i32 32, %.sroa.48.10900
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = shl nuw i64 %i.tt, %i.tv
  %i.tx = or i64 %i.tw, %.sroa.0285.9901
  %i.ty = or disjoint i32 %.sroa.48.10900, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214

bb.cf:                                            ; preds = %.preheader.i193
  %i.tz = icmp eq i8 %i.tc, 0
  br i1 %i.tz, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cm, %bb.ck, %bb.ci, %bb.cf
  %.062.lcssa.i209.neg932 = phi i32 [ 0, %bb.cf ], [ -1, %bb.ci ], [ -2, %bb.ck ], [ -3, %bb.cm ]
  %.01861.lcssa.i210 = phi i32 [ 0, %bb.cf ], [ %.2.ph.i196, %bb.ci ], [ %i.ur, %bb.ck ], [ %i.vc, %bb.cm ]
  %.lcssa66.wide.i211 = phi i64 [ %i.tm, %bb.cf ], [ %indvars.iv.next.i194, %bb.ci ], [ %indvars.iv.next.1.i197, %bb.ck ], [ %indvars.iv.next.2.i200, %bb.cm ]
  %.lcssa.i212 = phi i64 [ %i.tq, %bb.cf ], [ %i.ul, %bb.ci ], [ %i.uy, %bb.ck ], [ %i.vj, %bb.cm ]
  %i.ua = add nuw nsw i32 %.01861.lcssa.i210, %.sroa.137361.8897
  %i.ub = icmp slt i32 %.sroa.169389.8896, 0
  tail call void @llvm.assume(i1 %i.ub)
  %i.uc = lshr i64 -1, %.lcssa66.wide.i211
  %i.ud = xor i64 %i.uc, -1
  %i.ue = and i64 %.lcssa.i212, %i.ud
  %.neg751 = sub nsw i32 %i.dy, %.sroa.137361.8897
  %reass.sub.i213 = add nsw i32 %.neg751, %.062.lcssa.i209.neg932 ; 2 uses
  %i.uf = add nuw nsw i32 %reass.sub.i213, 4
  %i.ug = icmp ugt i32 %reass.sub.i213, 1
  tail call void @llvm.assume(i1 %i.ug)
  br label %bb.cn

bb.ch:                                            ; preds = %bb.cf, %.preheader.i193
  %i.uh = phi i8 [ %i.tc, %.preheader.i193 ], [ %i.tg, %bb.cf ] ; 2 uses
  %.2.ph.i196 = phi i32 [ 1, %.preheader.i193 ], [ 2, %bb.cf ] ; 3 uses
  %i.ui = zext i8 %i.uh to i64
  %indvars.iv.next.1.i197 = add nuw nsw i64 %i.tm, 16
  %i.uj = sub nuw nsw i64 48, %i.tm
  %i.uk = shl nuw nsw i64 %i.ui, %i.uj
  %i.ul = or i64 %i.uk, %i.tq                     ; 2 uses
  %.not.1.i198 = icmp eq i8 %i.uh, -1
  br i1 %.not.1.i198, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.um = zext nneg i32 %.2.ph.i196 to i64
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 1
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !140
  %i.uq = icmp eq i8 %i.up, 0
  br i1 %i.uq, label %bb.cj, label %bb.cg

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sink.i199 = phi i32 [ 1, %bb.ch ], [ 2, %bb.ci ]
  %i.ur = add nuw nsw i32 %.sink.i199, %.2.ph.i196 ; 3 uses
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 %i.us ; 2 uses
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !140 ; 2 uses
  %i.uv = zext i8 %i.uu to i64
  %indvars.iv.next.2.i200 = add nuw nsw i64 %i.tm, 24
  %i.uw = sub nuw nsw i64 40, %i.tm
  %i.ux = shl nuw nsw i64 %i.uv, %i.uw
  %i.uy = or i64 %i.ux, %i.ul                     ; 2 uses
  %.not.2.i201 = icmp eq i8 %i.uu, -1
  br i1 %.not.2.i201, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ut, i64 1
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !140
  %i.vb = icmp eq i8 %i.va, 0
  br i1 %i.vb, label %bb.cl, label %bb.cg

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sink72.i202 = phi i32 [ 1, %bb.cj ], [ 2, %bb.ck ]
  %i.vc = add nuw nsw i32 %.sink72.i202, %i.ur    ; 3 uses
  %i.vd = zext nneg i32 %i.vc to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 %i.vd ; 2 uses
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !140 ; 2 uses
  %i.vg = zext i8 %i.vf to i64
  %indvars.iv.next.3.i203 = or disjoint i32 %.sroa.48.10900, 32
  %i.vh = sub nuw nsw i64 32, %i.tm
  %i.vi = shl nuw nsw i64 %i.vg, %i.vh
  %i.vj = or i64 %i.vi, %i.uy                     ; 2 uses
  %.not.3.i204 = icmp eq i8 %i.vf, -1
  br i1 %.not.3.i204, label %bb.cm, label %.loopexit.i205

bb.cm:                                            ; preds = %bb.cl
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 1
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !140
  %i.vm = icmp eq i8 %i.vl, 0
  br i1 %i.vm, label %.loopexit.i205, label %bb.cg

.loopexit.i205:                                   ; preds = %bb.cm, %bb.cl
  %.sink73.i206 = phi i32 [ 1, %bb.cl ], [ 2, %bb.cm ]
  %i.vn = add nuw nsw i32 %.sink73.i206, %i.vc
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit.i205, %bb.cg
  %.sroa.169389.18 = phi i32 [ %.sroa.169389.8896, %.loopexit.i205 ], [ %i.ua, %bb.cg ]
  %.sroa.48.33 = phi i32 [ %indvars.iv.next.3.i203, %.loopexit.i205 ], [ 64, %bb.cg ]
  %.sroa.0285.32 = phi i64 [ %i.vj, %.loopexit.i205 ], [ %i.ue, %bb.cg ]
  %.3.i207 = phi i32 [ %i.vn, %.loopexit.i205 ], [ %i.uf, %bb.cg ] ; 2 uses
  %i.vo = icmp sgt i32 %.3.i207, 4
  tail call void @llvm.assume(i1 %i.vo)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214: ; preds = %bb.ce, %bb.cn
  %.sroa.169389.19 = phi i32 [ %.sroa.169389.8896, %bb.ce ], [ %.sroa.169389.18, %bb.cn ]
  %.sroa.48.34 = phi i32 [ %i.ty, %bb.ce ], [ %.sroa.48.33, %bb.cn ]
  %.sroa.0285.33 = phi i64 [ %i.tx, %bb.ce ], [ %.sroa.0285.32, %bb.cn ]
  %.021.i208 = phi i32 [ 4, %bb.ce ], [ %.3.i207, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.vp = add nuw nsw i32 %.021.i208, %.sroa.137361.8897
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123: ; preds = %bb.by, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214
  %.sroa.169389.13 = phi i32 [ %.sroa.169389.19, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.169389.8896, %bb.by ] ; 3 uses
  %.sroa.137361.13 = phi i32 [ %i.vp, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.137361.8897, %bb.by ] ; 3 uses
  %.sroa.48.25 = phi i32 [ %.sroa.48.34, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.48.10900, %bb.by ]
  %.sroa.0285.24 = phi i64 [ %.sroa.0285.33, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit214 ], [ %.sroa.0285.9901, %bb.by ] ; 2 uses
  %i.vq = lshr i64 %.sroa.0285.24, 53             ; 3 uses
  %i.vr = trunc nuw nsw i64 %i.vq to i32          ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.so, i64 128
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !155
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %i.vq
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !22 ; 4 uses
  %i.vw = lshr i32 %i.vv, 9
  %i.vx = and i32 %i.vv, 255                      ; 4 uses
  %i.vy = icmp samesign ult i32 %i.vx, 33
  tail call void @llvm.assume(i1 %i.vy)
  %i.vz = sub nuw nsw i32 %.sroa.48.25, %i.vx     ; 3 uses
  %i.wa = zext nneg i32 %i.vx to i64
  %i.wb = shl i64 %.sroa.0285.24, %i.wa           ; 3 uses
  %i.wc = and i32 %i.vv, 256
  %.not.i71.i = icmp eq i32 %i.wc, 0
  br i1 %.not.i71.i, label %bb.co, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.co:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.not17.i73.i = icmp eq i32 %i.vv, 0
  br i1 %.not17.i73.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wd = trunc i32 %i.vw to i8                   ; 2 uses
  %i.we = icmp ne i8 %i.wd, 0
  tail call void @llvm.assume(i1 %i.we)
  br label %bb.cu

bb.cq:                                            ; preds = %bb.co
  %i.wf = icmp eq i32 %i.vx, 0
  tail call void @llvm.assume(i1 %i.wf)
  %i.wg = add nsw i32 %i.vz, -11                  ; 2 uses
  %i.wh = shl i64 %i.wb, 11                       ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.so, i64 32
  %i.wj = getelementptr inbounds nuw i8, ptr %i.so, i64 40
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !156
  %i.wl = load ptr, ptr %i.wi, align 8, !tbaa !157
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = ptrtoint ptr %i.wl to i64
  %i.wo = sub i64 %i.wm, %i.wn
  %i.wp = ashr exact i64 %i.wo, 2
  %i.wq = add nsw i64 %i.wp, -1                   ; 3 uses
  %.sroa.0.018.i126 = trunc nuw nsw i64 %i.vq to i16 ; 2 uses
  %i.wr = icmp ugt i64 %i.wq, 11
  br i1 %i.wr, label %.lr.ph.i145, label %.critedge.i128

.lr.ph.i145:                                      ; preds = %bb.cq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.so, i64 80
end_hunk_5
