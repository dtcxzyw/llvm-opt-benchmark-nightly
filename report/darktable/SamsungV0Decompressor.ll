Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV0Decompressor?download=true
inline.NumInlined: 413
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8rawspeed27AbstractSamsungDecompressorD2Ev:bb.a
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !call_target !114, !inline_history !151
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !115

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed21SamsungV0Decompressor10decompressEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !92
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.af, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.lcssa, i64 568
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116, !noalias !160 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa, i64 592
  %i.i = load i32, ptr %i.h, align 8, !tbaa !91, !noalias !160
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa, i64 608
  %i.k = load i32, ptr %i.j, align 8, !tbaa !117, !noalias !160
  %i.l = mul nsw i32 %i.k, %i.i                   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa, i64 612
  %i.n = load i32, ptr %i.m, align 4, !tbaa !118, !noalias !160 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !119, !noalias !160
  %i.q = ashr i32 %i.p, 1                         ; 3 uses
  %i.r = icmp sgt i32 %i.l, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp sgt i32 %i.n, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ne i32 %i.q, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp sge i32 %i.q, %i.l
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign ugt i32 %i.n, 1
  %i.w = icmp samesign ugt i32 %i.l, 1
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge74.split

.preheader.preheader:                             ; preds = %._crit_edge
  %i.x = add nsw i32 %i.n, -1
  %i.y = add nsw i32 %i.l, -1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = zext nneg i32 %i.q to i64               ; 2 uses
  %i.ab = zext nneg i32 %i.x to i64
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.ae, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %i.ad)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !92
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !157

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge72
  %indvars.iv80 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next81, %._crit_edge72 ] ; 3 uses
  %i.ak = mul nuw nsw i64 %indvars.iv80, %i.aa
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ak
  %i.am = or disjoint i64 %indvars.iv80, 1
  %i.an = mul nuw nsw i64 %i.am, %i.aa
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.an
  br label %bb.c

._crit_edge74.split:                              ; preds = %._crit_edge72, %._crit_edge
  ret void

._crit_edge72:                                    ; preds = %bb.c
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.ap = icmp samesign ult i64 %indvars.iv.next81, %i.ab
  br i1 %i.ap, label %.preheader, label %._crit_edge74.split, !llvm.loop !158

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv77 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next78, %bb.c ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv77
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv77 ; 2 uses
  %i.at = load i16, ptr %i.ar, align 2, !tbaa !121
  %i.au = load i16, ptr %i.as, align 2, !tbaa !121
  store i16 %i.au, ptr %i.ar, align 2, !tbaa !121
  store i16 %i.at, ptr %i.as, align 2, !tbaa !121
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next78, %i.z
  br i1 %i.av, label %bb.c, label %._crit_edge72, !llvm.loop !159
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i177 = alloca i32, align 4       ; 40 uses
  %.sroa.0.i.i.i.i154 = alloca i32, align 4       ; 40 uses
  %.sroa.0.i.i.i.i128 = alloca i32, align 4       ; 40 uses
  %.sroa.0.i.i.i.i = alloca i32, align 4          ; 40 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.c = load i32, ptr %i.b, align 8, !tbaa !91, !noalias !164
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.e = load i32, ptr %i.d, align 8, !tbaa !117, !noalias !164
  %i.f = mul nsw i32 %i.e, %i.c                   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.h = load i32, ptr %i.g, align 4, !tbaa !118, !noalias !164 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !119, !noalias !164
  %i.k = ashr i32 %i.j, 1                         ; 5 uses
  %i.l = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp sge i32 %i.k, %i.f
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sgt i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !97   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !98   ; 3 uses
  %i.t = icmp uge i32 %i.s, %i.q
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp sgt i32 %i.s, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = zext i32 %i.q to i64
  %i.w = sub nuw i32 %i.s, %i.q                   ; 101 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v ; 66 uses
  %i.z = icmp samesign ult i32 %i.w, 4
  br i1 %i.z, label %bb.b, label %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE) #11
  unreachable

_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.aa = mul nuw nsw i32 %i.k, %i.h              ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !116, !noalias !164 ; 3 uses
  %i.ad = icmp slt i32 %1, 2                      ; 2 uses
  %i.ae = select i1 %i.ad, i32 7, i32 4           ; 4 uses
  %i.af = add nuw nsw i32 %i.w, 8                 ; 33 uses
  %i.ag = add nsw i32 %1, -1                      ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, %i.h       ; 2 uses
  %i.ai = mul nuw nsw i32 %i.k, %i.ag             ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, %i.f
  %i.ak = icmp samesign ule i32 %i.aj, %i.aa
  %i.al = zext nneg i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.al ; 14 uses
  %i.an = icmp samesign ult i32 %1, %i.h          ; 21 uses
  %i.ao = mul nuw nsw i32 %i.k, %1                ; 2 uses
  %i.ap = add nuw nsw i32 %i.ao, %i.f
  %i.aq = icmp samesign ule i32 %i.ap, %i.aa      ; 2 uses
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ar ; 47 uses
  %i.at = add nsw i32 %1, -2                      ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, %i.h       ; 2 uses
  %i.av = mul nuw nsw i32 %i.k, %i.at             ; 2 uses
  %i.aw = add nuw nsw i32 %i.av, %i.f
  %i.ax = icmp samesign ule i32 %i.aw, %i.aa
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ay ; 14 uses
  %i.ba = zext nneg i32 %i.f to i64               ; 21 uses
  %i.bb = zext nneg i32 %i.f to i64
  br label %bb.d

bb.c:                                             ; preds = %.loopexit
  ret void

bb.d:                                             ; preds = %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit, %.loopexit
  %.sroa.47.0 = phi i32 [ %i.ae, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.47.1691700, %.loopexit ] ; 2 uses
  %.sroa.32.0 = phi i32 [ %i.ae, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.32.1677686, %.loopexit ] ; 2 uses
  %.sroa.17.0 = phi i32 [ %i.ae, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.17.1663672, %.loopexit ] ; 2 uses
  %.sroa.0496.0 = phi i32 [ %i.ae, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.0496.1705714, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %indvars.iv.next.pre-phi, %.loopexit ] ; 52 uses
  %.sroa.0198.0480 = phi i64 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.0198.8, %.loopexit ] ; 2 uses
  %.sroa.24.0479 = phi i32 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.24.8, %.loopexit ] ; 5 uses
  %.sroa.63226.0478 = phi i32 [ 0, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit ], [ %.sroa.63226.7, %.loopexit ] ; 5 uses
  %i.bc = icmp samesign ult i32 %.sroa.24.0479, 65
  tail call void @llvm.assume(i1 %i.bc)
  %.not.i = icmp samesign ult i32 %.sroa.24.0479, 32
  br i1 %.not.i, label %bb.e, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.bd = add nuw nsw i32 %.sroa.63226.0478, 4    ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %i.bd, %i.w
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !115

bb.f:                                             ; preds = %bb.e
  %i.be = zext nneg i32 %.sroa.63226.0478 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.be
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bg = icmp samesign ugt i32 %.sroa.63226.0478, %i.af
  br i1 %i.bg, label %bb.h, label %bb.i, !prof !115

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.0478) ; 3 uses
  %i.bh = add nuw nsw i32 %.sroa.speculated27.i.i.i, 4
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.bh)
  %i.bi = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bi, 5
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bk
  %i.bm = zext nneg i32 %i.bi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.bl, i64 %i.bm, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.i ], [ %i.bf, %bb.f ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bn = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i64
  %i.bo = or disjoint i32 %.sroa.24.0479, 32
  %i.bp = sub nuw nsw i32 32, %.sroa.24.0479
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw i64 %i.bn, %i.bq
  %i.bs = or i64 %i.br, %.sroa.0198.0480
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.d, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i
  %.sroa.63226.8 = phi i32 [ %i.bd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.63226.0478, %bb.d ] ; 15 uses
  %.sroa.24.9 = phi i32 [ %i.bo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.24.0479, %bb.d ] ; 2 uses
  %.sroa.0198.9 = phi i64 [ %i.bs, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.0198.0480, %bb.d ] ; 7 uses
  %i.bt = and i32 %.sroa.63226.8, 3
  %i.bu = icmp eq i32 %i.bt, 0
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = lshr i64 %.sroa.0198.9, 61
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 3
  %i.by = lshr i64 %.sroa.0198.9, 59
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = and i32 %i.bz, 3                        ; 2 uses
  %i.cb = lshr i64 %.sroa.0198.9, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 3                        ; 2 uses
  %i.ce = lshr i64 %.sroa.0198.9, 55
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = and i32 %i.cf, 3                        ; 2 uses
  %i.ch = add nsw i32 %.sroa.24.9, -9
  %i.ci = shl i64 %.sroa.0198.9, 9                ; 2 uses
  %.not94 = icmp sgt i64 %.sroa.0198.9, -1
  switch i32 %i.bx, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.unreachabledefault [
    i32 3, label %.thread708
    i32 2, label %bb.r
    i32 1, label %bb.q
    i32 0, label %.thread780
  ]

.preheader431.1:                                  ; preds = %.thread708, %.thread780
  %.sroa.0496.1705714 = phi i32 [ %i.df, %.thread708 ], [ %.sroa.0496.1705, %.thread780 ] ; 35 uses
  %.sroa.24.3706713 = phi i32 [ %i.dg, %.thread708 ], [ %i.ch, %.thread780 ] ; 2 uses
  %.sroa.0198.3707712 = phi i64 [ %i.dh, %.thread708 ], [ %i.ci, %.thread780 ] ; 3 uses
  switch i32 %i.ca, label %.preheader431.1.unreachabledefault [
    i32 3, label %.thread666
    i32 2, label %bb.j
    i32 1, label %bb.k
    i32 0, label %.thread768
  ]

bb.j:                                             ; preds = %.preheader431.1
  br label %bb.k

.thread666:                                       ; preds = %.preheader431.1
  %i.cj = lshr i64 %.sroa.0198.3707712, 60
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = add nsw i32 %.sroa.24.3706713, -4
  %i.cm = shl i64 %.sroa.0198.3707712, 4
  br label %.preheader431.2

bb.k:                                             ; preds = %.preheader431.1, %bb.j
  %.sink = phi i32 [ -1, %bb.j ], [ %i.ca, %.preheader431.1 ]
  %i.cn = add nsw i32 %.sroa.17.0, %.sink         ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.s, label %.thread768

.preheader431.1.unreachabledefault:               ; preds = %.preheader431.1
  unreachable

.thread768:                                       ; preds = %.preheader431.1, %bb.k
  %.sroa.17.1663 = phi i32 [ %i.cn, %bb.k ], [ %.sroa.17.0, %.preheader431.1 ] ; 2 uses
  %i.cp = icmp samesign ugt i32 %.sroa.17.1663, 16
  br i1 %i.cp, label %bb.t, label %.preheader431.2

.preheader431.2:                                  ; preds = %.thread666, %.thread768
  %.sroa.17.1663672 = phi i32 [ %i.ck, %.thread666 ], [ %.sroa.17.1663, %.thread768 ] ; 35 uses
  %.sroa.24.3.1664671 = phi i32 [ %i.cl, %.thread666 ], [ %.sroa.24.3706713, %.thread768 ] ; 2 uses
  %.sroa.0198.3.1665670 = phi i64 [ %i.cm, %.thread666 ], [ %.sroa.0198.3707712, %.thread768 ] ; 3 uses
  switch i32 %i.cd, label %.preheader431.2.unreachabledefault [
    i32 3, label %.thread680
    i32 2, label %bb.l
    i32 1, label %bb.m
    i32 0, label %.thread772
  ]

bb.l:                                             ; preds = %.preheader431.2
  br label %bb.m

.thread680:                                       ; preds = %.preheader431.2
  %i.cq = lshr i64 %.sroa.0198.3.1665670, 60
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = add nsw i32 %.sroa.24.3.1664671, -4
  %i.ct = shl i64 %.sroa.0198.3.1665670, 4
  br label %.preheader431.3

bb.m:                                             ; preds = %.preheader431.2, %bb.l
  %.sink784 = phi i32 [ -1, %bb.l ], [ %i.cd, %.preheader431.2 ]
  %i.cu = add nsw i32 %.sroa.32.0, %.sink784      ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %bb.s, label %.thread772

.preheader431.2.unreachabledefault:               ; preds = %.preheader431.2
  unreachable

.thread772:                                       ; preds = %.preheader431.2, %bb.m
  %.sroa.32.1677 = phi i32 [ %i.cu, %bb.m ], [ %.sroa.32.0, %.preheader431.2 ] ; 2 uses
  %i.cw = icmp samesign ugt i32 %.sroa.32.1677, 16
  br i1 %i.cw, label %bb.t, label %.preheader431.3

.preheader431.3:                                  ; preds = %.thread680, %.thread772
  %.sroa.32.1677686 = phi i32 [ %i.cr, %.thread680 ], [ %.sroa.32.1677, %.thread772 ] ; 35 uses
  %.sroa.24.3.2678685 = phi i32 [ %i.cs, %.thread680 ], [ %.sroa.24.3.1664671, %.thread772 ] ; 2 uses
  %.sroa.0198.3.2679684 = phi i64 [ %i.ct, %.thread680 ], [ %.sroa.0198.3.1665670, %.thread772 ] ; 3 uses
  switch i32 %i.cg, label %.preheader431.3.unreachabledefault [
    i32 3, label %.thread694
    i32 2, label %bb.n
    i32 1, label %bb.o
    i32 0, label %.thread776
  ]

bb.n:                                             ; preds = %.preheader431.3
  br label %bb.o

.thread694:                                       ; preds = %.preheader431.3
  %i.cx = lshr i64 %.sroa.0198.3.2679684, 60
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = add nsw i32 %.sroa.24.3.2678685, -4
  %i.da = shl i64 %.sroa.0198.3.2679684, 4
  br label %bb.p

bb.o:                                             ; preds = %.preheader431.3, %bb.n
  %.sink785 = phi i32 [ -1, %bb.n ], [ %i.cg, %.preheader431.3 ]
  %i.db = add nsw i32 %.sroa.47.0, %.sink785      ; 2 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.s, label %.thread776

.preheader431.3.unreachabledefault:               ; preds = %.preheader431.3
  unreachable

.thread776:                                       ; preds = %.preheader431.3, %bb.o
  %.sroa.47.1691 = phi i32 [ %i.db, %bb.o ], [ %.sroa.47.0, %.preheader431.3 ] ; 2 uses
  %i.dd = icmp samesign ugt i32 %.sroa.47.1691, 16
  br i1 %i.dd, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.thread694, %.thread776
  %.sroa.47.1691700 = phi i32 [ %i.cy, %.thread694 ], [ %.sroa.47.1691, %.thread776 ] ; 35 uses
  %.sroa.24.3.3692699 = phi i32 [ %i.cz, %.thread694 ], [ %.sroa.24.3.2678685, %.thread776 ] ; 10 uses
  %.sroa.0198.3.3693698 = phi i64 [ %i.da, %.thread694 ], [ %.sroa.0198.3.2679684, %.thread776 ] ; 6 uses
  br i1 %.not94, label %bb.dc, label %bb.u

.thread708:                                       ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %i.de = lshr i64 %i.ci, 60
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = add nsw i32 %.sroa.24.9, -13
  %i.dh = shl i64 %.sroa.0198.9, 13
  br label %.preheader431.1

bb.q:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  br label %bb.r

bb.r:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit, %bb.q
  %.sink786 = phi i32 [ 1, %bb.q ], [ -1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ]
  %i.di = add nsw i32 %.sroa.0496.0, %.sink786    ; 2 uses
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %bb.s, label %.thread780

bb.s:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.unreachabledefault: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  unreachable

.thread780:                                       ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit, %bb.r
  %.sroa.0496.1705 = phi i32 [ %i.di, %bb.r ], [ %.sroa.0496.0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit ] ; 2 uses
  %i.dk = icmp samesign ugt i32 %.sroa.0496.1705, 16
  br i1 %i.dk, label %bb.t, label %.preheader431.1

bb.t:                                             ; preds = %.thread776, %.thread772, %.thread768, %.thread780
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

bb.u:                                             ; preds = %bb.p
  br i1 %i.ad, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dl = add nuw nsw i64 %indvars.iv, 16         ; 2 uses
  %.not97 = icmp samesign ult i64 %i.dl, %i.ba
  br i1 %.not97, label %.preheader430.preheader, label %bb.x

.preheader430.preheader:                          ; preds = %bb.w
  %.not.i121 = icmp eq i32 %.sroa.0496.1705714, 0
  br i1 %.not.i121, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread, label %bb.y

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread: ; preds = %.preheader430.preheader
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ak)
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !121
  tail call void @llvm.assume(i1 %i.an)
  tail call void @llvm.assume(i1 %i.aq)
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !121
  %i.dp = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !121
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.dp
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !121
  %i.dt = or disjoint i64 %indvars.iv, 4          ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !121
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.dt
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !121
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE) #11
  unreachable

bb.y:                                             ; preds = %.preheader430.preheader
  %i.dx = icmp sgt i32 %.sroa.63226.8, -1
  tail call void @llvm.assume(i1 %i.dx)
  %.not.i.i.i122 = icmp samesign ult i32 %.sroa.24.3.3692699, %.sroa.0496.1705714
  br i1 %.not.i.i.i122, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.dy = add nuw nsw i32 %.sroa.63226.8, 4       ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i32 %i.dy, %i.w
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa, !prof !115

bb.aa:                                            ; preds = %bb.z
  %i.dz = zext nneg i32 %.sroa.63226.8 to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.dz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.eb = icmp samesign ugt i32 %.sroa.63226.8, %i.af
  br i1 %i.eb, label %bb.ac, label %bb.ad, !prof !115

bb.ac:                                            ; preds = %bb.bl, %bb.bg, %bb.bb, %bb.aw, %bb.ar, %bb.am, %bb.ah, %bb.ab
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.8) ; 3 uses
  %i.ec = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.ec)
  %i.ed = sub nsw i32 %.sroa.speculated.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i ; 2 uses
  %i.ee = icmp samesign ult i32 %i.ed, 5
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = zext nneg i32 %.sroa.speculated27.i.i.i.i.i to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ef
  %i.eh = zext nneg i32 %i.ed to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.eg, i64 %i.eh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i: ; preds = %bb.ad, %bb.aa
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.ad ], [ %i.ea, %bb.aa ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ei = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i to i64
  %i.ej = add nuw nsw i32 %.sroa.24.3.3692699, 32
  %i.ek = sub nuw nsw i32 32, %.sroa.24.3.3692699
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.ei, %i.el
  %i.en = or i64 %i.em, %.sroa.0198.3.3693698
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i
  %.sroa.63226.10 = phi i32 [ %i.dy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i ], [ %.sroa.63226.8, %bb.y ] ; 6 uses
  %i.eo = phi i64 [ %i.en, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i ], [ %.sroa.0198.3.3693698, %bb.y ] ; 2 uses
  %i.ep = phi i32 [ %i.ej, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i ], [ %.sroa.24.3.3692699, %bb.y ]
  %i.eq = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = sub nuw nsw i32 %i.ep, %.sroa.0496.1705714 ; 5 uses
  %i.et = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.eu = shl i64 %i.eo, %i.et                    ; 2 uses
  %i.ev = ashr i64 %i.eo, %i.er
  %i.ew = trunc nsw i64 %i.ev to i16
  tail call void @llvm.assume(i1 %i.ah)
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !121
  %i.ez = add i16 %i.ey, %i.ew
  tail call void @llvm.assume(i1 %i.an)
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !121
  %i.fb = icmp samesign ult i32 %i.es, 65
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = and i32 %.sroa.63226.10, 3
  %i.fd = icmp eq i32 %i.fc, 0
  tail call void @llvm.assume(i1 %i.fd)
  %.not.i.i.i122.1 = icmp samesign ult i32 %i.es, %.sroa.0496.1705714
  br i1 %.not.i.i.i122.1, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.fe = add nuw nsw i32 %.sroa.63226.10, 4      ; 2 uses
  %.not.i.i.i.i.1 = icmp samesign ugt i32 %i.fe, %i.w
  br i1 %.not.i.i.i.i.1, label %bb.ah, label %bb.ag, !prof !115

bb.ag:                                            ; preds = %bb.af
  %i.ff = zext nneg i32 %.sroa.63226.10 to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ff
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1

bb.ah:                                            ; preds = %bb.af
  %i.fh = icmp samesign ugt i32 %.sroa.63226.10, %i.af
  br i1 %i.fh, label %bb.ac, label %bb.ai, !prof !115

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.10) ; 3 uses
  %i.fi = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.1, 4
  %.sroa.speculated.i.i.i.i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.fi)
  %i.fj = sub nsw i32 %.sroa.speculated.i.i.i.i.i.1, %.sroa.speculated27.i.i.i.i.i.1 ; 2 uses
  %i.fk = icmp samesign ult i32 %i.fj, 5
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.1 to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.fl
  %i.fn = zext nneg i32 %i.fj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.fm, i64 %i.fn, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1: ; preds = %bb.ai, %bb.ag
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.1 = phi ptr [ %.sroa.0.i.i.i.i, %bb.ai ], [ %i.fg, %bb.ag ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.fo = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.1 to i64
  %i.fp = add nuw nsw i32 %i.es, 32
  %i.fq = sub nuw nsw i32 32, %i.es
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = shl nuw i64 %i.fo, %i.fr
  %i.ft = or i64 %i.fs, %i.eu
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1, %bb.ae
  %.sroa.63226.10.1 = phi i32 [ %i.fe, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1 ], [ %.sroa.63226.10, %bb.ae ] ; 6 uses
  %i.fu = phi i64 [ %i.ft, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1 ], [ %i.eu, %bb.ae ] ; 2 uses
  %i.fv = phi i32 [ %i.fp, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.1 ], [ %i.es, %bb.ae ]
  %i.fw = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = sub nuw nsw i32 %i.fv, %.sroa.0496.1705714 ; 5 uses
  %i.fz = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.ga = shl i64 %i.fu, %i.fz                    ; 2 uses
  %i.gb = ashr i64 %i.fu, %i.fx
  %i.gc = trunc nsw i64 %i.gb to i16
  %i.gd = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !121
  %i.gg = add i16 %i.gf, %i.gc
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.gd
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !121
  %i.gi = icmp samesign ult i32 %i.fy, 65
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = and i32 %.sroa.63226.10.1, 3
  %i.gk = icmp eq i32 %i.gj, 0
  tail call void @llvm.assume(i1 %i.gk)
  %.not.i.i.i122.2 = icmp samesign ult i32 %i.fy, %.sroa.0496.1705714
  br i1 %.not.i.i.i122.2, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.gl = add nuw nsw i32 %.sroa.63226.10.1, 4    ; 2 uses
  %.not.i.i.i.i.2 = icmp samesign ugt i32 %i.gl, %i.w
  br i1 %.not.i.i.i.i.2, label %bb.am, label %bb.al, !prof !115

bb.al:                                            ; preds = %bb.ak
  %i.gm = zext nneg i32 %.sroa.63226.10.1 to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.gm
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2

bb.am:                                            ; preds = %bb.ak
  %i.go = icmp samesign ugt i32 %.sroa.63226.10.1, %i.af
  br i1 %i.go, label %bb.ac, label %bb.an, !prof !115

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.2 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.10.1) ; 3 uses
  %i.gp = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.2, 4
  %.sroa.speculated.i.i.i.i.i.2 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.gp)
  %i.gq = sub nsw i32 %.sroa.speculated.i.i.i.i.i.2, %.sroa.speculated27.i.i.i.i.i.2 ; 2 uses
  %i.gr = icmp samesign ult i32 %i.gq, 5
  tail call void @llvm.assume(i1 %i.gr)
  %i.gs = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.2 to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.gs
  %i.gu = zext nneg i32 %i.gq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.gt, i64 %i.gu, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2: ; preds = %bb.an, %bb.al
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.2 = phi ptr [ %.sroa.0.i.i.i.i, %bb.an ], [ %i.gn, %bb.al ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.2, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.gv = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.2 to i64
  %i.gw = add nuw nsw i32 %i.fy, 32
  %i.gx = sub nuw nsw i32 32, %i.fy
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = shl nuw i64 %i.gv, %i.gy
  %i.ha = or i64 %i.gz, %i.ga
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2, %bb.aj
  %.sroa.63226.10.2 = phi i32 [ %i.gl, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2 ], [ %.sroa.63226.10.1, %bb.aj ] ; 7 uses
  %i.hb = phi i64 [ %i.ha, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2 ], [ %i.ga, %bb.aj ] ; 2 uses
  %i.hc = phi i32 [ %i.gw, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.2 ], [ %i.fy, %bb.aj ]
  %i.hd = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = sub nuw nsw i32 %i.hc, %.sroa.0496.1705714 ; 5 uses
  %i.hg = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.hh = shl i64 %i.hb, %i.hg                    ; 2 uses
  %i.hi = ashr i64 %i.hb, %i.he
  %i.hj = trunc nsw i64 %i.hi to i16
  %i.hk = or disjoint i64 %indvars.iv, 4          ; 2 uses
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !121
  %i.hn = add i16 %i.hm, %i.hj
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.hk
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !121
  %i.hp = icmp samesign ult i32 %i.hf, 65
  tail call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp sgt i32 %.sroa.63226.10.2, -1
  tail call void @llvm.assume(i1 %i.hq)
  %i.hr = and i32 %.sroa.63226.10.2, 3
  %i.hs = icmp eq i32 %i.hr, 0
  tail call void @llvm.assume(i1 %i.hs)
  %.not.i.i.i122.3 = icmp samesign ult i32 %i.hf, %.sroa.0496.1705714
  br i1 %.not.i.i.i122.3, label %bb.ap, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ht = add nuw nsw i32 %.sroa.63226.10.2, 4    ; 2 uses
  %.not.i.i.i.i.3 = icmp samesign ugt i32 %i.ht, %i.w
  br i1 %.not.i.i.i.i.3, label %bb.ar, label %bb.aq, !prof !115

bb.aq:                                            ; preds = %bb.ap
  %i.hu = zext nneg i32 %.sroa.63226.10.2 to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.hu
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3

bb.ar:                                            ; preds = %bb.ap
  %i.hw = icmp samesign ugt i32 %.sroa.63226.10.2, %i.af
  br i1 %i.hw, label %bb.ac, label %bb.as, !prof !115

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.3 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.10.2) ; 3 uses
  %i.hx = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.3, 4
  %.sroa.speculated.i.i.i.i.i.3 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.hx)
  %i.hy = sub nsw i32 %.sroa.speculated.i.i.i.i.i.3, %.sroa.speculated27.i.i.i.i.i.3 ; 2 uses
  %i.hz = icmp samesign ult i32 %i.hy, 5
  tail call void @llvm.assume(i1 %i.hz)
  %i.ia = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.3 to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ia
  %i.ic = zext nneg i32 %i.hy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ib, i64 %i.ic, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3: ; preds = %bb.as, %bb.aq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.3 = phi ptr [ %.sroa.0.i.i.i.i, %bb.as ], [ %i.hv, %bb.aq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.3, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.id = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.3 to i64
  %i.ie = add nuw nsw i32 %i.hf, 32
  %i.if = sub nuw nsw i32 32, %i.hf
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = shl nuw i64 %i.id, %i.ig
  %i.ii = or i64 %i.ih, %i.hh
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3, %bb.ao
  %.sroa.63226.10.3 = phi i32 [ %i.ht, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3 ], [ %.sroa.63226.10.2, %bb.ao ]
  %i.ij = phi i64 [ %i.ii, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3 ], [ %i.hh, %bb.ao ] ; 2 uses
  %i.ik = phi i32 [ %i.ie, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.3 ], [ %i.hf, %bb.ao ]
  %i.il = sub nuw nsw i32 64, %.sroa.0496.1705714
  %i.im = zext nneg i32 %i.il to i64
  %i.in = sub nuw nsw i32 %i.ik, %.sroa.0496.1705714
  %i.io = zext nneg i32 %.sroa.0496.1705714 to i64
  %i.ip = shl i64 %i.ij, %i.io
  %i.iq = ashr i64 %i.ij, %i.im
  %i.ir = trunc nsw i64 %i.iq to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3
  %.sroa.63226.11.3 = phi i32 [ %.sroa.63226.8, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %.sroa.63226.10.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ] ; 8 uses
  %.sroa.24.10.3 = phi i32 [ %.sroa.24.3.3692699, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %i.in, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ] ; 6 uses
  %.sroa.0198.10.3 = phi i64 [ %.sroa.0198.3.3693698, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %i.ip, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ] ; 3 uses
  %.0.i.3 = phi i16 [ 0, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.2.thread ], [ %i.ir, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.3 ]
  %i.is = or disjoint i64 %indvars.iv, 6          ; 2 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !121
  %i.iv = add i16 %i.iu, %.0.i.3
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.is
  store i16 %i.iv, ptr %i.iw, align 2, !tbaa !121
  %.not.i121.4 = icmp eq i32 %.sroa.17.1663672, 0
  br i1 %.not.i121.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread, label %bb.at

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3
  %i.ix = or disjoint i64 %indvars.iv, 8          ; 2 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !121
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ix
  store i16 %i.iz, ptr %i.ja, align 2, !tbaa !121
  %i.jb = or disjoint i64 %indvars.iv, 10         ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.jb
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !121
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.jb
  store i16 %i.jd, ptr %i.je, align 2, !tbaa !121
  %i.jf = or disjoint i64 %indvars.iv, 12         ; 3 uses
  %i.jg = icmp samesign ult i64 %i.jf, %i.ba
  tail call void @llvm.assume(i1 %i.jg)
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.jf
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !121
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.jf
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !121
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.7

bb.at:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.3
  %i.jk = icmp samesign ult i32 %.sroa.24.10.3, 65
  tail call void @llvm.assume(i1 %i.jk)
  %i.jl = icmp sgt i32 %.sroa.63226.11.3, -1
  tail call void @llvm.assume(i1 %i.jl)
  %i.jm = and i32 %.sroa.63226.11.3, 3
  %i.jn = icmp eq i32 %i.jm, 0
  tail call void @llvm.assume(i1 %i.jn)
  %.not.i.i.i122.4 = icmp samesign ult i32 %.sroa.24.10.3, %.sroa.17.1663672
  br i1 %.not.i.i.i122.4, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.jo = add nuw nsw i32 %.sroa.63226.11.3, 4    ; 2 uses
  %.not.i.i.i.i.4 = icmp samesign ugt i32 %i.jo, %i.w
  br i1 %.not.i.i.i.i.4, label %bb.aw, label %bb.av, !prof !115

bb.av:                                            ; preds = %bb.au
  %i.jp = zext nneg i32 %.sroa.63226.11.3 to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.jp
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4

bb.aw:                                            ; preds = %bb.au
  %i.jr = icmp samesign ugt i32 %.sroa.63226.11.3, %i.af
  br i1 %i.jr, label %bb.ac, label %bb.ax, !prof !115

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.4 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.11.3) ; 3 uses
  %i.js = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.4, 4
  %.sroa.speculated.i.i.i.i.i.4 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.js)
  %i.jt = sub nsw i32 %.sroa.speculated.i.i.i.i.i.4, %.sroa.speculated27.i.i.i.i.i.4 ; 2 uses
  %i.ju = icmp samesign ult i32 %i.jt, 5
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.4 to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.jv
  %i.jx = zext nneg i32 %i.jt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.jw, i64 %i.jx, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4: ; preds = %bb.ax, %bb.av
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.4 = phi ptr [ %.sroa.0.i.i.i.i, %bb.ax ], [ %i.jq, %bb.av ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.4 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.4, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.jy = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.4 to i64
  %i.jz = add nuw nsw i32 %.sroa.24.10.3, 32
  %i.ka = sub nuw nsw i32 32, %.sroa.24.10.3
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = shl nuw i64 %i.jy, %i.kb
  %i.kd = or i64 %i.kc, %.sroa.0198.10.3
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4, %bb.at
  %.sroa.63226.10.4 = phi i32 [ %i.jo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4 ], [ %.sroa.63226.11.3, %bb.at ] ; 6 uses
  %i.ke = phi i64 [ %i.kd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4 ], [ %.sroa.0198.10.3, %bb.at ] ; 2 uses
  %i.kf = phi i32 [ %i.jz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.4 ], [ %.sroa.24.10.3, %bb.at ]
  %i.kg = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = sub nuw nsw i32 %i.kf, %.sroa.17.1663672 ; 5 uses
  %i.kj = zext nneg i32 %.sroa.17.1663672 to i64
  %i.kk = shl i64 %i.ke, %i.kj                    ; 2 uses
  %i.kl = ashr i64 %i.ke, %i.kh
  %i.km = trunc nsw i64 %i.kl to i16
  %i.kn = or disjoint i64 %indvars.iv, 8          ; 2 uses
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.kn
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !121
  %i.kq = add i16 %i.kp, %i.km
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.kn
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !121
  %i.ks = icmp samesign ult i32 %i.ki, 65
  tail call void @llvm.assume(i1 %i.ks)
  %i.kt = and i32 %.sroa.63226.10.4, 3
  %i.ku = icmp eq i32 %i.kt, 0
  tail call void @llvm.assume(i1 %i.ku)
  %.not.i.i.i122.5 = icmp samesign ult i32 %i.ki, %.sroa.17.1663672
  br i1 %.not.i.i.i122.5, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.kv = add nuw nsw i32 %.sroa.63226.10.4, 4    ; 2 uses
  %.not.i.i.i.i.5 = icmp samesign ugt i32 %i.kv, %i.w
  br i1 %.not.i.i.i.i.5, label %bb.bb, label %bb.ba, !prof !115

bb.ba:                                            ; preds = %bb.az
  %i.kw = zext nneg i32 %.sroa.63226.10.4 to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.kw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5

bb.bb:                                            ; preds = %bb.az
  %i.ky = icmp samesign ugt i32 %.sroa.63226.10.4, %i.af
  br i1 %i.ky, label %bb.ac, label %bb.bc, !prof !115

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.5 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.10.4) ; 3 uses
  %i.kz = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.5, 4
  %.sroa.speculated.i.i.i.i.i.5 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.kz)
  %i.la = sub nsw i32 %.sroa.speculated.i.i.i.i.i.5, %.sroa.speculated27.i.i.i.i.i.5 ; 2 uses
  %i.lb = icmp samesign ult i32 %i.la, 5
  tail call void @llvm.assume(i1 %i.lb)
  %i.lc = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.5 to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.lc
  %i.le = zext nneg i32 %i.la to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ld, i64 %i.le, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5: ; preds = %bb.bc, %bb.ba
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.5 = phi ptr [ %.sroa.0.i.i.i.i, %bb.bc ], [ %i.kx, %bb.ba ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.5 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.5, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.lf = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.5 to i64
  %i.lg = add nuw nsw i32 %i.ki, 32
  %i.lh = sub nuw nsw i32 32, %i.ki
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = shl nuw i64 %i.lf, %i.li
  %i.lk = or i64 %i.lj, %i.kk
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5, %bb.ay
  %.sroa.63226.10.5 = phi i32 [ %i.kv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5 ], [ %.sroa.63226.10.4, %bb.ay ] ; 6 uses
  %i.ll = phi i64 [ %i.lk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5 ], [ %i.kk, %bb.ay ] ; 2 uses
  %i.lm = phi i32 [ %i.lg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.5 ], [ %i.ki, %bb.ay ]
  %i.ln = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = sub nuw nsw i32 %i.lm, %.sroa.17.1663672 ; 5 uses
  %i.lq = zext nneg i32 %.sroa.17.1663672 to i64
  %i.lr = shl i64 %i.ll, %i.lq                    ; 2 uses
  %i.ls = ashr i64 %i.ll, %i.lo
  %i.lt = trunc nsw i64 %i.ls to i16
  %i.lu = or disjoint i64 %indvars.iv, 10         ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.lu
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !121
  %i.lx = add i16 %i.lw, %i.lt
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.lu
  store i16 %i.lx, ptr %i.ly, align 2, !tbaa !121
  %i.lz = icmp samesign ult i32 %i.lp, 65
  tail call void @llvm.assume(i1 %i.lz)
  %i.ma = and i32 %.sroa.63226.10.5, 3
  %i.mb = icmp eq i32 %i.ma, 0
  tail call void @llvm.assume(i1 %i.mb)
  %.not.i.i.i122.6 = icmp samesign ult i32 %i.lp, %.sroa.17.1663672
  br i1 %.not.i.i.i122.6, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.mc = add nuw nsw i32 %.sroa.63226.10.5, 4    ; 2 uses
  %.not.i.i.i.i.6 = icmp samesign ugt i32 %i.mc, %i.w
  br i1 %.not.i.i.i.i.6, label %bb.bg, label %bb.bf, !prof !115

bb.bf:                                            ; preds = %bb.be
  %i.md = zext nneg i32 %.sroa.63226.10.5 to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.md
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6

bb.bg:                                            ; preds = %bb.be
  %i.mf = icmp samesign ugt i32 %.sroa.63226.10.5, %i.af
  br i1 %i.mf, label %bb.ac, label %bb.bh, !prof !115

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.6 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.10.5) ; 3 uses
  %i.mg = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.6, 4
  %.sroa.speculated.i.i.i.i.i.6 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.mg)
  %i.mh = sub nsw i32 %.sroa.speculated.i.i.i.i.i.6, %.sroa.speculated27.i.i.i.i.i.6 ; 2 uses
  %i.mi = icmp samesign ult i32 %i.mh, 5
  tail call void @llvm.assume(i1 %i.mi)
  %i.mj = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.6 to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.mj
  %i.ml = zext nneg i32 %i.mh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.mk, i64 %i.ml, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6: ; preds = %bb.bh, %bb.bf
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.6 = phi ptr [ %.sroa.0.i.i.i.i, %bb.bh ], [ %i.me, %bb.bf ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.6 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.6, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.mm = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.6 to i64
  %i.mn = add nuw nsw i32 %i.lp, 32
  %i.mo = sub nuw nsw i32 32, %i.lp
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = shl nuw i64 %i.mm, %i.mp
  %i.mr = or i64 %i.mq, %i.lr
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6, %bb.bd
  %.sroa.63226.10.6 = phi i32 [ %i.mc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6 ], [ %.sroa.63226.10.5, %bb.bd ] ; 6 uses
  %i.ms = phi i64 [ %i.mr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6 ], [ %i.lr, %bb.bd ] ; 2 uses
  %i.mt = phi i32 [ %i.mn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.6 ], [ %i.lp, %bb.bd ]
  %i.mu = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = sub nuw nsw i32 %i.mt, %.sroa.17.1663672 ; 5 uses
  %i.mx = zext nneg i32 %.sroa.17.1663672 to i64
  %i.my = shl i64 %i.ms, %i.mx                    ; 2 uses
  %i.mz = ashr i64 %i.ms, %i.mv
  %i.na = trunc nsw i64 %i.mz to i16
  %i.nb = or disjoint i64 %indvars.iv, 12         ; 3 uses
  %i.nc = icmp samesign ult i64 %i.nb, %i.ba
  tail call void @llvm.assume(i1 %i.nc)
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.nb
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !121
  %i.nf = add i16 %i.ne, %i.na
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.nb
  store i16 %i.nf, ptr %i.ng, align 2, !tbaa !121
  %i.nh = icmp samesign ult i32 %i.mw, 65
  tail call void @llvm.assume(i1 %i.nh)
  %i.ni = and i32 %.sroa.63226.10.6, 3
  %i.nj = icmp eq i32 %i.ni, 0
  tail call void @llvm.assume(i1 %i.nj)
  %.not.i.i.i122.7 = icmp samesign ult i32 %i.mw, %.sroa.17.1663672
  br i1 %.not.i.i.i122.7, label %bb.bj, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.nk = add nuw nsw i32 %.sroa.63226.10.6, 4    ; 2 uses
  %.not.i.i.i.i.7 = icmp samesign ugt i32 %i.nk, %i.w
  br i1 %.not.i.i.i.i.7, label %bb.bl, label %bb.bk, !prof !115

bb.bk:                                            ; preds = %bb.bj
  %i.nl = zext nneg i32 %.sroa.63226.10.6 to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.nl
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7

bb.bl:                                            ; preds = %bb.bj
  %i.nn = icmp samesign ugt i32 %.sroa.63226.10.6, %i.af
  br i1 %i.nn, label %bb.ac, label %bb.bm, !prof !115

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i.7 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.10.6) ; 3 uses
  %i.no = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i.7, 4
  %.sroa.speculated.i.i.i.i.i.7 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.no)
  %i.np = sub nsw i32 %.sroa.speculated.i.i.i.i.i.7, %.sroa.speculated27.i.i.i.i.i.7 ; 2 uses
  %i.nq = icmp samesign ult i32 %i.np, 5
  tail call void @llvm.assume(i1 %i.nq)
  %i.nr = zext nneg i32 %.sroa.speculated27.i.i.i.i.i.7 to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.nr
  %i.nt = zext nneg i32 %i.np to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ns, i64 %i.nt, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7: ; preds = %bb.bm, %bb.bk
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.7 = phi ptr [ %.sroa.0.i.i.i.i, %bb.bm ], [ %i.nm, %bb.bk ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.7 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i.7, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.nu = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i.7 to i64
  %i.nv = add nuw nsw i32 %i.mw, 32
  %i.nw = sub nuw nsw i32 32, %i.mw
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = shl nuw i64 %i.nu, %i.nx
  %i.nz = or i64 %i.ny, %i.my
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7, %bb.bi
  %.sroa.63226.10.7 = phi i32 [ %i.nk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7 ], [ %.sroa.63226.10.6, %bb.bi ]
  %i.oa = phi i64 [ %i.nz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7 ], [ %i.my, %bb.bi ] ; 2 uses
  %i.ob = phi i32 [ %i.nv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i.7 ], [ %i.mw, %bb.bi ]
  %i.oc = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = sub nuw nsw i32 %i.ob, %.sroa.17.1663672
  %i.of = zext nneg i32 %.sroa.17.1663672 to i64
  %i.og = shl i64 %i.oa, %i.of
  %i.oh = ashr i64 %i.oa, %i.od
  %i.oi = trunc nsw i64 %i.oh to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.7

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.7: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7
  %.sroa.63226.11.7 = phi i32 [ %.sroa.63226.11.3, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread ], [ %.sroa.63226.10.7, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7 ] ; 8 uses
  %.sroa.24.10.7 = phi i32 [ %.sroa.24.10.3, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread ], [ %i.oe, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7 ] ; 6 uses
  %.sroa.0198.10.7 = phi i64 [ %.sroa.0198.10.3, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread ], [ %i.og, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7 ] ; 3 uses
  %.0.i.7 = phi i16 [ 0, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.6.thread ], [ %i.oi, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i.7 ]
  %i.oj = or disjoint i64 %indvars.iv, 14         ; 3 uses
  %i.ok = icmp samesign ult i64 %i.oj, %i.ba
  tail call void @llvm.assume(i1 %i.ok)
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.oj
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !121
  %i.on = add i16 %i.om, %.0.i.7
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.oj
  store i16 %i.on, ptr %i.oo, align 2, !tbaa !121
  %.not.i129 = icmp eq i32 %.sroa.32.1677686, 0
  br i1 %.not.i129, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.2.thread, label %bb.bn

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.2.thread: ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.7
  %i.op = or disjoint i64 %indvars.iv, 1          ; 2 uses
  tail call void @llvm.assume(i1 %i.au)
  tail call void @llvm.assume(i1 %i.ax)
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.op
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !121
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.op
  store i16 %i.or, ptr %i.os, align 2, !tbaa !121
  %i.ot = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ot
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !121
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ot
  store i16 %i.ov, ptr %i.ow, align 2, !tbaa !121
  %i.ox = or disjoint i64 %indvars.iv, 5          ; 2 uses
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ox
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !121
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ox
  store i16 %i.oz, ptr %i.pa, align 2, !tbaa !121
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit144.3

bb.bn:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit.7
  %i.pb = icmp samesign ult i32 %.sroa.24.10.7, 65
  tail call void @llvm.assume(i1 %i.pb)
  %i.pc = icmp sgt i32 %.sroa.63226.11.7, -1
  tail call void @llvm.assume(i1 %i.pc)
  %i.pd = and i32 %.sroa.63226.11.7, 3
  %i.pe = icmp eq i32 %i.pd, 0
  tail call void @llvm.assume(i1 %i.pe)
  %.not.i.i.i130 = icmp samesign ult i32 %.sroa.24.10.7, %.sroa.32.1677686
  br i1 %.not.i.i.i130, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i128)
  %i.pf = add nuw nsw i32 %.sroa.63226.11.7, 4    ; 2 uses
  %.not.i.i.i.i135 = icmp samesign ugt i32 %i.pf, %i.w
  br i1 %.not.i.i.i.i135, label %bb.bq, label %bb.bp, !prof !115

bb.bp:                                            ; preds = %bb.bo
  %i.pg = zext nneg i32 %.sroa.63226.11.7 to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.pg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i137

bb.bq:                                            ; preds = %bb.bo
  %i.pi = icmp samesign ugt i32 %.sroa.63226.11.7, %i.af
  br i1 %i.pi, label %bb.br, label %bb.bs, !prof !115

bb.br:                                            ; preds = %bb.da, %bb.cv, %bb.cq, %bb.cl, %bb.cg, %bb.cb, %bb.bw, %bb.bq
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable
end_hunk_0
