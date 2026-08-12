inline.NumInlined: 939
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %next.gep803 = getelementptr i8, ptr %3, i64 %i.cp
  %i.cq = shl i64 %index802, 4
  %next.gep804 = getelementptr i8, ptr %i.ak, i64 %i.cq
  %i.cr = getelementptr inbounds nuw i8, ptr %next.gep804, i64 8
  %wide.vec805 = load <32 x i16>, ptr %i.cr, align 8, !tbaa !163
  %strided.vec806 = shufflevector <32 x i16> %wide.vec805, <32 x i16> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  store <4 x i16> %strided.vec806, ptr %next.gep803, align 2, !tbaa !164
  %index.next807 = add nuw i64 %index802, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next807, %n.vec801
  br i1 %i.cs, label %.lr.ph.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !170

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.07.i.i.ph = phi ptr [ %3, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.vector.body ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.03.06.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.cu = load i16, ptr %i.ct, align 8, !tbaa !163
  store i16 %i.cu, ptr %.07.i.i, align 2, !tbaa !164
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.cx = icmp eq ptr %i.cv, %i.az
  br i1 %i.cx, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !171

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i16, ptr %3, align 2
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %i.cy = phi i16 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi1EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i16 %i.cy, ptr %.sroa.0, align 2
  %.not33 = icmp eq i64 %indvars.iv735, 0
  br i1 %.not33, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10323.0704, %.sroa.222.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.cz = add nuw nsw i32 %.sroa.10323.0704, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.cz, %.sroa.222.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.da = zext nneg i32 %.sroa.10323.0704 to i64
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
  %i.dk = trunc i64 %indvars.iv735 to i32
  %i.dl = add i32 %i.dk, -1
  %i.dm = srem i32 %i.dl, 8
  %.not34 = icmp eq i32 %i.dj, %i.dm
  br i1 %.not34, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dn = add nuw nsw i32 %.sroa.10323.0704, 2    ; 2 uses
  %i.do = icmp samesign ule i32 %i.dn, %.sroa.222.0.copyload
  tail call void @llvm.assume(i1 %i.do)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit
  %.sroa.10323.1 = phi i32 [ %.sroa.10323.0704, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi1EEESt5arrayItXT_EEv.exit ], [ %i.dn, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dp = sub nsw i32 %.sroa.222.0.copyload, %.sroa.10323.1 ; 11 uses
  %i.dq = zext nneg i32 %.sroa.10323.1 to i64     ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.021.0.copyload, i64 %i.dq ; 4 uses
  %i.ds = icmp sgt i32 %i.dp, -1
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp samesign ult i32 %i.dp, 8
  br i1 %i.dt, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not35692, label %.loopexit583.thread, label %.lr.ph699

.lr.ph699:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.du = mul nsw i64 %indvars.iv735, %i.aq
  %i.dv = add nuw nsw i32 %i.dp, 16               ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph699, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv732 = phi i64 [ 0, %.lr.ph699 ], [ %indvars.iv.next733, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0298.0697 = phi ptr [ %.sroa.0, %.lr.ph699 ], [ %i.ed, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ]
  %.sroa.116288.0696 = phi i32 [ -1, %.lr.ph699 ], [ %.sroa.116288.4.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.94269.0695 = phi i32 [ 0, %.lr.ph699 ], [ %.sroa.94269.4.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.33.0694 = phi i32 [ 0, %.lr.ph699 ], [ %.sroa.33.4.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0218.0693 = phi i64 [ 0, %.lr.ph699 ], [ %.sroa.0218.3.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.dw = add nsw i64 %indvars.iv732, %i.du       ; 4 uses
  %i.dx = icmp sgt i64 %i.dw, -1
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp sle i64 %i.dw, %i.ap
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = trunc nuw nsw i64 %i.dw to i32          ; 2 uses
  %.not36 = icmp eq i32 %i.z, %i.dz
  br i1 %.not36, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.ea = icmp eq i64 %indvars.iv735, %i.br
  tail call void @llvm.assume(i1 %i.ea)
  br label %.loopexit583

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bc)
  %i.eb = icmp uge i32 %invariant.op, %i.dz
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = mul nuw nsw i64 %i.dw, %i.bp
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ec ; 2 uses
  %i.ee = load i32, ptr %i.bd, align 4, !tbaa !38 ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.be)
  %wide.trip.count = zext nneg i32 %i.ee to i64
  %.pre = load i16, ptr %.sroa.0298.0697, align 2, !tbaa !164
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46
  %i.eg = phi i16 [ %.pre, %.lr.ph ], [ %i.kl, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 3 uses
  %.sroa.116288.3669 = phi i32 [ %.sroa.116288.0696, %.lr.ph ], [ %.sroa.116288.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 4 uses
  %.sroa.94269.3668 = phi i32 [ %.sroa.94269.0695, %.lr.ph ], [ %.sroa.94269.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 8 uses
  %.sroa.33.3667 = phi i32 [ %.sroa.33.0694, %.lr.ph ], [ %.sroa.33.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 7 uses
  %.sroa.0218.2666 = phi i64 [ %.sroa.0218.0693, %.lr.ph ], [ %.sroa.0218.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eh = icmp samesign ult i64 %indvars.iv, %i.bo
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %indvars.iv
  %i.ej = icmp samesign ult i32 %.sroa.33.3667, 65
  tail call void @llvm.assume(i1 %i.ej)
  %.not.i62 = icmp samesign ult i32 %.sroa.33.3667, 32
  br i1 %.not.i62, label %bb.o, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.o:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.ek = add nuw nsw i32 %.sroa.94269.3668, 8
  %.not.i.i63 = icmp samesign ugt i32 %i.ek, %i.dp
  br i1 %.not.i.i63, label %bb.q, label %bb.p, !prof !152

bb.p:                                             ; preds = %bb.o
  %i.el = zext nneg i32 %.sroa.94269.3668 to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.el
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.q:                                             ; preds = %bb.o
  %i.en = icmp samesign ugt i32 %.sroa.94269.3668, %i.dv
  br i1 %i.en, label %bb.r, label %bb.s, !prof !152

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.s:                                             ; preds = %bb.q
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %.sroa.94269.3668) ; 3 uses
  %i.eo = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %i.eo)
  %i.ep = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.eq = icmp samesign ult i32 %i.ep, 9
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.er
  %i.et = zext nneg i32 %i.ep to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.es, i64 %i.et, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.s, %bb.p
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.s ], [ %i.em, %bb.p ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %2, align 8
  %i.eu = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.ev = icmp ne i8 %i.eu, -1
  %i.ew = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.ex = trunc i64 %i.ew to i8                   ; 3 uses
  %i.ey = icmp ne i8 %i.ex, -1
  %i.ez = and i1 %i.ev, %i.ey
  %i.fa = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.fb = trunc i64 %i.fa to i8                   ; 2 uses
  %i.fc = icmp ne i8 %i.fb, -1
  %i.fd = and i1 %i.fc, %i.ez
  %i.fe = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.ff = icmp ne i64 %i.fe, 4278190080
  %i.fg = and i1 %i.ff, %i.fd
  br i1 %i.fg, label %bb.t, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fh = zext nneg i32 %.sroa.33.3667 to i64     ; 8 uses
  %i.fi = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.fh, 8
  %i.fj = sub nuw nsw i64 56, %i.fh
  %i.fk = shl nuw i64 %i.fi, %i.fj
  %i.fl = or i64 %i.fk, %.sroa.0218.2666          ; 2 uses
  %.not.i123 = icmp eq i8 %i.eu, -1
  br i1 %.not.i123, label %bb.u, label %bb.w

bb.t:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fm = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.fn = tail call i32 @llvm.bswap.i32(i32 %i.fm)
  %i.fo = zext i32 %i.fn to i64
  %i.fp = sub nuw nsw i32 32, %.sroa.33.3667
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl nuw i64 %i.fo, %i.fq
  %i.fs = or i64 %i.fr, %.sroa.0218.2666
  %i.ft = or disjoint i32 %.sroa.33.3667, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.u:                                             ; preds = %.preheader.i
  %i.fu = icmp eq i8 %i.ex, 0
  br i1 %i.fu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.ab, %bb.z, %bb.x, %bb.u
  %.01962.lcssa.i = phi i32 [ 0, %bb.u ], [ %.2.ph.i, %bb.x ], [ %i.gm, %bb.z ], [ %i.gx, %bb.ab ]
  %.02161.lcssa.i.neg707 = phi i32 [ 0, %bb.u ], [ -1, %bb.x ], [ -2, %bb.z ], [ -3, %bb.ab ]
  %.lcssa66.wide.i = phi i64 [ %i.fh, %bb.u ], [ %indvars.iv.next.i, %bb.x ], [ %indvars.iv.next.1.i, %bb.z ], [ %indvars.iv.next.2.i, %bb.ab ]
  %.lcssa.i = phi i64 [ %i.fl, %bb.u ], [ %i.gg, %bb.x ], [ %i.gt, %bb.z ], [ %i.he, %bb.ab ]
  %i.fv = add nuw nsw i32 %.01962.lcssa.i, %.sroa.94269.3668
  %i.fw = icmp slt i32 %.sroa.116288.3669, 0
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = lshr i64 -1, %.lcssa66.wide.i
  %i.fy = xor i64 %i.fx, -1
  %i.fz = and i64 %.lcssa.i, %i.fy
  %.neg580 = sub nsw i32 %i.dp, %.sroa.94269.3668
  %reass.sub.i = add nsw i32 %.neg580, %.02161.lcssa.i.neg707 ; 2 uses
  %i.ga = add nuw nsw i32 %reass.sub.i, 4
  %i.gb = icmp ugt i32 %reass.sub.i, 1
  tail call void @llvm.assume(i1 %i.gb)
  br label %bb.ac

bb.w:                                             ; preds = %bb.u, %.preheader.i
  %i.gc = phi i8 [ %i.ex, %.preheader.i ], [ %i.fb, %bb.u ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.u ] ; 3 uses
  %i.gd = zext i8 %i.gc to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.fh, 16
  %i.ge = sub nuw nsw i64 48, %i.fh
  %i.gf = shl nuw nsw i64 %i.gd, %i.ge
  %i.gg = or i64 %i.gf, %i.fl                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.gc, -1
  br i1 %.not.1.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gh = zext nneg i32 %.2.ph.i to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !151
  %i.gl = icmp eq i8 %i.gk, 0
  br i1 %i.gl, label %bb.y, label %bb.v

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink.i = phi i32 [ 1, %bb.w ], [ 2, %bb.x ]
  %i.gm = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 %i.gn ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !151 ; 2 uses
  %i.gq = zext i8 %i.gp to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.fh, 24
  %i.gr = sub nuw nsw i64 40, %i.fh
  %i.gs = shl nuw nsw i64 %i.gq, %i.gr
  %i.gt = or i64 %i.gs, %i.gg                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.gp, -1
  br i1 %.not.2.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !151
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %bb.aa, label %bb.v

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink72.i = phi i32 [ 1, %bb.y ], [ 2, %bb.z ]
  %i.gx = add nuw nsw i32 %.sink72.i, %i.gm       ; 3 uses
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 %i.gy ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !151 ; 2 uses
  %i.hb = zext i8 %i.ha to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.33.3667, 32
  %i.hc = sub nuw nsw i64 32, %i.fh
  %i.hd = shl nuw nsw i64 %i.hb, %i.hc
  %i.he = or i64 %i.hd, %i.gt                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.ha, -1
  br i1 %.not.3.i, label %bb.ab, label %.loopexit.i

bb.ab:                                            ; preds = %bb.aa
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !151
  %i.hh = icmp eq i8 %i.hg, 0
  br i1 %i.hh, label %.loopexit.i, label %bb.v

.loopexit.i:                                      ; preds = %bb.ab, %bb.aa
  %.sink73.i = phi i32 [ 1, %bb.aa ], [ 2, %bb.ab ]
  %i.hi = add nuw nsw i32 %.sink73.i, %i.gx
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i, %bb.v
  %.sroa.0218.19 = phi i64 [ %i.he, %.loopexit.i ], [ %i.fz, %bb.v ]
  %.sroa.33.20 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.v ]
  %.sroa.116288.10 = phi i32 [ %.sroa.116288.3669, %.loopexit.i ], [ %i.fv, %bb.v ]
  %.3.i = phi i32 [ %i.hi, %.loopexit.i ], [ %i.ga, %bb.v ] ; 2 uses
  %i.hj = icmp sgt i32 %.3.i, 4
  tail call void @llvm.assume(i1 %i.hj)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.t, %bb.ac
  %.sroa.0218.20 = phi i64 [ %i.fs, %bb.t ], [ %.sroa.0218.19, %bb.ac ]
  %.sroa.33.21 = phi i32 [ %i.ft, %bb.t ], [ %.sroa.33.20, %bb.ac ]
  %.sroa.116288.11 = phi i32 [ %.sroa.116288.3669, %bb.t ], [ %.sroa.116288.10, %bb.ac ]
  %.0.i124 = phi i32 [ 4, %bb.t ], [ %.3.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.hk = add nuw nsw i32 %.0.i124, %.sroa.94269.3668
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %.preheader, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.0218.11 = phi i64 [ %.sroa.0218.20, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0218.2666, %.preheader ] ; 2 uses
  %.sroa.33.12 = phi i32 [ %.sroa.33.21, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.33.3667, %.preheader ]
  %.sroa.94269.8 = phi i32 [ %i.hk, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.94269.3668, %.preheader ] ; 2 uses
  %.sroa.116288.8 = phi i32 [ %.sroa.116288.11, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.116288.3669, %.preheader ] ; 2 uses
  %i.hl = lshr i64 %.sroa.0218.11, 53             ; 3 uses
  %i.hm = trunc nuw nsw i64 %i.hl to i32          ; 2 uses
  %i.hn = load ptr, ptr %i.bf, align 8, !tbaa !172
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hl
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !22 ; 4 uses
  %i.hq = ashr i32 %i.hp, 9                       ; 2 uses
  %i.hr = and i32 %i.hp, 255                      ; 4 uses
  %i.hs = icmp samesign ult i32 %i.hr, 33
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = sub nuw nsw i32 %.sroa.33.12, %i.hr     ; 3 uses
  %i.hu = zext nneg i32 %i.hr to i64
  %i.hv = shl i64 %.sroa.0218.11, %i.hu           ; 3 uses
  %i.hw = and i32 %i.hp, 256
  %.not.i41 = icmp eq i32 %i.hw, 0
  br i1 %.not.i41, label %bb.ad, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46

bb.ad:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i43 = icmp eq i32 %i.hp, 0
  br i1 %.not17.i43, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hx = trunc i32 %i.hq to i8                   ; 2 uses
  %i.hy = icmp ne i8 %i.hx, 0
  tail call void @llvm.assume(i1 %i.hy)
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.hz = icmp eq i32 %i.hr, 0
  tail call void @llvm.assume(i1 %i.hz)
  %i.ia = add nsw i32 %i.ht, -11                  ; 2 uses
  %i.ib = shl i64 %i.hv, 11                       ; 2 uses
  %i.ic = load ptr, ptr %i.bh, align 8, !tbaa !174
  %i.id = load ptr, ptr %i.bg, align 8, !tbaa !175
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 2
  %i.ii = add nsw i64 %i.ih, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.hl to i16 ; 2 uses
  %i.ij = icmp ugt i64 %i.ii, 11
  br i1 %i.ij, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.af
  %i.ik = load ptr, ptr %i.bi, align 8, !tbaa !176
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge2.i, %.lr.ph.i
  %.sroa.0218.13 = phi i64 [ %i.ib, %.lr.ph.i ], [ %i.iv, %.critedge2.i ] ; 3 uses
  %.sroa.33.14 = phi i32 [ %i.ia, %.lr.ph.i ], [ %i.iu, %.critedge2.i ] ; 4 uses
  %i.il = phi i64 [ 11, %.lr.ph.i ], [ %i.ja, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i ], [ %i.iz, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.hm, %.lr.ph.i ], [ %i.iy, %.critedge2.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !164 ; 2 uses
  %i.io = icmp eq i16 %i.in, -1
  %i.ip = icmp ult i16 %i.in, %.sroa.0.021.i
  %or.cond.i = select i1 %i.io, i1 true, i1 %i.ip
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ag
  %i.iq = icmp samesign ult i32 %.sroa.33.14, 65
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = icmp ne i32 %.sroa.33.14, 0
  tail call void @llvm.assume(i1 %i.ir)
  %i.is = lshr i64 %.sroa.0218.13, 63
  %i.it = trunc nuw nsw i64 %i.is to i32
  %i.iu = add nsw i32 %.sroa.33.14, -1            ; 2 uses
  %i.iv = shl i64 %.sroa.0218.13, 1               ; 2 uses
  %i.iw = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.ix = and i32 %i.iw, 131070
  %i.iy = or disjoint i32 %i.ix, %i.it            ; 3 uses
  %i.iz = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.iy to i16           ; 2 uses
  %i.ja = zext i8 %i.iz to i64                    ; 3 uses
  %i.jb = icmp ugt i64 %i.ii, %i.ja
  br i1 %i.jb, label %bb.ag, label %.critedge.i.loopexit, !llvm.loop !179

.critedge.i.loopexit:                             ; preds = %bb.ag, %.critedge2.i
  %.sroa.0218.12.ph = phi i64 [ %i.iv, %.critedge2.i ], [ %.sroa.0218.13, %bb.ag ]
  %.sroa.33.13.ph = phi i32 [ %i.iu, %.critedge2.i ], [ %.sroa.33.14, %bb.ag ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.iy, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ag ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.iz, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ag ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ag ]
  %.lcssa17.i.ph = phi i64 [ %i.ja, %.critedge2.i ], [ %i.il, %bb.ag ]
  %i.jc = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.af
  %.sroa.0218.12 = phi i64 [ %i.ib, %bb.af ], [ %.sroa.0218.12.ph, %.critedge.i.loopexit ]
  %.sroa.33.13 = phi i32 [ %i.ia, %bb.af ], [ %.sroa.33.13.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.hm, %bb.af ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.af ], [ %i.jc, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.af ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.af ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.jd = icmp ult i64 %i.ii, %.lcssa17.i
  br i1 %i.jd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i
  %i.je = load ptr, ptr %i.bi, align 8, !tbaa !176
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.je, i64 %.lcssa17.i
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !164
  %i.jh = icmp ult i16 %i.jg, %.sroa.0.0.lcssa.i
  br i1 %i.jh, label %bb.ai, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.ai:                                            ; preds = %bb.ah, %.critedge.i
  %i.ji = and i32 %.sroa.0.0.in.lcssa.i, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.ji, i32 noundef %.sroa.8.0.lcssa.i) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.ah
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.jj = load ptr, ptr %i.bj, align 8, !tbaa !176
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %.lcssa17.i
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !164
  %.tr.i = zext i16 %i.jl to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.jm = zext i32 %.narrow.i to i64
  %i.jn = load ptr, ptr %i.bk, align 8, !tbaa !180
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jm
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !151
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.ae
  %.0563 = phi i8 [ %i.jp, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hx, %bb.ae ] ; 5 uses
  %.sroa.0218.9 = phi i64 [ %.sroa.0218.12, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hv, %bb.ae ] ; 6 uses
  %.sroa.33.10 = phi i32 [ %.sroa.33.13, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.ht, %bb.ae ] ; 8 uses
  %i.jq = icmp ult i8 %.0563, 17
  tail call void @llvm.assume(i1 %i.jq)
  switch i8 %.0563, label %bb.am [
    i8 16, label %bb.ak
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.jr = load i8, ptr %i.bl, align 1, !tbaa !181, !range !136, !noundef !121
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.al, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46

bb.al:                                            ; preds = %bb.ak
  %i.jt = icmp samesign ult i32 %.sroa.33.10, 65
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = icmp samesign ugt i32 %.sroa.33.10, 15
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = add nsw i32 %.sroa.33.10, -16
  %i.jw = shl i64 %.sroa.0218.9, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46

bb.am:                                            ; preds = %bb.aj
  %i.jx = zext nneg i8 %.0563 to i32              ; 4 uses
  %i.jy = icmp samesign ult i32 %.sroa.33.10, 65
  tail call void @llvm.assume(i1 %i.jy)
  %i.jz = icmp ne i8 %.0563, 0
  tail call void @llvm.assume(i1 %i.jz)
  %i.ka = icmp samesign uge i32 %.sroa.33.10, %i.jx
  tail call void @llvm.assume(i1 %i.ka)
  %i.kb = sub nuw nsw i32 64, %i.jx
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = lshr i64 %.sroa.0218.9, %i.kc
  %i.ke = trunc nuw nsw i64 %i.kd to i32
  %i.kf = sub nsw i32 %.sroa.33.10, %i.jx
  %i.kg = zext nneg i8 %.0563 to i64
  %i.kh = shl i64 %.sroa.0218.9, %i.kg
  %i.ki = icmp sgt i64 %.sroa.0218.9, -1
  %notmask.i.i = shl nsw i32 -1, %i.jx
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.kj = select i1 %i.ki, i32 %.neg.i.i, i32 0
  %.0.i.i = add nsw i32 %i.kj, %i.ke
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.0218.10 = phi i64 [ %i.hv, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kh, %bb.am ], [ %i.jw, %bb.al ], [ %.sroa.0218.9, %bb.ak ], [ %.sroa.0218.9, %bb.aj ] ; 2 uses
  %.sroa.33.11 = phi i32 [ %i.ht, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kf, %bb.am ], [ %i.jv, %bb.al ], [ %.sroa.33.10, %bb.ak ], [ %.sroa.33.10, %bb.aj ] ; 2 uses
  %.0.i42 = phi i32 [ %i.hq, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i, %bb.am ], [ -32768, %bb.al ], [ -32768, %bb.ak ], [ 0, %bb.aj ]
  %i.kk = trunc i32 %.0.i42 to i16
  %i.kl = add i16 %i.eg, %i.kk                    ; 2 uses
  store i16 %i.kl, ptr %i.ei, align 2, !tbaa !164
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !182

._crit_edge:                                      ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46, %bb.n
  %.sroa.0218.2.lcssa = phi i64 [ %.sroa.0218.0693, %bb.n ], [ %.sroa.0218.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 2 uses
  %.sroa.33.3.lcssa = phi i32 [ %.sroa.33.0694, %bb.n ], [ %.sroa.33.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 2 uses
  %.sroa.94269.3.lcssa = phi i32 [ %.sroa.94269.0695, %bb.n ], [ %.sroa.94269.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 2 uses
  %.sroa.116288.3.lcssa = phi i32 [ %.sroa.116288.0696, %bb.n ], [ %.sroa.116288.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 2 uses
  %.024.i.lcssa = phi i32 [ 0, %bb.n ], [ %i.ee, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit46 ] ; 2 uses
  %i.km = load i32, ptr %i.bm, align 8, !tbaa !183 ; 2 uses
  %i.kn = icmp slt i32 %.024.i.lcssa, %i.km
  br i1 %i.kn, label %.preheader581, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

.preheader581:                                    ; preds = %._crit_edge, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit
  %.1.i686 = phi i32 [ %i.qj, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ], [ %.024.i.lcssa, %._crit_edge ]
  %.sroa.116288.4685 = phi i32 [ %.sroa.116288.9, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ], [ %.sroa.116288.3.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.94269.4684 = phi i32 [ %.sroa.94269.9, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ], [ %.sroa.94269.3.lcssa, %._crit_edge ] ; 8 uses
  %.sroa.33.4683 = phi i32 [ %.sroa.33.9, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ], [ %.sroa.33.3.lcssa, %._crit_edge ] ; 7 uses
  %.sroa.0218.3682 = phi i64 [ %.sroa.0218.8, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit ], [ %.sroa.0218.2.lcssa, %._crit_edge ] ; 3 uses
  %i.ko = icmp samesign ult i32 %.sroa.33.4683, 65
  tail call void @llvm.assume(i1 %i.ko)
  %.not.i71 = icmp samesign ult i32 %.sroa.33.4683, 32
  br i1 %.not.i71, label %bb.an, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80

bb.an:                                            ; preds = %.preheader581
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i70)
  %i.kp = add nuw nsw i32 %.sroa.94269.4684, 8
  %.not.i.i72 = icmp samesign ugt i32 %i.kp, %i.dp
  br i1 %.not.i.i72, label %bb.ap, label %bb.ao, !prof !152

bb.ao:                                            ; preds = %bb.an
  %i.kq = zext nneg i32 %.sroa.94269.4684 to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.kq
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i74

bb.ap:                                            ; preds = %bb.an
  %i.ks = icmp samesign ugt i32 %.sroa.94269.4684, %i.dv
  br i1 %i.ks, label %bb.aq, label %bb.ar, !prof !152

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.ar:                                            ; preds = %bb.ap
  store i64 0, ptr %.sroa.0.i.i70, align 8
  %.sroa.speculated27.i.i.i78 = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %.sroa.94269.4684) ; 3 uses
  %i.kt = add nuw nsw i32 %.sroa.speculated27.i.i.i78, 8
  %.sroa.speculated.i.i.i79 = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %i.kt)
  %i.ku = sub nsw i32 %.sroa.speculated.i.i.i79, %.sroa.speculated27.i.i.i78 ; 2 uses
  %i.kv = icmp samesign ult i32 %i.ku, 9
  tail call void @llvm.assume(i1 %i.kv)
  %i.kw = zext nneg i32 %.sroa.speculated27.i.i.i78 to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.kw
  %i.ky = zext nneg i32 %i.ku to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i70, ptr align 1 %i.kx, i64 %i.ky, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i74

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i74: ; preds = %bb.ar, %bb.ao
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i75 = phi ptr [ %.sroa.0.i.i70, %bb.ar ], [ %i.kr, %bb.ao ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i75, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i70)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76, ptr %1, align 8
  %i.kz = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76 to i8 ; 2 uses
  %i.la = icmp ne i8 %i.kz, -1
  %i.lb = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76, 8
  %i.lc = trunc i64 %i.lb to i8                   ; 3 uses
  %i.ld = icmp ne i8 %i.lc, -1
  %i.le = and i1 %i.la, %i.ld
  %i.lf = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76, 16
  %i.lg = trunc i64 %i.lf to i8                   ; 2 uses
  %i.lh = icmp ne i8 %i.lg, -1
  %i.li = and i1 %i.lh, %i.le
  %i.lj = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76, 4278190080
  %i.lk = icmp ne i64 %i.lj, 4278190080
  %i.ll = and i1 %i.lk, %i.li
  br i1 %i.ll, label %bb.as, label %.preheader.i127

.preheader.i127:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i74
  %i.lm = zext nneg i32 %.sroa.33.4683 to i64     ; 8 uses
  %i.ln = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76, 255
  %indvars.iv.next.i128 = add nuw nsw i64 %i.lm, 8
  %i.lo = sub nuw nsw i64 56, %i.lm
  %i.lp = shl nuw i64 %i.ln, %i.lo
  %i.lq = or i64 %i.lp, %.sroa.0218.3682          ; 2 uses
  %.not.i129 = icmp eq i8 %i.kz, -1
  br i1 %.not.i129, label %bb.at, label %bb.av

bb.as:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i74
  %i.lr = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i76 to i32
  %i.ls = tail call i32 @llvm.bswap.i32(i32 %i.lr)
  %i.lt = zext i32 %i.ls to i64
  %i.lu = sub nuw nsw i32 32, %.sroa.33.4683
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = shl nuw i64 %i.lt, %i.lv
  %i.lx = or i64 %i.lw, %.sroa.0218.3682
  %i.ly = or disjoint i32 %.sroa.33.4683, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit148

bb.at:                                            ; preds = %.preheader.i127
  %i.lz = icmp eq i8 %i.lc, 0
  br i1 %i.lz, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.ba, %bb.ay, %bb.aw, %bb.at
  %.01962.lcssa.i143 = phi i32 [ 0, %bb.at ], [ %.2.ph.i130, %bb.aw ], [ %i.mr, %bb.ay ], [ %i.nc, %bb.ba ]
  %.02161.lcssa.i144.neg708 = phi i32 [ 0, %bb.at ], [ -1, %bb.aw ], [ -2, %bb.ay ], [ -3, %bb.ba ]
  %.lcssa66.wide.i145 = phi i64 [ %i.lm, %bb.at ], [ %indvars.iv.next.i128, %bb.aw ], [ %indvars.iv.next.1.i131, %bb.ay ], [ %indvars.iv.next.2.i134, %bb.ba ]
  %.lcssa.i146 = phi i64 [ %i.lq, %bb.at ], [ %i.ml, %bb.aw ], [ %i.my, %bb.ay ], [ %i.nj, %bb.ba ]
  %i.ma = add nuw nsw i32 %.01962.lcssa.i143, %.sroa.94269.4684
  %i.mb = icmp slt i32 %.sroa.116288.4685, 0
  tail call void @llvm.assume(i1 %i.mb)
  %i.mc = lshr i64 -1, %.lcssa66.wide.i145
  %i.md = xor i64 %i.mc, -1
  %i.me = and i64 %.lcssa.i146, %i.md
  %.neg = sub nsw i32 %i.dp, %.sroa.94269.4684
  %reass.sub.i147 = add nsw i32 %.neg, %.02161.lcssa.i144.neg708 ; 2 uses
  %i.mf = add nuw nsw i32 %reass.sub.i147, 4
  %i.mg = icmp ugt i32 %reass.sub.i147, 1
  tail call void @llvm.assume(i1 %i.mg)
  br label %bb.bb

bb.av:                                            ; preds = %bb.at, %.preheader.i127
  %i.mh = phi i8 [ %i.lc, %.preheader.i127 ], [ %i.lg, %bb.at ] ; 2 uses
  %.2.ph.i130 = phi i32 [ 1, %.preheader.i127 ], [ 2, %bb.at ] ; 3 uses
  %i.mi = zext i8 %i.mh to i64
  %indvars.iv.next.1.i131 = add nuw nsw i64 %i.lm, 16
  %i.mj = sub nuw nsw i64 48, %i.lm
  %i.mk = shl nuw nsw i64 %i.mi, %i.mj
  %i.ml = or i64 %i.mk, %i.lq                     ; 2 uses
  %.not.1.i132 = icmp eq i8 %i.mh, -1
  br i1 %.not.1.i132, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mm = zext nneg i32 %.2.ph.i130 to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !151
  %i.mq = icmp eq i8 %i.mp, 0
  br i1 %i.mq, label %bb.ax, label %bb.au

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sink.i133 = phi i32 [ 1, %bb.av ], [ 2, %bb.aw ]
  %i.mr = add nuw nsw i32 %.sink.i133, %.2.ph.i130 ; 3 uses
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ms ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !151 ; 2 uses
  %i.mv = zext i8 %i.mu to i64
  %indvars.iv.next.2.i134 = add nuw nsw i64 %i.lm, 24
  %i.mw = sub nuw nsw i64 40, %i.lm
  %i.mx = shl nuw nsw i64 %i.mv, %i.mw
  %i.my = or i64 %i.mx, %i.ml                     ; 2 uses
  %.not.2.i135 = icmp eq i8 %i.mu, -1
  br i1 %.not.2.i135, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !151
  %i.nb = icmp eq i8 %i.na, 0
  br i1 %i.nb, label %bb.az, label %bb.au

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink72.i136 = phi i32 [ 1, %bb.ax ], [ 2, %bb.ay ]
  %i.nc = add nuw nsw i32 %.sink72.i136, %i.mr    ; 3 uses
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 %i.nd ; 2 uses
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !151 ; 2 uses
  %i.ng = zext i8 %i.nf to i64
  %indvars.iv.next.3.i137 = or disjoint i32 %.sroa.33.4683, 32
  %i.nh = sub nuw nsw i64 32, %i.lm
  %i.ni = shl nuw nsw i64 %i.ng, %i.nh
  %i.nj = or i64 %i.ni, %i.my                     ; 2 uses
  %.not.3.i138 = icmp eq i8 %i.nf, -1
  br i1 %.not.3.i138, label %bb.ba, label %.loopexit.i139

bb.ba:                                            ; preds = %bb.az
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !151
  %i.nm = icmp eq i8 %i.nl, 0
  br i1 %i.nm, label %.loopexit.i139, label %bb.au

.loopexit.i139:                                   ; preds = %bb.ba, %bb.az
  %.sink73.i140 = phi i32 [ 1, %bb.az ], [ 2, %bb.ba ]
  %i.nn = add nuw nsw i32 %.sink73.i140, %i.nc
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit.i139, %bb.au
  %.sroa.0218.21 = phi i64 [ %i.nj, %.loopexit.i139 ], [ %i.me, %bb.au ]
  %.sroa.33.22 = phi i32 [ %indvars.iv.next.3.i137, %.loopexit.i139 ], [ 64, %bb.au ]
  %.sroa.116288.12 = phi i32 [ %.sroa.116288.4685, %.loopexit.i139 ], [ %i.ma, %bb.au ]
  %.3.i141 = phi i32 [ %i.nn, %.loopexit.i139 ], [ %i.mf, %bb.au ] ; 2 uses
  %i.no = icmp sgt i32 %.3.i141, 4
  tail call void @llvm.assume(i1 %i.no)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit148

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit148: ; preds = %bb.as, %bb.bb
  %.sroa.0218.22 = phi i64 [ %i.lx, %bb.as ], [ %.sroa.0218.21, %bb.bb ]
  %.sroa.33.23 = phi i32 [ %i.ly, %bb.as ], [ %.sroa.33.22, %bb.bb ]
  %.sroa.116288.13 = phi i32 [ %.sroa.116288.4685, %bb.as ], [ %.sroa.116288.12, %bb.bb ]
  %.0.i142 = phi i32 [ 4, %bb.as ], [ %.3.i141, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.np = add nuw nsw i32 %.0.i142, %.sroa.94269.4684
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80: ; preds = %.preheader581, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit148
  %.sroa.0218.15 = phi i64 [ %.sroa.0218.22, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit148 ], [ %.sroa.0218.3682, %.preheader581 ] ; 2 uses
  %.sroa.33.16 = phi i32 [ %.sroa.33.23, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit148 ], [ %.sroa.33.4683, %.preheader581 ]
  %.sroa.94269.9 = phi i32 [ %i.np, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit148 ], [ %.sroa.94269.4684, %.preheader581 ] ; 2 uses
  %.sroa.116288.9 = phi i32 [ %.sroa.116288.13, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit148 ], [ %.sroa.116288.4685, %.preheader581 ] ; 2 uses
  %i.nq = lshr i64 %.sroa.0218.15, 53             ; 3 uses
  %i.nr = trunc nuw nsw i64 %i.nq to i32          ; 2 uses
  %i.ns = load ptr, ptr %i.bf, align 8, !tbaa !172
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.nq
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !22 ; 4 uses
  %i.nv = lshr i32 %i.nu, 9
  %i.nw = and i32 %i.nu, 255                      ; 4 uses
  %i.nx = icmp samesign ult i32 %i.nw, 33
  tail call void @llvm.assume(i1 %i.nx)
  %i.ny = sub nuw nsw i32 %.sroa.33.16, %i.nw     ; 3 uses
  %i.nz = zext nneg i32 %i.nw to i64
  %i.oa = shl i64 %.sroa.0218.15, %i.nz           ; 3 uses
  %i.ob = and i32 %i.nu, 256
  %.not.i40 = icmp eq i32 %i.ob, 0
  br i1 %.not.i40, label %bb.bc, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit

bb.bc:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit80
  %.not17.i = icmp eq i32 %i.nu, 0
  br i1 %.not17.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oc = trunc i32 %i.nv to i8                   ; 2 uses
  %i.od = icmp ne i8 %i.oc, 0
  tail call void @llvm.assume(i1 %i.od)
  br label %bb.bi

bb.be:                                            ; preds = %bb.bc
  %i.oe = icmp eq i32 %i.nw, 0
  tail call void @llvm.assume(i1 %i.oe)
  %i.of = add nsw i32 %i.ny, -11                  ; 2 uses
  %i.og = shl i64 %i.oa, 11                       ; 2 uses
  %i.oh = load ptr, ptr %i.bh, align 8, !tbaa !174
  %i.oi = load ptr, ptr %i.bg, align 8, !tbaa !175
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = ashr exact i64 %i.ol, 2
  %i.on = add nsw i64 %i.om, -1                   ; 3 uses
  %.sroa.0.018.i83 = trunc nuw nsw i64 %i.nq to i16 ; 2 uses
  %i.oo = icmp ugt i64 %i.on, 11
  br i1 %i.oo, label %.lr.ph.i102, label %.critedge.i85

end_hunk_0
begin_hunk_1_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %.sroa.03.06.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %.sroa.03.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !163
  store i16 %i.cs, ptr %.07.i.i, align 2, !tbaa !164
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.cv = icmp eq ptr %i.ct, %i.ba
  br i1 %i.cv, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !192

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i32, ptr %4, align 4
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %i.cw = phi i32 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi2EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i32 %i.cw, ptr %5, align 4
  %.not34 = icmp eq i64 %indvars.iv971, 0
  br i1 %.not34, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10430.0921, %.sroa.223.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.cx = add nuw nsw i32 %.sroa.10430.0921, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.cx, %.sroa.223.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.cy = zext nneg i32 %.sroa.10430.0921 to i64
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
  %i.di = trunc i64 %indvars.iv971 to i32
  %i.dj = add i32 %i.di, -1
  %i.dk = srem i32 %i.dj, 8
  %.not35 = icmp eq i32 %i.dh, %i.dk
  br i1 %.not35, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dl = add nuw nsw i32 %.sroa.10430.0921, 2    ; 2 uses
  %i.dm = icmp samesign ule i32 %i.dl, %.sroa.223.0.copyload
  tail call void @llvm.assume(i1 %i.dm)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit
  %.sroa.10430.1 = phi i32 [ %.sroa.10430.0921, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi2EEESt5arrayItXT_EEv.exit ], [ %i.dl, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dn = sub i32 %.sroa.223.0.copyload, %.sroa.10430.1 ; 15 uses
  %i.do = zext i32 %.sroa.10430.1 to i64          ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 %i.do ; 6 uses
  %i.dq = icmp sgt i32 %i.dn, -1
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp samesign ult i32 %i.dn, 8
  br i1 %i.dr, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not36909, label %.loopexit760.thread, label %.lr.ph916

.lr.ph916:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.ds = mul nsw i64 %indvars.iv971, %i.ar
  %i.dt = add nuw nsw i32 %i.dn, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph916, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv968 = phi i64 [ 0, %.lr.ph916 ], [ %indvars.iv.next969, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0405.0914 = phi ptr [ %5, %.lr.ph916 ], [ %i.eb, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.169394.0913 = phi i32 [ -1, %.lr.ph916 ], [ %.sroa.169394.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.137366.0912 = phi i32 [ 0, %.lr.ph916 ], [ %.sroa.137366.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.48.0911 = phi i32 [ 0, %.lr.ph916 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0290.0910 = phi i64 [ 0, %.lr.ph916 ], [ %.sroa.0290.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.du = add nsw i64 %indvars.iv968, %i.ds       ; 5 uses
  %i.dv = icmp sgt i64 %i.du, -1
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp sle i64 %i.du, %i.aq
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = trunc nuw nsw i64 %i.du to i32
  %.not37 = icmp eq i32 %i.z, %i.dx
  br i1 %.not37, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.dy = icmp eq i64 %indvars.iv971, %i.bp
  tail call void @llvm.assume(i1 %i.dy)
  br label %.loopexit760

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bd)
  tail call void @llvm.assume(i1 %i.be)
  %i.dz = icmp samesign ult i64 %i.du, %i.aq
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = mul nuw nsw i64 %i.du, %i.bn
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ea ; 3 uses
  tail call void @llvm.assume(i1 %i.bf)
  %i.ec = load i32, ptr %i.bg, align 4, !tbaa !38 ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bh)
  %wide.trip.count = zext nneg i32 %i.ec to i64
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.loopexit
  %indvars.iv958 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next959, %.loopexit ] ; 2 uses
  %.sroa.0509.0874 = phi ptr [ %.sroa.0405.0914, %.lr.ph ], [ %i.eg, %.loopexit ]
  %.sroa.169394.3873 = phi i32 [ %.sroa.169394.0913, %.lr.ph ], [ %.sroa.169394.11, %.loopexit ]
  %.sroa.137366.3872 = phi i32 [ %.sroa.137366.0912, %.lr.ph ], [ %.sroa.137366.11, %.loopexit ]
  %.sroa.48.3871 = phi i32 [ %.sroa.48.0911, %.lr.ph ], [ %.sroa.48.15, %.loopexit ]
  %.sroa.0290.2870 = phi i64 [ %.sroa.0290.0910, %.lr.ph ], [ %.sroa.0290.14, %.loopexit ]
  %i.ee = shl nuw nsw i64 %indvars.iv958, 1       ; 2 uses
  %i.ef = icmp samesign ule i64 %i.ee, %i.bl
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.ee ; 3 uses
  br label %bb.o

.loopexit:                                        ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %indvars.iv.next959 = add nuw nsw i64 %indvars.iv958, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next959, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !193

bb.o:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %.not55.i = phi i1 [ false, %.preheader ], [ true, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ]
  %indvars.iv.sroa.phi.sroa.speculated = phi ptr [ %.sroa.0.0.vec.extract1100, %.preheader ], [ %.sroa.0.8.vec.extract, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ 1, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 2 uses
  %.sroa.169394.10864 = phi i32 [ %.sroa.169394.3873, %.preheader ], [ %.sroa.169394.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %.sroa.137366.10861 = phi i32 [ %.sroa.137366.3872, %.preheader ], [ %.sroa.137366.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 8 uses
  %.sroa.48.14860 = phi i32 [ %.sroa.48.3871, %.preheader ], [ %.sroa.48.15, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 7 uses
  %.sroa.0290.13859 = phi i64 [ %.sroa.0290.2870, %.preheader ], [ %.sroa.0290.14, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0509.0874, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !164
  %i.ej = icmp samesign ult i32 %.sroa.48.14860, 65
  tail call void @llvm.assume(i1 %i.ej)
  %.not.i56 = icmp samesign ult i32 %.sroa.48.14860, 32
  br i1 %.not.i56, label %bb.p, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.ek = add nuw nsw i32 %.sroa.137366.10861, 8
  %.not.i.i57 = icmp samesign ugt i32 %i.ek, %i.dn
  br i1 %.not.i.i57, label %bb.r, label %bb.q, !prof !152

bb.q:                                             ; preds = %bb.p
  %i.el = zext nneg i32 %.sroa.137366.10861 to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.en = icmp samesign ugt i32 %.sroa.137366.10861, %i.dt
  br i1 %i.en, label %bb.s, label %bb.t, !prof !152

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.t:                                             ; preds = %bb.r
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 %.sroa.137366.10861) ; 3 uses
  %i.eo = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 %i.eo)
  %i.ep = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.eq = icmp samesign ult i32 %i.ep, 9
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.er
  %i.et = zext nneg i32 %i.ep to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.es, i64 %i.et, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.t ], [ %i.em, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %3, align 8
  %i.eu = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.ev = icmp ne i8 %i.eu, -1
  %i.ew = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.ex = trunc i64 %i.ew to i8                   ; 3 uses
  %i.ey = icmp ne i8 %i.ex, -1
  %i.ez = and i1 %i.ev, %i.ey
  %i.fa = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.fb = trunc i64 %i.fa to i8                   ; 2 uses
  %i.fc = icmp ne i8 %i.fb, -1
  %i.fd = and i1 %i.fc, %i.ez
  %i.fe = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.ff = icmp ne i64 %i.fe, 4278190080
  %i.fg = and i1 %i.ff, %i.fd
  br i1 %i.fg, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fh = zext nneg i32 %.sroa.48.14860 to i64    ; 8 uses
  %i.fi = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.fh, 8
  %i.fj = sub nuw nsw i64 56, %i.fh
  %i.fk = shl nuw i64 %i.fi, %i.fj
  %i.fl = or i64 %i.fk, %.sroa.0290.13859         ; 2 uses
  %.not.i171 = icmp eq i8 %i.eu, -1
  br i1 %.not.i171, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fm = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.fn = tail call i32 @llvm.bswap.i32(i32 %i.fm)
  %i.fo = zext i32 %i.fn to i64
  %i.fp = sub nuw nsw i32 32, %.sroa.48.14860
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl nuw i64 %i.fo, %i.fq
  %i.fs = or i64 %i.fr, %.sroa.0290.13859
  %i.ft = or disjoint i32 %.sroa.48.14860, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.v:                                             ; preds = %.preheader.i
  %i.fu = icmp eq i8 %i.ex, 0
  br i1 %i.fu, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v
  %.01962.lcssa.i = phi i32 [ 0, %bb.v ], [ %.2.ph.i, %bb.y ], [ %i.gm, %bb.aa ], [ %i.gx, %bb.ac ]
  %.02161.lcssa.i.neg924 = phi i32 [ 0, %bb.v ], [ -1, %bb.y ], [ -2, %bb.aa ], [ -3, %bb.ac ]
  %.lcssa66.wide.i = phi i64 [ %i.fh, %bb.v ], [ %indvars.iv.next.i, %bb.y ], [ %indvars.iv.next.1.i, %bb.aa ], [ %indvars.iv.next.2.i, %bb.ac ]
  %.lcssa.i = phi i64 [ %i.fl, %bb.v ], [ %i.gg, %bb.y ], [ %i.gt, %bb.aa ], [ %i.he, %bb.ac ]
  %i.fv = add nuw nsw i32 %.01962.lcssa.i, %.sroa.137366.10861
  %i.fw = icmp slt i32 %.sroa.169394.10864, 0
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = lshr i64 -1, %.lcssa66.wide.i
  %i.fy = xor i64 %i.fx, -1
  %i.fz = and i64 %.lcssa.i, %i.fy
  %.neg756 = sub nsw i32 %i.dn, %.sroa.137366.10861
  %reass.sub.i = add nsw i32 %.neg756, %.02161.lcssa.i.neg924 ; 2 uses
  %i.ga = add nuw nsw i32 %reass.sub.i, 4
  %i.gb = icmp ugt i32 %reass.sub.i, 1
  tail call void @llvm.assume(i1 %i.gb)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v, %.preheader.i
  %i.gc = phi i8 [ %i.ex, %.preheader.i ], [ %i.fb, %bb.v ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.v ] ; 3 uses
  %i.gd = zext i8 %i.gc to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.fh, 16
  %i.ge = sub nuw nsw i64 48, %i.fh
  %i.gf = shl nuw nsw i64 %i.gd, %i.ge
  %i.gg = or i64 %i.gf, %i.fl                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.gc, -1
  br i1 %.not.1.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gh = zext nneg i32 %.2.ph.i to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !151
  %i.gl = icmp eq i8 %i.gk, 0
  br i1 %i.gl, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink.i = phi i32 [ 1, %bb.x ], [ 2, %bb.y ]
  %i.gm = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 %i.gn ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !151 ; 2 uses
  %i.gq = zext i8 %i.gp to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.fh, 24
  %i.gr = sub nuw nsw i64 40, %i.fh
  %i.gs = shl nuw nsw i64 %i.gq, %i.gr
  %i.gt = or i64 %i.gs, %i.gg                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.gp, -1
  br i1 %.not.2.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !151
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %bb.ab, label %bb.w

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink72.i = phi i32 [ 1, %bb.z ], [ 2, %bb.aa ]
  %i.gx = add nuw nsw i32 %.sink72.i, %i.gm       ; 3 uses
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 %i.gy ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !151 ; 2 uses
  %i.hb = zext i8 %i.ha to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.48.14860, 32
  %i.hc = sub nuw nsw i64 32, %i.fh
  %i.hd = shl nuw nsw i64 %i.hb, %i.hc
  %i.he = or i64 %i.hd, %i.gt                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.ha, -1
  br i1 %.not.3.i, label %bb.ac, label %.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !151
  %i.hh = icmp eq i8 %i.hg, 0
  br i1 %i.hh, label %.loopexit.i, label %bb.w

.loopexit.i:                                      ; preds = %bb.ac, %bb.ab
  %.sink73.i = phi i32 [ 1, %bb.ab ], [ 2, %bb.ac ]
  %i.hi = add nuw nsw i32 %.sink73.i, %i.gx
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i, %bb.w
  %.sroa.0290.28 = phi i64 [ %i.he, %.loopexit.i ], [ %i.fz, %bb.w ]
  %.sroa.48.29 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.w ]
  %.sroa.169394.14 = phi i32 [ %.sroa.169394.10864, %.loopexit.i ], [ %i.fv, %bb.w ]
  %.3.i = phi i32 [ %i.hi, %.loopexit.i ], [ %i.ga, %bb.w ] ; 2 uses
  %i.hj = icmp sgt i32 %.3.i, 4
  tail call void @llvm.assume(i1 %i.hj)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.u, %bb.ad
  %.sroa.0290.29 = phi i64 [ %i.fs, %bb.u ], [ %.sroa.0290.28, %bb.ad ]
  %.sroa.48.30 = phi i32 [ %i.ft, %bb.u ], [ %.sroa.48.29, %bb.ad ]
  %.sroa.169394.15 = phi i32 [ %.sroa.169394.10864, %bb.u ], [ %.sroa.169394.14, %bb.ad ]
  %.0.i172 = phi i32 [ 4, %bb.u ], [ %.3.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hk = add nuw nsw i32 %.0.i172, %.sroa.137366.10861
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.o, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.0290.16 = phi i64 [ %.sroa.0290.29, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0290.13859, %bb.o ] ; 2 uses
  %.sroa.48.17 = phi i32 [ %.sroa.48.30, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.48.14860, %bb.o ]
  %.sroa.137366.11 = phi i32 [ %i.hk, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.137366.10861, %bb.o ] ; 3 uses
  %.sroa.169394.11 = phi i32 [ %.sroa.169394.15, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.169394.10864, %bb.o ] ; 3 uses
  %i.hl = lshr i64 %.sroa.0290.16, 53             ; 3 uses
  %i.hm = trunc nuw nsw i64 %i.hl to i32          ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 128
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !172
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hl
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !22 ; 4 uses
  %i.hr = ashr i32 %i.hq, 9                       ; 2 uses
  %i.hs = and i32 %i.hq, 255                      ; 4 uses
  %i.ht = icmp samesign ult i32 %i.hs, 33
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = sub nuw nsw i32 %.sroa.48.17, %i.hs     ; 3 uses
  %i.hv = zext nneg i32 %i.hs to i64
  %i.hw = shl i64 %.sroa.0290.16, %i.hv           ; 3 uses
  %i.hx = and i32 %i.hq, 256
  %.not.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not.i.i, label %bb.ae, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.ae:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i.i = icmp eq i32 %i.hq, 0
  br i1 %.not17.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hy = trunc i32 %i.hr to i8                   ; 2 uses
  %i.hz = icmp ne i8 %i.hy, 0
  tail call void @llvm.assume(i1 %i.hz)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.ia = icmp eq i32 %i.hs, 0
  tail call void @llvm.assume(i1 %i.ia)
  %i.ib = add nsw i32 %i.hu, -11                  ; 2 uses
  %i.ic = shl i64 %i.hw, 11                       ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 40
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !174
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !175
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = ashr exact i64 %i.ij, 2
  %i.il = add nsw i64 %i.ik, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.hl to i16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
bb.ah:                                            ; preds = %.critedge2.i, %.lr.ph.i
  %.sroa.0290.18 = phi i64 [ %i.ic, %.lr.ph.i ], [ %i.iz, %.critedge2.i ] ; 3 uses
  %.sroa.48.19 = phi i32 [ %i.ib, %.lr.ph.i ], [ %i.iy, %.critedge2.i ] ; 4 uses
  %i.ip = phi i64 [ 11, %.lr.ph.i ], [ %i.je, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i ], [ %i.jd, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.hm, %.lr.ph.i ], [ %i.jc, %.critedge2.i ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.ip
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !164 ; 2 uses
  %i.is = icmp eq i16 %i.ir, -1
  %i.it = icmp ult i16 %i.ir, %.sroa.0.021.i
  %or.cond.i = select i1 %i.is, i1 true, i1 %i.it
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ah
  %i.iu = icmp samesign ult i32 %.sroa.48.19, 65
  tail call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp ne i32 %.sroa.48.19, 0
  tail call void @llvm.assume(i1 %i.iv)
  %i.iw = lshr i64 %.sroa.0290.18, 63
  %i.ix = trunc nuw nsw i64 %i.iw to i32
  %i.iy = add nsw i32 %.sroa.48.19, -1            ; 2 uses
  %i.iz = shl i64 %.sroa.0290.18, 1               ; 2 uses
  %i.ja = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.jb = and i32 %i.ja, 131070
  %i.jc = or disjoint i32 %i.jb, %i.ix            ; 3 uses
  %i.jd = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.jc to i16           ; 2 uses
  %i.je = zext i8 %i.jd to i64                    ; 3 uses
  %i.jf = icmp ugt i64 %i.il, %i.je
  br i1 %i.jf, label %bb.ah, label %.critedge.i.loopexit, !llvm.loop !179

.critedge.i.loopexit:                             ; preds = %bb.ah, %.critedge2.i
  %.sroa.0290.17.ph = phi i64 [ %i.iz, %.critedge2.i ], [ %.sroa.0290.18, %bb.ah ]
  %.sroa.48.18.ph = phi i32 [ %i.iy, %.critedge2.i ], [ %.sroa.48.19, %bb.ah ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.jc, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ah ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.jd, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ah ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ah ]
  %.lcssa17.i.ph = phi i64 [ %i.je, %.critedge2.i ], [ %i.ip, %bb.ah ]
  %i.jg = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.ag
  %.sroa.0290.17 = phi i64 [ %i.ic, %bb.ag ], [ %.sroa.0290.17.ph, %.critedge.i.loopexit ]
  %.sroa.48.18 = phi i32 [ %i.ib, %bb.ag ], [ %.sroa.48.18.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.hm, %bb.ag ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.ag ], [ %i.jg, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.ag ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.ag ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.jh = icmp ult i64 %i.il, %.lcssa17.i
  br i1 %i.jh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i
  %i.ji = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 80
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !176
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %.lcssa17.i
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !164
  %i.jm = icmp ult i16 %i.jl, %.sroa.0.0.lcssa.i
  br i1 %i.jm, label %bb.aj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.aj:                                            ; preds = %bb.ai, %.critedge.i
  %i.jn = and i32 %.sroa.0.0.in.lcssa.i, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.jn, i32 noundef %.sroa.8.0.lcssa.i) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.ai
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.jo = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 104
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !176
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %.lcssa17.i
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !164
  %i.js = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 8
  %.tr.i = zext i16 %i.jr to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.jt = zext i32 %.narrow.i to i64
  %i.ju = load ptr, ptr %i.js, align 8, !tbaa !180
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jt
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !151
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.af
  %.0735 = phi i8 [ %i.jw, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hy, %bb.af ] ; 5 uses
  %.sroa.0290.15 = phi i64 [ %.sroa.0290.17, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hw, %bb.af ] ; 6 uses
  %.sroa.48.16 = phi i32 [ %.sroa.48.18, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hu, %bb.af ] ; 8 uses
  %i.jx = icmp ult i8 %.0735, 17
  tail call void @llvm.assume(i1 %i.jx)
  switch i8 %.0735, label %bb.an [
    i8 16, label %bb.al
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  ]

bb.al:                                            ; preds = %bb.ak
  %i.jy = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi.sroa.speculated, i64 1
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !181, !range !136, !noundef !121
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.am, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.kb = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.kb)
  %i.kc = icmp samesign ugt i32 %.sroa.48.16, 15
  tail call void @llvm.assume(i1 %i.kc)
  %i.kd = add nsw i32 %.sroa.48.16, -16
  %i.ke = shl i64 %.sroa.0290.15, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.an:                                            ; preds = %bb.ak
  %i.kf = zext nneg i8 %.0735 to i32              ; 4 uses
  %i.kg = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.kg)
  %i.kh = icmp ne i8 %.0735, 0
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = icmp samesign uge i32 %.sroa.48.16, %i.kf
  tail call void @llvm.assume(i1 %i.ki)
  %i.kj = sub nuw nsw i32 64, %i.kf
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = lshr i64 %.sroa.0290.15, %i.kk
  %i.km = trunc nuw nsw i64 %i.kl to i32
  %i.kn = sub nsw i32 %.sroa.48.16, %i.kf
  %i.ko = zext nneg i8 %.0735 to i64
  %i.kp = shl i64 %.sroa.0290.15, %i.ko
  %i.kq = icmp sgt i64 %.sroa.0290.15, -1
  %notmask.i.i = shl nsw i32 -1, %i.kf
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.kr = select i1 %i.kq, i32 %.neg.i.i, i32 0
  %.0.i.i61 = add nsw i32 %i.kr, %i.km
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.0290.14 = phi i64 [ %i.hw, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kp, %bb.an ], [ %i.ke, %bb.am ], [ %.sroa.0290.15, %bb.al ], [ %.sroa.0290.15, %bb.ak ] ; 3 uses
  %.sroa.48.15 = phi i32 [ %i.hu, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kn, %bb.an ], [ %i.kd, %bb.am ], [ %.sroa.48.16, %bb.al ], [ %.sroa.48.16, %bb.ak ] ; 3 uses
  %.0.i.i = phi i32 [ %i.hr, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i61, %bb.an ], [ -32768, %bb.am ], [ -32768, %bb.al ], [ 0, %bb.ak ]
  %i.ks = trunc i32 %.0.i.i to i16
  %i.kt = add i16 %i.ei, %i.ks
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %indvars.iv
  store i16 %i.kt, ptr %i.ku, align 2, !tbaa !164
  br i1 %.not55.i, label %.loopexit, label %bb.o, !llvm.loop !194

._crit_edge:                                      ; preds = %.loopexit, %bb.n
  %.sroa.0290.2.lcssa = phi i64 [ %.sroa.0290.0910, %bb.n ], [ %.sroa.0290.14, %.loopexit ] ; 2 uses
  %.sroa.48.3.lcssa = phi i32 [ %.sroa.48.0911, %bb.n ], [ %.sroa.48.15, %.loopexit ] ; 2 uses
  %.sroa.137366.3.lcssa = phi i32 [ %.sroa.137366.0912, %bb.n ], [ %.sroa.137366.11, %.loopexit ] ; 2 uses
  %.sroa.169394.3.lcssa = phi i32 [ %.sroa.169394.0913, %bb.n ], [ %.sroa.169394.11, %.loopexit ] ; 2 uses
  %.sroa.0509.0.lcssa = phi ptr [ %.sroa.0405.0914, %bb.n ], [ %i.eg, %.loopexit ]
  %.044.i.lcssa = phi i32 [ 0, %bb.n ], [ %i.ec, %.loopexit ] ; 3 uses
  %i.kv = load i32, ptr %i.bi, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq i32 %i.kv, 0
  br i1 %.not.i, label %bb.bq, label %.preheader758

.preheader758:                                    ; preds = %._crit_edge
  %i.kw = icmp eq i32 %i.kv, 1
  tail call void @llvm.assume(i1 %i.kw)
  %i.kx = shl nuw nsw i32 %.044.i.lcssa, 1
  %i.ky = zext nneg i32 %i.kx to i64
  br label %bb.ao

.loopexit759:                                     ; preds = %bb.bp
  %i.kz = add nuw nsw i32 %.044.i.lcssa, 1
  br label %bb.bq

bb.ao:                                            ; preds = %.preheader758, %bb.bp
  %.not53.i = phi i1 [ false, %.preheader758 ], [ true, %bb.bp ]
  %indvars.iv961.sroa.phi.sroa.speculated = phi ptr [ %.sroa.0.0.vec.extract1098, %.preheader758 ], [ %.sroa.0.8.vec.extract1102, %bb.bp ] ; 8 uses
  %indvars.iv961 = phi i64 [ 0, %.preheader758 ], [ 1, %bb.bp ] ; 2 uses
  %.sroa.169394.5886 = phi i32 [ %.sroa.169394.3.lcssa, %.preheader758 ], [ %.sroa.169394.12, %bb.bp ] ; 4 uses
  %.sroa.137366.5883 = phi i32 [ %.sroa.137366.3.lcssa, %.preheader758 ], [ %.sroa.137366.12, %bb.bp ] ; 8 uses
  %.sroa.48.5882 = phi i32 [ %.sroa.48.3.lcssa, %.preheader758 ], [ %.sroa.48.6, %bb.bp ] ; 7 uses
  %.sroa.0290.4881 = phi i64 [ %.sroa.0290.2.lcssa, %.preheader758 ], [ %.sroa.0290.5, %bb.bp ] ; 3 uses
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0509.0.lcssa, i64 %indvars.iv961
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !164
  %i.lc = icmp samesign ult i32 %.sroa.48.5882, 65
  tail call void @llvm.assume(i1 %i.lc)
  %.not.i69 = icmp samesign ult i32 %.sroa.48.5882, 32
  br i1 %.not.i69, label %bb.ap, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i68)
  %i.ld = add nuw nsw i32 %.sroa.137366.5883, 8
  %.not.i.i70 = icmp samesign ugt i32 %i.ld, %i.dn
  br i1 %.not.i.i70, label %bb.ar, label %bb.aq, !prof !152

bb.aq:                                            ; preds = %bb.ap
  %i.le = zext nneg i32 %.sroa.137366.5883 to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.le
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i72

bb.ar:                                            ; preds = %bb.ap
  %i.lg = icmp samesign ugt i32 %.sroa.137366.5883, %i.dt
  br i1 %i.lg, label %bb.as, label %bb.at, !prof !152

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 0, ptr %.sroa.0.i.i68, align 8
  %.sroa.speculated27.i.i.i76 = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 %.sroa.137366.5883) ; 3 uses
  %i.lh = add nuw nsw i32 %.sroa.speculated27.i.i.i76, 8
  %.sroa.speculated.i.i.i77 = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 %i.lh)
  %i.li = sub nsw i32 %.sroa.speculated.i.i.i77, %.sroa.speculated27.i.i.i76 ; 2 uses
  %i.lj = icmp samesign ult i32 %i.li, 9
  tail call void @llvm.assume(i1 %i.lj)
  %i.lk = zext nneg i32 %.sroa.speculated27.i.i.i76 to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.lk
  %i.lm = zext nneg i32 %i.li to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i68, ptr align 1 %i.ll, i64 %i.lm, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i72

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i72: ; preds = %bb.at, %bb.aq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i73 = phi ptr [ %.sroa.0.i.i68, %bb.at ], [ %i.lf, %bb.aq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i73, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i68)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74, ptr %2, align 8
  %i.ln = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74 to i8 ; 2 uses
  %i.lo = icmp ne i8 %i.ln, -1
  %i.lp = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74, 8
  %i.lq = trunc i64 %i.lp to i8                   ; 3 uses
  %i.lr = icmp ne i8 %i.lq, -1
  %i.ls = and i1 %i.lo, %i.lr
  %i.lt = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74, 16
  %i.lu = trunc i64 %i.lt to i8                   ; 2 uses
  %i.lv = icmp ne i8 %i.lu, -1
  %i.lw = and i1 %i.lv, %i.ls
  %i.lx = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74, 4278190080
  %i.ly = icmp ne i64 %i.lx, 4278190080
  %i.lz = and i1 %i.ly, %i.lw
  br i1 %i.lz, label %bb.au, label %.preheader.i175

.preheader.i175:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i72
  %i.ma = zext nneg i32 %.sroa.48.5882 to i64     ; 8 uses
  %i.mb = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74, 255
  %indvars.iv.next.i176 = add nuw nsw i64 %i.ma, 8
  %i.mc = sub nuw nsw i64 56, %i.ma
  %i.md = shl nuw i64 %i.mb, %i.mc
  %i.me = or i64 %i.md, %.sroa.0290.4881          ; 2 uses
  %.not.i177 = icmp eq i8 %i.ln, -1
  br i1 %.not.i177, label %bb.av, label %bb.ax

bb.au:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i72
  %i.mf = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i74 to i32
  %i.mg = tail call i32 @llvm.bswap.i32(i32 %i.mf)
  %i.mh = zext i32 %i.mg to i64
  %i.mi = sub nuw nsw i32 32, %.sroa.48.5882
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = shl nuw i64 %i.mh, %i.mj
  %i.ml = or i64 %i.mk, %.sroa.0290.4881
  %i.mm = or disjoint i32 %.sroa.48.5882, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit196

bb.av:                                            ; preds = %.preheader.i175
  %i.mn = icmp eq i8 %i.lq, 0
  br i1 %i.mn, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.bc, %bb.ba, %bb.ay, %bb.av
  %.01962.lcssa.i191 = phi i32 [ 0, %bb.av ], [ %.2.ph.i178, %bb.ay ], [ %i.nf, %bb.ba ], [ %i.nq, %bb.bc ]
  %.02161.lcssa.i192.neg925 = phi i32 [ 0, %bb.av ], [ -1, %bb.ay ], [ -2, %bb.ba ], [ -3, %bb.bc ]
  %.lcssa66.wide.i193 = phi i64 [ %i.ma, %bb.av ], [ %indvars.iv.next.i176, %bb.ay ], [ %indvars.iv.next.1.i179, %bb.ba ], [ %indvars.iv.next.2.i182, %bb.bc ]
  %.lcssa.i194 = phi i64 [ %i.me, %bb.av ], [ %i.mz, %bb.ay ], [ %i.nm, %bb.ba ], [ %i.nx, %bb.bc ]
  %i.mo = add nuw nsw i32 %.01962.lcssa.i191, %.sroa.137366.5883
  %i.mp = icmp slt i32 %.sroa.169394.5886, 0
  tail call void @llvm.assume(i1 %i.mp)
  %i.mq = lshr i64 -1, %.lcssa66.wide.i193
  %i.mr = xor i64 %i.mq, -1
  %i.ms = and i64 %.lcssa.i194, %i.mr
  %.neg = sub nsw i32 %i.dn, %.sroa.137366.5883
  %reass.sub.i195 = add nsw i32 %.neg, %.02161.lcssa.i192.neg925 ; 2 uses
  %i.mt = add nuw nsw i32 %reass.sub.i195, 4
  %i.mu = icmp ugt i32 %reass.sub.i195, 1
  tail call void @llvm.assume(i1 %i.mu)
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av, %.preheader.i175
  %i.mv = phi i8 [ %i.lq, %.preheader.i175 ], [ %i.lu, %bb.av ] ; 2 uses
  %.2.ph.i178 = phi i32 [ 1, %.preheader.i175 ], [ 2, %bb.av ] ; 3 uses
  %i.mw = zext i8 %i.mv to i64
  %indvars.iv.next.1.i179 = add nuw nsw i64 %i.ma, 16
  %i.mx = sub nuw nsw i64 48, %i.ma
  %i.my = shl nuw nsw i64 %i.mw, %i.mx
  %i.mz = or i64 %i.my, %i.me                     ; 2 uses
  %.not.1.i180 = icmp eq i8 %i.mv, -1
  br i1 %.not.1.i180, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.na = zext nneg i32 %.2.ph.i178 to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 1
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !151
  %i.ne = icmp eq i8 %i.nd, 0
  br i1 %i.ne, label %bb.az, label %bb.aw

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink.i181 = phi i32 [ 1, %bb.ax ], [ 2, %bb.ay ]
  %i.nf = add nuw nsw i32 %.sink.i181, %.2.ph.i178 ; 3 uses
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %2, i64 %i.ng ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !151 ; 2 uses
  %i.nj = zext i8 %i.ni to i64
  %indvars.iv.next.2.i182 = add nuw nsw i64 %i.ma, 24
  %i.nk = sub nuw nsw i64 40, %i.ma
  %i.nl = shl nuw nsw i64 %i.nj, %i.nk
  %i.nm = or i64 %i.nl, %i.mz                     ; 2 uses
  %.not.2.i183 = icmp eq i8 %i.ni, -1
  br i1 %.not.2.i183, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nh, i64 1
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !151
  %i.np = icmp eq i8 %i.no, 0
  br i1 %i.np, label %bb.bb, label %bb.aw

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink72.i184 = phi i32 [ 1, %bb.az ], [ 2, %bb.ba ]
  %i.nq = add nuw nsw i32 %.sink72.i184, %i.nf    ; 3 uses
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 %i.nr ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !151 ; 2 uses
  %i.nu = zext i8 %i.nt to i64
  %indvars.iv.next.3.i185 = or disjoint i32 %.sroa.48.5882, 32
  %i.nv = sub nuw nsw i64 32, %i.ma
  %i.nw = shl nuw nsw i64 %i.nu, %i.nv
  %i.nx = or i64 %i.nw, %i.nm                     ; 2 uses
  %.not.3.i186 = icmp eq i8 %i.nt, -1
  br i1 %.not.3.i186, label %bb.bc, label %.loopexit.i187

bb.bc:                                            ; preds = %bb.bb
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !151
  %i.oa = icmp eq i8 %i.nz, 0
  br i1 %i.oa, label %.loopexit.i187, label %bb.aw

.loopexit.i187:                                   ; preds = %bb.bc, %bb.bb
  %.sink73.i188 = phi i32 [ 1, %bb.bb ], [ 2, %bb.bc ]
  %i.ob = add nuw nsw i32 %.sink73.i188, %i.nq
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i187, %bb.aw
  %.sroa.0290.30 = phi i64 [ %i.nx, %.loopexit.i187 ], [ %i.ms, %bb.aw ]
  %.sroa.48.31 = phi i32 [ %indvars.iv.next.3.i185, %.loopexit.i187 ], [ 64, %bb.aw ]
  %.sroa.169394.16 = phi i32 [ %.sroa.169394.5886, %.loopexit.i187 ], [ %i.mo, %bb.aw ]
  %.3.i189 = phi i32 [ %i.ob, %.loopexit.i187 ], [ %i.mt, %bb.aw ] ; 2 uses
  %i.oc = icmp sgt i32 %.3.i189, 4
  tail call void @llvm.assume(i1 %i.oc)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit196

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit196: ; preds = %bb.au, %bb.bd
  %.sroa.0290.31 = phi i64 [ %i.ml, %bb.au ], [ %.sroa.0290.30, %bb.bd ]
  %.sroa.48.32 = phi i32 [ %i.mm, %bb.au ], [ %.sroa.48.31, %bb.bd ]
  %.sroa.169394.17 = phi i32 [ %.sroa.169394.5886, %bb.au ], [ %.sroa.169394.16, %bb.bd ]
  %.0.i190 = phi i32 [ 4, %bb.au ], [ %.3.i189, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.od = add nuw nsw i32 %.0.i190, %.sroa.137366.5883
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78: ; preds = %bb.ao, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit196
  %.sroa.0290.20 = phi i64 [ %.sroa.0290.31, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit196 ], [ %.sroa.0290.4881, %bb.ao ] ; 2 uses
  %.sroa.48.21 = phi i32 [ %.sroa.48.32, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit196 ], [ %.sroa.48.5882, %bb.ao ]
  %.sroa.137366.12 = phi i32 [ %i.od, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit196 ], [ %.sroa.137366.5883, %bb.ao ] ; 2 uses
  %.sroa.169394.12 = phi i32 [ %.sroa.169394.17, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit196 ], [ %.sroa.169394.5886, %bb.ao ] ; 2 uses
  %i.oe = lshr i64 %.sroa.0290.20, 53             ; 3 uses
  %i.of = trunc nuw nsw i64 %i.oe to i32          ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %indvars.iv961.sroa.phi.sroa.speculated, i64 128
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !172
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.oe
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !22 ; 4 uses
  %i.ok = ashr i32 %i.oj, 9                       ; 2 uses
  %i.ol = and i32 %i.oj, 255                      ; 4 uses
  %i.om = icmp samesign ult i32 %i.ol, 33
  tail call void @llvm.assume(i1 %i.om)
  %i.on = sub nuw nsw i32 %.sroa.48.21, %i.ol     ; 3 uses
  %i.oo = zext nneg i32 %i.ol to i64
  %i.op = shl i64 %.sroa.0290.20, %i.oo           ; 3 uses
  %i.oq = and i32 %i.oj, 256
  %.not.i65.i = icmp eq i32 %i.oq, 0
  br i1 %.not.i65.i, label %bb.be, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.be:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78
  %.not17.i67.i = icmp eq i32 %i.oj, 0
  br i1 %.not17.i67.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.or = trunc i32 %i.ok to i8                   ; 2 uses
  %i.os = icmp ne i8 %i.or, 0
  tail call void @llvm.assume(i1 %i.os)
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.ot = icmp eq i32 %i.ol, 0
  tail call void @llvm.assume(i1 %i.ot)
  %i.ou = add nsw i32 %i.on, -11                  ; 2 uses
  %i.ov = shl i64 %i.op, 11                       ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %indvars.iv961.sroa.phi.sroa.speculated, i64 32
  %i.ox = getelementptr inbounds nuw i8, ptr %indvars.iv961.sroa.phi.sroa.speculated, i64 40
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !174
  %i.oz = load ptr, ptr %i.ow, align 8, !tbaa !175
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = ashr exact i64 %i.pc, 2
  %i.pe = add nsw i64 %i.pd, -1                   ; 3 uses
  %.sroa.0.018.i81 = trunc nuw nsw i64 %i.oe to i16 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %.sroa.0.0.in19.i105 = phi i32 [ %i.of, %.lr.ph.i100 ], [ %i.pv, %.critedge2.i107 ] ; 2 uses
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %i.pi
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !164 ; 2 uses
  %i.pl = icmp eq i16 %i.pk, -1
  %i.pm = icmp ult i16 %i.pk, %.sroa.0.021.i103
  %or.cond.i106 = select i1 %i.pl, i1 true, i1 %i.pm
  br i1 %or.cond.i106, label %.critedge2.i107, label %.critedge.i83.loopexit

.critedge2.i107:                                  ; preds = %bb.bh
  %i.pn = icmp samesign ult i32 %.sroa.48.23, 65
  tail call void @llvm.assume(i1 %i.pn)
  %i.po = icmp ne i32 %.sroa.48.23, 0
  tail call void @llvm.assume(i1 %i.po)
  %i.pp = lshr i64 %.sroa.0290.22, 63
  %i.pq = trunc nuw nsw i64 %i.pp to i32
  %i.pr = add nsw i32 %.sroa.48.23, -1            ; 2 uses
  %i.ps = shl i64 %.sroa.0290.22, 1               ; 2 uses
  %i.pt = shl nsw i32 %.sroa.0.0.in19.i105, 1
  %i.pu = and i32 %i.pt, 131070
  %i.pv = or disjoint i32 %i.pu, %i.pq            ; 3 uses
  %i.pw = add i8 %.sroa.8.020.i104, 1             ; 3 uses
  %.sroa.0.0.i108 = trunc i32 %i.pv to i16        ; 2 uses
  %i.px = zext i8 %i.pw to i64                    ; 3 uses
  %i.py = icmp ugt i64 %i.pe, %i.px
  br i1 %i.py, label %bb.bh, label %.critedge.i83.loopexit, !llvm.loop !179

.critedge.i83.loopexit:                           ; preds = %bb.bh, %.critedge2.i107
  %.sroa.0290.21.ph = phi i64 [ %i.ps, %.critedge2.i107 ], [ %.sroa.0290.22, %bb.bh ]
  %.sroa.48.22.ph = phi i32 [ %i.pr, %.critedge2.i107 ], [ %.sroa.48.23, %bb.bh ]
  %.sroa.0.0.in.lcssa.i84.ph = phi i32 [ %i.pv, %.critedge2.i107 ], [ %.sroa.0.0.in19.i105, %bb.bh ]
  %.sroa.8.0.lcssa.i85.ph = phi i8 [ %i.pw, %.critedge2.i107 ], [ %.sroa.8.020.i104, %bb.bh ]
  %.sroa.0.0.lcssa.i86.ph = phi i16 [ %.sroa.0.0.i108, %.critedge2.i107 ], [ %.sroa.0.021.i103, %bb.bh ]
  %.lcssa17.i87.ph = phi i64 [ %i.px, %.critedge2.i107 ], [ %i.pi, %bb.bh ]
  %i.pz = zext i8 %.sroa.8.0.lcssa.i85.ph to i32
  br label %.critedge.i83

.critedge.i83:                                    ; preds = %.critedge.i83.loopexit, %bb.bg
  %.sroa.0290.21 = phi i64 [ %i.ov, %bb.bg ], [ %.sroa.0290.21.ph, %.critedge.i83.loopexit ]
  %.sroa.48.22 = phi i32 [ %i.ou, %bb.bg ], [ %.sroa.48.22.ph, %.critedge.i83.loopexit ]
  %.sroa.0.0.in.lcssa.i84 = phi i32 [ %i.of, %bb.bg ], [ %.sroa.0.0.in.lcssa.i84.ph, %.critedge.i83.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i85 = phi i32 [ 11, %bb.bg ], [ %i.pz, %.critedge.i83.loopexit ]
  %.sroa.0.0.lcssa.i86 = phi i16 [ %.sroa.0.018.i81, %bb.bg ], [ %.sroa.0.0.lcssa.i86.ph, %.critedge.i83.loopexit ]
  %.lcssa17.i87 = phi i64 [ 11, %bb.bg ], [ %.lcssa17.i87.ph, %.critedge.i83.loopexit ] ; 3 uses
  %i.qa = icmp ult i64 %i.pe, %.lcssa17.i87
  br i1 %i.qa, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i83
  %i.qb = getelementptr inbounds nuw i8, ptr %indvars.iv961.sroa.phi.sroa.speculated, i64 80
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !176
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %.lcssa17.i87
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !164
  %i.qf = icmp ult i16 %i.qe, %.sroa.0.0.lcssa.i86
  br i1 %i.qf, label %bb.bj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109

bb.bj:                                            ; preds = %bb.bi, %.critedge.i83
  %i.qg = and i32 %.sroa.0.0.in.lcssa.i84, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.qg, i32 noundef %.sroa.8.0.lcssa.i85) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109: ; preds = %bb.bi
  %.sroa.0.0.mask.i89 = and i32 %.sroa.0.0.in.lcssa.i84, 65535
  %i.qh = getelementptr inbounds nuw i8, ptr %indvars.iv961.sroa.phi.sroa.speculated, i64 104
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !176
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %.lcssa17.i87
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !164
  %i.ql = getelementptr inbounds nuw i8, ptr %indvars.iv961.sroa.phi.sroa.speculated, i64 8
  %.tr.i90 = zext i16 %i.qk to i32
  %.narrow.i91 = sub nsw i32 %.sroa.0.0.mask.i89, %.tr.i90
  %i.qm = zext i32 %.narrow.i91 to i64
  %i.qn = load ptr, ptr %i.ql, align 8, !tbaa !180
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qm
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !151
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109, %bb.bf
  %.0737 = phi i8 [ %i.qp, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109 ], [ %i.or, %bb.bf ] ; 5 uses
  %.sroa.0290.6 = phi i64 [ %.sroa.0290.21, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109 ], [ %i.op, %bb.bf ] ; 6 uses
  %.sroa.48.7 = phi i32 [ %.sroa.48.22, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit109 ], [ %i.on, %bb.bf ] ; 8 uses
  %i.qq = icmp ult i8 %.0737, 17
  tail call void @llvm.assume(i1 %i.qq)
  switch i8 %.0737, label %bb.bn [
    i8 16, label %bb.bl
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.qr = getelementptr inbounds nuw i8, ptr %indvars.iv961.sroa.phi.sroa.speculated, i64 1
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !181, !range !136, !noundef !121
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %bb.bm, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bm:                                            ; preds = %bb.bl
  %i.qu = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.qu)
  %i.qv = icmp samesign ugt i32 %.sroa.48.7, 15
  tail call void @llvm.assume(i1 %i.qv)
  %i.qw = add nsw i32 %.sroa.48.7, -16
  %i.qx = shl i64 %.sroa.0290.6, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bn:                                            ; preds = %bb.bk
  %i.qy = zext nneg i8 %.0737 to i32              ; 4 uses
  %i.qz = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.qz)
  %i.ra = icmp ne i8 %.0737, 0
  tail call void @llvm.assume(i1 %i.ra)
  %i.rb = icmp samesign uge i32 %.sroa.48.7, %i.qy
  tail call void @llvm.assume(i1 %i.rb)
  %i.rc = sub nuw nsw i32 64, %i.qy
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = lshr i64 %.sroa.0290.6, %i.rd
  %i.rf = trunc nuw nsw i64 %i.re to i32
  %i.rg = sub nsw i32 %.sroa.48.7, %i.qy
  %i.rh = zext nneg i8 %.0737 to i64
  %i.ri = shl i64 %.sroa.0290.6, %i.rh
  %i.rj = icmp sgt i64 %.sroa.0290.6, -1
  %notmask.i.i111 = shl nsw i32 -1, %i.qy
  %.neg.i.i112 = or disjoint i32 %notmask.i.i111, 1
  %i.rk = select i1 %i.rj, i32 %.neg.i.i112, i32 0
  %.0.i.i113 = add nsw i32 %i.rk, %i.rf
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78
  %.sroa.0290.5 = phi i64 [ %i.op, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78 ], [ %i.ri, %bb.bn ], [ %i.qx, %bb.bm ], [ %.sroa.0290.6, %bb.bl ], [ %.sroa.0290.6, %bb.bk ] ; 2 uses
  %.sroa.48.6 = phi i32 [ %i.on, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78 ], [ %i.rg, %bb.bn ], [ %i.qw, %bb.bm ], [ %.sroa.48.7, %bb.bl ], [ %.sroa.48.7, %bb.bk ] ; 2 uses
  %.0.i66.i = phi i32 [ %i.ok, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit78 ], [ %.0.i.i113, %bb.bn ], [ -32768, %bb.bm ], [ -32768, %bb.bl ], [ 0, %bb.bk ]
  %i.rl = or disjoint i64 %indvars.iv961, %i.ky   ; 2 uses
  %i.rm = icmp samesign ult i64 %i.rl, %i.bm
  br i1 %i.rm, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %i.rn = trunc i32 %.0.i66.i to i16
  %i.ro = add i16 %i.lb, %i.rn
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.rl
  store i16 %i.ro, ptr %i.rp, align 2, !tbaa !164
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  br i1 %.not53.i, label %.loopexit759, label %bb.ao, !llvm.loop !195

bb.bq:                                            ; preds = %.loopexit759, %._crit_edge
  %.sroa.0290.7 = phi i64 [ %.sroa.0290.2.lcssa, %._crit_edge ], [ %.sroa.0290.5, %.loopexit759 ] ; 2 uses
  %.sroa.48.8 = phi i32 [ %.sroa.48.3.lcssa, %._crit_edge ], [ %.sroa.48.6, %.loopexit759 ] ; 2 uses
  %.sroa.137366.6 = phi i32 [ %.sroa.137366.3.lcssa, %._crit_edge ], [ %.sroa.137366.12, %.loopexit759 ] ; 2 uses
  %.sroa.169394.6 = phi i32 [ %.sroa.169394.3.lcssa, %._crit_edge ], [ %.sroa.169394.12, %.loopexit759 ] ; 2 uses
  %.1.i = phi i32 [ %.044.i.lcssa, %._crit_edge ], [ %i.kz, %.loopexit759 ] ; 2 uses
  %i.rq = load i32, ptr %i.bj, align 8, !tbaa !183 ; 2 uses
  %i.rr = icmp slt i32 %.1.i, %i.rq
  br i1 %i.rr, label %.preheader757, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

.preheader757:                                    ; preds = %bb.bq, %bb.br
  %.2.i903 = phi i32 [ %i.rs, %bb.br ], [ %.1.i, %bb.bq ]
  %.sroa.169394.7902 = phi i32 [ %.sroa.169394.13, %bb.br ], [ %.sroa.169394.6, %bb.bq ]
  %.sroa.137366.7901 = phi i32 [ %.sroa.137366.13, %bb.br ], [ %.sroa.137366.6, %bb.bq ]
  %.sroa.48.9900 = phi i32 [ %.sroa.48.11, %bb.br ], [ %.sroa.48.8, %bb.bq ]
  %.sroa.0290.8899 = phi i64 [ %.sroa.0290.10, %bb.br ], [ %.sroa.0290.7, %bb.bq ]
  br label %bb.bs

bb.br:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %i.rs = add nsw i32 %.2.i903, 1                 ; 2 uses
  %exitcond967.not = icmp eq i32 %i.rs, %i.rq
  br i1 %exitcond967.not, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, label %.preheader757, !llvm.loop !196

bb.bs:                                            ; preds = %.preheader757, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %.not52.i = phi i1 [ false, %.preheader757 ], [ true, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ]
  %indvars.iv964.sroa.phi.sroa.speculated = phi ptr [ %.sroa.0.0.vec.extract, %.preheader757 ], [ %.sroa.0.8.vec.extract1104, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 8 uses
  %.sroa.169394.8897 = phi i32 [ %.sroa.169394.7902, %.preheader757 ], [ %.sroa.169394.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 4 uses
  %.sroa.137366.8894 = phi i32 [ %.sroa.137366.7901, %.preheader757 ], [ %.sroa.137366.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 8 uses
  %.sroa.48.10893 = phi i32 [ %.sroa.48.9900, %.preheader757 ], [ %.sroa.48.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 7 uses
  %.sroa.0290.9892 = phi i64 [ %.sroa.0290.8899, %.preheader757 ], [ %.sroa.0290.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 3 uses
  %i.rt = icmp samesign ult i32 %.sroa.48.10893, 65
  tail call void @llvm.assume(i1 %i.rt)
  %.not.i119 = icmp samesign ult i32 %.sroa.48.10893, 32
  br i1 %.not.i119, label %bb.bt, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i118)
  %i.ru = add nuw nsw i32 %.sroa.137366.8894, 8
  %.not.i.i120 = icmp samesign ugt i32 %i.ru, %i.dn
  br i1 %.not.i.i120, label %bb.bv, label %bb.bu, !prof !152

bb.bu:                                            ; preds = %bb.bt
  %i.rv = zext nneg i32 %.sroa.137366.8894 to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.rv
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i122

bb.bv:                                            ; preds = %bb.bt
  %i.rx = icmp samesign ugt i32 %.sroa.137366.8894, %i.dt
  br i1 %i.rx, label %bb.bw, label %bb.bx, !prof !152

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.bx:                                            ; preds = %bb.bv
  store i64 0, ptr %.sroa.0.i.i118, align 8
  %.sroa.speculated27.i.i.i126 = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 %.sroa.137366.8894) ; 3 uses
  %i.ry = add nuw nsw i32 %.sroa.speculated27.i.i.i126, 8
  %.sroa.speculated.i.i.i127 = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 %i.ry)
  %i.rz = sub nsw i32 %.sroa.speculated.i.i.i127, %.sroa.speculated27.i.i.i126 ; 2 uses
  %i.sa = icmp samesign ult i32 %i.rz, 9
  tail call void @llvm.assume(i1 %i.sa)
  %i.sb = zext nneg i32 %.sroa.speculated27.i.i.i126 to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.sb
  %i.sd = zext nneg i32 %i.rz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i118, ptr align 1 %i.sc, i64 %i.sd, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i122

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i122: ; preds = %bb.bx, %bb.bu
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i123 = phi ptr [ %.sroa.0.i.i118, %bb.bx ], [ %i.rw, %bb.bu ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i123, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i118)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124, ptr %1, align 8
  %i.se = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124 to i8 ; 2 uses
  %i.sf = icmp ne i8 %i.se, -1
  %i.sg = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124, 8
  %i.sh = trunc i64 %i.sg to i8                   ; 3 uses
  %i.si = icmp ne i8 %i.sh, -1
  %i.sj = and i1 %i.sf, %i.si
  %i.sk = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124, 16
  %i.sl = trunc i64 %i.sk to i8                   ; 2 uses
  %i.sm = icmp ne i8 %i.sl, -1
  %i.sn = and i1 %i.sm, %i.sj
  %i.so = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124, 4278190080
  %i.sp = icmp ne i64 %i.so, 4278190080
  %i.sq = and i1 %i.sp, %i.sn
  br i1 %i.sq, label %bb.by, label %.preheader.i199

.preheader.i199:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i122
  %i.sr = zext nneg i32 %.sroa.48.10893 to i64    ; 8 uses
  %i.ss = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124, 255
  %indvars.iv.next.i200 = add nuw nsw i64 %i.sr, 8
  %i.st = sub nuw nsw i64 56, %i.sr
  %i.su = shl nuw i64 %i.ss, %i.st
  %i.sv = or i64 %i.su, %.sroa.0290.9892          ; 2 uses
  %.not.i201 = icmp eq i8 %i.se, -1
  br i1 %.not.i201, label %bb.bz, label %bb.cb

bb.by:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i122
  %i.sw = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i124 to i32
  %i.sx = tail call i32 @llvm.bswap.i32(i32 %i.sw)
  %i.sy = zext i32 %i.sx to i64
  %i.sz = sub nuw nsw i32 32, %.sroa.48.10893
  %i.ta = zext nneg i32 %i.sz to i64
  %i.tb = shl nuw i64 %i.sy, %i.ta
  %i.tc = or i64 %i.tb, %.sroa.0290.9892
  %i.td = or disjoint i32 %.sroa.48.10893, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit220

bb.bz:                                            ; preds = %.preheader.i199
  %i.te = icmp eq i8 %i.sh, 0
  br i1 %i.te, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.cg, %bb.ce, %bb.cc, %bb.bz
  %.01962.lcssa.i215 = phi i32 [ 0, %bb.bz ], [ %.2.ph.i202, %bb.cc ], [ %i.tw, %bb.ce ], [ %i.uh, %bb.cg ]
  %.02161.lcssa.i216.neg926 = phi i32 [ 0, %bb.bz ], [ -1, %bb.cc ], [ -2, %bb.ce ], [ -3, %bb.cg ]
  %.lcssa66.wide.i217 = phi i64 [ %i.sr, %bb.bz ], [ %indvars.iv.next.i200, %bb.cc ], [ %indvars.iv.next.1.i203, %bb.ce ], [ %indvars.iv.next.2.i206, %bb.cg ]
  %.lcssa.i218 = phi i64 [ %i.sv, %bb.bz ], [ %i.tq, %bb.cc ], [ %i.ud, %bb.ce ], [ %i.uo, %bb.cg ]
  %i.tf = add nuw nsw i32 %.01962.lcssa.i215, %.sroa.137366.8894
  %i.tg = icmp slt i32 %.sroa.169394.8897, 0
  tail call void @llvm.assume(i1 %i.tg)
  %i.th = lshr i64 -1, %.lcssa66.wide.i217
  %i.ti = xor i64 %i.th, -1
  %i.tj = and i64 %.lcssa.i218, %i.ti
  %.neg755 = sub nsw i32 %i.dn, %.sroa.137366.8894
  %reass.sub.i219 = add nsw i32 %.neg755, %.02161.lcssa.i216.neg926 ; 2 uses
  %i.tk = add nuw nsw i32 %reass.sub.i219, 4
  %i.tl = icmp ugt i32 %reass.sub.i219, 1
  tail call void @llvm.assume(i1 %i.tl)
  br label %bb.ch

bb.cb:                                            ; preds = %bb.bz, %.preheader.i199
  %i.tm = phi i8 [ %i.sh, %.preheader.i199 ], [ %i.sl, %bb.bz ] ; 2 uses
  %.2.ph.i202 = phi i32 [ 1, %.preheader.i199 ], [ 2, %bb.bz ] ; 3 uses
  %i.tn = zext i8 %i.tm to i64
  %indvars.iv.next.1.i203 = add nuw nsw i64 %i.sr, 16
  %i.to = sub nuw nsw i64 48, %i.sr
  %i.tp = shl nuw nsw i64 %i.tn, %i.to
  %i.tq = or i64 %i.tp, %i.sv                     ; 2 uses
  %.not.1.i204 = icmp eq i8 %i.tm, -1
  br i1 %.not.1.i204, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.tr = zext nneg i32 %.2.ph.i202 to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 1
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !151
  %i.tv = icmp eq i8 %i.tu, 0
  br i1 %i.tv, label %bb.cd, label %bb.ca

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink.i205 = phi i32 [ 1, %bb.cb ], [ 2, %bb.cc ]
  %i.tw = add nuw nsw i32 %.sink.i205, %.2.ph.i202 ; 3 uses
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 %i.tx ; 2 uses
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !151 ; 2 uses
  %i.ua = zext i8 %i.tz to i64
  %indvars.iv.next.2.i206 = add nuw nsw i64 %i.sr, 24
  %i.ub = sub nuw nsw i64 40, %i.sr
  %i.uc = shl nuw nsw i64 %i.ua, %i.ub
  %i.ud = or i64 %i.uc, %i.tq                     ; 2 uses
  %.not.2.i207 = icmp eq i8 %i.tz, -1
  br i1 %.not.2.i207, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ty, i64 1
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !151
  %i.ug = icmp eq i8 %i.uf, 0
  br i1 %i.ug, label %bb.cf, label %bb.ca

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sink72.i208 = phi i32 [ 1, %bb.cd ], [ 2, %bb.ce ]
  %i.uh = add nuw nsw i32 %.sink72.i208, %i.tw    ; 3 uses
  %i.ui = zext nneg i32 %i.uh to i64
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ui ; 2 uses
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !151 ; 2 uses
  %i.ul = zext i8 %i.uk to i64
  %indvars.iv.next.3.i209 = or disjoint i32 %.sroa.48.10893, 32
  %i.um = sub nuw nsw i64 32, %i.sr
  %i.un = shl nuw nsw i64 %i.ul, %i.um
  %i.uo = or i64 %i.un, %i.ud                     ; 2 uses
  %.not.3.i210 = icmp eq i8 %i.uk, -1
  br i1 %.not.3.i210, label %bb.cg, label %.loopexit.i211

bb.cg:                                            ; preds = %bb.cf
  %i.up = getelementptr inbounds nuw i8, ptr %i.uj, i64 1
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !151
  %i.ur = icmp eq i8 %i.uq, 0
  br i1 %i.ur, label %.loopexit.i211, label %bb.ca

.loopexit.i211:                                   ; preds = %bb.cg, %bb.cf
  %.sink73.i212 = phi i32 [ 1, %bb.cf ], [ 2, %bb.cg ]
  %i.us = add nuw nsw i32 %.sink73.i212, %i.uh
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i211, %bb.ca
  %.sroa.0290.32 = phi i64 [ %i.uo, %.loopexit.i211 ], [ %i.tj, %bb.ca ]
  %.sroa.48.33 = phi i32 [ %indvars.iv.next.3.i209, %.loopexit.i211 ], [ 64, %bb.ca ]
  %.sroa.169394.18 = phi i32 [ %.sroa.169394.8897, %.loopexit.i211 ], [ %i.tf, %bb.ca ]
  %.3.i213 = phi i32 [ %i.us, %.loopexit.i211 ], [ %i.tk, %bb.ca ] ; 2 uses
  %i.ut = icmp sgt i32 %.3.i213, 4
  tail call void @llvm.assume(i1 %i.ut)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit220

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit220: ; preds = %bb.by, %bb.ch
  %.sroa.0290.33 = phi i64 [ %i.tc, %bb.by ], [ %.sroa.0290.32, %bb.ch ]
  %.sroa.48.34 = phi i32 [ %i.td, %bb.by ], [ %.sroa.48.33, %bb.ch ]
  %.sroa.169394.19 = phi i32 [ %.sroa.169394.8897, %bb.by ], [ %.sroa.169394.18, %bb.ch ]
  %.0.i214 = phi i32 [ 4, %bb.by ], [ %.3.i213, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.uu = add nuw nsw i32 %.0.i214, %.sroa.137366.8894
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128: ; preds = %bb.bs, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit220
  %.sroa.0290.24 = phi i64 [ %.sroa.0290.33, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit220 ], [ %.sroa.0290.9892, %bb.bs ] ; 2 uses
  %.sroa.48.25 = phi i32 [ %.sroa.48.34, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit220 ], [ %.sroa.48.10893, %bb.bs ]
  %.sroa.137366.13 = phi i32 [ %i.uu, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit220 ], [ %.sroa.137366.8894, %bb.bs ] ; 3 uses
  %.sroa.169394.13 = phi i32 [ %.sroa.169394.19, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit220 ], [ %.sroa.169394.8897, %bb.bs ] ; 3 uses
  %i.uv = lshr i64 %.sroa.0290.24, 53             ; 3 uses
  %i.uw = trunc nuw nsw i64 %i.uv to i32          ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %indvars.iv964.sroa.phi.sroa.speculated, i64 128
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !172
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.uv
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !22 ; 4 uses
  %i.vb = lshr i32 %i.va, 9
  %i.vc = and i32 %i.va, 255                      ; 4 uses
  %i.vd = icmp samesign ult i32 %i.vc, 33
  tail call void @llvm.assume(i1 %i.vd)
  %i.ve = sub nuw nsw i32 %.sroa.48.25, %i.vc     ; 3 uses
  %i.vf = zext nneg i32 %i.vc to i64
  %i.vg = shl i64 %.sroa.0290.24, %i.vf           ; 3 uses
  %i.vh = and i32 %i.va, 256
  %.not.i71.i = icmp eq i32 %i.vh, 0
  br i1 %.not.i71.i, label %bb.ci, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.ci:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit128
  %.not17.i73.i = icmp eq i32 %i.va, 0
  br i1 %.not17.i73.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.vi = trunc i32 %i.vb to i8                   ; 2 uses
  %i.vj = icmp ne i8 %i.vi, 0
  tail call void @llvm.assume(i1 %i.vj)
  br label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.vk = icmp eq i32 %i.vc, 0
  tail call void @llvm.assume(i1 %i.vk)
  %i.vl = add nsw i32 %i.ve, -11                  ; 2 uses
  %i.vm = shl i64 %i.vg, 11                       ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %indvars.iv964.sroa.phi.sroa.speculated, i64 32
  %i.vo = getelementptr inbounds nuw i8, ptr %indvars.iv964.sroa.phi.sroa.speculated, i64 40
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !174
  %i.vq = load ptr, ptr %i.vn, align 8, !tbaa !175
  %i.vr = ptrtoint ptr %i.vp to i64
  %i.vs = ptrtoint ptr %i.vq to i64
  %i.vt = sub i64 %i.vr, %i.vs
  %i.vu = ashr exact i64 %i.vt, 2
  %i.vv = add nsw i64 %i.vu, -1                   ; 3 uses
  %.sroa.0.018.i131 = trunc nuw nsw i64 %i.uv to i16 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi3ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  store i16 %i.cv, ptr %.07.i.i, align 2, !tbaa !164
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
  %.not31 = icmp eq i64 %indvars.iv970, 0
  br i1 %.not31, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10426.0920, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.cz = add nuw nsw i32 %.sroa.10426.0920, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.cz, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.da = zext nneg i32 %.sroa.10426.0920 to i64
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
  %i.dk = trunc i64 %indvars.iv970 to i32
  %i.dl = add i32 %i.dk, -1
  %i.dm = srem i32 %i.dl, 8
  %.not32 = icmp eq i32 %i.dj, %i.dm
  br i1 %.not32, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dn = add nuw nsw i32 %.sroa.10426.0920, 2    ; 2 uses
  %i.do = icmp samesign ule i32 %i.dn, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.do)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit
  %.sroa.10426.1 = phi i32 [ %.sroa.10426.0920, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi3EEESt5arrayItXT_EEv.exit ], [ %i.dn, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dp = sub i32 %.sroa.221.0.copyload, %.sroa.10426.1 ; 15 uses
  %i.dq = zext i32 %.sroa.10426.1 to i64          ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dq ; 6 uses
  %i.ds = icmp sgt i32 %i.dp, -1
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp samesign ult i32 %i.dp, 8
  br i1 %i.dt, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not33908, label %.loopexit759.thread, label %.lr.ph915

.lr.ph915:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.du = mul nsw i64 %indvars.iv970, %i.au
  %i.dv = add nuw nsw i32 %i.dp, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph915, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv967 = phi i64 [ 0, %.lr.ph915 ], [ %indvars.iv.next968, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0401.0913 = phi ptr [ %6, %.lr.ph915 ], [ %i.ed, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.169390.0912 = phi i32 [ -1, %.lr.ph915 ], [ %.sroa.169390.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.137362.0911 = phi i32 [ 0, %.lr.ph915 ], [ %.sroa.137362.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.48.0910 = phi i32 [ 0, %.lr.ph915 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0286.0909 = phi i64 [ 0, %.lr.ph915 ], [ %.sroa.0286.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.dw = add nsw i64 %indvars.iv967, %i.du       ; 5 uses
  %i.dx = icmp sgt i64 %i.dw, -1
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp sle i64 %i.dw, %i.at
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = trunc nuw nsw i64 %i.dw to i32
  %.not34 = icmp eq i32 %i.z, %i.dz
  br i1 %.not34, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.ea = icmp eq i64 %indvars.iv970, %i.bs
  tail call void @llvm.assume(i1 %i.ea)
  br label %.loopexit759

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bg)
  tail call void @llvm.assume(i1 %i.bh)
  %i.eb = icmp samesign ult i64 %i.dw, %i.at
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = mul nuw nsw i64 %i.dw, %i.bq
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ec ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.ao, ptr %5, align 16
  store ptr %i.aq, ptr %.sroa.0227.sroa.3.0..sroa_idx, align 16
  tail call void @llvm.assume(i1 %i.bi)
  %i.ee = load i32, ptr %i.bj, align 4, !tbaa !38 ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bk)
  %wide.trip.count = zext nneg i32 %i.ee to i64
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.loopexit
  %indvars.iv957 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next958, %.loopexit ] ; 2 uses
  %.sroa.0508.0873 = phi ptr [ %.sroa.0401.0913, %.lr.ph ], [ %i.ei, %.loopexit ]
  %.sroa.169390.3872 = phi i32 [ %.sroa.169390.0912, %.lr.ph ], [ %.sroa.169390.11, %.loopexit ]
  %.sroa.137362.3871 = phi i32 [ %.sroa.137362.0911, %.lr.ph ], [ %.sroa.137362.11, %.loopexit ]
  %.sroa.48.3870 = phi i32 [ %.sroa.48.0910, %.lr.ph ], [ %.sroa.48.15, %.loopexit ]
  %.sroa.0286.2869 = phi i64 [ %.sroa.0286.0909, %.lr.ph ], [ %.sroa.0286.14, %.loopexit ]
  %i.eg = mul nuw nsw i64 %indvars.iv957, 3       ; 2 uses
  %i.eh = icmp samesign ule i64 %i.eg, %i.bo
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.eg ; 3 uses
  br label %bb.o

.loopexit:                                        ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %indvars.iv.next958 = add nuw nsw i64 %indvars.iv957, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next958, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !211

bb.o:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %.sroa.169390.10863 = phi i32 [ %.sroa.169390.3872, %.preheader ], [ %.sroa.169390.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %.sroa.137362.10860 = phi i32 [ %.sroa.137362.3871, %.preheader ], [ %.sroa.137362.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 8 uses
  %.sroa.48.14859 = phi i32 [ %.sroa.48.3870, %.preheader ], [ %.sroa.48.15, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 7 uses
  %.sroa.0286.13858 = phi i64 [ %.sroa.0286.2869, %.preheader ], [ %.sroa.0286.14, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0508.0873, i64 %indvars.iv
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !164
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !212 ; 8 uses
  %i.en = icmp samesign ult i32 %.sroa.48.14859, 65
  tail call void @llvm.assume(i1 %i.en)
  %.not.i51 = icmp samesign ult i32 %.sroa.48.14859, 32
  br i1 %.not.i51, label %bb.p, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.eo = add nuw nsw i32 %.sroa.137362.10860, 8
  %.not.i.i52 = icmp samesign ugt i32 %i.eo, %i.dp
  br i1 %.not.i.i52, label %bb.r, label %bb.q, !prof !152

bb.q:                                             ; preds = %bb.p
  %i.ep = zext nneg i32 %.sroa.137362.10860 to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ep
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.er = icmp samesign ugt i32 %.sroa.137362.10860, %i.dv
  br i1 %i.er, label %bb.s, label %bb.t, !prof !152

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.t:                                             ; preds = %bb.r
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %.sroa.137362.10860) ; 3 uses
  %i.es = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %i.es)
  %i.et = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.eu = icmp samesign ult i32 %i.et, 9
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ev
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
  %i.fp = or i64 %i.fo, %.sroa.0286.13858         ; 2 uses
  %.not.i166 = icmp eq i8 %i.ey, -1
  br i1 %.not.i166, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fq = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.fr = tail call i32 @llvm.bswap.i32(i32 %i.fq)
  %i.fs = zext i32 %i.fr to i64
  %i.ft = sub nuw nsw i32 32, %.sroa.48.14859
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = shl nuw i64 %i.fs, %i.fu
  %i.fw = or i64 %i.fv, %.sroa.0286.13858
  %i.fx = or disjoint i32 %.sroa.48.14859, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.v:                                             ; preds = %.preheader.i
  %i.fy = icmp eq i8 %i.fb, 0
  br i1 %i.fy, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v
  %.01962.lcssa.i = phi i32 [ 0, %bb.v ], [ %.2.ph.i, %bb.y ], [ %i.gq, %bb.aa ], [ %i.hb, %bb.ac ]
  %.02161.lcssa.i.neg923 = phi i32 [ 0, %bb.v ], [ -1, %bb.y ], [ -2, %bb.aa ], [ -3, %bb.ac ]
  %.lcssa66.wide.i = phi i64 [ %i.fl, %bb.v ], [ %indvars.iv.next.i, %bb.y ], [ %indvars.iv.next.1.i, %bb.aa ], [ %indvars.iv.next.2.i, %bb.ac ]
  %.lcssa.i = phi i64 [ %i.fp, %bb.v ], [ %i.gk, %bb.y ], [ %i.gx, %bb.aa ], [ %i.hi, %bb.ac ]
  %i.fz = add nuw nsw i32 %.01962.lcssa.i, %.sroa.137362.10860
  %i.ga = icmp slt i32 %.sroa.169390.10863, 0
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = lshr i64 -1, %.lcssa66.wide.i
  %i.gc = xor i64 %i.gb, -1
  %i.gd = and i64 %.lcssa.i, %i.gc
  %.neg755 = sub nsw i32 %i.dp, %.sroa.137362.10860
  %reass.sub.i = add nsw i32 %.neg755, %.02161.lcssa.i.neg923 ; 2 uses
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
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !151
  %i.gp = icmp eq i8 %i.go, 0
  br i1 %i.gp, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink.i = phi i32 [ 1, %bb.x ], [ 2, %bb.y ]
  %i.gq = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 %i.gr ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !151 ; 2 uses
  %i.gu = zext i8 %i.gt to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.fl, 24
  %i.gv = sub nuw nsw i64 40, %i.fl
  %i.gw = shl nuw nsw i64 %i.gu, %i.gv
  %i.gx = or i64 %i.gw, %i.gk                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.gt, -1
  br i1 %.not.2.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !151
  %i.ha = icmp eq i8 %i.gz, 0
  br i1 %i.ha, label %bb.ab, label %bb.w

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink72.i = phi i32 [ 1, %bb.z ], [ 2, %bb.aa ]
  %i.hb = add nuw nsw i32 %.sink72.i, %i.gq       ; 3 uses
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 %i.hc ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !151 ; 2 uses
  %i.hf = zext i8 %i.he to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.48.14859, 32
  %i.hg = sub nuw nsw i64 32, %i.fl
  %i.hh = shl nuw nsw i64 %i.hf, %i.hg
  %i.hi = or i64 %i.hh, %i.gx                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.he, -1
  br i1 %.not.3.i, label %bb.ac, label %.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !151
  %i.hl = icmp eq i8 %i.hk, 0
  br i1 %i.hl, label %.loopexit.i, label %bb.w

.loopexit.i:                                      ; preds = %bb.ac, %bb.ab
  %.sink73.i = phi i32 [ 1, %bb.ab ], [ 2, %bb.ac ]
  %i.hm = add nuw nsw i32 %.sink73.i, %i.hb
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i, %bb.w
  %.sroa.0286.28 = phi i64 [ %i.hi, %.loopexit.i ], [ %i.gd, %bb.w ]
  %.sroa.48.29 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.w ]
  %.sroa.169390.14 = phi i32 [ %.sroa.169390.10863, %.loopexit.i ], [ %i.fz, %bb.w ]
  %.3.i = phi i32 [ %i.hm, %.loopexit.i ], [ %i.ge, %bb.w ] ; 2 uses
  %i.hn = icmp sgt i32 %.3.i, 4
  tail call void @llvm.assume(i1 %i.hn)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.u, %bb.ad
  %.sroa.0286.29 = phi i64 [ %i.fw, %bb.u ], [ %.sroa.0286.28, %bb.ad ]
  %.sroa.48.30 = phi i32 [ %i.fx, %bb.u ], [ %.sroa.48.29, %bb.ad ]
  %.sroa.169390.15 = phi i32 [ %.sroa.169390.10863, %bb.u ], [ %.sroa.169390.14, %bb.ad ]
  %.0.i167 = phi i32 [ 4, %bb.u ], [ %.3.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ho = add nuw nsw i32 %.0.i167, %.sroa.137362.10860
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.o, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.0286.16 = phi i64 [ %.sroa.0286.29, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0286.13858, %bb.o ] ; 2 uses
  %.sroa.48.17 = phi i32 [ %.sroa.48.30, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.48.14859, %bb.o ]
  %.sroa.137362.11 = phi i32 [ %i.ho, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.137362.10860, %bb.o ] ; 3 uses
  %.sroa.169390.11 = phi i32 [ %.sroa.169390.15, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.169390.10863, %bb.o ] ; 3 uses
  %i.hp = lshr i64 %.sroa.0286.16, 53             ; 3 uses
  %i.hq = trunc nuw nsw i64 %i.hp to i32          ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.em, i64 128
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !172
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hp
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !22 ; 4 uses
  %i.hv = ashr i32 %i.hu, 9                       ; 2 uses
  %i.hw = and i32 %i.hu, 255                      ; 4 uses
  %i.hx = icmp samesign ult i32 %i.hw, 33
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = sub nuw nsw i32 %.sroa.48.17, %i.hw     ; 3 uses
  %i.hz = zext nneg i32 %i.hw to i64
  %i.ia = shl i64 %.sroa.0286.16, %i.hz           ; 3 uses
  %i.ib = and i32 %i.hu, 256
  %.not.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i, label %bb.ae, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.ae:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not17.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ic = trunc i32 %i.hv to i8                   ; 2 uses
  %i.id = icmp ne i8 %i.ic, 0
  tail call void @llvm.assume(i1 %i.id)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.ie = icmp eq i32 %i.hw, 0
  tail call void @llvm.assume(i1 %i.ie)
  %i.if = add nsw i32 %i.hy, -11                  ; 2 uses
  %i.ig = shl i64 %i.ia, 11                       ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !174
  %i.ik = load ptr, ptr %i.ih, align 8, !tbaa !175
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = ashr exact i64 %i.in, 2
  %i.ip = add nsw i64 %i.io, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.hp to i16 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi3ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %.sroa.48.19 = phi i32 [ %i.if, %.lr.ph.i ], [ %i.jc, %.critedge2.i ] ; 4 uses
  %i.it = phi i64 [ 11, %.lr.ph.i ], [ %i.ji, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i ], [ %i.jh, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.hq, %.lr.ph.i ], [ %i.jg, %.critedge2.i ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !164 ; 2 uses
  %i.iw = icmp eq i16 %i.iv, -1
  %i.ix = icmp ult i16 %i.iv, %.sroa.0.021.i
  %or.cond.i = select i1 %i.iw, i1 true, i1 %i.ix
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ah
  %i.iy = icmp samesign ult i32 %.sroa.48.19, 65
  tail call void @llvm.assume(i1 %i.iy)
  %i.iz = icmp ne i32 %.sroa.48.19, 0
  tail call void @llvm.assume(i1 %i.iz)
  %i.ja = lshr i64 %.sroa.0286.18, 63
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = add nsw i32 %.sroa.48.19, -1            ; 2 uses
  %i.jd = shl i64 %.sroa.0286.18, 1               ; 2 uses
  %i.je = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.jf = and i32 %i.je, 131070
  %i.jg = or disjoint i32 %i.jf, %i.jb            ; 3 uses
  %i.jh = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.jg to i16           ; 2 uses
  %i.ji = zext i8 %i.jh to i64                    ; 3 uses
  %i.jj = icmp ugt i64 %i.ip, %i.ji
  br i1 %i.jj, label %bb.ah, label %.critedge.i.loopexit, !llvm.loop !179

.critedge.i.loopexit:                             ; preds = %bb.ah, %.critedge2.i
  %.sroa.0286.17.ph = phi i64 [ %i.jd, %.critedge2.i ], [ %.sroa.0286.18, %bb.ah ]
  %.sroa.48.18.ph = phi i32 [ %i.jc, %.critedge2.i ], [ %.sroa.48.19, %bb.ah ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.jg, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ah ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.jh, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ah ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ah ]
  %.lcssa17.i.ph = phi i64 [ %i.ji, %.critedge2.i ], [ %i.it, %bb.ah ]
  %i.jk = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.ag
  %.sroa.0286.17 = phi i64 [ %i.ig, %bb.ag ], [ %.sroa.0286.17.ph, %.critedge.i.loopexit ]
  %.sroa.48.18 = phi i32 [ %i.if, %bb.ag ], [ %.sroa.48.18.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.hq, %bb.ag ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.ag ], [ %i.jk, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.ag ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.ag ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.jl = icmp ult i64 %i.ip, %.lcssa17.i
  br i1 %i.jl, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.em, i64 80
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !176
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %.lcssa17.i
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !164
  %i.jq = icmp ult i16 %i.jp, %.sroa.0.0.lcssa.i
  br i1 %i.jq, label %bb.aj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.aj:                                            ; preds = %bb.ai, %.critedge.i
  %i.jr = and i32 %.sroa.0.0.in.lcssa.i, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.jr, i32 noundef %.sroa.8.0.lcssa.i) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.ai
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.js = getelementptr inbounds nuw i8, ptr %i.em, i64 104
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !176
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %.lcssa17.i
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !164
  %i.jw = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.tr.i = zext i16 %i.jv to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.jx = zext i32 %.narrow.i to i64
  %i.jy = load ptr, ptr %i.jw, align 8, !tbaa !180
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jx
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !151
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.af
  %.0734 = phi i8 [ %i.ka, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.ic, %bb.af ] ; 5 uses
  %.sroa.0286.15 = phi i64 [ %.sroa.0286.17, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.ia, %bb.af ] ; 6 uses
  %.sroa.48.16 = phi i32 [ %.sroa.48.18, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hy, %bb.af ] ; 8 uses
  %i.kb = icmp ult i8 %.0734, 17
  tail call void @llvm.assume(i1 %i.kb)
  switch i8 %.0734, label %bb.an [
    i8 16, label %bb.al
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  ]

bb.al:                                            ; preds = %bb.ak
  %i.kc = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !181, !range !136, !noundef !121
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.am, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.kf = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.kf)
  %i.kg = icmp samesign ugt i32 %.sroa.48.16, 15
  tail call void @llvm.assume(i1 %i.kg)
  %i.kh = add nsw i32 %.sroa.48.16, -16
  %i.ki = shl i64 %.sroa.0286.15, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.an:                                            ; preds = %bb.ak
  %i.kj = zext nneg i8 %.0734 to i32              ; 4 uses
  %i.kk = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.kk)
  %i.kl = icmp ne i8 %.0734, 0
  tail call void @llvm.assume(i1 %i.kl)
  %i.km = icmp samesign uge i32 %.sroa.48.16, %i.kj
  tail call void @llvm.assume(i1 %i.km)
  %i.kn = sub nuw nsw i32 64, %i.kj
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = lshr i64 %.sroa.0286.15, %i.ko
  %i.kq = trunc nuw nsw i64 %i.kp to i32
  %i.kr = sub nsw i32 %.sroa.48.16, %i.kj
  %i.ks = zext nneg i8 %.0734 to i64
  %i.kt = shl i64 %.sroa.0286.15, %i.ks
  %i.ku = icmp sgt i64 %.sroa.0286.15, -1
  %notmask.i.i = shl nsw i32 -1, %i.kj
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.kv = select i1 %i.ku, i32 %.neg.i.i, i32 0
  %.0.i.i56 = add nsw i32 %i.kv, %i.kq
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.0286.14 = phi i64 [ %i.ia, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kt, %bb.an ], [ %i.ki, %bb.am ], [ %.sroa.0286.15, %bb.al ], [ %.sroa.0286.15, %bb.ak ] ; 3 uses
  %.sroa.48.15 = phi i32 [ %i.hy, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.kr, %bb.an ], [ %i.kh, %bb.am ], [ %.sroa.48.16, %bb.al ], [ %.sroa.48.16, %bb.ak ] ; 3 uses
  %.0.i.i = phi i32 [ %i.hv, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i56, %bb.an ], [ -32768, %bb.am ], [ -32768, %bb.al ], [ 0, %bb.ak ]
  %i.kw = trunc i32 %.0.i.i to i16
  %i.kx = add i16 %i.ek, %i.kw
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %indvars.iv
  store i16 %i.kx, ptr %i.ky, align 2, !tbaa !164
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not55.i = icmp eq i64 %indvars.iv.next, 3
  br i1 %.not55.i, label %.loopexit, label %bb.o, !llvm.loop !214

._crit_edge:                                      ; preds = %.loopexit, %bb.n
  %.sroa.0286.2.lcssa = phi i64 [ %.sroa.0286.0909, %bb.n ], [ %.sroa.0286.14, %.loopexit ] ; 2 uses
  %.sroa.48.3.lcssa = phi i32 [ %.sroa.48.0910, %bb.n ], [ %.sroa.48.15, %.loopexit ] ; 2 uses
  %.sroa.137362.3.lcssa = phi i32 [ %.sroa.137362.0911, %bb.n ], [ %.sroa.137362.11, %.loopexit ] ; 2 uses
  %.sroa.169390.3.lcssa = phi i32 [ %.sroa.169390.0912, %bb.n ], [ %.sroa.169390.11, %.loopexit ] ; 2 uses
  %.sroa.0508.0.lcssa = phi ptr [ %.sroa.0401.0913, %bb.n ], [ %i.ei, %.loopexit ]
  %.044.i.lcssa = phi i32 [ 0, %bb.n ], [ %i.ee, %.loopexit ] ; 3 uses
  %i.kz = load i32, ptr %i.bl, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq i32 %i.kz, 0
  br i1 %.not.i, label %bb.bq, label %.preheader757

.preheader757:                                    ; preds = %._crit_edge
  %i.la = icmp samesign ult i32 %i.kz, 3
  tail call void @llvm.assume(i1 %i.la)
  %i.lb = mul nuw nsw i32 %.044.i.lcssa, 3
  %i.lc = zext nneg i32 %i.lb to i64
  br label %bb.ao

.loopexit758:                                     ; preds = %bb.bp
  %i.ld = add nuw nsw i32 %.044.i.lcssa, 1
  br label %bb.bq

bb.ao:                                            ; preds = %.preheader757, %bb.bp
  %indvars.iv960 = phi i64 [ 0, %.preheader757 ], [ %indvars.iv.next961, %bb.bp ] ; 4 uses
  %.sroa.169390.5885 = phi i32 [ %.sroa.169390.3.lcssa, %.preheader757 ], [ %.sroa.169390.12, %bb.bp ] ; 4 uses
  %.sroa.137362.5882 = phi i32 [ %.sroa.137362.3.lcssa, %.preheader757 ], [ %.sroa.137362.12, %bb.bp ] ; 8 uses
  %.sroa.48.5881 = phi i32 [ %.sroa.48.3.lcssa, %.preheader757 ], [ %.sroa.48.6, %bb.bp ] ; 7 uses
  %.sroa.0286.4880 = phi i64 [ %.sroa.0286.2.lcssa, %.preheader757 ], [ %.sroa.0286.5, %bb.bp ] ; 3 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0508.0.lcssa, i64 %indvars.iv960
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !164
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv960
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !212 ; 8 uses
  %i.li = icmp samesign ult i32 %.sroa.48.5881, 65
  tail call void @llvm.assume(i1 %i.li)
  %.not.i64 = icmp samesign ult i32 %.sroa.48.5881, 32
  br i1 %.not.i64, label %bb.ap, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i63)
  %i.lj = add nuw nsw i32 %.sroa.137362.5882, 8
  %.not.i.i65 = icmp samesign ugt i32 %i.lj, %i.dp
  br i1 %.not.i.i65, label %bb.ar, label %bb.aq, !prof !152

bb.aq:                                            ; preds = %bb.ap
  %i.lk = zext nneg i32 %.sroa.137362.5882 to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.lk
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

bb.ar:                                            ; preds = %bb.ap
  %i.lm = icmp samesign ugt i32 %.sroa.137362.5882, %i.dv
  br i1 %i.lm, label %bb.as, label %bb.at, !prof !152

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 0, ptr %.sroa.0.i.i63, align 8
  %.sroa.speculated27.i.i.i71 = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %.sroa.137362.5882) ; 3 uses
  %i.ln = add nuw nsw i32 %.sroa.speculated27.i.i.i71, 8
  %.sroa.speculated.i.i.i72 = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %i.ln)
  %i.lo = sub nsw i32 %.sroa.speculated.i.i.i72, %.sroa.speculated27.i.i.i71 ; 2 uses
  %i.lp = icmp samesign ult i32 %i.lo, 9
  tail call void @llvm.assume(i1 %i.lp)
  %i.lq = zext nneg i32 %.sroa.speculated27.i.i.i71 to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.lq
  %i.ls = zext nneg i32 %i.lo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i63, ptr align 1 %i.lr, i64 %i.ls, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67: ; preds = %bb.at, %bb.aq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68 = phi ptr [ %.sroa.0.i.i63, %bb.at ], [ %i.ll, %bb.aq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i63)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, ptr %2, align 8
  %i.lt = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i8 ; 2 uses
  %i.lu = icmp ne i8 %i.lt, -1
  %i.lv = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 8
  %i.lw = trunc i64 %i.lv to i8                   ; 3 uses
  %i.lx = icmp ne i8 %i.lw, -1
  %i.ly = and i1 %i.lu, %i.lx
  %i.lz = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 16
  %i.ma = trunc i64 %i.lz to i8                   ; 2 uses
  %i.mb = icmp ne i8 %i.ma, -1
  %i.mc = and i1 %i.mb, %i.ly
  %i.md = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 4278190080
  %i.me = icmp ne i64 %i.md, 4278190080
  %i.mf = and i1 %i.me, %i.mc
  br i1 %i.mf, label %bb.au, label %.preheader.i170

.preheader.i170:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.mg = zext nneg i32 %.sroa.48.5881 to i64     ; 8 uses
  %i.mh = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 255
  %indvars.iv.next.i171 = add nuw nsw i64 %i.mg, 8
  %i.mi = sub nuw nsw i64 56, %i.mg
  %i.mj = shl nuw i64 %i.mh, %i.mi
  %i.mk = or i64 %i.mj, %.sroa.0286.4880          ; 2 uses
  %.not.i172 = icmp eq i8 %i.lt, -1
  br i1 %.not.i172, label %bb.av, label %bb.ax

bb.au:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.ml = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i32
  %i.mm = tail call i32 @llvm.bswap.i32(i32 %i.ml)
  %i.mn = zext i32 %i.mm to i64
  %i.mo = sub nuw nsw i32 32, %.sroa.48.5881
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = shl nuw i64 %i.mn, %i.mp
  %i.mr = or i64 %i.mq, %.sroa.0286.4880
  %i.ms = or disjoint i32 %.sroa.48.5881, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191

bb.av:                                            ; preds = %.preheader.i170
  %i.mt = icmp eq i8 %i.lw, 0
  br i1 %i.mt, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.bc, %bb.ba, %bb.ay, %bb.av
  %.01962.lcssa.i186 = phi i32 [ 0, %bb.av ], [ %.2.ph.i173, %bb.ay ], [ %i.nl, %bb.ba ], [ %i.nw, %bb.bc ]
  %.02161.lcssa.i187.neg924 = phi i32 [ 0, %bb.av ], [ -1, %bb.ay ], [ -2, %bb.ba ], [ -3, %bb.bc ]
  %.lcssa66.wide.i188 = phi i64 [ %i.mg, %bb.av ], [ %indvars.iv.next.i171, %bb.ay ], [ %indvars.iv.next.1.i174, %bb.ba ], [ %indvars.iv.next.2.i177, %bb.bc ]
  %.lcssa.i189 = phi i64 [ %i.mk, %bb.av ], [ %i.nf, %bb.ay ], [ %i.ns, %bb.ba ], [ %i.od, %bb.bc ]
  %i.mu = add nuw nsw i32 %.01962.lcssa.i186, %.sroa.137362.5882
  %i.mv = icmp slt i32 %.sroa.169390.5885, 0
  tail call void @llvm.assume(i1 %i.mv)
  %i.mw = lshr i64 -1, %.lcssa66.wide.i188
  %i.mx = xor i64 %i.mw, -1
  %i.my = and i64 %.lcssa.i189, %i.mx
  %.neg = sub nsw i32 %i.dp, %.sroa.137362.5882
  %reass.sub.i190 = add nsw i32 %.neg, %.02161.lcssa.i187.neg924 ; 2 uses
  %i.mz = add nuw nsw i32 %reass.sub.i190, 4
  %i.na = icmp ugt i32 %reass.sub.i190, 1
  tail call void @llvm.assume(i1 %i.na)
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av, %.preheader.i170
  %i.nb = phi i8 [ %i.lw, %.preheader.i170 ], [ %i.ma, %bb.av ] ; 2 uses
  %.2.ph.i173 = phi i32 [ 1, %.preheader.i170 ], [ 2, %bb.av ] ; 3 uses
  %i.nc = zext i8 %i.nb to i64
  %indvars.iv.next.1.i174 = add nuw nsw i64 %i.mg, 16
  %i.nd = sub nuw nsw i64 48, %i.mg
  %i.ne = shl nuw nsw i64 %i.nc, %i.nd
  %i.nf = or i64 %i.ne, %i.mk                     ; 2 uses
  %.not.1.i175 = icmp eq i8 %i.nb, -1
  br i1 %.not.1.i175, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ng = zext nneg i32 %.2.ph.i173 to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %2, i64 %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !151
  %i.nk = icmp eq i8 %i.nj, 0
  br i1 %i.nk, label %bb.az, label %bb.aw

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink.i176 = phi i32 [ 1, %bb.ax ], [ 2, %bb.ay ]
  %i.nl = add nuw nsw i32 %.sink.i176, %.2.ph.i173 ; 3 uses
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 %i.nm ; 2 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !151 ; 2 uses
  %i.np = zext i8 %i.no to i64
  %indvars.iv.next.2.i177 = add nuw nsw i64 %i.mg, 24
  %i.nq = sub nuw nsw i64 40, %i.mg
  %i.nr = shl nuw nsw i64 %i.np, %i.nq
  %i.ns = or i64 %i.nr, %i.nf                     ; 2 uses
  %.not.2.i178 = icmp eq i8 %i.no, -1
  br i1 %.not.2.i178, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !151
  %i.nv = icmp eq i8 %i.nu, 0
  br i1 %i.nv, label %bb.bb, label %bb.aw

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink72.i179 = phi i32 [ 1, %bb.az ], [ 2, %bb.ba ]
  %i.nw = add nuw nsw i32 %.sink72.i179, %i.nl    ; 3 uses
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 %i.nx ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !151 ; 2 uses
  %i.oa = zext i8 %i.nz to i64
  %indvars.iv.next.3.i180 = or disjoint i32 %.sroa.48.5881, 32
  %i.ob = sub nuw nsw i64 32, %i.mg
  %i.oc = shl nuw nsw i64 %i.oa, %i.ob
  %i.od = or i64 %i.oc, %i.ns                     ; 2 uses
  %.not.3.i181 = icmp eq i8 %i.nz, -1
  br i1 %.not.3.i181, label %bb.bc, label %.loopexit.i182

bb.bc:                                            ; preds = %bb.bb
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !151
  %i.og = icmp eq i8 %i.of, 0
  br i1 %i.og, label %.loopexit.i182, label %bb.aw

.loopexit.i182:                                   ; preds = %bb.bc, %bb.bb
  %.sink73.i183 = phi i32 [ 1, %bb.bb ], [ 2, %bb.bc ]
  %i.oh = add nuw nsw i32 %.sink73.i183, %i.nw
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i182, %bb.aw
  %.sroa.0286.30 = phi i64 [ %i.od, %.loopexit.i182 ], [ %i.my, %bb.aw ]
  %.sroa.48.31 = phi i32 [ %indvars.iv.next.3.i180, %.loopexit.i182 ], [ 64, %bb.aw ]
  %.sroa.169390.16 = phi i32 [ %.sroa.169390.5885, %.loopexit.i182 ], [ %i.mu, %bb.aw ]
  %.3.i184 = phi i32 [ %i.oh, %.loopexit.i182 ], [ %i.mz, %bb.aw ] ; 2 uses
  %i.oi = icmp sgt i32 %.3.i184, 4
  tail call void @llvm.assume(i1 %i.oi)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191: ; preds = %bb.au, %bb.bd
  %.sroa.0286.31 = phi i64 [ %i.mr, %bb.au ], [ %.sroa.0286.30, %bb.bd ]
  %.sroa.48.32 = phi i32 [ %i.ms, %bb.au ], [ %.sroa.48.31, %bb.bd ]
  %.sroa.169390.17 = phi i32 [ %.sroa.169390.5885, %bb.au ], [ %.sroa.169390.16, %bb.bd ]
  %.0.i185 = phi i32 [ 4, %bb.au ], [ %.3.i184, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.oj = add nuw nsw i32 %.0.i185, %.sroa.137362.5882
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73: ; preds = %bb.ao, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191
  %.sroa.0286.20 = phi i64 [ %.sroa.0286.31, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.0286.4880, %bb.ao ] ; 2 uses
  %.sroa.48.21 = phi i32 [ %.sroa.48.32, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.48.5881, %bb.ao ]
  %.sroa.137362.12 = phi i32 [ %i.oj, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.137362.5882, %bb.ao ] ; 2 uses
  %.sroa.169390.12 = phi i32 [ %.sroa.169390.17, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.169390.5885, %bb.ao ] ; 2 uses
  %i.ok = lshr i64 %.sroa.0286.20, 53             ; 3 uses
  %i.ol = trunc nuw nsw i64 %i.ok to i32          ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.lh, i64 128
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !172
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.ok
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !22 ; 4 uses
  %i.oq = ashr i32 %i.op, 9                       ; 2 uses
  %i.or = and i32 %i.op, 255                      ; 4 uses
  %i.os = icmp samesign ult i32 %i.or, 33
  tail call void @llvm.assume(i1 %i.os)
  %i.ot = sub nuw nsw i32 %.sroa.48.21, %i.or     ; 3 uses
  %i.ou = zext nneg i32 %i.or to i64
  %i.ov = shl i64 %.sroa.0286.20, %i.ou           ; 3 uses
  %i.ow = and i32 %i.op, 256
  %.not.i65.i = icmp eq i32 %i.ow, 0
  br i1 %.not.i65.i, label %bb.be, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.be:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.not17.i67.i = icmp eq i32 %i.op, 0
  br i1 %.not17.i67.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ox = trunc i32 %i.oq to i8                   ; 2 uses
  %i.oy = icmp ne i8 %i.ox, 0
  tail call void @llvm.assume(i1 %i.oy)
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.oz = icmp eq i32 %i.or, 0
  tail call void @llvm.assume(i1 %i.oz)
  %i.pa = add nsw i32 %i.ot, -11                  ; 2 uses
  %i.pb = shl i64 %i.ov, 11                       ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.pd = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !174
  %i.pf = load ptr, ptr %i.pc, align 8, !tbaa !175
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = sub i64 %i.pg, %i.ph
  %i.pj = ashr exact i64 %i.pi, 2
  %i.pk = add nsw i64 %i.pj, -1                   ; 3 uses
  %.sroa.0.018.i76 = trunc nuw nsw i64 %i.ok to i16 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi3ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.pr = icmp eq i16 %i.pq, -1
  %i.ps = icmp ult i16 %i.pq, %.sroa.0.021.i98
  %or.cond.i101 = select i1 %i.pr, i1 true, i1 %i.ps
  br i1 %or.cond.i101, label %.critedge2.i102, label %.critedge.i78.loopexit

.critedge2.i102:                                  ; preds = %bb.bh
  %i.pt = icmp samesign ult i32 %.sroa.48.23, 65
  tail call void @llvm.assume(i1 %i.pt)
  %i.pu = icmp ne i32 %.sroa.48.23, 0
  tail call void @llvm.assume(i1 %i.pu)
  %i.pv = lshr i64 %.sroa.0286.22, 63
  %i.pw = trunc nuw nsw i64 %i.pv to i32
  %i.px = add nsw i32 %.sroa.48.23, -1            ; 2 uses
  %i.py = shl i64 %.sroa.0286.22, 1               ; 2 uses
  %i.pz = shl nsw i32 %.sroa.0.0.in19.i100, 1
  %i.qa = and i32 %i.pz, 131070
  %i.qb = or disjoint i32 %i.qa, %i.pw            ; 3 uses
  %i.qc = add i8 %.sroa.8.020.i99, 1              ; 3 uses
  %.sroa.0.0.i103 = trunc i32 %i.qb to i16        ; 2 uses
  %i.qd = zext i8 %i.qc to i64                    ; 3 uses
  %i.qe = icmp ugt i64 %i.pk, %i.qd
  br i1 %i.qe, label %bb.bh, label %.critedge.i78.loopexit, !llvm.loop !179

.critedge.i78.loopexit:                           ; preds = %bb.bh, %.critedge2.i102
  %.sroa.0286.21.ph = phi i64 [ %i.py, %.critedge2.i102 ], [ %.sroa.0286.22, %bb.bh ]
  %.sroa.48.22.ph = phi i32 [ %i.px, %.critedge2.i102 ], [ %.sroa.48.23, %bb.bh ]
  %.sroa.0.0.in.lcssa.i79.ph = phi i32 [ %i.qb, %.critedge2.i102 ], [ %.sroa.0.0.in19.i100, %bb.bh ]
  %.sroa.8.0.lcssa.i80.ph = phi i8 [ %i.qc, %.critedge2.i102 ], [ %.sroa.8.020.i99, %bb.bh ]
  %.sroa.0.0.lcssa.i81.ph = phi i16 [ %.sroa.0.0.i103, %.critedge2.i102 ], [ %.sroa.0.021.i98, %bb.bh ]
  %.lcssa17.i82.ph = phi i64 [ %i.qd, %.critedge2.i102 ], [ %i.po, %bb.bh ]
  %i.qf = zext i8 %.sroa.8.0.lcssa.i80.ph to i32
  br label %.critedge.i78

.critedge.i78:                                    ; preds = %.critedge.i78.loopexit, %bb.bg
  %.sroa.0286.21 = phi i64 [ %i.pb, %bb.bg ], [ %.sroa.0286.21.ph, %.critedge.i78.loopexit ]
  %.sroa.48.22 = phi i32 [ %i.pa, %bb.bg ], [ %.sroa.48.22.ph, %.critedge.i78.loopexit ]
  %.sroa.0.0.in.lcssa.i79 = phi i32 [ %i.ol, %bb.bg ], [ %.sroa.0.0.in.lcssa.i79.ph, %.critedge.i78.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i80 = phi i32 [ 11, %bb.bg ], [ %i.qf, %.critedge.i78.loopexit ]
  %.sroa.0.0.lcssa.i81 = phi i16 [ %.sroa.0.018.i76, %bb.bg ], [ %.sroa.0.0.lcssa.i81.ph, %.critedge.i78.loopexit ]
  %.lcssa17.i82 = phi i64 [ 11, %bb.bg ], [ %.lcssa17.i82.ph, %.critedge.i78.loopexit ] ; 3 uses
  %i.qg = icmp ult i64 %i.pk, %.lcssa17.i82
  br i1 %i.qg, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i78
  %i.qh = getelementptr inbounds nuw i8, ptr %i.lh, i64 80
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !176
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %.lcssa17.i82
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !164
  %i.ql = icmp ult i16 %i.qk, %.sroa.0.0.lcssa.i81
  br i1 %i.ql, label %bb.bj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104

bb.bj:                                            ; preds = %bb.bi, %.critedge.i78
  %i.qm = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.qm, i32 noundef %.sroa.8.0.lcssa.i80) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104: ; preds = %bb.bi
  %.sroa.0.0.mask.i84 = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  %i.qn = getelementptr inbounds nuw i8, ptr %i.lh, i64 104
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !176
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %.lcssa17.i82
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !164
  %i.qr = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %.tr.i85 = zext i16 %i.qq to i32
  %.narrow.i86 = sub nsw i32 %.sroa.0.0.mask.i84, %.tr.i85
  %i.qs = zext i32 %.narrow.i86 to i64
  %i.qt = load ptr, ptr %i.qr, align 8, !tbaa !180
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qs
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !151
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104, %bb.bf
  %.0736 = phi i8 [ %i.qv, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.ox, %bb.bf ] ; 5 uses
  %.sroa.0286.6 = phi i64 [ %.sroa.0286.21, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.ov, %bb.bf ] ; 6 uses
  %.sroa.48.7 = phi i32 [ %.sroa.48.22, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.ot, %bb.bf ] ; 8 uses
  %i.qw = icmp ult i8 %.0736, 17
  tail call void @llvm.assume(i1 %i.qw)
  switch i8 %.0736, label %bb.bn [
    i8 16, label %bb.bl
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.qx = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !181, !range !136, !noundef !121
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.bm, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bm:                                            ; preds = %bb.bl
  %i.ra = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.ra)
  %i.rb = icmp samesign ugt i32 %.sroa.48.7, 15
  tail call void @llvm.assume(i1 %i.rb)
  %i.rc = add nsw i32 %.sroa.48.7, -16
  %i.rd = shl i64 %.sroa.0286.6, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bn:                                            ; preds = %bb.bk
  %i.re = zext nneg i8 %.0736 to i32              ; 4 uses
  %i.rf = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.rf)
  %i.rg = icmp ne i8 %.0736, 0
  tail call void @llvm.assume(i1 %i.rg)
  %i.rh = icmp samesign uge i32 %.sroa.48.7, %i.re
  tail call void @llvm.assume(i1 %i.rh)
  %i.ri = sub nuw nsw i32 64, %i.re
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = lshr i64 %.sroa.0286.6, %i.rj
  %i.rl = trunc nuw nsw i64 %i.rk to i32
  %i.rm = sub nsw i32 %.sroa.48.7, %i.re
  %i.rn = zext nneg i8 %.0736 to i64
  %i.ro = shl i64 %.sroa.0286.6, %i.rn
  %i.rp = icmp sgt i64 %.sroa.0286.6, -1
  %notmask.i.i106 = shl nsw i32 -1, %i.re
  %.neg.i.i107 = or disjoint i32 %notmask.i.i106, 1
  %i.rq = select i1 %i.rp, i32 %.neg.i.i107, i32 0
  %.0.i.i108 = add nsw i32 %i.rq, %i.rl
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.sroa.0286.5 = phi i64 [ %i.ov, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.ro, %bb.bn ], [ %i.rd, %bb.bm ], [ %.sroa.0286.6, %bb.bl ], [ %.sroa.0286.6, %bb.bk ] ; 2 uses
  %.sroa.48.6 = phi i32 [ %i.ot, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.rm, %bb.bn ], [ %i.rc, %bb.bm ], [ %.sroa.48.7, %bb.bl ], [ %.sroa.48.7, %bb.bk ] ; 2 uses
  %.0.i66.i = phi i32 [ %i.oq, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %.0.i.i108, %bb.bn ], [ -32768, %bb.bm ], [ -32768, %bb.bl ], [ 0, %bb.bk ]
  %i.rr = add nuw nsw i64 %indvars.iv960, %i.lc   ; 2 uses
  %i.rs = icmp samesign ult i64 %i.rr, %i.bp
  br i1 %i.rs, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %i.rt = trunc i32 %.0.i66.i to i16
  %i.ru = add i16 %i.lf, %i.rt
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.rr
  store i16 %i.ru, ptr %i.rv, align 2, !tbaa !164
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %indvars.iv.next961 = add nuw nsw i64 %indvars.iv960, 1 ; 2 uses
  %.not53.i = icmp eq i64 %indvars.iv.next961, 3
  br i1 %.not53.i, label %.loopexit758, label %bb.ao, !llvm.loop !215

bb.bq:                                            ; preds = %.loopexit758, %._crit_edge
  %.sroa.0286.7 = phi i64 [ %.sroa.0286.2.lcssa, %._crit_edge ], [ %.sroa.0286.5, %.loopexit758 ] ; 2 uses
  %.sroa.48.8 = phi i32 [ %.sroa.48.3.lcssa, %._crit_edge ], [ %.sroa.48.6, %.loopexit758 ] ; 2 uses
  %.sroa.137362.6 = phi i32 [ %.sroa.137362.3.lcssa, %._crit_edge ], [ %.sroa.137362.12, %.loopexit758 ] ; 2 uses
  %.sroa.169390.6 = phi i32 [ %.sroa.169390.3.lcssa, %._crit_edge ], [ %.sroa.169390.12, %.loopexit758 ] ; 2 uses
  %.1.i = phi i32 [ %.044.i.lcssa, %._crit_edge ], [ %i.ld, %.loopexit758 ] ; 2 uses
  %i.rw = load i32, ptr %i.bm, align 8, !tbaa !183 ; 2 uses
  %i.rx = icmp slt i32 %.1.i, %i.rw
  br i1 %i.rx, label %.preheader756, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

.preheader756:                                    ; preds = %bb.bq, %bb.br
  %.2.i902 = phi i32 [ %i.ry, %bb.br ], [ %.1.i, %bb.bq ]
  %.sroa.169390.7901 = phi i32 [ %.sroa.169390.13, %bb.br ], [ %.sroa.169390.6, %bb.bq ]
  %.sroa.137362.7900 = phi i32 [ %.sroa.137362.13, %bb.br ], [ %.sroa.137362.6, %bb.bq ]
  %.sroa.48.9899 = phi i32 [ %.sroa.48.11, %bb.br ], [ %.sroa.48.8, %bb.bq ]
  %.sroa.0286.8898 = phi i64 [ %.sroa.0286.10, %bb.br ], [ %.sroa.0286.7, %bb.bq ]
  br label %bb.bs

bb.br:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %i.ry = add nsw i32 %.2.i902, 1                 ; 2 uses
  %exitcond966.not = icmp eq i32 %i.ry, %i.rw
  br i1 %exitcond966.not, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, label %.preheader756, !llvm.loop !216

bb.bs:                                            ; preds = %.preheader756, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %indvars.iv963 = phi i64 [ 0, %.preheader756 ], [ %indvars.iv.next964, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 2 uses
  %.sroa.169390.8896 = phi i32 [ %.sroa.169390.7901, %.preheader756 ], [ %.sroa.169390.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 4 uses
  %.sroa.137362.8893 = phi i32 [ %.sroa.137362.7900, %.preheader756 ], [ %.sroa.137362.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 8 uses
  %.sroa.48.10892 = phi i32 [ %.sroa.48.9899, %.preheader756 ], [ %.sroa.48.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 7 uses
  %.sroa.0286.9891 = phi i64 [ %.sroa.0286.8898, %.preheader756 ], [ %.sroa.0286.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 3 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv963
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !212 ; 8 uses
  %i.sb = icmp samesign ult i32 %.sroa.48.10892, 65
  tail call void @llvm.assume(i1 %i.sb)
  %.not.i114 = icmp samesign ult i32 %.sroa.48.10892, 32
  br i1 %.not.i114, label %bb.bt, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i113)
  %i.sc = add nuw nsw i32 %.sroa.137362.8893, 8
  %.not.i.i115 = icmp samesign ugt i32 %i.sc, %i.dp
  br i1 %.not.i.i115, label %bb.bv, label %bb.bu, !prof !152

bb.bu:                                            ; preds = %bb.bt
  %i.sd = zext nneg i32 %.sroa.137362.8893 to i64
  %i.se = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.sd
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

bb.bv:                                            ; preds = %bb.bt
  %i.sf = icmp samesign ugt i32 %.sroa.137362.8893, %i.dv
  br i1 %i.sf, label %bb.bw, label %bb.bx, !prof !152

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.bx:                                            ; preds = %bb.bv
  store i64 0, ptr %.sroa.0.i.i113, align 8
  %.sroa.speculated27.i.i.i121 = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %.sroa.137362.8893) ; 3 uses
  %i.sg = add nuw nsw i32 %.sroa.speculated27.i.i.i121, 8
  %.sroa.speculated.i.i.i122 = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %i.sg)
  %i.sh = sub nsw i32 %.sroa.speculated.i.i.i122, %.sroa.speculated27.i.i.i121 ; 2 uses
  %i.si = icmp samesign ult i32 %i.sh, 9
  tail call void @llvm.assume(i1 %i.si)
  %i.sj = zext nneg i32 %.sroa.speculated27.i.i.i121 to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.sj
  %i.sl = zext nneg i32 %i.sh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i113, ptr align 1 %i.sk, i64 %i.sl, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117: ; preds = %bb.bx, %bb.bu
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118 = phi ptr [ %.sroa.0.i.i113, %bb.bx ], [ %i.se, %bb.bu ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i113)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, ptr %1, align 8
  %i.sm = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i8 ; 2 uses
  %i.sn = icmp ne i8 %i.sm, -1
  %i.so = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 8
  %i.sp = trunc i64 %i.so to i8                   ; 3 uses
  %i.sq = icmp ne i8 %i.sp, -1
  %i.sr = and i1 %i.sn, %i.sq
  %i.ss = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 16
  %i.st = trunc i64 %i.ss to i8                   ; 2 uses
  %i.su = icmp ne i8 %i.st, -1
  %i.sv = and i1 %i.su, %i.sr
  %i.sw = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 4278190080
  %i.sx = icmp ne i64 %i.sw, 4278190080
  %i.sy = and i1 %i.sx, %i.sv
  br i1 %i.sy, label %bb.by, label %.preheader.i194

.preheader.i194:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.sz = zext nneg i32 %.sroa.48.10892 to i64    ; 8 uses
  %i.ta = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 255
  %indvars.iv.next.i195 = add nuw nsw i64 %i.sz, 8
  %i.tb = sub nuw nsw i64 56, %i.sz
  %i.tc = shl nuw i64 %i.ta, %i.tb
  %i.td = or i64 %i.tc, %.sroa.0286.9891          ; 2 uses
  %.not.i196 = icmp eq i8 %i.sm, -1
  br i1 %.not.i196, label %bb.bz, label %bb.cb

bb.by:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.te = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i32
  %i.tf = tail call i32 @llvm.bswap.i32(i32 %i.te)
  %i.tg = zext i32 %i.tf to i64
  %i.th = sub nuw nsw i32 32, %.sroa.48.10892
  %i.ti = zext nneg i32 %i.th to i64
  %i.tj = shl nuw i64 %i.tg, %i.ti
  %i.tk = or i64 %i.tj, %.sroa.0286.9891
  %i.tl = or disjoint i32 %.sroa.48.10892, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215

bb.bz:                                            ; preds = %.preheader.i194
  %i.tm = icmp eq i8 %i.sp, 0
  br i1 %i.tm, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.cg, %bb.ce, %bb.cc, %bb.bz
  %.01962.lcssa.i210 = phi i32 [ 0, %bb.bz ], [ %.2.ph.i197, %bb.cc ], [ %i.ue, %bb.ce ], [ %i.up, %bb.cg ]
  %.02161.lcssa.i211.neg925 = phi i32 [ 0, %bb.bz ], [ -1, %bb.cc ], [ -2, %bb.ce ], [ -3, %bb.cg ]
  %.lcssa66.wide.i212 = phi i64 [ %i.sz, %bb.bz ], [ %indvars.iv.next.i195, %bb.cc ], [ %indvars.iv.next.1.i198, %bb.ce ], [ %indvars.iv.next.2.i201, %bb.cg ]
  %.lcssa.i213 = phi i64 [ %i.td, %bb.bz ], [ %i.ty, %bb.cc ], [ %i.ul, %bb.ce ], [ %i.uw, %bb.cg ]
  %i.tn = add nuw nsw i32 %.01962.lcssa.i210, %.sroa.137362.8893
  %i.to = icmp slt i32 %.sroa.169390.8896, 0
  tail call void @llvm.assume(i1 %i.to)
  %i.tp = lshr i64 -1, %.lcssa66.wide.i212
  %i.tq = xor i64 %i.tp, -1
  %i.tr = and i64 %.lcssa.i213, %i.tq
  %.neg754 = sub nsw i32 %i.dp, %.sroa.137362.8893
  %reass.sub.i214 = add nsw i32 %.neg754, %.02161.lcssa.i211.neg925 ; 2 uses
  %i.ts = add nuw nsw i32 %reass.sub.i214, 4
  %i.tt = icmp ugt i32 %reass.sub.i214, 1
  tail call void @llvm.assume(i1 %i.tt)
  br label %bb.ch

bb.cb:                                            ; preds = %bb.bz, %.preheader.i194
  %i.tu = phi i8 [ %i.sp, %.preheader.i194 ], [ %i.st, %bb.bz ] ; 2 uses
  %.2.ph.i197 = phi i32 [ 1, %.preheader.i194 ], [ 2, %bb.bz ] ; 3 uses
  %i.tv = zext i8 %i.tu to i64
  %indvars.iv.next.1.i198 = add nuw nsw i64 %i.sz, 16
  %i.tw = sub nuw nsw i64 48, %i.sz
  %i.tx = shl nuw nsw i64 %i.tv, %i.tw
  %i.ty = or i64 %i.tx, %i.td                     ; 2 uses
  %.not.1.i199 = icmp eq i8 %i.tu, -1
  br i1 %.not.1.i199, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.tz = zext nneg i32 %.2.ph.i197 to i64
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !151
  %i.ud = icmp eq i8 %i.uc, 0
  br i1 %i.ud, label %bb.cd, label %bb.ca

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink.i200 = phi i32 [ 1, %bb.cb ], [ 2, %bb.cc ]
  %i.ue = add nuw nsw i32 %.sink.i200, %.2.ph.i197 ; 3 uses
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 %i.uf ; 2 uses
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !151 ; 2 uses
  %i.ui = zext i8 %i.uh to i64
  %indvars.iv.next.2.i201 = add nuw nsw i64 %i.sz, 24
  %i.uj = sub nuw nsw i64 40, %i.sz
  %i.uk = shl nuw nsw i64 %i.ui, %i.uj
  %i.ul = or i64 %i.uk, %i.ty                     ; 2 uses
  %.not.2.i202 = icmp eq i8 %i.uh, -1
  br i1 %.not.2.i202, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.um = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  %i.un = load i8, ptr %i.um, align 1, !tbaa !151
  %i.uo = icmp eq i8 %i.un, 0
  br i1 %i.uo, label %bb.cf, label %bb.ca

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sink72.i203 = phi i32 [ 1, %bb.cd ], [ 2, %bb.ce ]
  %i.up = add nuw nsw i32 %.sink72.i203, %i.ue    ; 3 uses
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 %i.uq ; 2 uses
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !151 ; 2 uses
  %i.ut = zext i8 %i.us to i64
  %indvars.iv.next.3.i204 = or disjoint i32 %.sroa.48.10892, 32
  %i.uu = sub nuw nsw i64 32, %i.sz
  %i.uv = shl nuw nsw i64 %i.ut, %i.uu
  %i.uw = or i64 %i.uv, %i.ul                     ; 2 uses
  %.not.3.i205 = icmp eq i8 %i.us, -1
  br i1 %.not.3.i205, label %bb.cg, label %.loopexit.i206

bb.cg:                                            ; preds = %bb.cf
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ur, i64 1
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !151
  %i.uz = icmp eq i8 %i.uy, 0
  br i1 %i.uz, label %.loopexit.i206, label %bb.ca

.loopexit.i206:                                   ; preds = %bb.cg, %bb.cf
  %.sink73.i207 = phi i32 [ 1, %bb.cf ], [ 2, %bb.cg ]
  %i.va = add nuw nsw i32 %.sink73.i207, %i.up
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i206, %bb.ca
  %.sroa.0286.32 = phi i64 [ %i.uw, %.loopexit.i206 ], [ %i.tr, %bb.ca ]
  %.sroa.48.33 = phi i32 [ %indvars.iv.next.3.i204, %.loopexit.i206 ], [ 64, %bb.ca ]
  %.sroa.169390.18 = phi i32 [ %.sroa.169390.8896, %.loopexit.i206 ], [ %i.tn, %bb.ca ]
  %.3.i208 = phi i32 [ %i.va, %.loopexit.i206 ], [ %i.ts, %bb.ca ] ; 2 uses
  %i.vb = icmp sgt i32 %.3.i208, 4
  tail call void @llvm.assume(i1 %i.vb)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215: ; preds = %bb.by, %bb.ch
  %.sroa.0286.33 = phi i64 [ %i.tk, %bb.by ], [ %.sroa.0286.32, %bb.ch ]
  %.sroa.48.34 = phi i32 [ %i.tl, %bb.by ], [ %.sroa.48.33, %bb.ch ]
  %.sroa.169390.19 = phi i32 [ %.sroa.169390.8896, %bb.by ], [ %.sroa.169390.18, %bb.ch ]
  %.0.i209 = phi i32 [ 4, %bb.by ], [ %.3.i208, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.vc = add nuw nsw i32 %.0.i209, %.sroa.137362.8893
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123: ; preds = %bb.bs, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215
  %.sroa.0286.24 = phi i64 [ %.sroa.0286.33, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.0286.9891, %bb.bs ] ; 2 uses
  %.sroa.48.25 = phi i32 [ %.sroa.48.34, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.48.10892, %bb.bs ]
  %.sroa.137362.13 = phi i32 [ %i.vc, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.137362.8893, %bb.bs ] ; 3 uses
  %.sroa.169390.13 = phi i32 [ %.sroa.169390.19, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.169390.8896, %bb.bs ] ; 3 uses
  %i.vd = lshr i64 %.sroa.0286.24, 53             ; 3 uses
  %i.ve = trunc nuw nsw i64 %i.vd to i32          ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.sa, i64 128
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !172
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.vd
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !22 ; 4 uses
  %i.vj = lshr i32 %i.vi, 9
  %i.vk = and i32 %i.vi, 255                      ; 4 uses
  %i.vl = icmp samesign ult i32 %i.vk, 33
  tail call void @llvm.assume(i1 %i.vl)
  %i.vm = sub nuw nsw i32 %.sroa.48.25, %i.vk     ; 3 uses
  %i.vn = zext nneg i32 %i.vk to i64
  %i.vo = shl i64 %.sroa.0286.24, %i.vn           ; 3 uses
  %i.vp = and i32 %i.vi, 256
  %.not.i71.i = icmp eq i32 %i.vp, 0
  br i1 %.not.i71.i, label %bb.ci, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.ci:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.not17.i73.i = icmp eq i32 %i.vi, 0
  br i1 %.not17.i73.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.vq = trunc i32 %i.vj to i8                   ; 2 uses
  %i.vr = icmp ne i8 %i.vq, 0
  tail call void @llvm.assume(i1 %i.vr)
  br label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.vs = icmp eq i32 %i.vk, 0
  tail call void @llvm.assume(i1 %i.vs)
  %i.vt = add nsw i32 %i.vm, -11                  ; 2 uses
  %i.vu = shl i64 %i.vo, 11                       ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.sa, i64 32
  %i.vw = getelementptr inbounds nuw i8, ptr %i.sa, i64 40
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !174
  %i.vy = load ptr, ptr %i.vv, align 8, !tbaa !175
  %i.vz = ptrtoint ptr %i.vx to i64
  %i.wa = ptrtoint ptr %i.vy to i64
  %i.wb = sub i64 %i.vz, %i.wa
  %i.wc = ashr exact i64 %i.wb, 2
  %i.wd = add nsw i64 %i.wc, -1                   ; 3 uses
  %.sroa.0.018.i126 = trunc nuw nsw i64 %i.vd to i16 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi4ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.cv = load i16, ptr %i.cu, align 8, !tbaa !163
  store i16 %i.cv, ptr %.07.i.i, align 2, !tbaa !164
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 2
  %i.cy = icmp eq ptr %i.cw, %i.bc
  br i1 %i.cy, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !230

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load i64, ptr %4, align 8
  br label %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit

_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit: ; preds = %bb.b, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i
  %i.cz = phi i64 [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed17LJpegDecompressor18PerComponentRecipeESt6vectorIS4_SaIS4_EEEEPtZNKS3_15getInitialPredsILi4EEESt5arrayItXT_EEvEUlRS5_E_ET0_T_SI_SH_T1_.exit.loopexit.i ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %i.cz, ptr %6, align 8
  %.not31 = icmp eq i64 %indvars.iv971, 0
  br i1 %.not31, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.10426.0921, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.da = add nuw nsw i32 %.sroa.10426.0921, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.da, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.db = zext nneg i32 %.sroa.10426.0921 to i64
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
  %i.dl = trunc i64 %indvars.iv971 to i32
  %i.dm = add i32 %i.dl, -1
  %i.dn = srem i32 %i.dm, 8
  %.not32 = icmp eq i32 %i.dk, %i.dn
  br i1 %.not32, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.do = add nuw nsw i32 %.sroa.10426.0921, 2    ; 2 uses
  %i.dp = icmp samesign ule i32 %i.do, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.dp)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %.sroa.10426.1 = phi i32 [ %.sroa.10426.0921, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit ], [ %i.do, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dq = sub i32 %.sroa.221.0.copyload, %.sroa.10426.1 ; 15 uses
  %i.dr = zext i32 %.sroa.10426.1 to i64          ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dr ; 6 uses
  %i.dt = icmp sgt i32 %i.dq, -1
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = icmp samesign ult i32 %i.dq, 8
  br i1 %i.du, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not33909, label %.loopexit760.thread, label %.lr.ph916

.lr.ph916:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.dv = mul nsw i64 %indvars.iv971, %i.at
  %i.dw = add nuw nsw i32 %i.dq, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph916, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv968 = phi i64 [ 0, %.lr.ph916 ], [ %indvars.iv.next969, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0401.0914 = phi ptr [ %6, %.lr.ph916 ], [ %i.ee, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.169390.0913 = phi i32 [ -1, %.lr.ph916 ], [ %.sroa.169390.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.137362.0912 = phi i32 [ 0, %.lr.ph916 ], [ %.sroa.137362.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.48.0911 = phi i32 [ 0, %.lr.ph916 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0286.0910 = phi i64 [ 0, %.lr.ph916 ], [ %.sroa.0286.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.dx = add nsw i64 %indvars.iv968, %i.dv       ; 5 uses
  %i.dy = icmp sgt i64 %i.dx, -1
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp sle i64 %i.dx, %i.as
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = trunc nuw nsw i64 %i.dx to i32
  %.not34 = icmp eq i32 %i.z, %i.ea
  br i1 %.not34, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.eb = icmp eq i64 %indvars.iv971, %i.br
  tail call void @llvm.assume(i1 %i.eb)
  br label %.loopexit760

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bf)
  tail call void @llvm.assume(i1 %i.bg)
  %i.ec = icmp samesign ult i64 %i.dx, %i.as
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = mul nuw nsw i64 %i.dx, %i.bp
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ed ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <4 x ptr> %i.cl, ptr %5, align 8
  tail call void @llvm.assume(i1 %i.bh)
  %i.ef = load i32, ptr %i.bi, align 4, !tbaa !38 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bj)
  %wide.trip.count = zext nneg i32 %i.ef to i64
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.loopexit
  %indvars.iv958 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next959, %.loopexit ] ; 2 uses
  %.sroa.0509.0874 = phi ptr [ %.sroa.0401.0914, %.lr.ph ], [ %i.ej, %.loopexit ]
  %.sroa.169390.3873 = phi i32 [ %.sroa.169390.0913, %.lr.ph ], [ %.sroa.169390.11, %.loopexit ]
  %.sroa.137362.3872 = phi i32 [ %.sroa.137362.0912, %.lr.ph ], [ %.sroa.137362.11, %.loopexit ]
  %.sroa.48.3871 = phi i32 [ %.sroa.48.0911, %.lr.ph ], [ %.sroa.48.15, %.loopexit ]
  %.sroa.0286.2870 = phi i64 [ %.sroa.0286.0910, %.lr.ph ], [ %.sroa.0286.14, %.loopexit ]
  %i.eh = shl nuw nsw i64 %indvars.iv958, 2       ; 2 uses
  %i.ei = icmp samesign ule i64 %i.eh, %i.bn
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.eh ; 3 uses
  br label %bb.o

.loopexit:                                        ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %indvars.iv.next959 = add nuw nsw i64 %indvars.iv958, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next959, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !231

bb.o:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %.sroa.169390.10864 = phi i32 [ %.sroa.169390.3873, %.preheader ], [ %.sroa.169390.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %.sroa.137362.10861 = phi i32 [ %.sroa.137362.3872, %.preheader ], [ %.sroa.137362.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 8 uses
  %.sroa.48.14860 = phi i32 [ %.sroa.48.3871, %.preheader ], [ %.sroa.48.15, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 7 uses
  %.sroa.0286.13859 = phi i64 [ %.sroa.0286.2870, %.preheader ], [ %.sroa.0286.14, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0509.0874, i64 %indvars.iv
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !164
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !212 ; 8 uses
  %i.eo = icmp samesign ult i32 %.sroa.48.14860, 65
  tail call void @llvm.assume(i1 %i.eo)
  %.not.i51 = icmp samesign ult i32 %.sroa.48.14860, 32
  br i1 %.not.i51, label %bb.p, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.ep = add nuw nsw i32 %.sroa.137362.10861, 8
  %.not.i.i52 = icmp samesign ugt i32 %i.ep, %i.dq
  br i1 %.not.i.i52, label %bb.r, label %bb.q, !prof !152

bb.q:                                             ; preds = %bb.p
  %i.eq = zext nneg i32 %.sroa.137362.10861 to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.eq
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.es = icmp samesign ugt i32 %.sroa.137362.10861, %i.dw
  br i1 %i.es, label %bb.s, label %bb.t, !prof !152

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.t:                                             ; preds = %bb.r
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %.sroa.137362.10861) ; 3 uses
  %i.et = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.et)
  %i.eu = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.ev = icmp samesign ult i32 %i.eu, 9
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ew
  %i.ey = zext nneg i32 %i.eu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.ex, i64 %i.ey, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.t ], [ %i.er, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %3, align 8
  %i.ez = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.fa = icmp ne i8 %i.ez, -1
  %i.fb = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.fc = trunc i64 %i.fb to i8                   ; 3 uses
  %i.fd = icmp ne i8 %i.fc, -1
  %i.fe = and i1 %i.fa, %i.fd
  %i.ff = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.fg = trunc i64 %i.ff to i8                   ; 2 uses
  %i.fh = icmp ne i8 %i.fg, -1
  %i.fi = and i1 %i.fh, %i.fe
  %i.fj = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.fk = icmp ne i64 %i.fj, 4278190080
  %i.fl = and i1 %i.fk, %i.fi
  br i1 %i.fl, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fm = zext nneg i32 %.sroa.48.14860 to i64    ; 8 uses
  %i.fn = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.fm, 8
  %i.fo = sub nuw nsw i64 56, %i.fm
  %i.fp = shl nuw i64 %i.fn, %i.fo
  %i.fq = or i64 %i.fp, %.sroa.0286.13859         ; 2 uses
  %.not.i166 = icmp eq i8 %i.ez, -1
  br i1 %.not.i166, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fr = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.fs = tail call i32 @llvm.bswap.i32(i32 %i.fr)
  %i.ft = zext i32 %i.fs to i64
  %i.fu = sub nuw nsw i32 32, %.sroa.48.14860
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = shl nuw i64 %i.ft, %i.fv
  %i.fx = or i64 %i.fw, %.sroa.0286.13859
  %i.fy = or disjoint i32 %.sroa.48.14860, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.v:                                             ; preds = %.preheader.i
  %i.fz = icmp eq i8 %i.fc, 0
  br i1 %i.fz, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v
  %.01962.lcssa.i = phi i32 [ 0, %bb.v ], [ %.2.ph.i, %bb.y ], [ %i.gr, %bb.aa ], [ %i.hc, %bb.ac ]
  %.02161.lcssa.i.neg924 = phi i32 [ 0, %bb.v ], [ -1, %bb.y ], [ -2, %bb.aa ], [ -3, %bb.ac ]
  %.lcssa66.wide.i = phi i64 [ %i.fm, %bb.v ], [ %indvars.iv.next.i, %bb.y ], [ %indvars.iv.next.1.i, %bb.aa ], [ %indvars.iv.next.2.i, %bb.ac ]
  %.lcssa.i = phi i64 [ %i.fq, %bb.v ], [ %i.gl, %bb.y ], [ %i.gy, %bb.aa ], [ %i.hj, %bb.ac ]
  %i.ga = add nuw nsw i32 %.01962.lcssa.i, %.sroa.137362.10861
  %i.gb = icmp slt i32 %.sroa.169390.10864, 0
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = lshr i64 -1, %.lcssa66.wide.i
  %i.gd = xor i64 %i.gc, -1
  %i.ge = and i64 %.lcssa.i, %i.gd
  %.neg756 = sub nsw i32 %i.dq, %.sroa.137362.10861
  %reass.sub.i = add nsw i32 %.neg756, %.02161.lcssa.i.neg924 ; 2 uses
  %i.gf = add nuw nsw i32 %reass.sub.i, 4
  %i.gg = icmp ugt i32 %reass.sub.i, 1
  tail call void @llvm.assume(i1 %i.gg)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v, %.preheader.i
  %i.gh = phi i8 [ %i.fc, %.preheader.i ], [ %i.fg, %bb.v ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.v ] ; 3 uses
  %i.gi = zext i8 %i.gh to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.fm, 16
  %i.gj = sub nuw nsw i64 48, %i.fm
  %i.gk = shl nuw nsw i64 %i.gi, %i.gj
  %i.gl = or i64 %i.gk, %i.fq                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.gh, -1
  br i1 %.not.1.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gm = zext nneg i32 %.2.ph.i to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !151
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink.i = phi i32 [ 1, %bb.x ], [ 2, %bb.y ]
  %i.gr = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 %i.gs ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !151 ; 2 uses
  %i.gv = zext i8 %i.gu to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.fm, 24
  %i.gw = sub nuw nsw i64 40, %i.fm
  %i.gx = shl nuw nsw i64 %i.gv, %i.gw
  %i.gy = or i64 %i.gx, %i.gl                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.gu, -1
  br i1 %.not.2.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !151
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %bb.ab, label %bb.w

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink72.i = phi i32 [ 1, %bb.z ], [ 2, %bb.aa ]
  %i.hc = add nuw nsw i32 %.sink72.i, %i.gr       ; 3 uses
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 %i.hd ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !151 ; 2 uses
  %i.hg = zext i8 %i.hf to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.48.14860, 32
  %i.hh = sub nuw nsw i64 32, %i.fm
  %i.hi = shl nuw nsw i64 %i.hg, %i.hh
  %i.hj = or i64 %i.hi, %i.gy                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.hf, -1
  br i1 %.not.3.i, label %bb.ac, label %.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !151
  %i.hm = icmp eq i8 %i.hl, 0
  br i1 %i.hm, label %.loopexit.i, label %bb.w

.loopexit.i:                                      ; preds = %bb.ac, %bb.ab
  %.sink73.i = phi i32 [ 1, %bb.ab ], [ 2, %bb.ac ]
  %i.hn = add nuw nsw i32 %.sink73.i, %i.hc
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i, %bb.w
  %.sroa.0286.28 = phi i64 [ %i.hj, %.loopexit.i ], [ %i.ge, %bb.w ]
  %.sroa.48.29 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.w ]
  %.sroa.169390.14 = phi i32 [ %.sroa.169390.10864, %.loopexit.i ], [ %i.ga, %bb.w ]
  %.3.i = phi i32 [ %i.hn, %.loopexit.i ], [ %i.gf, %bb.w ] ; 2 uses
  %i.ho = icmp sgt i32 %.3.i, 4
  tail call void @llvm.assume(i1 %i.ho)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.u, %bb.ad
  %.sroa.0286.29 = phi i64 [ %i.fx, %bb.u ], [ %.sroa.0286.28, %bb.ad ]
  %.sroa.48.30 = phi i32 [ %i.fy, %bb.u ], [ %.sroa.48.29, %bb.ad ]
  %.sroa.169390.15 = phi i32 [ %.sroa.169390.10864, %bb.u ], [ %.sroa.169390.14, %bb.ad ]
  %.0.i167 = phi i32 [ 4, %bb.u ], [ %.3.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hp = add nuw nsw i32 %.0.i167, %.sroa.137362.10861
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.o, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.0286.16 = phi i64 [ %.sroa.0286.29, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0286.13859, %bb.o ] ; 2 uses
  %.sroa.48.17 = phi i32 [ %.sroa.48.30, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.48.14860, %bb.o ]
  %.sroa.137362.11 = phi i32 [ %i.hp, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.137362.10861, %bb.o ] ; 3 uses
  %.sroa.169390.11 = phi i32 [ %.sroa.169390.15, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.169390.10864, %bb.o ] ; 3 uses
  %i.hq = lshr i64 %.sroa.0286.16, 53             ; 3 uses
  %i.hr = trunc nuw nsw i64 %i.hq to i32          ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.en, i64 128
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !172
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hq
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !22 ; 4 uses
  %i.hw = ashr i32 %i.hv, 9                       ; 2 uses
  %i.hx = and i32 %i.hv, 255                      ; 4 uses
  %i.hy = icmp samesign ult i32 %i.hx, 33
  tail call void @llvm.assume(i1 %i.hy)
  %i.hz = sub nuw nsw i32 %.sroa.48.17, %i.hx     ; 3 uses
  %i.ia = zext nneg i32 %i.hx to i64
  %i.ib = shl i64 %.sroa.0286.16, %i.ia           ; 3 uses
  %i.ic = and i32 %i.hv, 256
  %.not.i.i = icmp eq i32 %i.ic, 0
  br i1 %.not.i.i, label %bb.ae, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.ae:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not17.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.id = trunc i32 %i.hw to i8                   ; 2 uses
  %i.ie = icmp ne i8 %i.id, 0
  tail call void @llvm.assume(i1 %i.ie)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.if = icmp eq i32 %i.hx, 0
  tail call void @llvm.assume(i1 %i.if)
  %i.ig = add nsw i32 %i.hz, -11                  ; 2 uses
  %i.ih = shl i64 %i.ib, 11                       ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !174
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !175
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = ashr exact i64 %i.io, 2
  %i.iq = add nsw i64 %i.ip, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.hq to i16 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi4ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %.sroa.48.19 = phi i32 [ %i.ig, %.lr.ph.i ], [ %i.jd, %.critedge2.i ] ; 4 uses
  %i.iu = phi i64 [ 11, %.lr.ph.i ], [ %i.jj, %.critedge2.i ] ; 2 uses
  %.sroa.0.021.i = phi i16 [ %.sroa.0.018.i, %.lr.ph.i ], [ %.sroa.0.0.i, %.critedge2.i ] ; 2 uses
  %.sroa.8.020.i = phi i8 [ 11, %.lr.ph.i ], [ %i.ji, %.critedge2.i ] ; 2 uses
  %.sroa.0.0.in19.i = phi i32 [ %i.hr, %.lr.ph.i ], [ %i.jh, %.critedge2.i ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.it, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !164 ; 2 uses
  %i.ix = icmp eq i16 %i.iw, -1
  %i.iy = icmp ult i16 %i.iw, %.sroa.0.021.i
  %or.cond.i = select i1 %i.ix, i1 true, i1 %i.iy
  br i1 %or.cond.i, label %.critedge2.i, label %.critedge.i.loopexit

.critedge2.i:                                     ; preds = %bb.ah
  %i.iz = icmp samesign ult i32 %.sroa.48.19, 65
  tail call void @llvm.assume(i1 %i.iz)
  %i.ja = icmp ne i32 %.sroa.48.19, 0
  tail call void @llvm.assume(i1 %i.ja)
  %i.jb = lshr i64 %.sroa.0286.18, 63
  %i.jc = trunc nuw nsw i64 %i.jb to i32
  %i.jd = add nsw i32 %.sroa.48.19, -1            ; 2 uses
  %i.je = shl i64 %.sroa.0286.18, 1               ; 2 uses
  %i.jf = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.jg = and i32 %i.jf, 131070
  %i.jh = or disjoint i32 %i.jg, %i.jc            ; 3 uses
  %i.ji = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.jh to i16           ; 2 uses
  %i.jj = zext i8 %i.ji to i64                    ; 3 uses
  %i.jk = icmp ugt i64 %i.iq, %i.jj
  br i1 %i.jk, label %bb.ah, label %.critedge.i.loopexit, !llvm.loop !179

.critedge.i.loopexit:                             ; preds = %bb.ah, %.critedge2.i
  %.sroa.0286.17.ph = phi i64 [ %i.je, %.critedge2.i ], [ %.sroa.0286.18, %bb.ah ]
  %.sroa.48.18.ph = phi i32 [ %i.jd, %.critedge2.i ], [ %.sroa.48.19, %bb.ah ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.jh, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ah ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.ji, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ah ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ah ]
  %.lcssa17.i.ph = phi i64 [ %i.jj, %.critedge2.i ], [ %i.iu, %bb.ah ]
  %i.jl = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.ag
  %.sroa.0286.17 = phi i64 [ %i.ih, %bb.ag ], [ %.sroa.0286.17.ph, %.critedge.i.loopexit ]
  %.sroa.48.18 = phi i32 [ %i.ig, %bb.ag ], [ %.sroa.48.18.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.hr, %bb.ag ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.ag ], [ %i.jl, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.ag ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.ag ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.jm = icmp ult i64 %i.iq, %.lcssa17.i
  br i1 %i.jm, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.en, i64 80
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !176
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %.lcssa17.i
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !164
  %i.jr = icmp ult i16 %i.jq, %.sroa.0.0.lcssa.i
  br i1 %i.jr, label %bb.aj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.aj:                                            ; preds = %bb.ai, %.critedge.i
  %i.js = and i32 %.sroa.0.0.in.lcssa.i, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.js, i32 noundef %.sroa.8.0.lcssa.i) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.ai
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.jt = getelementptr inbounds nuw i8, ptr %i.en, i64 104
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !176
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %.lcssa17.i
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !164
  %i.jx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.tr.i = zext i16 %i.jw to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.jy = zext i32 %.narrow.i to i64
  %i.jz = load ptr, ptr %i.jx, align 8, !tbaa !180
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jy
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !151
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.af
  %.0735 = phi i8 [ %i.kb, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.id, %bb.af ] ; 5 uses
  %.sroa.0286.15 = phi i64 [ %.sroa.0286.17, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.ib, %bb.af ] ; 6 uses
  %.sroa.48.16 = phi i32 [ %.sroa.48.18, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.hz, %bb.af ] ; 8 uses
  %i.kc = icmp ult i8 %.0735, 17
  tail call void @llvm.assume(i1 %i.kc)
  switch i8 %.0735, label %bb.an [
    i8 16, label %bb.al
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  ]

bb.al:                                            ; preds = %bb.ak
  %i.kd = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !181, !range !136, !noundef !121
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.am, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.kg = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.kg)
  %i.kh = icmp samesign ugt i32 %.sroa.48.16, 15
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = add nsw i32 %.sroa.48.16, -16
  %i.kj = shl i64 %.sroa.0286.15, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.an:                                            ; preds = %bb.ak
  %i.kk = zext nneg i8 %.0735 to i32              ; 4 uses
  %i.kl = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.kl)
  %i.km = icmp ne i8 %.0735, 0
  tail call void @llvm.assume(i1 %i.km)
  %i.kn = icmp samesign uge i32 %.sroa.48.16, %i.kk
  tail call void @llvm.assume(i1 %i.kn)
  %i.ko = sub nuw nsw i32 64, %i.kk
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = lshr i64 %.sroa.0286.15, %i.kp
  %i.kr = trunc nuw nsw i64 %i.kq to i32
  %i.ks = sub nsw i32 %.sroa.48.16, %i.kk
  %i.kt = zext nneg i8 %.0735 to i64
  %i.ku = shl i64 %.sroa.0286.15, %i.kt
  %i.kv = icmp sgt i64 %.sroa.0286.15, -1
  %notmask.i.i = shl nsw i32 -1, %i.kk
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.kw = select i1 %i.kv, i32 %.neg.i.i, i32 0
  %.0.i.i56 = add nsw i32 %i.kw, %i.kr
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.0286.14 = phi i64 [ %i.ib, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.ku, %bb.an ], [ %i.kj, %bb.am ], [ %.sroa.0286.15, %bb.al ], [ %.sroa.0286.15, %bb.ak ] ; 3 uses
  %.sroa.48.15 = phi i32 [ %i.hz, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.ks, %bb.an ], [ %i.ki, %bb.am ], [ %.sroa.48.16, %bb.al ], [ %.sroa.48.16, %bb.ak ] ; 3 uses
  %.0.i.i = phi i32 [ %i.hw, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i56, %bb.an ], [ -32768, %bb.am ], [ -32768, %bb.al ], [ 0, %bb.ak ]
  %i.kx = trunc i32 %.0.i.i to i16
  %i.ky = add i16 %i.el, %i.kx
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %indvars.iv
  store i16 %i.ky, ptr %i.kz, align 2, !tbaa !164
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not55.i = icmp eq i64 %indvars.iv.next, 4
  br i1 %.not55.i, label %.loopexit, label %bb.o, !llvm.loop !232

._crit_edge:                                      ; preds = %.loopexit, %bb.n
  %.sroa.0286.2.lcssa = phi i64 [ %.sroa.0286.0910, %bb.n ], [ %.sroa.0286.14, %.loopexit ] ; 2 uses
  %.sroa.48.3.lcssa = phi i32 [ %.sroa.48.0911, %bb.n ], [ %.sroa.48.15, %.loopexit ] ; 2 uses
  %.sroa.137362.3.lcssa = phi i32 [ %.sroa.137362.0912, %bb.n ], [ %.sroa.137362.11, %.loopexit ] ; 2 uses
  %.sroa.169390.3.lcssa = phi i32 [ %.sroa.169390.0913, %bb.n ], [ %.sroa.169390.11, %.loopexit ] ; 2 uses
  %.sroa.0509.0.lcssa = phi ptr [ %.sroa.0401.0914, %bb.n ], [ %i.ej, %.loopexit ]
  %.044.i.lcssa = phi i32 [ 0, %bb.n ], [ %i.ef, %.loopexit ] ; 3 uses
  %i.la = load i32, ptr %i.bk, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq i32 %i.la, 0
  br i1 %.not.i, label %bb.bq, label %.preheader758

.preheader758:                                    ; preds = %._crit_edge
  %i.lb = icmp samesign ult i32 %i.la, 4
  tail call void @llvm.assume(i1 %i.lb)
  %i.lc = shl nsw i32 %.044.i.lcssa, 2
  %i.ld = zext nneg i32 %i.lc to i64
  br label %bb.ao

.loopexit759:                                     ; preds = %bb.bp
  %i.le = add nuw nsw i32 %.044.i.lcssa, 1
  br label %bb.bq

bb.ao:                                            ; preds = %.preheader758, %bb.bp
  %indvars.iv961 = phi i64 [ 0, %.preheader758 ], [ %indvars.iv.next962, %bb.bp ] ; 4 uses
  %.sroa.169390.5886 = phi i32 [ %.sroa.169390.3.lcssa, %.preheader758 ], [ %.sroa.169390.12, %bb.bp ] ; 4 uses
  %.sroa.137362.5883 = phi i32 [ %.sroa.137362.3.lcssa, %.preheader758 ], [ %.sroa.137362.12, %bb.bp ] ; 8 uses
  %.sroa.48.5882 = phi i32 [ %.sroa.48.3.lcssa, %.preheader758 ], [ %.sroa.48.6, %bb.bp ] ; 7 uses
  %.sroa.0286.4881 = phi i64 [ %.sroa.0286.2.lcssa, %.preheader758 ], [ %.sroa.0286.5, %bb.bp ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0509.0.lcssa, i64 %indvars.iv961
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !164
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv961
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !212 ; 8 uses
  %i.lj = icmp samesign ult i32 %.sroa.48.5882, 65
  tail call void @llvm.assume(i1 %i.lj)
  %.not.i64 = icmp samesign ult i32 %.sroa.48.5882, 32
  br i1 %.not.i64, label %bb.ap, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i63)
  %i.lk = add nuw nsw i32 %.sroa.137362.5883, 8
  %.not.i.i65 = icmp samesign ugt i32 %i.lk, %i.dq
  br i1 %.not.i.i65, label %bb.ar, label %bb.aq, !prof !152

bb.aq:                                            ; preds = %bb.ap
  %i.ll = zext nneg i32 %.sroa.137362.5883 to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ll
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

bb.ar:                                            ; preds = %bb.ap
  %i.ln = icmp samesign ugt i32 %.sroa.137362.5883, %i.dw
  br i1 %i.ln, label %bb.as, label %bb.at, !prof !152

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.at:                                            ; preds = %bb.ar
  store i64 0, ptr %.sroa.0.i.i63, align 8
  %.sroa.speculated27.i.i.i71 = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %.sroa.137362.5883) ; 3 uses
  %i.lo = add nuw nsw i32 %.sroa.speculated27.i.i.i71, 8
  %.sroa.speculated.i.i.i72 = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.lo)
  %i.lp = sub nsw i32 %.sroa.speculated.i.i.i72, %.sroa.speculated27.i.i.i71 ; 2 uses
  %i.lq = icmp samesign ult i32 %i.lp, 9
  tail call void @llvm.assume(i1 %i.lq)
  %i.lr = zext nneg i32 %.sroa.speculated27.i.i.i71 to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.lr
  %i.lt = zext nneg i32 %i.lp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i63, ptr align 1 %i.ls, i64 %i.lt, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67: ; preds = %bb.at, %bb.aq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68 = phi ptr [ %.sroa.0.i.i63, %bb.at ], [ %i.lm, %bb.aq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i63)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, ptr %2, align 8
  %i.lu = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i8 ; 2 uses
  %i.lv = icmp ne i8 %i.lu, -1
  %i.lw = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 8
  %i.lx = trunc i64 %i.lw to i8                   ; 3 uses
  %i.ly = icmp ne i8 %i.lx, -1
  %i.lz = and i1 %i.lv, %i.ly
  %i.ma = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 16
  %i.mb = trunc i64 %i.ma to i8                   ; 2 uses
  %i.mc = icmp ne i8 %i.mb, -1
  %i.md = and i1 %i.mc, %i.lz
  %i.me = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 4278190080
  %i.mf = icmp ne i64 %i.me, 4278190080
  %i.mg = and i1 %i.mf, %i.md
  br i1 %i.mg, label %bb.au, label %.preheader.i170

.preheader.i170:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.mh = zext nneg i32 %.sroa.48.5882 to i64     ; 8 uses
  %i.mi = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 255
  %indvars.iv.next.i171 = add nuw nsw i64 %i.mh, 8
  %i.mj = sub nuw nsw i64 56, %i.mh
  %i.mk = shl nuw i64 %i.mi, %i.mj
  %i.ml = or i64 %i.mk, %.sroa.0286.4881          ; 2 uses
  %.not.i172 = icmp eq i8 %i.lu, -1
  br i1 %.not.i172, label %bb.av, label %bb.ax

bb.au:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.mm = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i32
  %i.mn = tail call i32 @llvm.bswap.i32(i32 %i.mm)
  %i.mo = zext i32 %i.mn to i64
  %i.mp = sub nuw nsw i32 32, %.sroa.48.5882
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = shl nuw i64 %i.mo, %i.mq
  %i.ms = or i64 %i.mr, %.sroa.0286.4881
  %i.mt = or disjoint i32 %.sroa.48.5882, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191

bb.av:                                            ; preds = %.preheader.i170
  %i.mu = icmp eq i8 %i.lx, 0
  br i1 %i.mu, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.bc, %bb.ba, %bb.ay, %bb.av
  %.01962.lcssa.i186 = phi i32 [ 0, %bb.av ], [ %.2.ph.i173, %bb.ay ], [ %i.nm, %bb.ba ], [ %i.nx, %bb.bc ]
  %.02161.lcssa.i187.neg925 = phi i32 [ 0, %bb.av ], [ -1, %bb.ay ], [ -2, %bb.ba ], [ -3, %bb.bc ]
  %.lcssa66.wide.i188 = phi i64 [ %i.mh, %bb.av ], [ %indvars.iv.next.i171, %bb.ay ], [ %indvars.iv.next.1.i174, %bb.ba ], [ %indvars.iv.next.2.i177, %bb.bc ]
  %.lcssa.i189 = phi i64 [ %i.ml, %bb.av ], [ %i.ng, %bb.ay ], [ %i.nt, %bb.ba ], [ %i.oe, %bb.bc ]
  %i.mv = add nuw nsw i32 %.01962.lcssa.i186, %.sroa.137362.5883
  %i.mw = icmp slt i32 %.sroa.169390.5886, 0
  tail call void @llvm.assume(i1 %i.mw)
  %i.mx = lshr i64 -1, %.lcssa66.wide.i188
  %i.my = xor i64 %i.mx, -1
  %i.mz = and i64 %.lcssa.i189, %i.my
  %.neg = sub nsw i32 %i.dq, %.sroa.137362.5883
  %reass.sub.i190 = add nsw i32 %.neg, %.02161.lcssa.i187.neg925 ; 2 uses
  %i.na = add nuw nsw i32 %reass.sub.i190, 4
  %i.nb = icmp ugt i32 %reass.sub.i190, 1
  tail call void @llvm.assume(i1 %i.nb)
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av, %.preheader.i170
  %i.nc = phi i8 [ %i.lx, %.preheader.i170 ], [ %i.mb, %bb.av ] ; 2 uses
  %.2.ph.i173 = phi i32 [ 1, %.preheader.i170 ], [ 2, %bb.av ] ; 3 uses
  %i.nd = zext i8 %i.nc to i64
  %indvars.iv.next.1.i174 = add nuw nsw i64 %i.mh, 16
  %i.ne = sub nuw nsw i64 48, %i.mh
  %i.nf = shl nuw nsw i64 %i.nd, %i.ne
  %i.ng = or i64 %i.nf, %i.ml                     ; 2 uses
  %.not.1.i175 = icmp eq i8 %i.nc, -1
  br i1 %.not.1.i175, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.nh = zext nneg i32 %.2.ph.i173 to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 1
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !151
  %i.nl = icmp eq i8 %i.nk, 0
  br i1 %i.nl, label %bb.az, label %bb.aw

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink.i176 = phi i32 [ 1, %bb.ax ], [ 2, %bb.ay ]
  %i.nm = add nuw nsw i32 %.sink.i176, %.2.ph.i173 ; 3 uses
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 %i.nn ; 2 uses
  %i.np = load i8, ptr %i.no, align 1, !tbaa !151 ; 2 uses
  %i.nq = zext i8 %i.np to i64
  %indvars.iv.next.2.i177 = add nuw nsw i64 %i.mh, 24
  %i.nr = sub nuw nsw i64 40, %i.mh
  %i.ns = shl nuw nsw i64 %i.nq, %i.nr
  %i.nt = or i64 %i.ns, %i.ng                     ; 2 uses
  %.not.2.i178 = icmp eq i8 %i.np, -1
  br i1 %.not.2.i178, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !151
  %i.nw = icmp eq i8 %i.nv, 0
  br i1 %i.nw, label %bb.bb, label %bb.aw

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink72.i179 = phi i32 [ 1, %bb.az ], [ 2, %bb.ba ]
  %i.nx = add nuw nsw i32 %.sink72.i179, %i.nm    ; 3 uses
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 %i.ny ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !151 ; 2 uses
  %i.ob = zext i8 %i.oa to i64
  %indvars.iv.next.3.i180 = or disjoint i32 %.sroa.48.5882, 32
  %i.oc = sub nuw nsw i64 32, %i.mh
  %i.od = shl nuw nsw i64 %i.ob, %i.oc
  %i.oe = or i64 %i.od, %i.nt                     ; 2 uses
  %.not.3.i181 = icmp eq i8 %i.oa, -1
  br i1 %.not.3.i181, label %bb.bc, label %.loopexit.i182

bb.bc:                                            ; preds = %bb.bb
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !151
  %i.oh = icmp eq i8 %i.og, 0
  br i1 %i.oh, label %.loopexit.i182, label %bb.aw

.loopexit.i182:                                   ; preds = %bb.bc, %bb.bb
  %.sink73.i183 = phi i32 [ 1, %bb.bb ], [ 2, %bb.bc ]
  %i.oi = add nuw nsw i32 %.sink73.i183, %i.nx
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i182, %bb.aw
  %.sroa.0286.30 = phi i64 [ %i.oe, %.loopexit.i182 ], [ %i.mz, %bb.aw ]
  %.sroa.48.31 = phi i32 [ %indvars.iv.next.3.i180, %.loopexit.i182 ], [ 64, %bb.aw ]
  %.sroa.169390.16 = phi i32 [ %.sroa.169390.5886, %.loopexit.i182 ], [ %i.mv, %bb.aw ]
  %.3.i184 = phi i32 [ %i.oi, %.loopexit.i182 ], [ %i.na, %bb.aw ] ; 2 uses
  %i.oj = icmp sgt i32 %.3.i184, 4
  tail call void @llvm.assume(i1 %i.oj)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191: ; preds = %bb.au, %bb.bd
  %.sroa.0286.31 = phi i64 [ %i.ms, %bb.au ], [ %.sroa.0286.30, %bb.bd ]
  %.sroa.48.32 = phi i32 [ %i.mt, %bb.au ], [ %.sroa.48.31, %bb.bd ]
  %.sroa.169390.17 = phi i32 [ %.sroa.169390.5886, %bb.au ], [ %.sroa.169390.16, %bb.bd ]
  %.0.i185 = phi i32 [ 4, %bb.au ], [ %.3.i184, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ok = add nuw nsw i32 %.0.i185, %.sroa.137362.5883
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73: ; preds = %bb.ao, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191
  %.sroa.0286.20 = phi i64 [ %.sroa.0286.31, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.0286.4881, %bb.ao ] ; 2 uses
  %.sroa.48.21 = phi i32 [ %.sroa.48.32, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.48.5882, %bb.ao ]
  %.sroa.137362.12 = phi i32 [ %i.ok, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.137362.5883, %bb.ao ] ; 2 uses
  %.sroa.169390.12 = phi i32 [ %.sroa.169390.17, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.169390.5886, %bb.ao ] ; 2 uses
  %i.ol = lshr i64 %.sroa.0286.20, 53             ; 3 uses
  %i.om = trunc nuw nsw i64 %i.ol to i32          ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.li, i64 128
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !172
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.ol
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !22 ; 4 uses
  %i.or = ashr i32 %i.oq, 9                       ; 2 uses
  %i.os = and i32 %i.oq, 255                      ; 4 uses
  %i.ot = icmp samesign ult i32 %i.os, 33
  tail call void @llvm.assume(i1 %i.ot)
  %i.ou = sub nuw nsw i32 %.sroa.48.21, %i.os     ; 3 uses
  %i.ov = zext nneg i32 %i.os to i64
  %i.ow = shl i64 %.sroa.0286.20, %i.ov           ; 3 uses
  %i.ox = and i32 %i.oq, 256
  %.not.i65.i = icmp eq i32 %i.ox, 0
  br i1 %.not.i65.i, label %bb.be, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.be:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.not17.i67.i = icmp eq i32 %i.oq, 0
  br i1 %.not17.i67.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oy = trunc i32 %i.or to i8                   ; 2 uses
  %i.oz = icmp ne i8 %i.oy, 0
  tail call void @llvm.assume(i1 %i.oz)
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.pa = icmp eq i32 %i.os, 0
  tail call void @llvm.assume(i1 %i.pa)
  %i.pb = add nsw i32 %i.ou, -11                  ; 2 uses
  %i.pc = shl i64 %i.ow, 11                       ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.pe = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !174
  %i.pg = load ptr, ptr %i.pd, align 8, !tbaa !175
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = sub i64 %i.ph, %i.pi
  %i.pk = ashr exact i64 %i.pj, 2
  %i.pl = add nsw i64 %i.pk, -1                   ; 3 uses
  %.sroa.0.018.i76 = trunc nuw nsw i64 %i.ol to i16 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi4ELi1EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.ps = icmp eq i16 %i.pr, -1
  %i.pt = icmp ult i16 %i.pr, %.sroa.0.021.i98
  %or.cond.i101 = select i1 %i.ps, i1 true, i1 %i.pt
  br i1 %or.cond.i101, label %.critedge2.i102, label %.critedge.i78.loopexit

.critedge2.i102:                                  ; preds = %bb.bh
  %i.pu = icmp samesign ult i32 %.sroa.48.23, 65
  tail call void @llvm.assume(i1 %i.pu)
  %i.pv = icmp ne i32 %.sroa.48.23, 0
  tail call void @llvm.assume(i1 %i.pv)
  %i.pw = lshr i64 %.sroa.0286.22, 63
  %i.px = trunc nuw nsw i64 %i.pw to i32
  %i.py = add nsw i32 %.sroa.48.23, -1            ; 2 uses
  %i.pz = shl i64 %.sroa.0286.22, 1               ; 2 uses
  %i.qa = shl nsw i32 %.sroa.0.0.in19.i100, 1
  %i.qb = and i32 %i.qa, 131070
  %i.qc = or disjoint i32 %i.qb, %i.px            ; 3 uses
  %i.qd = add i8 %.sroa.8.020.i99, 1              ; 3 uses
  %.sroa.0.0.i103 = trunc i32 %i.qc to i16        ; 2 uses
  %i.qe = zext i8 %i.qd to i64                    ; 3 uses
  %i.qf = icmp ugt i64 %i.pl, %i.qe
  br i1 %i.qf, label %bb.bh, label %.critedge.i78.loopexit, !llvm.loop !179

.critedge.i78.loopexit:                           ; preds = %bb.bh, %.critedge2.i102
  %.sroa.0286.21.ph = phi i64 [ %i.pz, %.critedge2.i102 ], [ %.sroa.0286.22, %bb.bh ]
  %.sroa.48.22.ph = phi i32 [ %i.py, %.critedge2.i102 ], [ %.sroa.48.23, %bb.bh ]
  %.sroa.0.0.in.lcssa.i79.ph = phi i32 [ %i.qc, %.critedge2.i102 ], [ %.sroa.0.0.in19.i100, %bb.bh ]
  %.sroa.8.0.lcssa.i80.ph = phi i8 [ %i.qd, %.critedge2.i102 ], [ %.sroa.8.020.i99, %bb.bh ]
  %.sroa.0.0.lcssa.i81.ph = phi i16 [ %.sroa.0.0.i103, %.critedge2.i102 ], [ %.sroa.0.021.i98, %bb.bh ]
  %.lcssa17.i82.ph = phi i64 [ %i.qe, %.critedge2.i102 ], [ %i.pp, %bb.bh ]
  %i.qg = zext i8 %.sroa.8.0.lcssa.i80.ph to i32
  br label %.critedge.i78

.critedge.i78:                                    ; preds = %.critedge.i78.loopexit, %bb.bg
  %.sroa.0286.21 = phi i64 [ %i.pc, %bb.bg ], [ %.sroa.0286.21.ph, %.critedge.i78.loopexit ]
  %.sroa.48.22 = phi i32 [ %i.pb, %bb.bg ], [ %.sroa.48.22.ph, %.critedge.i78.loopexit ]
  %.sroa.0.0.in.lcssa.i79 = phi i32 [ %i.om, %bb.bg ], [ %.sroa.0.0.in.lcssa.i79.ph, %.critedge.i78.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i80 = phi i32 [ 11, %bb.bg ], [ %i.qg, %.critedge.i78.loopexit ]
  %.sroa.0.0.lcssa.i81 = phi i16 [ %.sroa.0.018.i76, %bb.bg ], [ %.sroa.0.0.lcssa.i81.ph, %.critedge.i78.loopexit ]
  %.lcssa17.i82 = phi i64 [ 11, %bb.bg ], [ %.lcssa17.i82.ph, %.critedge.i78.loopexit ] ; 3 uses
  %i.qh = icmp ult i64 %i.pl, %.lcssa17.i82
  br i1 %i.qh, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i78
  %i.qi = getelementptr inbounds nuw i8, ptr %i.li, i64 80
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !176
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %.lcssa17.i82
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !164
  %i.qm = icmp ult i16 %i.ql, %.sroa.0.0.lcssa.i81
  br i1 %i.qm, label %bb.bj, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104

bb.bj:                                            ; preds = %bb.bi, %.critedge.i78
  %i.qn = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.qn, i32 noundef %.sroa.8.0.lcssa.i80) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104: ; preds = %bb.bi
  %.sroa.0.0.mask.i84 = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  %i.qo = getelementptr inbounds nuw i8, ptr %i.li, i64 104
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !176
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %.lcssa17.i82
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !164
  %i.qs = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %.tr.i85 = zext i16 %i.qr to i32
  %.narrow.i86 = sub nsw i32 %.sroa.0.0.mask.i84, %.tr.i85
  %i.qt = zext i32 %.narrow.i86 to i64
  %i.qu = load ptr, ptr %i.qs, align 8, !tbaa !180
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qt
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !151
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104, %bb.bf
  %.0737 = phi i8 [ %i.qw, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.oy, %bb.bf ] ; 5 uses
  %.sroa.0286.6 = phi i64 [ %.sroa.0286.21, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.ow, %bb.bf ] ; 6 uses
  %.sroa.48.7 = phi i32 [ %.sroa.48.22, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.ou, %bb.bf ] ; 8 uses
  %i.qx = icmp ult i8 %.0737, 17
  tail call void @llvm.assume(i1 %i.qx)
  switch i8 %.0737, label %bb.bn [
    i8 16, label %bb.bl
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.qy = getelementptr inbounds nuw i8, ptr %i.li, i64 1
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !181, !range !136, !noundef !121
  %i.ra = trunc nuw i8 %i.qz to i1
  br i1 %i.ra, label %bb.bm, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bm:                                            ; preds = %bb.bl
  %i.rb = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.rb)
  %i.rc = icmp samesign ugt i32 %.sroa.48.7, 15
  tail call void @llvm.assume(i1 %i.rc)
  %i.rd = add nsw i32 %.sroa.48.7, -16
  %i.re = shl i64 %.sroa.0286.6, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bn:                                            ; preds = %bb.bk
  %i.rf = zext nneg i8 %.0737 to i32              ; 4 uses
  %i.rg = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.rg)
  %i.rh = icmp ne i8 %.0737, 0
  tail call void @llvm.assume(i1 %i.rh)
  %i.ri = icmp samesign uge i32 %.sroa.48.7, %i.rf
  tail call void @llvm.assume(i1 %i.ri)
  %i.rj = sub nuw nsw i32 64, %i.rf
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = lshr i64 %.sroa.0286.6, %i.rk
  %i.rm = trunc nuw nsw i64 %i.rl to i32
  %i.rn = sub nsw i32 %.sroa.48.7, %i.rf
  %i.ro = zext nneg i8 %.0737 to i64
  %i.rp = shl i64 %.sroa.0286.6, %i.ro
  %i.rq = icmp sgt i64 %.sroa.0286.6, -1
  %notmask.i.i106 = shl nsw i32 -1, %i.rf
  %.neg.i.i107 = or disjoint i32 %notmask.i.i106, 1
  %i.rr = select i1 %i.rq, i32 %.neg.i.i107, i32 0
  %.0.i.i108 = add nsw i32 %i.rr, %i.rm
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.sroa.0286.5 = phi i64 [ %i.ow, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.rp, %bb.bn ], [ %i.re, %bb.bm ], [ %.sroa.0286.6, %bb.bl ], [ %.sroa.0286.6, %bb.bk ] ; 2 uses
  %.sroa.48.6 = phi i32 [ %i.ou, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.rn, %bb.bn ], [ %i.rd, %bb.bm ], [ %.sroa.48.7, %bb.bl ], [ %.sroa.48.7, %bb.bk ] ; 2 uses
  %.0.i66.i = phi i32 [ %i.or, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %.0.i.i108, %bb.bn ], [ -32768, %bb.bm ], [ -32768, %bb.bl ], [ 0, %bb.bk ]
  %i.rs = or disjoint i64 %indvars.iv961, %i.ld   ; 2 uses
  %i.rt = icmp samesign ult i64 %i.rs, %i.bo
  br i1 %i.rt, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %i.ru = trunc i32 %.0.i66.i to i16
  %i.rv = add i16 %i.lg, %i.ru
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.rs
  store i16 %i.rv, ptr %i.rw, align 2, !tbaa !164
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %indvars.iv.next962 = add nuw nsw i64 %indvars.iv961, 1 ; 2 uses
  %.not53.i = icmp eq i64 %indvars.iv.next962, 4
  br i1 %.not53.i, label %.loopexit759, label %bb.ao, !llvm.loop !233

bb.bq:                                            ; preds = %.loopexit759, %._crit_edge
  %.sroa.0286.7 = phi i64 [ %.sroa.0286.2.lcssa, %._crit_edge ], [ %.sroa.0286.5, %.loopexit759 ] ; 2 uses
  %.sroa.48.8 = phi i32 [ %.sroa.48.3.lcssa, %._crit_edge ], [ %.sroa.48.6, %.loopexit759 ] ; 2 uses
  %.sroa.137362.6 = phi i32 [ %.sroa.137362.3.lcssa, %._crit_edge ], [ %.sroa.137362.12, %.loopexit759 ] ; 2 uses
  %.sroa.169390.6 = phi i32 [ %.sroa.169390.3.lcssa, %._crit_edge ], [ %.sroa.169390.12, %.loopexit759 ] ; 2 uses
  %.1.i = phi i32 [ %.044.i.lcssa, %._crit_edge ], [ %i.le, %.loopexit759 ] ; 2 uses
  %i.rx = load i32, ptr %i.bl, align 8, !tbaa !183 ; 2 uses
  %i.ry = icmp slt i32 %.1.i, %i.rx
  br i1 %i.ry, label %.preheader757, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

.preheader757:                                    ; preds = %bb.bq, %bb.br
  %.2.i903 = phi i32 [ %i.rz, %bb.br ], [ %.1.i, %bb.bq ]
  %.sroa.169390.7902 = phi i32 [ %.sroa.169390.13, %bb.br ], [ %.sroa.169390.6, %bb.bq ]
  %.sroa.137362.7901 = phi i32 [ %.sroa.137362.13, %bb.br ], [ %.sroa.137362.6, %bb.bq ]
  %.sroa.48.9900 = phi i32 [ %.sroa.48.11, %bb.br ], [ %.sroa.48.8, %bb.bq ]
  %.sroa.0286.8899 = phi i64 [ %.sroa.0286.10, %bb.br ], [ %.sroa.0286.7, %bb.bq ]
  br label %bb.bs

bb.br:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %i.rz = add nsw i32 %.2.i903, 1                 ; 2 uses
  %exitcond967.not = icmp eq i32 %i.rz, %i.rx
  br i1 %exitcond967.not, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, label %.preheader757, !llvm.loop !234

bb.bs:                                            ; preds = %.preheader757, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %indvars.iv964 = phi i64 [ 0, %.preheader757 ], [ %indvars.iv.next965, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 2 uses
  %.sroa.169390.8897 = phi i32 [ %.sroa.169390.7902, %.preheader757 ], [ %.sroa.169390.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 4 uses
  %.sroa.137362.8894 = phi i32 [ %.sroa.137362.7901, %.preheader757 ], [ %.sroa.137362.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 8 uses
  %.sroa.48.10893 = phi i32 [ %.sroa.48.9900, %.preheader757 ], [ %.sroa.48.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 7 uses
  %.sroa.0286.9892 = phi i64 [ %.sroa.0286.8899, %.preheader757 ], [ %.sroa.0286.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 3 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv964
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !212 ; 8 uses
  %i.sc = icmp samesign ult i32 %.sroa.48.10893, 65
  tail call void @llvm.assume(i1 %i.sc)
  %.not.i114 = icmp samesign ult i32 %.sroa.48.10893, 32
  br i1 %.not.i114, label %bb.bt, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i113)
  %i.sd = add nuw nsw i32 %.sroa.137362.8894, 8
  %.not.i.i115 = icmp samesign ugt i32 %i.sd, %i.dq
  br i1 %.not.i.i115, label %bb.bv, label %bb.bu, !prof !152

bb.bu:                                            ; preds = %bb.bt
  %i.se = zext nneg i32 %.sroa.137362.8894 to i64
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.se
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

bb.bv:                                            ; preds = %bb.bt
  %i.sg = icmp samesign ugt i32 %.sroa.137362.8894, %i.dw
  br i1 %i.sg, label %bb.bw, label %bb.bx, !prof !152

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.bx:                                            ; preds = %bb.bv
  store i64 0, ptr %.sroa.0.i.i113, align 8
  %.sroa.speculated27.i.i.i121 = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %.sroa.137362.8894) ; 3 uses
  %i.sh = add nuw nsw i32 %.sroa.speculated27.i.i.i121, 8
  %.sroa.speculated.i.i.i122 = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.sh)
  %i.si = sub nsw i32 %.sroa.speculated.i.i.i122, %.sroa.speculated27.i.i.i121 ; 2 uses
  %i.sj = icmp samesign ult i32 %i.si, 9
  tail call void @llvm.assume(i1 %i.sj)
  %i.sk = zext nneg i32 %.sroa.speculated27.i.i.i121 to i64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.sk
  %i.sm = zext nneg i32 %i.si to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i113, ptr align 1 %i.sl, i64 %i.sm, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117: ; preds = %bb.bx, %bb.bu
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118 = phi ptr [ %.sroa.0.i.i113, %bb.bx ], [ %i.sf, %bb.bu ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i113)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, ptr %1, align 8
  %i.sn = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i8 ; 2 uses
  %i.so = icmp ne i8 %i.sn, -1
  %i.sp = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 8
  %i.sq = trunc i64 %i.sp to i8                   ; 3 uses
  %i.sr = icmp ne i8 %i.sq, -1
  %i.ss = and i1 %i.so, %i.sr
  %i.st = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 16
  %i.su = trunc i64 %i.st to i8                   ; 2 uses
  %i.sv = icmp ne i8 %i.su, -1
  %i.sw = and i1 %i.sv, %i.ss
  %i.sx = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 4278190080
  %i.sy = icmp ne i64 %i.sx, 4278190080
  %i.sz = and i1 %i.sy, %i.sw
  br i1 %i.sz, label %bb.by, label %.preheader.i194

.preheader.i194:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.ta = zext nneg i32 %.sroa.48.10893 to i64    ; 8 uses
  %i.tb = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 255
  %indvars.iv.next.i195 = add nuw nsw i64 %i.ta, 8
  %i.tc = sub nuw nsw i64 56, %i.ta
  %i.td = shl nuw i64 %i.tb, %i.tc
  %i.te = or i64 %i.td, %.sroa.0286.9892          ; 2 uses
  %.not.i196 = icmp eq i8 %i.sn, -1
  br i1 %.not.i196, label %bb.bz, label %bb.cb

bb.by:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.tf = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i32
  %i.tg = tail call i32 @llvm.bswap.i32(i32 %i.tf)
  %i.th = zext i32 %i.tg to i64
  %i.ti = sub nuw nsw i32 32, %.sroa.48.10893
  %i.tj = zext nneg i32 %i.ti to i64
  %i.tk = shl nuw i64 %i.th, %i.tj
  %i.tl = or i64 %i.tk, %.sroa.0286.9892
  %i.tm = or disjoint i32 %.sroa.48.10893, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215

bb.bz:                                            ; preds = %.preheader.i194
  %i.tn = icmp eq i8 %i.sq, 0
  br i1 %i.tn, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.cg, %bb.ce, %bb.cc, %bb.bz
  %.01962.lcssa.i210 = phi i32 [ 0, %bb.bz ], [ %.2.ph.i197, %bb.cc ], [ %i.uf, %bb.ce ], [ %i.uq, %bb.cg ]
  %.02161.lcssa.i211.neg926 = phi i32 [ 0, %bb.bz ], [ -1, %bb.cc ], [ -2, %bb.ce ], [ -3, %bb.cg ]
  %.lcssa66.wide.i212 = phi i64 [ %i.ta, %bb.bz ], [ %indvars.iv.next.i195, %bb.cc ], [ %indvars.iv.next.1.i198, %bb.ce ], [ %indvars.iv.next.2.i201, %bb.cg ]
  %.lcssa.i213 = phi i64 [ %i.te, %bb.bz ], [ %i.tz, %bb.cc ], [ %i.um, %bb.ce ], [ %i.ux, %bb.cg ]
  %i.to = add nuw nsw i32 %.01962.lcssa.i210, %.sroa.137362.8894
  %i.tp = icmp slt i32 %.sroa.169390.8897, 0
  tail call void @llvm.assume(i1 %i.tp)
  %i.tq = lshr i64 -1, %.lcssa66.wide.i212
  %i.tr = xor i64 %i.tq, -1
  %i.ts = and i64 %.lcssa.i213, %i.tr
  %.neg755 = sub nsw i32 %i.dq, %.sroa.137362.8894
  %reass.sub.i214 = add nsw i32 %.neg755, %.02161.lcssa.i211.neg926 ; 2 uses
  %i.tt = add nuw nsw i32 %reass.sub.i214, 4
  %i.tu = icmp ugt i32 %reass.sub.i214, 1
  tail call void @llvm.assume(i1 %i.tu)
  br label %bb.ch

bb.cb:                                            ; preds = %bb.bz, %.preheader.i194
  %i.tv = phi i8 [ %i.sq, %.preheader.i194 ], [ %i.su, %bb.bz ] ; 2 uses
  %.2.ph.i197 = phi i32 [ 1, %.preheader.i194 ], [ 2, %bb.bz ] ; 3 uses
  %i.tw = zext i8 %i.tv to i64
  %indvars.iv.next.1.i198 = add nuw nsw i64 %i.ta, 16
  %i.tx = sub nuw nsw i64 48, %i.ta
  %i.ty = shl nuw nsw i64 %i.tw, %i.tx
  %i.tz = or i64 %i.ty, %i.te                     ; 2 uses
  %.not.1.i199 = icmp eq i8 %i.tv, -1
  br i1 %.not.1.i199, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ua = zext nneg i32 %.2.ph.i197 to i64
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 %i.ua
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !151
  %i.ue = icmp eq i8 %i.ud, 0
  br i1 %i.ue, label %bb.cd, label %bb.ca

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink.i200 = phi i32 [ 1, %bb.cb ], [ 2, %bb.cc ]
  %i.uf = add nuw nsw i32 %.sink.i200, %.2.ph.i197 ; 3 uses
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ug ; 2 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !151 ; 2 uses
  %i.uj = zext i8 %i.ui to i64
  %indvars.iv.next.2.i201 = add nuw nsw i64 %i.ta, 24
  %i.uk = sub nuw nsw i64 40, %i.ta
  %i.ul = shl nuw nsw i64 %i.uj, %i.uk
  %i.um = or i64 %i.ul, %i.tz                     ; 2 uses
  %.not.2.i202 = icmp eq i8 %i.ui, -1
  br i1 %.not.2.i202, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.un = getelementptr inbounds nuw i8, ptr %i.uh, i64 1
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !151
  %i.up = icmp eq i8 %i.uo, 0
  br i1 %i.up, label %bb.cf, label %bb.ca

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sink72.i203 = phi i32 [ 1, %bb.cd ], [ 2, %bb.ce ]
  %i.uq = add nuw nsw i32 %.sink72.i203, %i.uf    ; 3 uses
  %i.ur = zext nneg i32 %i.uq to i64
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 %i.ur ; 2 uses
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !151 ; 2 uses
  %i.uu = zext i8 %i.ut to i64
  %indvars.iv.next.3.i204 = or disjoint i32 %.sroa.48.10893, 32
  %i.uv = sub nuw nsw i64 32, %i.ta
  %i.uw = shl nuw nsw i64 %i.uu, %i.uv
  %i.ux = or i64 %i.uw, %i.um                     ; 2 uses
  %.not.3.i205 = icmp eq i8 %i.ut, -1
  br i1 %.not.3.i205, label %bb.cg, label %.loopexit.i206

bb.cg:                                            ; preds = %bb.cf
  %i.uy = getelementptr inbounds nuw i8, ptr %i.us, i64 1
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !151
  %i.va = icmp eq i8 %i.uz, 0
  br i1 %i.va, label %.loopexit.i206, label %bb.ca

.loopexit.i206:                                   ; preds = %bb.cg, %bb.cf
  %.sink73.i207 = phi i32 [ 1, %bb.cf ], [ 2, %bb.cg ]
  %i.vb = add nuw nsw i32 %.sink73.i207, %i.uq
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i206, %bb.ca
  %.sroa.0286.32 = phi i64 [ %i.ux, %.loopexit.i206 ], [ %i.ts, %bb.ca ]
  %.sroa.48.33 = phi i32 [ %indvars.iv.next.3.i204, %.loopexit.i206 ], [ 64, %bb.ca ]
  %.sroa.169390.18 = phi i32 [ %.sroa.169390.8897, %.loopexit.i206 ], [ %i.to, %bb.ca ]
  %.3.i208 = phi i32 [ %i.vb, %.loopexit.i206 ], [ %i.tt, %bb.ca ] ; 2 uses
  %i.vc = icmp sgt i32 %.3.i208, 4
  tail call void @llvm.assume(i1 %i.vc)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215: ; preds = %bb.by, %bb.ch
  %.sroa.0286.33 = phi i64 [ %i.tl, %bb.by ], [ %.sroa.0286.32, %bb.ch ]
  %.sroa.48.34 = phi i32 [ %i.tm, %bb.by ], [ %.sroa.48.33, %bb.ch ]
  %.sroa.169390.19 = phi i32 [ %.sroa.169390.8897, %bb.by ], [ %.sroa.169390.18, %bb.ch ]
  %.0.i209 = phi i32 [ 4, %bb.by ], [ %.3.i208, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.vd = add nuw nsw i32 %.0.i209, %.sroa.137362.8894
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123: ; preds = %bb.bs, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215
  %.sroa.0286.24 = phi i64 [ %.sroa.0286.33, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.0286.9892, %bb.bs ] ; 2 uses
  %.sroa.48.25 = phi i32 [ %.sroa.48.34, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.48.10893, %bb.bs ]
  %.sroa.137362.13 = phi i32 [ %i.vd, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.137362.8894, %bb.bs ] ; 3 uses
  %.sroa.169390.13 = phi i32 [ %.sroa.169390.19, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.169390.8897, %bb.bs ] ; 3 uses
  %i.ve = lshr i64 %.sroa.0286.24, 53             ; 3 uses
  %i.vf = trunc nuw nsw i64 %i.ve to i32          ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.sb, i64 128
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !172
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.ve
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !22 ; 4 uses
  %i.vk = lshr i32 %i.vj, 9
  %i.vl = and i32 %i.vj, 255                      ; 4 uses
  %i.vm = icmp samesign ult i32 %i.vl, 33
  tail call void @llvm.assume(i1 %i.vm)
  %i.vn = sub nuw nsw i32 %.sroa.48.25, %i.vl     ; 3 uses
  %i.vo = zext nneg i32 %i.vl to i64
  %i.vp = shl i64 %.sroa.0286.24, %i.vo           ; 3 uses
  %i.vq = and i32 %i.vj, 256
  %.not.i71.i = icmp eq i32 %i.vq, 0
  br i1 %.not.i71.i, label %bb.ci, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.ci:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.not17.i73.i = icmp eq i32 %i.vj, 0
  br i1 %.not17.i73.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.vr = trunc i32 %i.vk to i8                   ; 2 uses
  %i.vs = icmp ne i8 %i.vr, 0
  tail call void @llvm.assume(i1 %i.vs)
  br label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.vt = icmp eq i32 %i.vl, 0
  tail call void @llvm.assume(i1 %i.vt)
  %i.vu = add nsw i32 %i.vn, -11                  ; 2 uses
  %i.vv = shl i64 %i.vp, 11                       ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.sb, i64 32
  %i.vx = getelementptr inbounds nuw i8, ptr %i.sb, i64 40
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !174
  %i.vz = load ptr, ptr %i.vw, align 8, !tbaa !175
  %i.wa = ptrtoint ptr %i.vy to i64
  %i.wb = ptrtoint ptr %i.vz to i64
  %i.wc = sub i64 %i.wa, %i.wb
  %i.wd = ashr exact i64 %i.wc, 2
  %i.we = add nsw i64 %i.wd, -1                   ; 3 uses
  %.sroa.0.018.i126 = trunc nuw nsw i64 %i.ve to i16 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi2EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %bb.c
  %i.dh = add nuw nsw i32 %.sroa.10426.0931, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.dh, %.sroa.221.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #12
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.di = zext nneg i32 %.sroa.10426.0931 to i64
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
  %i.ds = trunc i64 %indvars.iv987 to i32
  %i.dt = add i32 %i.ds, -1
  %i.du = srem i32 %i.dt, 8
  %.not32 = icmp eq i32 %i.dr, %i.du
  br i1 %.not32, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi1ELi1EEEEEEjv) #12
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.i
  %i.dv = add nuw nsw i32 %.sroa.10426.0931, 2    ; 2 uses
  %i.dw = icmp samesign ule i32 %i.dv, %.sroa.221.0.copyload
  tail call void @llvm.assume(i1 %i.dw)
  br label %bb.k

bb.k:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit
  %.sroa.10426.1 = phi i32 [ %.sroa.10426.0931, %_ZNK8rawspeed17LJpegDecompressor15getInitialPredsILi4EEESt5arrayItXT_EEv.exit ], [ %i.dv, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ] ; 3 uses
  %i.dx = sub i32 %.sroa.221.0.copyload, %.sroa.10426.1 ; 15 uses
  %i.dy = zext i32 %.sroa.10426.1 to i64          ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.020.0.copyload, i64 %i.dy ; 6 uses
  %i.ea = icmp sgt i32 %i.dx, -1
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = icmp samesign ult i32 %i.dx, 8
  br i1 %i.eb, label %bb.l, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %bb.k
  br i1 %.not33917, label %.loopexit.thread, label %.lr.ph926

.lr.ph926:                                        ; preds = %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.ec = mul nsw i64 %indvars.iv987, %i.av
  %i.ed = add nuw nsw i32 %i.dx, 16               ; 3 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_15BitStreamerJPEGEEC2ENS_10Array1DRefIKSt4byteEE) #12
  unreachable

bb.m:                                             ; preds = %.lr.ph926, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %indvars.iv984 = phi i64 [ 0, %.lr.ph926 ], [ %indvars.iv.next985, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.8404.0924 = phi i32 [ 2, %.lr.ph926 ], [ %i.n, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0401.0922 = phi ptr [ %6, %.lr.ph926 ], [ %i.em, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.169390.0921 = phi i32 [ -1, %.lr.ph926 ], [ %.sroa.169390.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.137362.0920 = phi i32 [ 0, %.lr.ph926 ], [ %.sroa.137362.7.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 3 uses
  %.sroa.48.0919 = phi i32 [ 0, %.lr.ph926 ], [ %.sroa.48.9.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %.sroa.0286.0918 = phi i64 [ 0, %.lr.ph926 ], [ %.sroa.0286.8.lcssa, %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ] ; 2 uses
  %i.ee = add nsw i64 %indvars.iv984, %i.ec       ; 2 uses
  %i.ef = shl nuw nsw i64 %i.ee, 1                ; 4 uses
  %i.eg = icmp sgt i64 %i.ee, -1
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = icmp sle i64 %i.ef, %i.bv
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = trunc nuw nsw i64 %i.ef to i32
  %.not34 = icmp eq i32 %i.z, %i.ei
  br i1 %.not34, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.ej = icmp eq i64 %indvars.iv987, %i.by
  tail call void @llvm.assume(i1 %i.ej)
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.assume(i1 %i.bi)
  tail call void @llvm.assume(i1 %i.bj)
  %i.ek = icmp samesign ult i64 %i.ef, %i.bv
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = mul nuw nsw i64 %i.ef, %i.bw
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.el ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <4 x ptr> %i.cs, ptr %5, align 8
  tail call void @llvm.assume(i1 %i.bl)
  %i.en = load i32, ptr %i.bm, align 4, !tbaa !38 ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  tail call void @llvm.assume(i1 %i.bn)
  tail call void @llvm.assume(i1 %i.bo)
  %wide.trip.count = zext nneg i32 %i.en to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv971 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next972, %bb.p ] ; 2 uses
  %.sroa.22.0879 = phi i32 [ %.sroa.8404.0924, %.lr.ph ], [ %i.n, %bb.p ]
  %.sroa.0509.0877 = phi ptr [ %.sroa.0401.0922, %.lr.ph ], [ %i.er, %bb.p ]
  %.sroa.169390.3876 = phi i32 [ %.sroa.169390.0921, %.lr.ph ], [ %.sroa.169390.11, %bb.p ]
  %.sroa.137362.3875 = phi i32 [ %.sroa.137362.0920, %.lr.ph ], [ %.sroa.137362.11, %bb.p ]
  %.sroa.48.3874 = phi i32 [ %.sroa.48.0919, %.lr.ph ], [ %.sroa.48.15, %bb.p ]
  %.sroa.0286.2873 = phi i64 [ %.sroa.0286.0918, %.lr.ph ], [ %.sroa.0286.14, %bb.p ]
  %i.ep = shl nuw nsw i64 %indvars.iv971, 1       ; 2 uses
  %i.eq = icmp samesign ule i64 %i.ep, %i.bt
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.ep ; 3 uses
  %i.es = zext nneg i32 %.sroa.22.0879 to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.o, %bb.q
  %.not54.i = phi i1 [ false, %bb.o ], [ true, %bb.q ]
  %indvars.iv968 = phi i64 [ 0, %bb.o ], [ 1, %bb.q ] ; 3 uses
  %.sroa.169390.9871 = phi i32 [ %.sroa.169390.3876, %bb.o ], [ %.sroa.169390.11, %bb.q ]
  %.sroa.137362.9870 = phi i32 [ %.sroa.137362.3875, %bb.o ], [ %.sroa.137362.11, %bb.q ]
  %.sroa.48.13869 = phi i32 [ %.sroa.48.3874, %bb.o ], [ %.sroa.48.15, %bb.q ]
  %.sroa.0286.12868 = phi i64 [ %.sroa.0286.2873, %bb.o ], [ %.sroa.0286.14, %bb.q ]
  %i.et = mul nuw nsw i64 %indvars.iv968, %i.es
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0509.0877, i64 %i.et
  %i.ev = mul nuw nsw i64 %indvars.iv968, %i.bs
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %i.ev
  %.idx = shl nuw nsw i64 %indvars.iv968, 4
  %invariant.gep = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  br label %bb.r

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next972 = add nuw nsw i64 %indvars.iv971, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next972, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !249

bb.q:                                             ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  br i1 %.not54.i, label %bb.p, label %.preheader, !llvm.loop !250

bb.r:                                             ; preds = %.preheader, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  %.not55.i = phi i1 [ false, %.preheader ], [ true, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ]
  %indvars.iv = phi i64 [ 0, %.preheader ], [ 1, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 3 uses
  %.sroa.169390.10866 = phi i32 [ %.sroa.169390.9871, %.preheader ], [ %.sroa.169390.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 4 uses
  %.sroa.137362.10863 = phi i32 [ %.sroa.137362.9870, %.preheader ], [ %.sroa.137362.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 8 uses
  %.sroa.48.14862 = phi i32 [ %.sroa.48.13869, %.preheader ], [ %.sroa.48.15, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 7 uses
  %.sroa.0286.13861 = phi i64 [ %.sroa.0286.12868, %.preheader ], [ %.sroa.0286.14, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.eu, i64 %indvars.iv
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !164
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ez = load ptr, ptr %gep, align 8, !tbaa !212 ; 8 uses
  %i.fa = icmp samesign ult i32 %.sroa.48.14862, 65
  tail call void @llvm.assume(i1 %i.fa)
  %.not.i51 = icmp samesign ult i32 %.sroa.48.14862, 32
  br i1 %.not.i51, label %bb.s, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.fb = add nuw nsw i32 %.sroa.137362.10863, 8
  %.not.i.i52 = icmp samesign ugt i32 %i.fb, %i.dx
  br i1 %.not.i.i52, label %bb.u, label %bb.t, !prof !152

bb.t:                                             ; preds = %bb.s
  %i.fc = zext nneg i32 %.sroa.137362.10863 to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.fc
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

bb.u:                                             ; preds = %bb.s
  %i.fe = icmp samesign ugt i32 %.sroa.137362.10863, %i.ed
  br i1 %i.fe, label %bb.v, label %bb.w, !prof !152

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.w:                                             ; preds = %bb.u
  store i64 0, ptr %.sroa.0.i.i, align 8
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 %.sroa.137362.10863) ; 3 uses
  %i.ff = add nuw nsw i32 %.sroa.speculated27.i.i.i, 8
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 %i.ff)
  %i.fg = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.fh = icmp samesign ult i32 %i.fg, 9
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.fi
  %i.fk = zext nneg i32 %i.fg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i, ptr align 1 %i.fj, i64 %i.fk, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i: ; preds = %bb.w, %bb.t
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.w ], [ %i.fd, %bb.t ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, ptr %3, align 8
  %i.fl = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i8 ; 2 uses
  %i.fm = icmp ne i8 %i.fl, -1
  %i.fn = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 8
  %i.fo = trunc i64 %i.fn to i8                   ; 3 uses
  %i.fp = icmp ne i8 %i.fo, -1
  %i.fq = and i1 %i.fm, %i.fp
  %i.fr = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 16
  %i.fs = trunc i64 %i.fr to i8                   ; 2 uses
  %i.ft = icmp ne i8 %i.fs, -1
  %i.fu = and i1 %i.ft, %i.fq
  %i.fv = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 4278190080
  %i.fw = icmp ne i64 %i.fv, 4278190080
  %i.fx = and i1 %i.fw, %i.fu
  br i1 %i.fx, label %bb.x, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.fy = zext nneg i32 %.sroa.48.14862 to i64    ; 8 uses
  %i.fz = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i, 255
  %indvars.iv.next.i = add nuw nsw i64 %i.fy, 8
  %i.ga = sub nuw nsw i64 56, %i.fy
  %i.gb = shl nuw i64 %i.fz, %i.ga
  %i.gc = or i64 %i.gb, %.sroa.0286.13861         ; 2 uses
  %.not.i166 = icmp eq i8 %i.fl, -1
  br i1 %.not.i166, label %bb.y, label %bb.aa

bb.x:                                             ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i
  %i.gd = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i32
  %i.ge = tail call i32 @llvm.bswap.i32(i32 %i.gd)
  %i.gf = zext i32 %i.ge to i64
  %i.gg = sub nuw nsw i32 32, %.sroa.48.14862
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = shl nuw i64 %i.gf, %i.gh
  %i.gj = or i64 %i.gi, %.sroa.0286.13861
  %i.gk = or disjoint i32 %.sroa.48.14862, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

bb.y:                                             ; preds = %.preheader.i
  %i.gl = icmp eq i8 %i.fo, 0
  br i1 %i.gl, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.af, %bb.ad, %bb.ab, %bb.y
  %.01962.lcssa.i = phi i32 [ 0, %bb.y ], [ %.2.ph.i, %bb.ab ], [ %i.hd, %bb.ad ], [ %i.ho, %bb.af ]
  %.02161.lcssa.i.neg934 = phi i32 [ 0, %bb.y ], [ -1, %bb.ab ], [ -2, %bb.ad ], [ -3, %bb.af ]
  %.lcssa66.wide.i = phi i64 [ %i.fy, %bb.y ], [ %indvars.iv.next.i, %bb.ab ], [ %indvars.iv.next.1.i, %bb.ad ], [ %indvars.iv.next.2.i, %bb.af ]
  %.lcssa.i = phi i64 [ %i.gc, %bb.y ], [ %i.gx, %bb.ab ], [ %i.hk, %bb.ad ], [ %i.hv, %bb.af ]
  %i.gm = add nuw nsw i32 %.01962.lcssa.i, %.sroa.137362.10863
  %i.gn = icmp slt i32 %.sroa.169390.10866, 0
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = lshr i64 -1, %.lcssa66.wide.i
  %i.gp = xor i64 %i.go, -1
  %i.gq = and i64 %.lcssa.i, %i.gp
  %.neg756 = sub nsw i32 %i.dx, %.sroa.137362.10863
  %reass.sub.i = add nsw i32 %.neg756, %.02161.lcssa.i.neg934 ; 2 uses
  %i.gr = add nuw nsw i32 %reass.sub.i, 4
  %i.gs = icmp ugt i32 %reass.sub.i, 1
  tail call void @llvm.assume(i1 %i.gs)
  br label %bb.ag

bb.aa:                                            ; preds = %bb.y, %.preheader.i
  %i.gt = phi i8 [ %i.fo, %.preheader.i ], [ %i.fs, %bb.y ] ; 2 uses
  %.2.ph.i = phi i32 [ 1, %.preheader.i ], [ 2, %bb.y ] ; 3 uses
  %i.gu = zext i8 %i.gt to i64
  %indvars.iv.next.1.i = add nuw nsw i64 %i.fy, 16
  %i.gv = sub nuw nsw i64 48, %i.fy
  %i.gw = shl nuw nsw i64 %i.gu, %i.gv
  %i.gx = or i64 %i.gw, %i.gc                     ; 2 uses
  %.not.1.i = icmp eq i8 %i.gt, -1
  br i1 %.not.1.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gy = zext nneg i32 %.2.ph.i to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !151
  %i.hc = icmp eq i8 %i.hb, 0
  br i1 %i.hc, label %bb.ac, label %bb.z

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink.i = phi i32 [ 1, %bb.aa ], [ 2, %bb.ab ]
  %i.hd = add nuw nsw i32 %.sink.i, %.2.ph.i      ; 3 uses
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 %i.he ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !151 ; 2 uses
  %i.hh = zext i8 %i.hg to i64
  %indvars.iv.next.2.i = add nuw nsw i64 %i.fy, 24
  %i.hi = sub nuw nsw i64 40, %i.fy
  %i.hj = shl nuw nsw i64 %i.hh, %i.hi
  %i.hk = or i64 %i.hj, %i.gx                     ; 2 uses
  %.not.2.i = icmp eq i8 %i.hg, -1
  br i1 %.not.2.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !151
  %i.hn = icmp eq i8 %i.hm, 0
  br i1 %i.hn, label %bb.ae, label %bb.z

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink72.i = phi i32 [ 1, %bb.ac ], [ 2, %bb.ad ]
  %i.ho = add nuw nsw i32 %.sink72.i, %i.hd       ; 3 uses
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 %i.hp ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !151 ; 2 uses
  %i.hs = zext i8 %i.hr to i64
  %indvars.iv.next.3.i = or disjoint i32 %.sroa.48.14862, 32
  %i.ht = sub nuw nsw i64 32, %i.fy
  %i.hu = shl nuw nsw i64 %i.hs, %i.ht
  %i.hv = or i64 %i.hu, %i.hk                     ; 2 uses
  %.not.3.i = icmp eq i8 %i.hr, -1
  br i1 %.not.3.i, label %bb.af, label %.loopexit.i

bb.af:                                            ; preds = %bb.ae
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !151
  %i.hy = icmp eq i8 %i.hx, 0
  br i1 %i.hy, label %.loopexit.i, label %bb.z

.loopexit.i:                                      ; preds = %bb.af, %bb.ae
  %.sink73.i = phi i32 [ 1, %bb.ae ], [ 2, %bb.af ]
  %i.hz = add nuw nsw i32 %.sink73.i, %i.ho
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i, %bb.z
  %.sroa.0286.28 = phi i64 [ %i.hv, %.loopexit.i ], [ %i.gq, %bb.z ]
  %.sroa.48.29 = phi i32 [ %indvars.iv.next.3.i, %.loopexit.i ], [ 64, %bb.z ]
  %.sroa.169390.14 = phi i32 [ %.sroa.169390.10866, %.loopexit.i ], [ %i.gm, %bb.z ]
  %.3.i = phi i32 [ %i.hz, %.loopexit.i ], [ %i.gr, %bb.z ] ; 2 uses
  %i.ia = icmp sgt i32 %.3.i, 4
  tail call void @llvm.assume(i1 %i.ia)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit: ; preds = %bb.x, %bb.ag
  %.sroa.0286.29 = phi i64 [ %i.gj, %bb.x ], [ %.sroa.0286.28, %bb.ag ]
  %.sroa.48.30 = phi i32 [ %i.gk, %bb.x ], [ %.sroa.48.29, %bb.ag ]
  %.sroa.169390.15 = phi i32 [ %.sroa.169390.10866, %bb.x ], [ %.sroa.169390.14, %bb.ag ]
  %.0.i167 = phi i32 [ 4, %bb.x ], [ %.3.i, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ib = add nuw nsw i32 %.0.i167, %.sroa.137362.10863
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.r, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit
  %.sroa.0286.16 = phi i64 [ %.sroa.0286.29, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.0286.13861, %bb.r ] ; 2 uses
  %.sroa.48.17 = phi i32 [ %.sroa.48.30, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.48.14862, %bb.r ]
  %.sroa.137362.11 = phi i32 [ %i.ib, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.137362.10863, %bb.r ] ; 4 uses
  %.sroa.169390.11 = phi i32 [ %.sroa.169390.15, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit ], [ %.sroa.169390.10866, %bb.r ] ; 4 uses
  %i.ic = lshr i64 %.sroa.0286.16, 53             ; 3 uses
  %i.id = trunc nuw nsw i64 %i.ic to i32          ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ez, i64 128
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !172
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ic
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !22 ; 4 uses
  %i.ii = ashr i32 %i.ih, 9                       ; 2 uses
  %i.ij = and i32 %i.ih, 255                      ; 4 uses
  %i.ik = icmp samesign ult i32 %i.ij, 33
  tail call void @llvm.assume(i1 %i.ik)
  %i.il = sub nuw nsw i32 %.sroa.48.17, %i.ij     ; 3 uses
  %i.im = zext nneg i32 %i.ij to i64
  %i.in = shl i64 %.sroa.0286.16, %i.im           ; 3 uses
  %i.io = and i32 %i.ih, 256
  %.not.i.i = icmp eq i32 %i.io, 0
  br i1 %.not.i.i, label %bb.ah, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.ah:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.not17.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not17.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ip = trunc i32 %i.ii to i8                   ; 2 uses
  %i.iq = icmp ne i8 %i.ip, 0
  tail call void @llvm.assume(i1 %i.iq)
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.ir = icmp eq i32 %i.ij, 0
  tail call void @llvm.assume(i1 %i.ir)
  %i.is = add nsw i32 %i.il, -11                  ; 2 uses
  %i.it = shl i64 %i.in, 11                       ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !174
  %i.ix = load ptr, ptr %i.iu, align 8, !tbaa !175
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 2
  %i.jc = add nsw i64 %i.jb, -1                   ; 3 uses
  %.sroa.0.018.i = trunc nuw nsw i64 %i.ic to i16 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi2EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.jp = add nsw i32 %.sroa.48.19, -1            ; 2 uses
  %i.jq = shl i64 %.sroa.0286.18, 1               ; 2 uses
  %i.jr = shl nsw i32 %.sroa.0.0.in19.i, 1
  %i.js = and i32 %i.jr, 131070
  %i.jt = or disjoint i32 %i.js, %i.jo            ; 3 uses
  %i.ju = add i8 %.sroa.8.020.i, 1                ; 3 uses
  %.sroa.0.0.i = trunc i32 %i.jt to i16           ; 2 uses
  %i.jv = zext i8 %i.ju to i64                    ; 3 uses
  %i.jw = icmp ugt i64 %i.jc, %i.jv
  br i1 %i.jw, label %bb.ak, label %.critedge.i.loopexit, !llvm.loop !179

.critedge.i.loopexit:                             ; preds = %bb.ak, %.critedge2.i
  %.sroa.0286.17.ph = phi i64 [ %i.jq, %.critedge2.i ], [ %.sroa.0286.18, %bb.ak ]
  %.sroa.48.18.ph = phi i32 [ %i.jp, %.critedge2.i ], [ %.sroa.48.19, %bb.ak ]
  %.sroa.0.0.in.lcssa.i.ph = phi i32 [ %i.jt, %.critedge2.i ], [ %.sroa.0.0.in19.i, %bb.ak ]
  %.sroa.8.0.lcssa.i.ph = phi i8 [ %i.ju, %.critedge2.i ], [ %.sroa.8.020.i, %bb.ak ]
  %.sroa.0.0.lcssa.i.ph = phi i16 [ %.sroa.0.0.i, %.critedge2.i ], [ %.sroa.0.021.i, %bb.ak ]
  %.lcssa17.i.ph = phi i64 [ %i.jv, %.critedge2.i ], [ %i.jg, %bb.ak ]
  %i.jx = zext i8 %.sroa.8.0.lcssa.i.ph to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.aj
  %.sroa.0286.17 = phi i64 [ %i.it, %bb.aj ], [ %.sroa.0286.17.ph, %.critedge.i.loopexit ]
  %.sroa.48.18 = phi i32 [ %i.is, %bb.aj ], [ %.sroa.48.18.ph, %.critedge.i.loopexit ]
  %.sroa.0.0.in.lcssa.i = phi i32 [ %i.id, %bb.aj ], [ %.sroa.0.0.in.lcssa.i.ph, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i = phi i32 [ 11, %bb.aj ], [ %i.jx, %.critedge.i.loopexit ]
  %.sroa.0.0.lcssa.i = phi i16 [ %.sroa.0.018.i, %bb.aj ], [ %.sroa.0.0.lcssa.i.ph, %.critedge.i.loopexit ]
  %.lcssa17.i = phi i64 [ 11, %bb.aj ], [ %.lcssa17.i.ph, %.critedge.i.loopexit ] ; 3 uses
  %i.jy = icmp ult i64 %i.jc, %.lcssa17.i
  br i1 %i.jy, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !176
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %.lcssa17.i
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !164
  %i.kd = icmp ult i16 %i.kc, %.sroa.0.0.lcssa.i
  br i1 %i.kd, label %bb.am, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit

bb.am:                                            ; preds = %bb.al, %.critedge.i
  %i.ke = and i32 %.sroa.0.0.in.lcssa.i, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.ke, i32 noundef %.sroa.8.0.lcssa.i) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit: ; preds = %bb.al
  %.sroa.0.0.mask.i = and i32 %.sroa.0.0.in.lcssa.i, 65535
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ez, i64 104
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !176
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %.lcssa17.i
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !164
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.tr.i = zext i16 %i.ki to i32
  %.narrow.i = sub nsw i32 %.sroa.0.0.mask.i, %.tr.i
  %i.kk = zext i32 %.narrow.i to i64
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !180
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kk
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !151
  br label %bb.an

bb.an:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit, %bb.ai
  %.0735 = phi i8 [ %i.kn, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.ip, %bb.ai ] ; 5 uses
  %.sroa.0286.15 = phi i64 [ %.sroa.0286.17, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.in, %bb.ai ] ; 6 uses
  %.sroa.48.16 = phi i32 [ %.sroa.48.18, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit ], [ %i.il, %bb.ai ] ; 8 uses
  %i.ko = icmp ult i8 %.0735, 17
  tail call void @llvm.assume(i1 %i.ko)
  switch i8 %.0735, label %bb.aq [
    i8 16, label %bb.ao
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i
  ]

bb.ao:                                            ; preds = %bb.an
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !181, !range !136, !noundef !121
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.ap, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.ks = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.ks)
  %i.kt = icmp samesign ugt i32 %.sroa.48.16, 15
  tail call void @llvm.assume(i1 %i.kt)
  %i.ku = add nsw i32 %.sroa.48.16, -16
  %i.kv = shl i64 %.sroa.0286.15, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

bb.aq:                                            ; preds = %bb.an
  %i.kw = zext nneg i8 %.0735 to i32              ; 4 uses
  %i.kx = icmp samesign ult i32 %.sroa.48.16, 65
  tail call void @llvm.assume(i1 %i.kx)
  %i.ky = icmp ne i8 %.0735, 0
  tail call void @llvm.assume(i1 %i.ky)
  %i.kz = icmp samesign uge i32 %.sroa.48.16, %i.kw
  tail call void @llvm.assume(i1 %i.kz)
  %i.la = sub nuw nsw i32 64, %i.kw
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = lshr i64 %.sroa.0286.15, %i.lb
  %i.ld = trunc nuw nsw i64 %i.lc to i32
  %i.le = sub nsw i32 %.sroa.48.16, %i.kw
  %i.lf = zext nneg i8 %.0735 to i64
  %i.lg = shl i64 %.sroa.0286.15, %i.lf
  %i.lh = icmp sgt i64 %.sroa.0286.15, -1
  %notmask.i.i = shl nsw i32 -1, %i.kw
  %.neg.i.i = or disjoint i32 %notmask.i.i, 1
  %i.li = select i1 %i.lh, i32 %.neg.i.i, i32 0
  %.0.i.i56 = add nsw i32 %i.li, %i.ld
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %.sroa.0286.14 = phi i64 [ %i.in, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.lg, %bb.aq ], [ %i.kv, %bb.ap ], [ %.sroa.0286.15, %bb.ao ], [ %.sroa.0286.15, %bb.an ] ; 4 uses
  %.sroa.48.15 = phi i32 [ %i.il, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %i.le, %bb.aq ], [ %i.ku, %bb.ap ], [ %.sroa.48.16, %bb.ao ], [ %.sroa.48.16, %bb.an ] ; 4 uses
  %.0.i.i = phi i32 [ %i.ii, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ], [ %.0.i.i56, %bb.aq ], [ -32768, %bb.ap ], [ -32768, %bb.ao ], [ 0, %bb.an ]
  %i.lj = trunc i32 %.0.i.i to i16
  %i.lk = add i16 %i.ey, %i.lj
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv
  store i16 %i.lk, ptr %i.ll, align 2, !tbaa !164
  br i1 %.not55.i, label %bb.q, label %bb.r, !llvm.loop !251

._crit_edge:                                      ; preds = %bb.p, %bb.n
  %.sroa.0286.2.lcssa = phi i64 [ %.sroa.0286.0918, %bb.n ], [ %.sroa.0286.14, %bb.p ] ; 2 uses
  %.sroa.48.3.lcssa = phi i32 [ %.sroa.48.0919, %bb.n ], [ %.sroa.48.15, %bb.p ] ; 2 uses
  %.sroa.137362.3.lcssa = phi i32 [ %.sroa.137362.0920, %bb.n ], [ %.sroa.137362.11, %bb.p ] ; 2 uses
  %.sroa.169390.3.lcssa = phi i32 [ %.sroa.169390.0921, %bb.n ], [ %.sroa.169390.11, %bb.p ] ; 2 uses
  %.sroa.0509.0.lcssa = phi ptr [ %.sroa.0401.0922, %bb.n ], [ %i.er, %bb.p ]
  %.sroa.22.0.lcssa = phi i32 [ %.sroa.8404.0924, %bb.n ], [ %i.n, %bb.p ]
  %.044.i.lcssa = phi i32 [ 0, %bb.n ], [ %i.en, %bb.p ] ; 3 uses
  %i.lm = load i32, ptr %i.bp, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq i32 %i.lm, 0
  br i1 %.not.i, label %bb.bw, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.ln = icmp samesign ult i32 %i.lm, 4
  tail call void @llvm.assume(i1 %i.ln)
  %i.lo = shl nuw nsw i32 %.044.i.lcssa, 1
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = zext nneg i32 %.sroa.22.0.lcssa to i64
  br label %.preheader758

.preheader758:                                    ; preds = %bb.ar, %bb.at
  %.not51.i = phi i1 [ false, %bb.ar ], [ true, %bb.at ]
  %indvars.iv977 = phi i64 [ 0, %bb.ar ], [ 1, %bb.at ] ; 3 uses
  %.sroa.169390.4898 = phi i32 [ %.sroa.169390.3.lcssa, %bb.ar ], [ %.sroa.169390.12, %bb.at ]
  %.sroa.137362.4897 = phi i32 [ %.sroa.137362.3.lcssa, %bb.ar ], [ %.sroa.137362.12, %bb.at ]
  %.sroa.48.4896 = phi i32 [ %.sroa.48.3.lcssa, %bb.ar ], [ %.sroa.48.6, %bb.at ]
  %.sroa.0286.3895 = phi i64 [ %.sroa.0286.2.lcssa, %bb.ar ], [ %.sroa.0286.5, %bb.at ]
  %i.lr = mul nuw nsw i64 %indvars.iv977, %i.lq
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0509.0.lcssa, i64 %i.lr
  %i.lt = mul nuw nsw i64 %indvars.iv977, %i.bs
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.lt
  %.idx1019 = shl nuw nsw i64 %indvars.iv977, 4
  %invariant.gep1054 = getelementptr inbounds nuw i8, ptr %5, i64 %.idx1019
  br label %bb.au

bb.as:                                            ; preds = %bb.at
  %i.lv = add nuw nsw i32 %.044.i.lcssa, 1
  br label %bb.bw

bb.at:                                            ; preds = %bb.bv
  br i1 %.not51.i, label %bb.as, label %.preheader758, !llvm.loop !252

bb.au:                                            ; preds = %.preheader758, %bb.bv
  %.not53.i = phi i1 [ false, %.preheader758 ], [ true, %bb.bv ]
  %indvars.iv974 = phi i64 [ 0, %.preheader758 ], [ 1, %bb.bv ] ; 3 uses
  %.sroa.169390.5893 = phi i32 [ %.sroa.169390.4898, %.preheader758 ], [ %.sroa.169390.12, %bb.bv ] ; 4 uses
  %.sroa.137362.5890 = phi i32 [ %.sroa.137362.4897, %.preheader758 ], [ %.sroa.137362.12, %bb.bv ] ; 8 uses
  %.sroa.48.5889 = phi i32 [ %.sroa.48.4896, %.preheader758 ], [ %.sroa.48.6, %bb.bv ] ; 7 uses
  %.sroa.0286.4888 = phi i64 [ %.sroa.0286.3895, %.preheader758 ], [ %.sroa.0286.5, %bb.bv ] ; 3 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.ls, i64 %indvars.iv974
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !164
  %gep1055 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1054, i64 %indvars.iv974
  %i.ly = load ptr, ptr %gep1055, align 8, !tbaa !212 ; 8 uses
  %i.lz = icmp samesign ult i32 %.sroa.48.5889, 65
  tail call void @llvm.assume(i1 %i.lz)
  %.not.i64 = icmp samesign ult i32 %.sroa.48.5889, 32
  br i1 %.not.i64, label %bb.av, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i63)
  %i.ma = add nuw nsw i32 %.sroa.137362.5890, 8
  %.not.i.i65 = icmp samesign ugt i32 %i.ma, %i.dx
  br i1 %.not.i.i65, label %bb.ax, label %bb.aw, !prof !152

bb.aw:                                            ; preds = %bb.av
  %i.mb = zext nneg i32 %.sroa.137362.5890 to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.mb
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

bb.ax:                                            ; preds = %bb.av
  %i.md = icmp samesign ugt i32 %.sroa.137362.5890, %i.ed
  br i1 %i.md, label %bb.ay, label %bb.az, !prof !152

bb.ay:                                            ; preds = %bb.ax
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.az:                                            ; preds = %bb.ax
  store i64 0, ptr %.sroa.0.i.i63, align 8
  %.sroa.speculated27.i.i.i71 = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 %.sroa.137362.5890) ; 3 uses
  %i.me = add nuw nsw i32 %.sroa.speculated27.i.i.i71, 8
  %.sroa.speculated.i.i.i72 = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 %i.me)
  %i.mf = sub nsw i32 %.sroa.speculated.i.i.i72, %.sroa.speculated27.i.i.i71 ; 2 uses
  %i.mg = icmp samesign ult i32 %i.mf, 9
  tail call void @llvm.assume(i1 %i.mg)
  %i.mh = zext nneg i32 %.sroa.speculated27.i.i.i71 to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.mh
  %i.mj = zext nneg i32 %i.mf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i63, ptr align 1 %i.mi, i64 %i.mj, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67: ; preds = %bb.az, %bb.aw
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68 = phi ptr [ %.sroa.0.i.i63, %bb.az ], [ %i.mc, %bb.aw ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i68, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i63)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, ptr %2, align 8
  %i.mk = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i8 ; 2 uses
  %i.ml = icmp ne i8 %i.mk, -1
  %i.mm = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 8
  %i.mn = trunc i64 %i.mm to i8                   ; 3 uses
  %i.mo = icmp ne i8 %i.mn, -1
  %i.mp = and i1 %i.ml, %i.mo
  %i.mq = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 16
  %i.mr = trunc i64 %i.mq to i8                   ; 2 uses
  %i.ms = icmp ne i8 %i.mr, -1
  %i.mt = and i1 %i.ms, %i.mp
  %i.mu = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 4278190080
  %i.mv = icmp ne i64 %i.mu, 4278190080
  %i.mw = and i1 %i.mv, %i.mt
  br i1 %i.mw, label %bb.ba, label %.preheader.i170

.preheader.i170:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.mx = zext nneg i32 %.sroa.48.5889 to i64     ; 8 uses
  %i.my = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69, 255
  %indvars.iv.next.i171 = add nuw nsw i64 %i.mx, 8
  %i.mz = sub nuw nsw i64 56, %i.mx
  %i.na = shl nuw i64 %i.my, %i.mz
  %i.nb = or i64 %i.na, %.sroa.0286.4888          ; 2 uses
  %.not.i172 = icmp eq i8 %i.mk, -1
  br i1 %.not.i172, label %bb.bb, label %bb.bd

bb.ba:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i67
  %i.nc = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i69 to i32
  %i.nd = tail call i32 @llvm.bswap.i32(i32 %i.nc)
  %i.ne = zext i32 %i.nd to i64
  %i.nf = sub nuw nsw i32 32, %.sroa.48.5889
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = shl nuw i64 %i.ne, %i.ng
  %i.ni = or i64 %i.nh, %.sroa.0286.4888
  %i.nj = or disjoint i32 %.sroa.48.5889, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191

bb.bb:                                            ; preds = %.preheader.i170
  %i.nk = icmp eq i8 %i.mn, 0
  br i1 %i.nk, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bi, %bb.bg, %bb.be, %bb.bb
  %.01962.lcssa.i186 = phi i32 [ 0, %bb.bb ], [ %.2.ph.i173, %bb.be ], [ %i.oc, %bb.bg ], [ %i.on, %bb.bi ]
  %.02161.lcssa.i187.neg935 = phi i32 [ 0, %bb.bb ], [ -1, %bb.be ], [ -2, %bb.bg ], [ -3, %bb.bi ]
  %.lcssa66.wide.i188 = phi i64 [ %i.mx, %bb.bb ], [ %indvars.iv.next.i171, %bb.be ], [ %indvars.iv.next.1.i174, %bb.bg ], [ %indvars.iv.next.2.i177, %bb.bi ]
  %.lcssa.i189 = phi i64 [ %i.nb, %bb.bb ], [ %i.nw, %bb.be ], [ %i.oj, %bb.bg ], [ %i.ou, %bb.bi ]
  %i.nl = add nuw nsw i32 %.01962.lcssa.i186, %.sroa.137362.5890
  %i.nm = icmp slt i32 %.sroa.169390.5893, 0
  tail call void @llvm.assume(i1 %i.nm)
  %i.nn = lshr i64 -1, %.lcssa66.wide.i188
  %i.no = xor i64 %i.nn, -1
  %i.np = and i64 %.lcssa.i189, %i.no
  %.neg = sub nsw i32 %i.dx, %.sroa.137362.5890
  %reass.sub.i190 = add nsw i32 %.neg, %.02161.lcssa.i187.neg935 ; 2 uses
  %i.nq = add nuw nsw i32 %reass.sub.i190, 4
  %i.nr = icmp ugt i32 %reass.sub.i190, 1
  tail call void @llvm.assume(i1 %i.nr)
  br label %bb.bj

bb.bd:                                            ; preds = %bb.bb, %.preheader.i170
  %i.ns = phi i8 [ %i.mn, %.preheader.i170 ], [ %i.mr, %bb.bb ] ; 2 uses
  %.2.ph.i173 = phi i32 [ 1, %.preheader.i170 ], [ 2, %bb.bb ] ; 3 uses
  %i.nt = zext i8 %i.ns to i64
  %indvars.iv.next.1.i174 = add nuw nsw i64 %i.mx, 16
  %i.nu = sub nuw nsw i64 48, %i.mx
  %i.nv = shl nuw nsw i64 %i.nt, %i.nu
  %i.nw = or i64 %i.nv, %i.nb                     ; 2 uses
  %.not.1.i175 = icmp eq i8 %i.ns, -1
  br i1 %.not.1.i175, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.nx = zext nneg i32 %.2.ph.i173 to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !151
  %i.ob = icmp eq i8 %i.oa, 0
  br i1 %i.ob, label %bb.bf, label %bb.bc

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.sink.i176 = phi i32 [ 1, %bb.bd ], [ 2, %bb.be ]
  %i.oc = add nuw nsw i32 %.sink.i176, %.2.ph.i173 ; 3 uses
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 %i.od ; 2 uses
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !151 ; 2 uses
  %i.og = zext i8 %i.of to i64
  %indvars.iv.next.2.i177 = add nuw nsw i64 %i.mx, 24
  %i.oh = sub nuw nsw i64 40, %i.mx
  %i.oi = shl nuw nsw i64 %i.og, %i.oh
  %i.oj = or i64 %i.oi, %i.nw                     ; 2 uses
  %.not.2.i178 = icmp eq i8 %i.of, -1
  br i1 %.not.2.i178, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !151
  %i.om = icmp eq i8 %i.ol, 0
  br i1 %i.om, label %bb.bh, label %bb.bc

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sink72.i179 = phi i32 [ 1, %bb.bf ], [ 2, %bb.bg ]
  %i.on = add nuw nsw i32 %.sink72.i179, %i.oc    ; 3 uses
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 %i.oo ; 2 uses
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !151 ; 2 uses
  %i.or = zext i8 %i.oq to i64
  %indvars.iv.next.3.i180 = or disjoint i32 %.sroa.48.5889, 32
  %i.os = sub nuw nsw i64 32, %i.mx
  %i.ot = shl nuw nsw i64 %i.or, %i.os
  %i.ou = or i64 %i.ot, %i.oj                     ; 2 uses
  %.not.3.i181 = icmp eq i8 %i.oq, -1
  br i1 %.not.3.i181, label %bb.bi, label %.loopexit.i182

bb.bi:                                            ; preds = %bb.bh
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 1
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !151
  %i.ox = icmp eq i8 %i.ow, 0
  br i1 %i.ox, label %.loopexit.i182, label %bb.bc

.loopexit.i182:                                   ; preds = %bb.bi, %bb.bh
  %.sink73.i183 = phi i32 [ 1, %bb.bh ], [ 2, %bb.bi ]
  %i.oy = add nuw nsw i32 %.sink73.i183, %i.on
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.i182, %bb.bc
  %.sroa.0286.30 = phi i64 [ %i.ou, %.loopexit.i182 ], [ %i.np, %bb.bc ]
  %.sroa.48.31 = phi i32 [ %indvars.iv.next.3.i180, %.loopexit.i182 ], [ 64, %bb.bc ]
  %.sroa.169390.16 = phi i32 [ %.sroa.169390.5893, %.loopexit.i182 ], [ %i.nl, %bb.bc ]
  %.3.i184 = phi i32 [ %i.oy, %.loopexit.i182 ], [ %i.nq, %bb.bc ] ; 2 uses
  %i.oz = icmp sgt i32 %.3.i184, 4
  tail call void @llvm.assume(i1 %i.oz)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191: ; preds = %bb.ba, %bb.bj
  %.sroa.0286.31 = phi i64 [ %i.ni, %bb.ba ], [ %.sroa.0286.30, %bb.bj ]
  %.sroa.48.32 = phi i32 [ %i.nj, %bb.ba ], [ %.sroa.48.31, %bb.bj ]
  %.sroa.169390.17 = phi i32 [ %.sroa.169390.5893, %bb.ba ], [ %.sroa.169390.16, %bb.bj ]
  %.0.i185 = phi i32 [ 4, %bb.ba ], [ %.3.i184, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.pa = add nuw nsw i32 %.0.i185, %.sroa.137362.5890
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73: ; preds = %bb.au, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191
  %.sroa.0286.20 = phi i64 [ %.sroa.0286.31, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.0286.4888, %bb.au ] ; 2 uses
  %.sroa.48.21 = phi i32 [ %.sroa.48.32, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.48.5889, %bb.au ]
  %.sroa.137362.12 = phi i32 [ %i.pa, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.137362.5890, %bb.au ] ; 3 uses
  %.sroa.169390.12 = phi i32 [ %.sroa.169390.17, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit191 ], [ %.sroa.169390.5893, %bb.au ] ; 3 uses
  %i.pb = lshr i64 %.sroa.0286.20, 53             ; 3 uses
  %i.pc = trunc nuw nsw i64 %i.pb to i32          ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ly, i64 128
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !172
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %i.pb
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !22 ; 4 uses
  %i.ph = ashr i32 %i.pg, 9                       ; 2 uses
  %i.pi = and i32 %i.pg, 255                      ; 4 uses
  %i.pj = icmp samesign ult i32 %i.pi, 33
  tail call void @llvm.assume(i1 %i.pj)
  %i.pk = sub nuw nsw i32 %.sroa.48.21, %i.pi     ; 3 uses
  %i.pl = zext nneg i32 %i.pi to i64
  %i.pm = shl i64 %.sroa.0286.20, %i.pl           ; 3 uses
  %i.pn = and i32 %i.pg, 256
  %.not.i65.i = icmp eq i32 %i.pn, 0
  br i1 %.not.i65.i, label %bb.bk, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bk:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.not17.i67.i = icmp eq i32 %i.pg, 0
  br i1 %.not17.i67.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.po = trunc i32 %i.ph to i8                   ; 2 uses
  %i.pp = icmp ne i8 %i.po, 0
  tail call void @llvm.assume(i1 %i.pp)
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bk
  %i.pq = icmp eq i32 %i.pi, 0
  tail call void @llvm.assume(i1 %i.pq)
  %i.pr = add nsw i32 %i.pk, -11                  ; 2 uses
  %i.ps = shl i64 %i.pm, 11                       ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !174
  %i.pw = load ptr, ptr %i.pt, align 8, !tbaa !175
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = sub i64 %i.px, %i.py
  %i.qa = ashr exact i64 %i.pz, 2
  %i.qb = add nsw i64 %i.qa, -1                   ; 3 uses
  %.sroa.0.018.i76 = trunc nuw nsw i64 %i.pb to i16 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZNK8rawspeed17LJpegDecompressor7decodeNIL_ZNS_12_GLOBAL__N_13MCUILi2ELi2EEEEEEjv:_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %i.qe, i64 %i.qf
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !164 ; 2 uses
  %i.qi = icmp eq i16 %i.qh, -1
  %i.qj = icmp ult i16 %i.qh, %.sroa.0.021.i98
  %or.cond.i101 = select i1 %i.qi, i1 true, i1 %i.qj
  br i1 %or.cond.i101, label %.critedge2.i102, label %.critedge.i78.loopexit

.critedge2.i102:                                  ; preds = %bb.bn
  %i.qk = icmp samesign ult i32 %.sroa.48.23, 65
  tail call void @llvm.assume(i1 %i.qk)
  %i.ql = icmp ne i32 %.sroa.48.23, 0
  tail call void @llvm.assume(i1 %i.ql)
  %i.qm = lshr i64 %.sroa.0286.22, 63
  %i.qn = trunc nuw nsw i64 %i.qm to i32
  %i.qo = add nsw i32 %.sroa.48.23, -1            ; 2 uses
  %i.qp = shl i64 %.sroa.0286.22, 1               ; 2 uses
  %i.qq = shl nsw i32 %.sroa.0.0.in19.i100, 1
  %i.qr = and i32 %i.qq, 131070
  %i.qs = or disjoint i32 %i.qr, %i.qn            ; 3 uses
  %i.qt = add i8 %.sroa.8.020.i99, 1              ; 3 uses
  %.sroa.0.0.i103 = trunc i32 %i.qs to i16        ; 2 uses
  %i.qu = zext i8 %i.qt to i64                    ; 3 uses
  %i.qv = icmp ugt i64 %i.qb, %i.qu
  br i1 %i.qv, label %bb.bn, label %.critedge.i78.loopexit, !llvm.loop !179

.critedge.i78.loopexit:                           ; preds = %bb.bn, %.critedge2.i102
  %.sroa.0286.21.ph = phi i64 [ %i.qp, %.critedge2.i102 ], [ %.sroa.0286.22, %bb.bn ]
  %.sroa.48.22.ph = phi i32 [ %i.qo, %.critedge2.i102 ], [ %.sroa.48.23, %bb.bn ]
  %.sroa.0.0.in.lcssa.i79.ph = phi i32 [ %i.qs, %.critedge2.i102 ], [ %.sroa.0.0.in19.i100, %bb.bn ]
  %.sroa.8.0.lcssa.i80.ph = phi i8 [ %i.qt, %.critedge2.i102 ], [ %.sroa.8.020.i99, %bb.bn ]
  %.sroa.0.0.lcssa.i81.ph = phi i16 [ %.sroa.0.0.i103, %.critedge2.i102 ], [ %.sroa.0.021.i98, %bb.bn ]
  %.lcssa17.i82.ph = phi i64 [ %i.qu, %.critedge2.i102 ], [ %i.qf, %bb.bn ]
  %i.qw = zext i8 %.sroa.8.0.lcssa.i80.ph to i32
  br label %.critedge.i78

.critedge.i78:                                    ; preds = %.critedge.i78.loopexit, %bb.bm
  %.sroa.0286.21 = phi i64 [ %i.ps, %bb.bm ], [ %.sroa.0286.21.ph, %.critedge.i78.loopexit ]
  %.sroa.48.22 = phi i32 [ %i.pr, %bb.bm ], [ %.sroa.48.22.ph, %.critedge.i78.loopexit ]
  %.sroa.0.0.in.lcssa.i79 = phi i32 [ %i.pc, %bb.bm ], [ %.sroa.0.0.in.lcssa.i79.ph, %.critedge.i78.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa.i80 = phi i32 [ 11, %bb.bm ], [ %i.qw, %.critedge.i78.loopexit ]
  %.sroa.0.0.lcssa.i81 = phi i16 [ %.sroa.0.018.i76, %bb.bm ], [ %.sroa.0.0.lcssa.i81.ph, %.critedge.i78.loopexit ]
  %.lcssa17.i82 = phi i64 [ 11, %bb.bm ], [ %.lcssa17.i82.ph, %.critedge.i78.loopexit ] ; 3 uses
  %i.qx = icmp ult i64 %i.qb, %.lcssa17.i82
  br i1 %i.qx, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.critedge.i78
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ly, i64 80
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !176
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.qz, i64 %.lcssa17.i82
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !164
  %i.rc = icmp ult i16 %i.rb, %.sroa.0.0.lcssa.i81
  br i1 %i.rc, label %bb.bp, label %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104

bb.bp:                                            ; preds = %bb.bo, %.critedge.i78
  %i.rd = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_, i32 noundef %i.rd, i32 noundef %.sroa.8.0.lcssa.i80) #12
  unreachable

_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104: ; preds = %bb.bo
  %.sroa.0.0.mask.i84 = and i32 %.sroa.0.0.in.lcssa.i79, 65535
  %i.re = getelementptr inbounds nuw i8, ptr %i.ly, i64 104
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !176
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.rf, i64 %.lcssa17.i82
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !164
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %.tr.i85 = zext i16 %i.rh to i32
  %.narrow.i86 = sub nsw i32 %.sroa.0.0.mask.i84, %.tr.i85
  %i.rj = zext i32 %.narrow.i86 to i64
  %i.rk = load ptr, ptr %i.ri, align 8, !tbaa !180
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rj
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !151
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104, %bb.bl
  %.0737 = phi i8 [ %i.rm, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.po, %bb.bl ] ; 5 uses
  %.sroa.0286.6 = phi i64 [ %.sroa.0286.21, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.pm, %bb.bl ] ; 6 uses
  %.sroa.48.7 = phi i32 [ %.sroa.48.22, %_ZNK8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE26finishReadingPartialSymbolINS_15BitStreamerJPEGEEESt4pairINS_18AbstractPrefixCodeIS1_E10CodeSymbolEiERT_S8_.exit104 ], [ %i.pk, %bb.bl ] ; 8 uses
  %i.rn = icmp ult i8 %.0737, 17
  tail call void @llvm.assume(i1 %i.rn)
  switch i8 %.0737, label %bb.bt [
    i8 16, label %bb.br
    i8 0, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  ]

bb.br:                                            ; preds = %bb.bq
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !181, !range !136, !noundef !121
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %bb.bs, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bs:                                            ; preds = %bb.br
  %i.rr = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.rr)
  %i.rs = icmp samesign ugt i32 %.sroa.48.7, 15
  tail call void @llvm.assume(i1 %i.rs)
  %i.rt = add nsw i32 %.sroa.48.7, -16
  %i.ru = shl i64 %.sroa.0286.6, 16
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

bb.bt:                                            ; preds = %bb.bq
  %i.rv = zext nneg i8 %.0737 to i32              ; 4 uses
  %i.rw = icmp samesign ult i32 %.sroa.48.7, 65
  tail call void @llvm.assume(i1 %i.rw)
  %i.rx = icmp ne i8 %.0737, 0
  tail call void @llvm.assume(i1 %i.rx)
  %i.ry = icmp samesign uge i32 %.sroa.48.7, %i.rv
  tail call void @llvm.assume(i1 %i.ry)
  %i.rz = sub nuw nsw i32 64, %i.rv
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = lshr i64 %.sroa.0286.6, %i.sa
  %i.sc = trunc nuw nsw i64 %i.sb to i32
  %i.sd = sub nsw i32 %.sroa.48.7, %i.rv
  %i.se = zext nneg i8 %.0737 to i64
  %i.sf = shl i64 %.sroa.0286.6, %i.se
  %i.sg = icmp sgt i64 %.sroa.0286.6, -1
  %notmask.i.i106 = shl nsw i32 -1, %i.rv
  %.neg.i.i107 = or disjoint i32 %notmask.i.i106, 1
  %i.sh = select i1 %i.sg, i32 %.neg.i.i107, i32 0
  %.0.i.i108 = add nsw i32 %i.sh, %i.sc
  br label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i

_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i: ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73
  %.sroa.0286.5 = phi i64 [ %i.pm, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.sf, %bb.bt ], [ %i.ru, %bb.bs ], [ %.sroa.0286.6, %bb.br ], [ %.sroa.0286.6, %bb.bq ] ; 3 uses
  %.sroa.48.6 = phi i32 [ %i.pk, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %i.sd, %bb.bt ], [ %i.rt, %bb.bs ], [ %.sroa.48.7, %bb.br ], [ %.sroa.48.7, %bb.bq ] ; 3 uses
  %.0.i66.i = phi i32 [ %i.ph, %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit73 ], [ %.0.i.i108, %bb.bt ], [ -32768, %bb.bs ], [ -32768, %bb.br ], [ 0, %bb.bq ]
  %i.si = or disjoint i64 %indvars.iv974, %i.lp   ; 2 uses
  %i.sj = icmp samesign ult i64 %i.si, %i.bu
  br i1 %i.sj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  %i.sk = trunc i32 %.0.i66.i to i16
  %i.sl = add i16 %i.lx, %i.sk
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.lu, i64 %i.si
  store i16 %i.sl, ptr %i.sm, align 2, !tbaa !164
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit70.i
  br i1 %.not53.i, label %bb.at, label %bb.au, !llvm.loop !253

bb.bw:                                            ; preds = %bb.as, %._crit_edge
  %.sroa.0286.7 = phi i64 [ %.sroa.0286.2.lcssa, %._crit_edge ], [ %.sroa.0286.5, %bb.as ] ; 2 uses
  %.sroa.48.8 = phi i32 [ %.sroa.48.3.lcssa, %._crit_edge ], [ %.sroa.48.6, %bb.as ] ; 2 uses
  %.sroa.137362.6 = phi i32 [ %.sroa.137362.3.lcssa, %._crit_edge ], [ %.sroa.137362.12, %bb.as ] ; 2 uses
  %.sroa.169390.6 = phi i32 [ %.sroa.169390.3.lcssa, %._crit_edge ], [ %.sroa.169390.12, %bb.as ] ; 2 uses
  %.1.i = phi i32 [ %.044.i.lcssa, %._crit_edge ], [ %i.lv, %bb.as ] ; 2 uses
  %i.sn = load i32, ptr %i.bq, align 8, !tbaa !183 ; 2 uses
  %i.so = icmp slt i32 %.1.i, %i.sn
  br i1 %i.so, label %.preheader757, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

.preheader757:                                    ; preds = %bb.bw, %bb.bx
  %.2.i911 = phi i32 [ %i.sp, %bb.bx ], [ %.1.i, %bb.bw ]
  %.sroa.169390.7910 = phi i32 [ %.sroa.169390.13, %bb.bx ], [ %.sroa.169390.6, %bb.bw ]
  %.sroa.137362.7909 = phi i32 [ %.sroa.137362.13, %bb.bx ], [ %.sroa.137362.6, %bb.bw ]
  %.sroa.48.9908 = phi i32 [ %.sroa.48.11, %bb.bx ], [ %.sroa.48.8, %bb.bw ]
  %.sroa.0286.8907 = phi i64 [ %.sroa.0286.10, %bb.bx ], [ %.sroa.0286.7, %bb.bw ]
  br label %bb.by

bb.bx:                                            ; preds = %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %i.sp = add nsw i32 %.2.i911, 1                 ; 2 uses
  %exitcond983.not = icmp eq i32 %i.sp, %i.sn
  br i1 %exitcond983.not, label %_ZN8rawspeed15BitStreamerJPEGCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, label %.preheader757, !llvm.loop !254

bb.by:                                            ; preds = %.preheader757, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i
  %indvars.iv980 = phi i64 [ 0, %.preheader757 ], [ %indvars.iv.next981, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 2 uses
  %.sroa.169390.8905 = phi i32 [ %.sroa.169390.7910, %.preheader757 ], [ %.sroa.169390.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 4 uses
  %.sroa.137362.8902 = phi i32 [ %.sroa.137362.7909, %.preheader757 ], [ %.sroa.137362.13, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 8 uses
  %.sroa.48.10901 = phi i32 [ %.sroa.48.9908, %.preheader757 ], [ %.sroa.48.11, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 7 uses
  %.sroa.0286.9900 = phi i64 [ %.sroa.0286.8907, %.preheader757 ], [ %.sroa.0286.10, %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i ] ; 3 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv980
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !212 ; 8 uses
  %i.ss = icmp samesign ult i32 %.sroa.48.10901, 65
  tail call void @llvm.assume(i1 %i.ss)
  %.not.i114 = icmp samesign ult i32 %.sroa.48.10901, 32
  br i1 %.not.i114, label %bb.bz, label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i113)
  %i.st = add nuw nsw i32 %.sroa.137362.8902, 8
  %.not.i.i115 = icmp samesign ugt i32 %i.st, %i.dx
  br i1 %.not.i.i115, label %bb.cb, label %bb.ca, !prof !152

bb.ca:                                            ; preds = %bb.bz
  %i.su = zext nneg i32 %.sroa.137362.8902 to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.su
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

bb.cb:                                            ; preds = %bb.bz
  %i.sw = icmp samesign ugt i32 %.sroa.137362.8902, %i.ed
  br i1 %i.sw, label %bb.cc, label %bb.cd, !prof !152

bb.cc:                                            ; preds = %bb.cb
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv) #12
  unreachable

bb.cd:                                            ; preds = %bb.cb
  store i64 0, ptr %.sroa.0.i.i113, align 8
  %.sroa.speculated27.i.i.i121 = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 %.sroa.137362.8902) ; 3 uses
  %i.sx = add nuw nsw i32 %.sroa.speculated27.i.i.i121, 8
  %.sroa.speculated.i.i.i122 = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 %i.sx)
  %i.sy = sub nsw i32 %.sroa.speculated.i.i.i122, %.sroa.speculated27.i.i.i121 ; 2 uses
  %i.sz = icmp samesign ult i32 %i.sy, 9
  tail call void @llvm.assume(i1 %i.sz)
  %i.ta = zext nneg i32 %.sroa.speculated27.i.i.i121 to i64
  %i.tb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ta
  %i.tc = zext nneg i32 %i.sy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i.i113, ptr align 1 %i.tb, i64 %i.tc, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117: ; preds = %bb.cd, %bb.ca
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118 = phi ptr [ %.sroa.0.i.i113, %bb.cd ], [ %i.sv, %bb.ca ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 = load i64, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i118, align 1 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i113)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, ptr %1, align 8
  %i.td = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i8 ; 2 uses
  %i.te = icmp ne i8 %i.td, -1
  %i.tf = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 8
  %i.tg = trunc i64 %i.tf to i8                   ; 3 uses
  %i.th = icmp ne i8 %i.tg, -1
  %i.ti = and i1 %i.te, %i.th
  %i.tj = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 16
  %i.tk = trunc i64 %i.tj to i8                   ; 2 uses
  %i.tl = icmp ne i8 %i.tk, -1
  %i.tm = and i1 %i.tl, %i.ti
  %i.tn = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 4278190080
  %i.to = icmp ne i64 %i.tn, 4278190080
  %i.tp = and i1 %i.to, %i.tm
  br i1 %i.tp, label %bb.ce, label %.preheader.i194

.preheader.i194:                                  ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.tq = zext nneg i32 %.sroa.48.10901 to i64    ; 8 uses
  %i.tr = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119, 255
  %indvars.iv.next.i195 = add nuw nsw i64 %i.tq, 8
  %i.ts = sub nuw nsw i64 56, %i.tq
  %i.tt = shl nuw i64 %i.tr, %i.ts
  %i.tu = or i64 %i.tt, %.sroa.0286.9900          ; 2 uses
  %.not.i196 = icmp eq i8 %i.td, -1
  br i1 %.not.i196, label %bb.cf, label %bb.ch

bb.ce:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_15BitStreamerJPEGEE8getInputEv.exit.i117
  %i.tv = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i119 to i32
  %i.tw = tail call i32 @llvm.bswap.i32(i32 %i.tv)
  %i.tx = zext i32 %i.tw to i64
  %i.ty = sub nuw nsw i32 32, %.sroa.48.10901
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = shl nuw i64 %i.tx, %i.tz
  %i.ub = or i64 %i.ua, %.sroa.0286.9900
  %i.uc = or disjoint i32 %.sroa.48.10901, 32
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215

bb.cf:                                            ; preds = %.preheader.i194
  %i.ud = icmp eq i8 %i.tg, 0
  br i1 %i.ud, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cm, %bb.ck, %bb.ci, %bb.cf
  %.01962.lcssa.i210 = phi i32 [ 0, %bb.cf ], [ %.2.ph.i197, %bb.ci ], [ %i.uv, %bb.ck ], [ %i.vg, %bb.cm ]
  %.02161.lcssa.i211.neg936 = phi i32 [ 0, %bb.cf ], [ -1, %bb.ci ], [ -2, %bb.ck ], [ -3, %bb.cm ]
  %.lcssa66.wide.i212 = phi i64 [ %i.tq, %bb.cf ], [ %indvars.iv.next.i195, %bb.ci ], [ %indvars.iv.next.1.i198, %bb.ck ], [ %indvars.iv.next.2.i201, %bb.cm ]
  %.lcssa.i213 = phi i64 [ %i.tu, %bb.cf ], [ %i.up, %bb.ci ], [ %i.vc, %bb.ck ], [ %i.vn, %bb.cm ]
  %i.ue = add nuw nsw i32 %.01962.lcssa.i210, %.sroa.137362.8902
  %i.uf = icmp slt i32 %.sroa.169390.8905, 0
  tail call void @llvm.assume(i1 %i.uf)
  %i.ug = lshr i64 -1, %.lcssa66.wide.i212
  %i.uh = xor i64 %i.ug, -1
  %i.ui = and i64 %.lcssa.i213, %i.uh
  %.neg755 = sub nsw i32 %i.dx, %.sroa.137362.8902
  %reass.sub.i214 = add nsw i32 %.neg755, %.02161.lcssa.i211.neg936 ; 2 uses
  %i.uj = add nuw nsw i32 %reass.sub.i214, 4
  %i.uk = icmp ugt i32 %reass.sub.i214, 1
  tail call void @llvm.assume(i1 %i.uk)
  br label %bb.cn

bb.ch:                                            ; preds = %bb.cf, %.preheader.i194
  %i.ul = phi i8 [ %i.tg, %.preheader.i194 ], [ %i.tk, %bb.cf ] ; 2 uses
  %.2.ph.i197 = phi i32 [ 1, %.preheader.i194 ], [ 2, %bb.cf ] ; 3 uses
  %i.um = zext i8 %i.ul to i64
  %indvars.iv.next.1.i198 = add nuw nsw i64 %i.tq, 16
  %i.un = sub nuw nsw i64 48, %i.tq
  %i.uo = shl nuw nsw i64 %i.um, %i.un
  %i.up = or i64 %i.uo, %i.tu                     ; 2 uses
  %.not.1.i199 = icmp eq i8 %i.ul, -1
  br i1 %.not.1.i199, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.uq = zext nneg i32 %.2.ph.i197 to i64
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 1
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !151
  %i.uu = icmp eq i8 %i.ut, 0
  br i1 %i.uu, label %bb.cj, label %bb.cg

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sink.i200 = phi i32 [ 1, %bb.ch ], [ 2, %bb.ci ]
  %i.uv = add nuw nsw i32 %.sink.i200, %.2.ph.i197 ; 3 uses
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 %i.uw ; 2 uses
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !151 ; 2 uses
  %i.uz = zext i8 %i.uy to i64
  %indvars.iv.next.2.i201 = add nuw nsw i64 %i.tq, 24
  %i.va = sub nuw nsw i64 40, %i.tq
  %i.vb = shl nuw nsw i64 %i.uz, %i.va
  %i.vc = or i64 %i.vb, %i.up                     ; 2 uses
  %.not.2.i202 = icmp eq i8 %i.uy, -1
  br i1 %.not.2.i202, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ux, i64 1
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !151
  %i.vf = icmp eq i8 %i.ve, 0
  br i1 %i.vf, label %bb.cl, label %bb.cg

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sink72.i203 = phi i32 [ 1, %bb.cj ], [ 2, %bb.ck ]
  %i.vg = add nuw nsw i32 %.sink72.i203, %i.uv    ; 3 uses
  %i.vh = zext nneg i32 %i.vg to i64
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 %i.vh ; 2 uses
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !151 ; 2 uses
  %i.vk = zext i8 %i.vj to i64
  %indvars.iv.next.3.i204 = or disjoint i32 %.sroa.48.10901, 32
  %i.vl = sub nuw nsw i64 32, %i.tq
  %i.vm = shl nuw nsw i64 %i.vk, %i.vl
  %i.vn = or i64 %i.vm, %i.vc                     ; 2 uses
  %.not.3.i205 = icmp eq i8 %i.vj, -1
  br i1 %.not.3.i205, label %bb.cm, label %.loopexit.i206

bb.cm:                                            ; preds = %bb.cl
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vi, i64 1
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !151
  %i.vq = icmp eq i8 %i.vp, 0
  br i1 %i.vq, label %.loopexit.i206, label %bb.cg

.loopexit.i206:                                   ; preds = %bb.cm, %bb.cl
  %.sink73.i207 = phi i32 [ 1, %bb.cl ], [ 2, %bb.cm ]
  %i.vr = add nuw nsw i32 %.sink73.i207, %i.vg
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit.i206, %bb.cg
  %.sroa.0286.32 = phi i64 [ %i.vn, %.loopexit.i206 ], [ %i.ui, %bb.cg ]
  %.sroa.48.33 = phi i32 [ %indvars.iv.next.3.i204, %.loopexit.i206 ], [ 64, %bb.cg ]
  %.sroa.169390.18 = phi i32 [ %.sroa.169390.8905, %.loopexit.i206 ], [ %i.ue, %bb.cg ]
  %.3.i208 = phi i32 [ %i.vr, %.loopexit.i206 ], [ %i.uj, %bb.cg ] ; 2 uses
  %i.vs = icmp sgt i32 %.3.i208, 4
  tail call void @llvm.assume(i1 %i.vs)
  br label %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215

_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215: ; preds = %bb.ce, %bb.cn
  %.sroa.0286.33 = phi i64 [ %i.ub, %bb.ce ], [ %.sroa.0286.32, %bb.cn ]
  %.sroa.48.34 = phi i32 [ %i.uc, %bb.ce ], [ %.sroa.48.33, %bb.cn ]
  %.sroa.169390.19 = phi i32 [ %.sroa.169390.8905, %bb.ce ], [ %.sroa.169390.18, %bb.cn ]
  %.0.i209 = phi i32 [ 4, %bb.ce ], [ %.3.i208, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.vt = add nuw nsw i32 %.0.i209, %.sroa.137362.8902
  br label %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123

_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123: ; preds = %bb.by, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215
  %.sroa.0286.24 = phi i64 [ %.sroa.0286.33, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.0286.9900, %bb.by ] ; 2 uses
  %.sroa.48.25 = phi i32 [ %.sroa.48.34, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.48.10901, %bb.by ]
  %.sroa.137362.13 = phi i32 [ %i.vt, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.137362.8902, %bb.by ] ; 3 uses
  %.sroa.169390.13 = phi i32 [ %.sroa.169390.19, %_ZN8rawspeed15BitStreamerJPEG9fillCacheESt5arrayISt4byteLm8EE.exit215 ], [ %.sroa.169390.8905, %bb.by ] ; 3 uses
  %i.vu = lshr i64 %.sroa.0286.24, 53             ; 3 uses
  %i.vv = trunc nuw nsw i64 %i.vu to i32          ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.sr, i64 128
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !172
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %i.vu
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !22 ; 4 uses
  %i.wa = lshr i32 %i.vz, 9
  %i.wb = and i32 %i.vz, 255                      ; 4 uses
  %i.wc = icmp samesign ult i32 %i.wb, 33
  tail call void @llvm.assume(i1 %i.wc)
  %i.wd = sub nuw nsw i32 %.sroa.48.25, %i.wb     ; 3 uses
  %i.we = zext nneg i32 %i.wb to i64
  %i.wf = shl i64 %.sroa.0286.24, %i.we           ; 3 uses
  %i.wg = and i32 %i.vz, 256
  %.not.i71.i = icmp eq i32 %i.wg, 0
  br i1 %.not.i71.i, label %bb.co, label %_ZNK8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE6decodeINS_15BitStreamerJPEGELb1EEEiRT_.exit76.i

bb.co:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_15BitStreamerJPEGENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit123
  %.not17.i73.i = icmp eq i32 %i.vz, 0
  br i1 %.not17.i73.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wh = trunc i32 %i.wa to i8                   ; 2 uses
  %i.wi = icmp ne i8 %i.wh, 0
  tail call void @llvm.assume(i1 %i.wi)
  br label %bb.cu

bb.cq:                                            ; preds = %bb.co
  %i.wj = icmp eq i32 %i.wb, 0
  tail call void @llvm.assume(i1 %i.wj)
  %i.wk = add nsw i32 %i.wd, -11                  ; 2 uses
  %i.wl = shl i64 %i.wf, 11                       ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.sr, i64 32
  %i.wn = getelementptr inbounds nuw i8, ptr %i.sr, i64 40
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !174
  %i.wp = load ptr, ptr %i.wm, align 8, !tbaa !175
  %i.wq = ptrtoint ptr %i.wo to i64
  %i.wr = ptrtoint ptr %i.wp to i64
  %i.ws = sub i64 %i.wq, %i.wr
  %i.wt = ashr exact i64 %i.ws, 2
  %i.wu = add nsw i64 %i.wt, -1                   ; 3 uses
  %.sroa.0.018.i126 = trunc nuw nsw i64 %i.vu to i16 ; 2 uses
end_hunk_12
