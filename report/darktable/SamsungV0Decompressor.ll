Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV0Decompressor?download=true
inline.NumInlined: 413
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8rawspeed27AbstractSamsungDecompressorD2Ev:bb.a
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
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !95
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
  %i.q = load i32, ptr %i.p, align 8, !tbaa !101  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !102  ; 3 uses
  %i.t = icmp uge i32 %i.s, %i.q
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp sgt i32 %i.s, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = zext i32 %i.q to i64
  %i.w = sub nuw nsw i32 %i.s, %i.q               ; 101 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !103
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
  %i.ba = zext nneg i32 %i.f to i64               ; 27 uses
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
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed21SamsungV0Decompressor15decompressStripEiNS_10ByteStreamE:bb.a
  %.sroa.63226.14.5 = phi i32 [ %i.agn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.5 ], [ %.sroa.63226.15.4, %bb.en ]
  %i.ahd = phi i64 [ %i.ahc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.5 ], [ %.sroa.0198.12.4, %bb.en ] ; 2 uses
  %i.ahe = phi i32 [ %i.agy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.5 ], [ %.sroa.24.12.4, %bb.en ]
  %i.ahf = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.ahg = zext nneg i32 %i.ahf to i64
  %i.ahh = sub nuw nsw i32 %i.ahe, %.sroa.17.1663672
  %i.ahi = zext nneg i32 %.sroa.17.1663672 to i64
  %i.ahj = shl i64 %i.ahd, %i.ahi
  %i.ahk = ashr i64 %i.ahd, %i.ahg
  %i.ahl = trunc nsw i64 %i.ahk to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.5

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.5: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5, %bb.em
  %.sroa.63226.15.5 = phi i32 [ %.sroa.63226.15.4, %bb.em ], [ %.sroa.63226.14.5, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5 ] ; 8 uses
  %.sroa.24.12.5 = phi i32 [ %.sroa.24.12.4, %bb.em ], [ %i.ahh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5 ] ; 6 uses
  %.sroa.0198.12.5 = phi i64 [ %.sroa.0198.12.4, %bb.em ], [ %i.ahj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5 ] ; 3 uses
  %.0.i160.5 = phi i16 [ 0, %bb.em ], [ %i.ahl, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.5 ]
  %i.ahm = or disjoint i64 %indvars.iv, 10        ; 2 uses
  %i.ahn = icmp samesign ult i64 %i.ahm, %i.ba
  br i1 %i.ahn, label %bb.es, label %bb.et

bb.es:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.5
  %i.aho = add i16 %.0.i160.5, %i.aae
  tail call void @llvm.assume(i1 %i.an)
  %i.ahp = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ahm
  store i16 %i.aho, ptr %i.ahp, align 2, !tbaa !121
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.5
  br i1 %.not.i155.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.6, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ahq = icmp samesign ult i32 %.sroa.24.12.5, 65
  tail call void @llvm.assume(i1 %i.ahq)
  %i.ahr = icmp sgt i32 %.sroa.63226.15.5, -1
  tail call void @llvm.assume(i1 %i.ahr)
  %i.ahs = and i32 %.sroa.63226.15.5, 3
  %i.aht = icmp eq i32 %i.ahs, 0
  tail call void @llvm.assume(i1 %i.aht)
  %.not.i.i.i156.6 = icmp samesign ult i32 %.sroa.24.12.5, %.sroa.17.1663672
  br i1 %.not.i.i.i156.6, label %bb.ev, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.ahu = add nuw nsw i32 %.sroa.63226.15.5, 4   ; 2 uses
  %.not.i.i.i.i161.6 = icmp samesign ugt i32 %i.ahu, %i.w
  br i1 %.not.i.i.i.i161.6, label %bb.ex, label %bb.ew, !prof !115

bb.ew:                                            ; preds = %bb.ev
  %i.ahv = zext nneg i32 %.sroa.63226.15.5 to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ahv
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6

bb.ex:                                            ; preds = %bb.ev
  %i.ahx = icmp samesign ugt i32 %.sroa.63226.15.5, %i.af
  br i1 %i.ahx, label %bb.dj, label %bb.ey, !prof !115

bb.ey:                                            ; preds = %bb.ex
  store i32 0, ptr %.sroa.0.i.i.i.i154, align 4
  %.sroa.speculated27.i.i.i.i.i168.6 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.15.5) ; 3 uses
  %i.ahy = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i168.6, 4
  %.sroa.speculated.i.i.i.i.i169.6 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.ahy)
  %i.ahz = sub nsw i32 %.sroa.speculated.i.i.i.i.i169.6, %.sroa.speculated27.i.i.i.i.i168.6 ; 2 uses
  %i.aia = icmp samesign ult i32 %i.ahz, 5
  tail call void @llvm.assume(i1 %i.aia)
  %i.aib = zext nneg i32 %.sroa.speculated27.i.i.i.i.i168.6 to i64
  %i.aic = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aib
  %i.aid = zext nneg i32 %i.ahz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i154, ptr align 1 %i.aic, i64 %i.aid, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6: ; preds = %bb.ey, %bb.ew
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.6 = phi ptr [ %.sroa.0.i.i.i.i154, %bb.ey ], [ %i.ahw, %bb.ew ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.6 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.6, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.aie = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.6 to i64
  %i.aif = add nuw nsw i32 %.sroa.24.12.5, 32
  %i.aig = sub nuw nsw i32 32, %.sroa.24.12.5
  %i.aih = zext nneg i32 %i.aig to i64
  %i.aii = shl nuw i64 %i.aie, %i.aih
  %i.aij = or i64 %i.aii, %.sroa.0198.12.5
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6, %bb.eu
  %.sroa.63226.14.6 = phi i32 [ %i.ahu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6 ], [ %.sroa.63226.15.5, %bb.eu ]
  %i.aik = phi i64 [ %i.aij, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6 ], [ %.sroa.0198.12.5, %bb.eu ] ; 2 uses
  %i.ail = phi i32 [ %i.aif, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.6 ], [ %.sroa.24.12.5, %bb.eu ]
  %i.aim = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.ain = zext nneg i32 %i.aim to i64
  %i.aio = sub nuw nsw i32 %i.ail, %.sroa.17.1663672
  %i.aip = zext nneg i32 %.sroa.17.1663672 to i64
  %i.aiq = shl i64 %i.aik, %i.aip
  %i.air = ashr i64 %i.aik, %i.ain
  %i.ais = trunc nsw i64 %i.air to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.6

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.6: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6, %bb.et
  %.sroa.63226.15.6 = phi i32 [ %.sroa.63226.15.5, %bb.et ], [ %.sroa.63226.14.6, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6 ] ; 8 uses
  %.sroa.24.12.6 = phi i32 [ %.sroa.24.12.5, %bb.et ], [ %i.aio, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6 ] ; 6 uses
  %.sroa.0198.12.6 = phi i64 [ %.sroa.0198.12.5, %bb.et ], [ %i.aiq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6 ] ; 3 uses
  %.0.i160.6 = phi i16 [ 0, %bb.et ], [ %i.ais, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.6 ]
  %i.ait = or disjoint i64 %indvars.iv, 12        ; 2 uses
  %i.aiu = icmp samesign ult i64 %i.ait, %i.ba
  br i1 %i.aiu, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.6
  %i.aiv = add i16 %.0.i160.6, %i.aae
  tail call void @llvm.assume(i1 %i.an)
  %i.aiw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.ait
  store i16 %i.aiv, ptr %i.aiw, align 2, !tbaa !121
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.6
  br i1 %.not.i155.4, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.7, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aix = icmp samesign ult i32 %.sroa.24.12.6, 65
  tail call void @llvm.assume(i1 %i.aix)
  %i.aiy = icmp sgt i32 %.sroa.63226.15.6, -1
  tail call void @llvm.assume(i1 %i.aiy)
  %i.aiz = and i32 %.sroa.63226.15.6, 3
  %i.aja = icmp eq i32 %i.aiz, 0
  tail call void @llvm.assume(i1 %i.aja)
  %.not.i.i.i156.7 = icmp samesign ult i32 %.sroa.24.12.6, %.sroa.17.1663672
  br i1 %.not.i.i.i156.7, label %bb.fc, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.ajb = add nuw nsw i32 %.sroa.63226.15.6, 4   ; 2 uses
  %.not.i.i.i.i161.7 = icmp samesign ugt i32 %i.ajb, %i.w
  br i1 %.not.i.i.i.i161.7, label %bb.fe, label %bb.fd, !prof !115

bb.fd:                                            ; preds = %bb.fc
  %i.ajc = zext nneg i32 %.sroa.63226.15.6 to i64
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ajc
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7

bb.fe:                                            ; preds = %bb.fc
  %i.aje = icmp samesign ugt i32 %.sroa.63226.15.6, %i.af
  br i1 %i.aje, label %bb.dj, label %bb.ff, !prof !115

bb.ff:                                            ; preds = %bb.fe
  store i32 0, ptr %.sroa.0.i.i.i.i154, align 4
  %.sroa.speculated27.i.i.i.i.i168.7 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.15.6) ; 3 uses
  %i.ajf = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i168.7, 4
  %.sroa.speculated.i.i.i.i.i169.7 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.ajf)
  %i.ajg = sub nsw i32 %.sroa.speculated.i.i.i.i.i169.7, %.sroa.speculated27.i.i.i.i.i168.7 ; 2 uses
  %i.ajh = icmp samesign ult i32 %i.ajg, 5
  tail call void @llvm.assume(i1 %i.ajh)
  %i.aji = zext nneg i32 %.sroa.speculated27.i.i.i.i.i168.7 to i64
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aji
  %i.ajk = zext nneg i32 %i.ajg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i154, ptr align 1 %i.ajj, i64 %i.ajk, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7: ; preds = %bb.ff, %bb.fd
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.7 = phi ptr [ %.sroa.0.i.i.i.i154, %bb.ff ], [ %i.ajd, %bb.fd ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.7 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i164.7, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i154)
  %i.ajl = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i165.7 to i64
  %i.ajm = add nuw nsw i32 %.sroa.24.12.6, 32
  %i.ajn = sub nuw nsw i32 32, %.sroa.24.12.6
  %i.ajo = zext nneg i32 %i.ajn to i64
  %i.ajp = shl nuw i64 %i.ajl, %i.ajo
  %i.ajq = or i64 %i.ajp, %.sroa.0198.12.6
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7, %bb.fb
  %.sroa.63226.14.7 = phi i32 [ %i.ajb, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7 ], [ %.sroa.63226.15.6, %bb.fb ]
  %i.ajr = phi i64 [ %i.ajq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7 ], [ %.sroa.0198.12.6, %bb.fb ] ; 2 uses
  %i.ajs = phi i32 [ %i.ajm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i163.7 ], [ %.sroa.24.12.6, %bb.fb ]
  %i.ajt = sub nuw nsw i32 64, %.sroa.17.1663672
  %i.aju = zext nneg i32 %i.ajt to i64
  %i.ajv = sub nuw nsw i32 %i.ajs, %.sroa.17.1663672
  %i.ajw = zext nneg i32 %.sroa.17.1663672 to i64
  %i.ajx = shl i64 %i.ajr, %i.ajw
  %i.ajy = ashr i64 %i.ajr, %i.aju
  %i.ajz = trunc nsw i64 %i.ajy to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.7

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.7: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7, %bb.fa
  %.sroa.63226.15.7 = phi i32 [ %.sroa.63226.15.6, %bb.fa ], [ %.sroa.63226.14.7, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7 ] ; 8 uses
  %.sroa.24.12.7 = phi i32 [ %.sroa.24.12.6, %bb.fa ], [ %i.ajv, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7 ] ; 6 uses
  %.sroa.0198.12.7 = phi i64 [ %.sroa.0198.12.6, %bb.fa ], [ %i.ajx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7 ] ; 3 uses
  %.0.i160.7 = phi i16 [ 0, %bb.fa ], [ %i.ajz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i159.7 ]
  %i.aka = or disjoint i64 %indvars.iv, 14        ; 2 uses
  %i.akb = icmp samesign ult i64 %i.aka, %i.ba
  br i1 %i.akb, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.7
  %i.akc = add i16 %.0.i160.7, %i.aae
  tail call void @llvm.assume(i1 %i.an)
  %i.akd = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.aka
  store i16 %i.akc, ptr %i.akd, align 2, !tbaa !121
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit170.7
  br i1 %.not96, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @llvm.assume(i1 %i.an)
  %3 = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv
  %4 = getelementptr i8, ptr %3, i64 -2
  %i.ake = load i16, ptr %4, align 2, !tbaa !121
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi
  %i.akf = phi i16 [ %i.ake, %bb.fi ], [ 128, %bb.fh ] ; 8 uses
  %.not.i178 = icmp eq i32 %.sroa.32.1677686, 0   ; 4 uses
  br i1 %.not.i178, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.akg = icmp samesign ult i32 %.sroa.24.12.7, 65
  tail call void @llvm.assume(i1 %i.akg)
  %i.akh = icmp sgt i32 %.sroa.63226.15.7, -1
  tail call void @llvm.assume(i1 %i.akh)
  %i.aki = and i32 %.sroa.63226.15.7, 3
  %i.akj = icmp eq i32 %i.aki, 0
  tail call void @llvm.assume(i1 %i.akj)
  %.not.i.i.i179 = icmp samesign ult i32 %.sroa.24.12.7, %.sroa.32.1677686
  br i1 %.not.i.i.i179, label %bb.fl, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.akk = add nuw nsw i32 %.sroa.63226.15.7, 4   ; 2 uses
  %.not.i.i.i.i184 = icmp samesign ugt i32 %i.akk, %i.w
  br i1 %.not.i.i.i.i184, label %bb.fn, label %bb.fm, !prof !115

bb.fm:                                            ; preds = %bb.fl
  %i.akl = zext nneg i32 %.sroa.63226.15.7 to i64
  %i.akm = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.akl
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186

bb.fn:                                            ; preds = %bb.fl
  %i.akn = icmp samesign ugt i32 %.sroa.63226.15.7, %i.af
  br i1 %i.akn, label %bb.fo, label %bb.fp, !prof !115

bb.fo:                                            ; preds = %bb.hl, %bb.he, %bb.gx, %bb.gq, %bb.gj, %bb.gc, %bb.fv, %bb.fn
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11
  unreachable

bb.fp:                                            ; preds = %bb.fn
  store i32 0, ptr %.sroa.0.i.i.i.i177, align 4
  %.sroa.speculated27.i.i.i.i.i191 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.15.7) ; 3 uses
  %i.ako = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i191, 4
  %.sroa.speculated.i.i.i.i.i192 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.ako)
  %i.akp = sub nsw i32 %.sroa.speculated.i.i.i.i.i192, %.sroa.speculated27.i.i.i.i.i191 ; 2 uses
  %i.akq = icmp samesign ult i32 %i.akp, 5
  tail call void @llvm.assume(i1 %i.akq)
  %i.akr = zext nneg i32 %.sroa.speculated27.i.i.i.i.i191 to i64
  %i.aks = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.akr
  %i.akt = zext nneg i32 %i.akp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i177, ptr align 1 %i.aks, i64 %i.akt, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186: ; preds = %bb.fp, %bb.fm
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187 = phi ptr [ %.sroa.0.i.i.i.i177, %bb.fp ], [ %i.akm, %bb.fm ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.aku = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188 to i64
  %i.akv = add nuw nsw i32 %.sroa.24.12.7, 32
  %i.akw = sub nuw nsw i32 32, %.sroa.24.12.7
  %i.akx = zext nneg i32 %i.akw to i64
  %i.aky = shl nuw i64 %i.aku, %i.akx
  %i.akz = or i64 %i.aky, %.sroa.0198.12.7
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182: ; preds = %bb.fk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186
  %.sroa.63226.16 = phi i32 [ %i.akk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186 ], [ %.sroa.63226.15.7, %bb.fk ]
  %i.ala = phi i64 [ %i.akz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186 ], [ %.sroa.0198.12.7, %bb.fk ] ; 2 uses
  %i.alb = phi i32 [ %i.akv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186 ], [ %.sroa.24.12.7, %bb.fk ]
  %i.alc = sub nuw nsw i32 64, %.sroa.32.1677686
  %i.ald = zext nneg i32 %i.alc to i64
  %i.ale = sub nuw nsw i32 %i.alb, %.sroa.32.1677686
  %i.alf = zext nneg i32 %.sroa.32.1677686 to i64
  %i.alg = shl i64 %i.ala, %i.alf
  %i.alh = ashr i64 %i.ala, %i.ald
  %i.ali = trunc nsw i64 %i.alh to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193: ; preds = %bb.fj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182
  %.sroa.63226.17 = phi i32 [ %.sroa.63226.15.7, %bb.fj ], [ %.sroa.63226.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182 ] ; 8 uses
  %.sroa.24.13 = phi i32 [ %.sroa.24.12.7, %bb.fj ], [ %i.ale, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182 ] ; 6 uses
  %.sroa.0198.13 = phi i64 [ %.sroa.0198.12.7, %bb.fj ], [ %i.alg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182 ] ; 3 uses
  %.0.i183 = phi i16 [ 0, %bb.fj ], [ %i.ali, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182 ]
  %i.alj = or disjoint i64 %indvars.iv, 1         ; 2 uses
  %i.alk = icmp samesign ult i64 %i.alj, %i.ba
  br i1 %i.alk, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193
  %i.all = add i16 %.0.i183, %i.akf
  tail call void @llvm.assume(i1 %i.an)
  %i.alm = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.alj
  store i16 %i.all, ptr %i.alm, align 2, !tbaa !121
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193
  br i1 %.not.i178, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.1, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aln = icmp samesign ult i32 %.sroa.24.13, 65
  tail call void @llvm.assume(i1 %i.aln)
  %i.alo = icmp sgt i32 %.sroa.63226.17, -1
  tail call void @llvm.assume(i1 %i.alo)
  %i.alp = and i32 %.sroa.63226.17, 3
  %i.alq = icmp eq i32 %i.alp, 0
  tail call void @llvm.assume(i1 %i.alq)
  %.not.i.i.i179.1 = icmp samesign ult i32 %.sroa.24.13, %.sroa.32.1677686
  br i1 %.not.i.i.i179.1, label %bb.ft, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.alr = add nuw nsw i32 %.sroa.63226.17, 4     ; 2 uses
  %.not.i.i.i.i184.1 = icmp samesign ugt i32 %i.alr, %i.w
  br i1 %.not.i.i.i.i184.1, label %bb.fv, label %bb.fu, !prof !115

bb.fu:                                            ; preds = %bb.ft
  %i.als = zext nneg i32 %.sroa.63226.17 to i64
  %i.alt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.als
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1

bb.fv:                                            ; preds = %bb.ft
  %i.alu = icmp samesign ugt i32 %.sroa.63226.17, %i.af
  br i1 %i.alu, label %bb.fo, label %bb.fw, !prof !115

bb.fw:                                            ; preds = %bb.fv
  store i32 0, ptr %.sroa.0.i.i.i.i177, align 4
  %.sroa.speculated27.i.i.i.i.i191.1 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %.sroa.63226.17) ; 3 uses
  %i.alv = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i191.1, 4
  %.sroa.speculated.i.i.i.i.i192.1 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.alv)
  %i.alw = sub nsw i32 %.sroa.speculated.i.i.i.i.i192.1, %.sroa.speculated27.i.i.i.i.i191.1 ; 2 uses
  %i.alx = icmp samesign ult i32 %i.alw, 5
  tail call void @llvm.assume(i1 %i.alx)
  %i.aly = zext nneg i32 %.sroa.speculated27.i.i.i.i.i191.1 to i64
  %i.alz = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aly
  %i.ama = zext nneg i32 %i.alw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i177, ptr align 1 %i.alz, i64 %i.ama, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1: ; preds = %bb.fw, %bb.fu
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.1 = phi ptr [ %.sroa.0.i.i.i.i177, %bb.fw ], [ %i.alt, %bb.fu ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i187.1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.amb = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i188.1 to i64
  %i.amc = add nuw nsw i32 %.sroa.24.13, 32
  %i.amd = sub nuw nsw i32 32, %.sroa.24.13
  %i.ame = zext nneg i32 %i.amd to i64
  %i.amf = shl nuw i64 %i.amb, %i.ame
  %i.amg = or i64 %i.amf, %.sroa.0198.13
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1, %bb.fs
  %.sroa.63226.16.1 = phi i32 [ %i.alr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1 ], [ %.sroa.63226.17, %bb.fs ]
  %i.amh = phi i64 [ %i.amg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1 ], [ %.sroa.0198.13, %bb.fs ] ; 2 uses
  %i.ami = phi i32 [ %i.amc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.1 ], [ %.sroa.24.13, %bb.fs ]
  %i.amj = sub nuw nsw i32 64, %.sroa.32.1677686
  %i.amk = zext nneg i32 %i.amj to i64
  %i.aml = sub nuw nsw i32 %i.ami, %.sroa.32.1677686
  %i.amm = zext nneg i32 %.sroa.32.1677686 to i64
  %i.amn = shl i64 %i.amh, %i.amm
  %i.amo = ashr i64 %i.amh, %i.amk
  %i.amp = trunc nsw i64 %i.amo to i16
  br label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.1

_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.1: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1, %bb.fr
  %.sroa.63226.17.1 = phi i32 [ %.sroa.63226.17, %bb.fr ], [ %.sroa.63226.16.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1 ] ; 8 uses
  %.sroa.24.13.1 = phi i32 [ %.sroa.24.13, %bb.fr ], [ %i.aml, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1 ] ; 6 uses
  %.sroa.0198.13.1 = phi i64 [ %.sroa.0198.13, %bb.fr ], [ %i.amn, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1 ] ; 3 uses
  %.0.i183.1 = phi i16 [ 0, %bb.fr ], [ %i.amp, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.1 ]
  %i.amq = or disjoint i64 %indvars.iv, 3         ; 2 uses
  %i.amr = icmp samesign ult i64 %i.amq, %i.ba
  br i1 %i.amr, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.1
  %i.ams = add i16 %.0.i183.1, %i.akf
  tail call void @llvm.assume(i1 %i.an)
  %i.amt = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.amq
  store i16 %i.ams, ptr %i.amt, align 2, !tbaa !121
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.1
  br i1 %.not.i178, label %_ZN8rawspeed21SamsungV0Decompressor7calcAdjERNS_16BitStreamerMSB32Ei.exit193.2, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.amu = icmp samesign ult i32 %.sroa.24.13.1, 65
  tail call void @llvm.assume(i1 %i.amu)
  %i.amv = icmp sgt i32 %.sroa.63226.17.1, -1
  tail call void @llvm.assume(i1 %i.amv)
  %i.amw = and i32 %.sroa.63226.17.1, 3
  %i.amx = icmp eq i32 %i.amw, 0
  tail call void @llvm.assume(i1 %i.amx)
  %.not.i.i.i179.2 = icmp samesign ult i32 %.sroa.24.13.1, %.sroa.32.1677686
  br i1 %.not.i.i.i179.2, label %bb.ga, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.i182.2

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i177)
  %i.amy = add nuw nsw i32 %.sroa.63226.17.1, 4   ; 2 uses
  %.not.i.i.i.i184.2 = icmp samesign ugt i32 %i.amy, %i.w
  br i1 %.not.i.i.i.i184.2, label %bb.gc, label %bb.gb, !prof !115

bb.gb:                                            ; preds = %bb.ga
  %i.amz = zext nneg i32 %.sroa.63226.17.1 to i64
  %i.ana = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.amz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.i186.2
end_hunk_1
