Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/splines?download=true
inline.NumInlined: 2007
inline.NumDeleted: 1087
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3jxl7Splines6DecodeEP22JxlMemoryManagerStructPNS_9BitReaderEm:bb.a
  %i.fr = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !232
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fp to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fv) #25
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.ae, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, %i.fo
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !201

_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl19HuffmanDecodingDataEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i.i
  %.pre1.i.i.i = load ptr, ptr %i.fk, align 8, !tbaa !229
  br label %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.ad
  %i.fw = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.fl, %bb.ad ] ; 2 uses
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !230
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !233
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.gb) #25
  br label %_ZN3jxl7ANSCodeD2Ev.exit

_ZN3jxl7ANSCodeD2Ev.exit:                         ; preds = %_ZNSt3__16vectorIN3jxl16HybridUintConfigENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i, %_ZNSt3__16vectorIN3jxl19HuffmanDecodingDataENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(168) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.gc = load ptr, ptr %4, align 8, !tbaa !49    ; 4 uses
  %.not.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN3jxl7ANSCodeD2Ev.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !234
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !235
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gc to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gi) #25
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8nn180100Ev.exit: ; preds = %_ZN3jxl7ANSCodeD2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i32 %.sroa.045.3
}

declare i32 @_ZN3jxl16DecodeHistogramsEP22JxlMemoryManagerStructPNS_9BitReaderEmPNS_7ANSCodeEPNSt3__16vectorIhNS6_9allocatorIhEEEEb(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN3jxl15ANSSymbolReader6CreateEPKNS_7ANSCodeEPNS_9BitReaderEm(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr.62") align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = load ptr, ptr %0, align 8, !tbaa !66
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 536
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 34415567301696924
  br i1 %i.i, label %bb.c, label %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEEC2EmmS5_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  unreachable

_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEEC2EmmS5_.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw i64 %1, 536
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 3 uses
  %i.q = getelementptr inbounds nuw [536 x i8], ptr %i.o, i64 %1
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !65   ; 3 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !78     ; 3 uses
  %.not13.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not13.i.i, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEEC2EmmS5_.exit, %.lr.ph.i.i
  %i.t = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.p, %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEEC2EmmS5_.exit ] ; 3 uses
  %.sroa.18.014.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.r, %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEEC2EmmS5_.exit ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -536 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -536 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 -520
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !25
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !25
  %i.y = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -520
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  store ptr %i.z, ptr %i.w, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.v, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.t, i64 -512
  %i.ab = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -512
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.aa, ptr noundef nonnull align 8 dereferenceable(512) %i.ab, i64 512, i1 false)
  %.not.i.i = icmp eq ptr %i.v, %i.s
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !78
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !78
  br label %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit

_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit: ; preds = %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split, %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEEC2EmmS5_.exit
  %i.ac = phi ptr [ %.pre, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split ], [ %i.r, %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEEC2EmmS5_.exit ] ; 2 uses
  %i.ad = phi ptr [ %.pr, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split ], [ %i.s, %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEEC2EmmS5_.exit ] ; 5 uses
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.u, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exitthread-pre-split ], [ %i.p, %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEEC2EmmS5_.exit ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !78
  store ptr %i.p, ptr %i.j, align 8, !tbaa !78
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !78
  store ptr %i.q, ptr %i.a, align 8, !tbaa !78
  %.not2.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i
  %i.af = phi ptr [ %i.ag, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i ], [ %i.ac, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit ] ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -536 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -528
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !35
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -520
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.an) #25
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ag
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl15QuantizedSplineEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i, %_ZNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE.exit
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = ptrtoint ptr %i.ad to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.aq) #25
  br label %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEED2Ev.exit

_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEED2Ev.exit: ; preds = %bb.e, %_ZNSt3__114__split_bufferIN3jxl15QuantizedSplineERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK3jxl7Splines5AddToEPNS_6Image3IfEERKNS_5RectTImEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK3jxl7Splines5ApplyILb1EEEvPNS_6Image3IfEERKNS_5RectTImEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !243
  %i.h = load i64, ptr %2, align 8, !tbaa !244    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !245
  %i.k = add i64 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !246  ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNK3jxl7Splines5ApplyILb1EEEvPNS_6Image3IfEERKNS_5RectTImEE.exit, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZNK3jxl7Splines10ApplyToRowILb1EEEvPfS2_S2_mmm.exit.i, %.lr.ph.split.preheader.i
  %i.t = phi i64 [ %i.as, %_ZNK3jxl7Splines10ApplyToRowILb1EEEvPfS2_S2_mmm.exit.i ], [ %i.m, %.lr.ph.split.preheader.i ]
  %.022.i = phi i64 [ %i.at, %_ZNK3jxl7Splines10ApplyToRowILb1EEEvPfS2_S2_mmm.exit.i ], [ 0, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !67, !noalias !247
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !68, !noalias !247
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNK3jxl7Splines10ApplyToRowILb1EEEvPfS2_S2_mmm.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.y = add i64 %.022.i, %i.g                    ; 2 uses
  %i.z = load i64, ptr %i.o, align 8, !tbaa !89
  %i.aa = mul i64 %i.z, %i.y                      ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.h
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.h
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.h
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #27, !noalias !247
  %i.ak = load atomic i64, ptr %i.aj seq_cst, align 8, !noalias !247
  %i.al = and i64 %i.ak, 103425
  %i.am = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.al, i1 true)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL32DrawSegmentsHighwayDispatchTableE, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !90, !noalias !247
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !67, !noalias !247
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !69, !noalias !247
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !69, !noalias !247
  tail call void %i.ao(ptr noundef %i.ai, ptr noundef %i.af, ptr noundef %i.ac, i64 noundef %i.y, i64 noundef %i.h, i64 noundef %i.k, i1 noundef zeroext true, ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef %i.ar) #27, !inline_history !240
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !246
  br label %_ZNK3jxl7Splines10ApplyToRowILb1EEEvPfS2_S2_mmm.exit.i

_ZNK3jxl7Splines10ApplyToRowILb1EEEvPfS2_S2_mmm.exit.i: ; preds = %bb.c, %.lr.ph.split.i
  %i.as = phi i64 [ %i.t, %.lr.ph.split.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.at = add nuw i64 %.022.i, 1                  ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  br i1 %i.au, label %.lr.ph.split.i, label %_ZNK3jxl7Splines5ApplyILb1EEEvPNS_6Image3IfEERKNS_5RectTImEE.exit, !llvm.loop !241

_ZNK3jxl7Splines5ApplyILb1EEEvPNS_6Image3IfEERKNS_5RectTImEE.exit: ; preds = %_ZNK3jxl7Splines10ApplyToRowILb1EEEvPfS2_S2_mmm.exit.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK3jxl7Splines8AddToRowEPfS1_S1_mmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67, !noalias !253
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68, !noalias !253
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK3jxl7Splines10ApplyToRowILb1EEEvPfS2_S2_mmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #27, !noalias !253
  %i.g = load atomic i64, ptr %i.f seq_cst, align 8, !noalias !253
  %i.h = and i64 %i.g, 103425
  %i.i = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.h, i1 true)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL32DrawSegmentsHighwayDispatchTableE, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90, !noalias !253
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !67, !noalias !253
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69, !noalias !253
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69, !noalias !253
  tail call void %i.k(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext true, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.p) #27, !inline_history !252
  br label %_ZNK3jxl7Splines10ApplyToRowILb1EEEvPfS2_S2_mmm.exit

_ZNK3jxl7Splines10ApplyToRowILb1EEEvPfS2_S2_mmm.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK3jxl7Splines12SubtractFromEPNS_6Image3IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !260
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !261  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = icmp eq ptr %i.g, %i.i
  %.not.i = icmp eq i32 %i.d, 0
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i
  br i1 %or.cond, label %_ZNK3jxl7Splines5ApplyILb0EEEvPNS_6Image3IfEERKNS_5RectTImEE.exit, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZNK3jxl7Splines10ApplyToRowILb0EEEvPfS2_S2_mmm.exit.i, %.lr.ph.split.preheader.i
  %.022.i = phi i64 [ %i.ak, %_ZNK3jxl7Splines10ApplyToRowILb0EEEvPfS2_S2_mmm.exit.i ], [ 0, %.lr.ph.split.preheader.i ] ; 3 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !67, !noalias !262
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !68, !noalias !262
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNK3jxl7Splines10ApplyToRowILb0EEEvPfS2_S2_mmm.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.u = load i64, ptr %i.l, align 8, !tbaa !89
  %i.v = mul i64 %i.u, %.022.i                    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #27, !noalias !262
  %i.ac = load atomic i64, ptr %i.ab seq_cst, align 8, !noalias !262
  %i.ad = and i64 %i.ac, 103425
  %i.ae = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.ad, i1 true)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL32DrawSegmentsHighwayDispatchTableE, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !90, !noalias !262
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !67, !noalias !262
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !69, !noalias !262
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !69, !noalias !262
  tail call void %i.ag(ptr noundef %i.aa, ptr noundef %i.y, ptr noundef %i.w, i64 noundef %.022.i, i64 noundef 0, i64 noundef %i.b, i1 noundef zeroext false, ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.aj) #27, !inline_history !258
  br label %_ZNK3jxl7Splines10ApplyToRowILb0EEEvPfS2_S2_mmm.exit.i

_ZNK3jxl7Splines10ApplyToRowILb0EEEvPfS2_S2_mmm.exit.i: ; preds = %bb.b, %.lr.ph.split.i
  %i.ak = add nuw nsw i64 %.022.i, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.e
  br i1 %exitcond.not, label %_ZNK3jxl7Splines5ApplyILb0EEEvPNS_6Image3IfEERKNS_5RectTImEE.exit, label %.lr.ph.split.i, !llvm.loop !259

_ZNK3jxl7Splines5ApplyILb0EEEvPNS_6Image3IfEERKNS_5RectTImEE.exit: ; preds = %_ZNK3jxl7Splines10ApplyToRowILb0EEEvPfS2_S2_mmm.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl7Splines19InitializeDrawCacheEmmRKNS_16ColorCorrelationE(ptr noundef nonnull align 8 dereferenceable(128) initializes((64, 72), (88, 96), (112, 120)) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(40) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.std::__1::__less", align 1 ; 3 uses
  %5 = alloca %"struct.jxl::Spline::Point", align 8 ; 6 uses
  %6 = alloca %"struct.jxl::Spline::Point", align 8 ; 4 uses
  %7 = alloca %"class.std::__1::vector.64", align 8 ; 11 uses
  %8 = alloca %"class.std::__1::vector.1", align 8 ; 31 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %9 = alloca %"class.std::__1::vector.71", align 8 ; 11 uses
  %10 = alloca %"struct.jxl::Spline", align 8     ; 12 uses
  %11 = alloca %"class.std::__1::vector.80", align 8 ; 22 uses
  %12 = alloca %"class.std::__1::vector.1", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !67
  store ptr %i.d, ptr %i.c, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !69
  store ptr %i.g, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !69
  store ptr %i.j, ptr %i.i, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !66   ; 2 uses
  %.not121.not = icmp eq ptr %i.m, %i.n
  br i1 %.not121.not, label %.critedge55, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.r = mul i64 %2, %1
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3jxl6SplineD2Ev.exit
  %i.x = phi ptr [ %i.n, %.lr.ph ], [ %i.ca, %_ZN3jxl6SplineD2Ev.exit ]
  %.048122 = phi i64 [ 0, %.lr.ph ], [ %i.by, %_ZN3jxl6SplineD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %10, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw [536 x i8], ptr %i.x, i64 %.048122
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.048122
  %i.ab = load i32, ptr %0, align 8, !tbaa !64
  %i.ac = load float, ptr %i.q, align 4, !tbaa !321
  %i.ad = load <2 x float>, ptr %i.p, align 4, !tbaa !27
  %i.ae = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> zeroinitializer, <2 x float> %i.ad) ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  %i.ai = extractelement <2 x float> %i.ag, i64 1
  %i.aj = call i32 @_ZNK3jxl15QuantizedSpline10DequantizeERKNS_6Spline5PointEiffmPmRS1_(ptr noundef nonnull align 8 dereferenceable(536) %i.y, ptr noundef nonnull align 4 dereferenceable(8) %i.aa, i32 noundef %i.ab, float noundef %i.ah, float noundef %i.ai, i64 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(536) %10) #26
  %i.ak = icmp eq i32 %i.aj, 0
  %.pre = load ptr, ptr %10, align 8, !tbaa !21   ; 8 uses
  br i1 %i.ak, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !22  ; 4 uses
  %i.am = icmp eq ptr %.pre, %i.al
  br i1 %i.am, label %_ZNSt3__113adjacent_findB8nn180100INS_11__wrap_iterIPN3jxl6Spline5PointEEEEET_S7_S7_.exit.thread307, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.an, %i.al
  br i1 %.not10.i.i.i, label %_ZNSt3__113adjacent_findB8nn180100INS_11__wrap_iterIPN3jxl6Spline5PointEEEEET_S7_S7_.exit.thread307, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %.pre.i.i.i = load float, ptr %.pre, align 4, !tbaa !40
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.thread.i.i.i, %.lr.ph.preheader.i.i.i
  %i.ao = phi float [ %i.aq, %_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.thread.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ]
  %i.ap = phi ptr [ %i.bb, %_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.thread.i.i.i ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.08.011.i.i.i = phi ptr [ %i.ap, %_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.thread.i.i.i ], [ %.pre, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !40 ; 2 uses
  %i.ar = fsub float %i.ao, %i.aq
  %i.as = call noundef float @llvm.fabs.f32(float %i.ar)
  %i.at = fcmp olt float %i.as, 1.000000e-03
  br i1 %i.at, label %_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.i.i.i, label %_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.thread.i.i.i

_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !41
  %i.ay = fsub float %i.av, %i.ax
  %i.az = call noundef float @llvm.fabs.f32(float %i.ay)
  %i.ba = fcmp olt float %i.az, 1.000000e-03
  br i1 %i.ba, label %_ZNSt3__113adjacent_findB8nn180100INS_11__wrap_iterIPN3jxl6Spline5PointEEEEET_S7_S7_.exit, label %_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.thread.i.i.i

_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.thread.i.i.i: ; preds = %_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.i.i.i, %.lr.ph.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %i.al
  br i1 %.not.i.i.i, label %_ZNSt3__113adjacent_findB8nn180100INS_11__wrap_iterIPN3jxl6Spline5PointEEEEET_S7_S7_.exit.thread307, label %.lr.ph.i.i.i, !llvm.loop !263

_ZNSt3__113adjacent_findB8nn180100INS_11__wrap_iterIPN3jxl6Spline5PointEEEEET_S7_S7_.exit: ; preds = %_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.i.i.i
  %i.bc = icmp eq ptr %.sroa.08.011.i.i.i, %i.al
  br i1 %i.bc, label %_ZNSt3__113adjacent_findB8nn180100INS_11__wrap_iterIPN3jxl6Spline5PointEEEEET_S7_S7_.exit.thread307, label %.critedge

_ZNSt3__113adjacent_findB8nn180100INS_11__wrap_iterIPN3jxl6Spline5PointEEEEET_S7_S7_.exit.thread307: ; preds = %_ZNKSt3__110__equal_toclB8nn180100IN3jxl6Spline5PointES4_EEbRKT_RKT0_.exit.thread.i.i.i, %.preheader.i.i.i, %bb.c, %_ZNSt3__113adjacent_findB8nn180100INS_11__wrap_iterIPN3jxl6Spline5PointEEEEET_S7_S7_.exit
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !96  ; 8 uses
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !97
  %i.bf = icmp ult ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZNSt3__113adjacent_findB8nn180100INS_11__wrap_iterIPN3jxl6Spline5PointEEEEET_S7_S7_.exit.thread307
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.bd, i8 0, i64 24, i1 false)
  %i.bi = load ptr, ptr %10, align 8, !tbaa !21   ; 3 uses
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !22  ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bi
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE22__construct_one_at_endB8nn180100IJRKS2_EEEvDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZNKSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(536) %i.bd) #23
  unreachable

_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #24 ; 4 uses
  store ptr %i.bo, ptr %i.bd, align 8, !tbaa !21
  store ptr %i.bo, ptr %i.bg, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm ; 2 uses
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr align 4 %i.bi, i64 %i.bm, i1 false)
  store ptr %i.bp, ptr %i.bg, align 8, !tbaa !22
  br label %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE22__construct_one_at_endB8nn180100IJRKS2_EEEvDpOT_.exit.i

_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE22__construct_one_at_endB8nn180100IJRKS2_EEEvDpOT_.exit.i: ; preds = %_ZNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i.i, %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.bq, ptr noundef nonnull align 8 dereferenceable(512) %i.v, i64 512, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 536
  br label %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit

bb.g:                                             ; preds = %_ZNSt3__113adjacent_findB8nn180100INS_11__wrap_iterIPN3jxl6Spline5PointEEEEET_S7_S7_.exit.thread307
  %i.bs = call noundef ptr @_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(536) %10) #26
  br label %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit

_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit: ; preds = %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE22__construct_one_at_endB8nn180100IJRKS2_EEEvDpOT_.exit.i, %bb.g
  %.0.i = phi ptr [ %i.br, %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE22__construct_one_at_endB8nn180100IJRKS2_EEEvDpOT_.exit.i ], [ %i.bs, %bb.g ]
  store ptr %.0.i, ptr %i.t, align 8, !tbaa !96
  %i.bt = load ptr, ptr %10, align 8, !tbaa !21   ; 4 uses
  %.not.i.i.i56 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i56, label %_ZN3jxl6SplineD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit
  store ptr %i.bt, ptr %i.s, align 8, !tbaa !22
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bx) #25
  br label %_ZN3jxl6SplineD2Ev.exit

_ZN3jxl6SplineD2Ev.exit:                          ; preds = %_ZNSt3__16vectorIN3jxl6SplineENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit, %bb.h
end_hunk_0
