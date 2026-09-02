Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_encoder?download=true
inline.NumInlined: 1688
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN2cv17QRCodeDecoderImpl13decodeSymbolsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.l:                                             ; preds = %bb.k
  switch i32 %i.ag, label %bb.z [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 4, label %bb.o
    i32 7, label %bb.q
    i32 8, label %bb.x
    i32 3, label %bb.y
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2cv17QRCodeDecoderImpl13decodeNumericERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN2cv17QRCodeDecoderImpl11decodeAlphaERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.o:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %i.ae, align 8, !tbaa !231
  %i.ar = icmp slt i32 %i.aq, 10
  %i.as = select i1 %i.ar, i32 8, i32 16
  %i.at = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef %i.as) ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.lr.ph.i:                                         ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i
  %.04.i = phi i32 [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ], [ 0, %bb.o ]
  %i.av = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8)
  %i.aw = trunc i32 %i.av to i8
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !19  ; 4 uses
  %i.ay = add i64 %i.ax, 1                        ; 3 uses
  %i.az = load ptr, ptr %1, align 8, !tbaa !11    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.af
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %.lr.ph.i
  %i.bb = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.bb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.bc = load i64, ptr %i.af, align 8, !tbaa !10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bd = phi i64 [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.be = icmp ugt i64 %i.ay, %i.bd
  br i1 %i.be, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bf = phi ptr [ %.pre.i.i.i, %bb.p ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  store i8 %i.aw, ptr %i.bg, align 1, !tbaa !10
  store i64 %i.ay, ptr %i.q, align 8, !tbaa !19
  %i.bh = load ptr, ptr %1, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ay
  store i8 0, ptr %i.bi, align 1, !tbaa !10
  %i.bj = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bj, %i.at
  br i1 %exitcond.not.i, label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i, !llvm.loop !313

bb.q:                                             ; preds = %bb.l
  %i.bk = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !314 ; 6 uses
  %i.bl = and i32 %i.bk, 128
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !314
  %i.bn = shl i32 %i.bm, 8
  %i.bo = or i32 %i.bn, %i.bk                     ; 2 uses
  %i.bp = and i32 %i.bk, 64
  %.not.i.1 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.1, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !314
  %i.br = shl i32 %i.bq, 16
  %i.bs = or i32 %i.br, %i.bo                     ; 2 uses
  %i.bt = and i32 %i.bk, 32
  %.not.i.2 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.2, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !314
  %i.bv = shl i32 %i.bu, 24
  %i.bw = or i32 %i.bv, %i.bs
  %i.bx = and i32 %i.bk, 16
  %.not.i.3 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.3, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !314 ; 0 uses
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.08.i.lcssa = phi i32 [ %i.bk, %bb.q ], [ %i.bs, %bb.s ], [ %i.bo, %bb.r ], [ %i.bw, %bb.t ]
  %i.bz = load i32, ptr %i.ad, align 4, !tbaa !234
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %_ZN2cv17QRCodeDecoderImpl9decodeECIERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.w:                                             ; preds = %bb.v
  store i32 %.08.i.lcssa, ptr %i.ad, align 4, !tbaa !234
  br label %_ZN2cv17QRCodeDecoderImpl9decodeECIERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN2cv17QRCodeDecoderImpl9decodeECIERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.v, %bb.w
  tail call void @_ZN2cv17QRCodeDecoderImpl13decodeSymbolsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !314
  br label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.x:                                             ; preds = %bb.l
  tail call void @_ZN2cv17QRCodeDecoderImpl11decodeKanjiERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.y:                                             ; preds = %bb.l
  %i.cb = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 4)
  %i.cc = trunc i32 %i.cb to i8
  store i8 %i.cc, ptr %i.aa, align 1, !tbaa !315
  %i.cd = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 4)
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = add i8 %i.ce, 1
  store i8 %i.cf, ptr %i.ab, align 2, !tbaa !218
  %i.cg = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8)
  %i.ch = trunc i32 %i.cg to i8
  store i8 %i.ch, ptr %i.ac, align 8, !tbaa !316
  br label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.z:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.26, i32 noundef %i.ag)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv17QRCodeDecoderImpl13decodeSymbolsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr noundef nonnull @.str.1, i32 noundef 1770) #28
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.ab
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !10
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ac

_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i, %bb.o, %bb.m, %bb.x, %bb.y, %_ZN2cv17QRCodeDecoderImpl9decodeECIERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.n
  %i.co = load i64, ptr %i.b, align 8, !tbaa !223
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %.not28 = icmp ult i64 %i.co, %i.ct
  br i1 %.not28, label %bb.h, label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.j, %bb.k, %bb.g
  ret void

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl20errorCorrectionBlockERSt6vectorIhSaIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.3", align 8     ; 12 uses
  %3 = alloca %"class.std::vector.3", align 8     ; 7 uses
  %4 = alloca %"class.std::vector.3", align 8     ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 10 uses
  %8 = alloca %"class.std::vector.3", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !231
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [112 x i8], ptr @_ZN2cvL21version_info_databaseE, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !235
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !128  ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 7 uses
  %i.l = and i32 %i.j, 1
  %sext304 = sub nsw i32 0, %i.l
  %i.m = sext i32 %sext304 to i64
  %spec.select = add nsw i64 %i.m, %i.k           ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.n = load ptr, ptr %1, align 8, !tbaa !59
  %i.o = icmp slt i64 %spec.select, 0
  br i1 %i.o, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.preheader312.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge337.thread

.preheader312.lr.ph:                              ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30 ; 7 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !61
  %i.t = load i8, ptr %i.n, align 1, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 %i.t, i64 %spec.select, i1 false)
  store ptr %i.r, ptr %i.q, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !58  ; 2 uses
  %.pre414 = load ptr, ptr %1, align 8, !tbaa !59 ; 3 uses
  %i.v = ptrtoint ptr %.pre to i64
  %i.w = ptrtoint ptr %.pre414 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ugt i64 %i.x, 1
  %i.z = ptrtoint ptr %.pre to i64
  %i.aa = ptrtoint ptr %.pre414 to i64
  %i.ab = sub i64 %i.z, %i.aa
  br label %.preheader312

.preheader312:                                    ; preds = %.preheader312.lr.ph, %._crit_edge
  %.0127336 = phi i64 [ 0, %.preheader312.lr.ph ], [ %i.ak, %._crit_edge ] ; 3 uses
  %.0142335 = phi i1 [ false, %.preheader312.lr.ph ], [ %i.aj, %._crit_edge ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0127336 ; 3 uses
  br i1 %i.y, label %.lr.ph, label %.preheader312.._crit_edge_crit_edge

.preheader312.._crit_edge_crit_edge:              ; preds = %.preheader312
  %.pre416 = load i8, ptr %i.ac, align 1, !tbaa !10
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader312
  %i.ad = trunc i64 %.0127336 to i32
  %i.ae = srem i32 %i.ad, 255
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr @_ZN2cvL6gf_expE, i64 %i.af
  %.pre415 = load i8, ptr %i.ac, align 1, !tbaa !10
  br label %bb.b

._crit_edge337:                                   ; preds = %._crit_edge
  br i1 %i.aj, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164, label %._crit_edge337.thread

._crit_edge:                                      ; preds = %_ZN2cvL5gfMulEhh.exit, %.preheader312.._crit_edge_crit_edge
  %i.ah = phi i8 [ %.pre416, %.preheader312.._crit_edge_crit_edge ], [ %i.bc, %_ZN2cvL5gfMulEhh.exit ]
  %i.ai = icmp ne i8 %i.ah, 0
  %i.aj = or i1 %.0142335, %i.ai                  ; 2 uses
  %i.ak = add nuw i64 %.0127336, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %spec.select
  br i1 %exitcond.not, label %._crit_edge337, label %.preheader312, !llvm.loop !317

bb.b:                                             ; preds = %.lr.ph, %_ZN2cvL5gfMulEhh.exit
  %i.al = phi i8 [ %.pre415, %.lr.ph ], [ %i.bc, %_ZN2cvL5gfMulEhh.exit ] ; 2 uses
  %.0126334 = phi i64 [ 1, %.lr.ph ], [ %i.bd, %_ZN2cvL5gfMulEhh.exit ] ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %_ZN2cvL5gfMulEhh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ao = zext i8 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i16
  %i.as = zext i8 %i.an to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !10
  %i.av = zext i8 %i.au to i16
  %.lhs.trunc.i = add nuw nsw i16 %i.av, %i.ar
  %i.aw = urem i16 %.lhs.trunc.i, 255
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10
  br label %_ZN2cvL5gfMulEhh.exit

_ZN2cvL5gfMulEhh.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi i8 [ %i.az, %bb.c ], [ 0, %bb.b ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre414, i64 %.0126334
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !10
  %i.bc = xor i8 %i.bb, %.0.i                     ; 3 uses
  store i8 %i.bc, ptr %i.ac, align 1, !tbaa !10
  %i.bd = add nuw i64 %.0126334, 1                ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.ab
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !318

._crit_edge337.thread:                            ; preds = %.thread, %._crit_edge337
  %i.bf = phi ptr [ %i.p, %._crit_edge337 ], [ null, %.thread ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !58 ; 2 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %i.bm = sub i64 %i.bl, %i.k                     ; 2 uses
  %i.bn = icmp ult i64 %i.bl, %i.k
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge337.thread
  %i.bo = sub nsw i64 0, %i.k
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bo)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit unwind label %bb.g

bb.e:                                             ; preds = %._crit_edge337.thread
  %9 = icmp ult i64 %i.bm, %i.bl
  br i1 %9, label %bb.f, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bp
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.bp, ptr %i.bg, align 8, !tbaa !58
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.g:                                             ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164: ; preds = %._crit_edge337
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30
          to label %bb.h unwind label %bb.k       ; 11 uses

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164
  store ptr %i.br, ptr %3, align 8, !tbaa !59
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %spec.select ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.br, i8 0, i64 %spec.select, i1 false)
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30
          to label %.lr.ph356 unwind label %bb.l  ; 4 uses

.lr.ph356:                                        ; preds = %bb.h
  store ptr %i.bv, ptr %4, align 8, !tbaa !59
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %spec.select ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bv, i8 0, i64 %spec.select, i1 false)
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !58
  store i8 1, ptr %i.bv, align 1, !tbaa !10
  store i8 1, ptr %i.br, align 1, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not502 = icmp eq i64 %spec.select, 1
  br label %bb.m

._crit_edge357:                                   ; preds = %bb.af
  %i.cb = icmp ugt i64 %.2125, 1152921504606846975
  br i1 %i.cb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge357
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #28
          to label %.noexc178 unwind label %.thread298

.noexc178:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %._crit_edge357
  %.not = icmp eq i64 %.2125, 0                   ; 4 uses
  br i1 %.not, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.cc = shl nuw nsw i64 %.2125, 3
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #30
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i unwind label %.thread298 ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.2125
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %bb.j, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %.0123.lcssa472476 = phi i64 [ %.2125, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ 0, %bb.j ] ; 9 uses
  %.sroa.0267.3 = phi ptr [ %i.cd, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.j ] ; 4 uses
  %.sroa.29.3 = phi ptr [ %i.ce, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.j ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !58 ; 2 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  %.not391 = icmp eq i64 %i.ck, 0
  br i1 %.not391, label %._crit_edge371, label %.lr.ph370

.lr.ph370:                                        ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.cl = call i64 @llvm.umax.i64(i64 %.0123.lcssa472476, i64 1)
  br label %bb.ag

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit255

bb.l:                                             ; preds = %bb.h
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit253

bb.m:                                             ; preds = %.lr.ph356, %bb.af
  %.0117353 = phi i64 [ 0, %.lr.ph356 ], [ %i.gg, %bb.af ] ; 5 uses
  %.0118352 = phi i8 [ 1, %.lr.ph356 ], [ %.2, %bb.af ] ; 3 uses
  %.0120351 = phi i64 [ 1, %.lr.ph356 ], [ %.2122, %bb.af ] ; 4 uses
  %.0123349 = phi i64 [ 0, %.lr.ph356 ], [ %.2125, %bb.af ] ; 8 uses
  %i.co = add i64 %.0123349, -1
  %i.cp = add i64 %i.co, %.0120351
  %i.cq = icmp ult i64 %i.cp, %spec.select
  br i1 %i.cq, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv17QRCodeDecoderImpl20errorCorrectionBlockERSt6vectorIhSaIhEE, ptr noundef nonnull @.str.1, i32 noundef 1582) #28
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %5, align 8, !tbaa !11    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !10
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn150 = phi { ptr, i32 } [ %i.cr, %bb.q ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cs, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit251

bb.s:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0117353
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !10  ; 2 uses
  %.not152339 = icmp eq i64 %.0123349, 0          ; 2 uses
  br i1 %.not152339, label %._crit_edge344, label %.lr.ph343.preheader

.lr.ph343.preheader:                              ; preds = %bb.s
  %i.da = add i64 %.0123349, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.da, i64 2)
  br label %.lr.ph343

._crit_edge344:                                   ; preds = %_ZN2cvL5gfMulEhh.exit183, %bb.s
  %.0116.lcssa = phi i8 [ %i.cz, %bb.s ], [ %.0.i182, %_ZN2cvL5gfMulEhh.exit183 ] ; 3 uses
  %i.db = icmp eq i8 %.0116.lcssa, 0
  br i1 %i.db, label %bb.u, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i

.lr.ph343:                                        ; preds = %.lr.ph343.preheader, %_ZN2cvL5gfMulEhh.exit183
  %.0115341 = phi i64 [ %i.dw, %_ZN2cvL5gfMulEhh.exit183 ], [ 1, %.lr.ph343.preheader ] ; 3 uses
  %.0116340 = phi i8 [ %.0.i182, %_ZN2cvL5gfMulEhh.exit183 ], [ %i.cz, %.lr.ph343.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.br, i64 %.0115341
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !10  ; 2 uses
  %i.de = sub i64 %.0117353, %.0115341
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !10  ; 2 uses
  %i.dh = icmp eq i8 %i.dd, 0
  %i.di = icmp eq i8 %i.dg, 0
  %or.cond.i180 = or i1 %i.dh, %i.di
  br i1 %or.cond.i180, label %_ZN2cvL5gfMulEhh.exit183, label %bb.t

bb.t:                                             ; preds = %.lr.ph343
  %i.dj = zext i8 %i.dd to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !10
  %i.dm = zext i8 %i.dl to i16
  %i.dn = zext i8 %i.dg to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !10
  %i.dq = zext i8 %i.dp to i16
  %.lhs.trunc.i181 = add nuw nsw i16 %i.dq, %i.dm
  %i.dr = urem i16 %.lhs.trunc.i181, 255
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !10
  %i.dv = xor i8 %i.du, %.0116340
  br label %_ZN2cvL5gfMulEhh.exit183

_ZN2cvL5gfMulEhh.exit183:                         ; preds = %.lr.ph343, %bb.t
  %.0.i182 = phi i8 [ %i.dv, %bb.t ], [ %.0116340, %.lr.ph343 ] ; 2 uses
  %i.dw = add nuw i64 %.0115341, 1                ; 2 uses
  %exitcond403 = icmp eq i64 %i.dw, %umax
  br i1 %exitcond403, label %._crit_edge344, label %.lr.ph343, !llvm.loop !319

bb.u:                                             ; preds = %._crit_edge344
  %i.dx = add i64 %.0120351, 1
end_hunk_0
begin_hunk_1_@_ZN2cv17QRCodeDecoderImpl20errorCorrectionBlockERSt6vectorIhSaIhEE:bb.a
  br label %bb.ah

._crit_edge364:                                   ; preds = %_ZN2cvL5gfMulEhh.exit203
  %i.gw = icmp eq i8 %i.hj, %.0.i202
  br i1 %i.gw, label %bb.aj, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ah:                                            ; preds = %.lr.ph363, %_ZN2cvL5gfMulEhh.exit203
  %.0111361 = phi i64 [ 1, %.lr.ph363 ], [ %i.hl, %_ZN2cvL5gfMulEhh.exit203 ] ; 3 uses
  %.0112360 = phi i8 [ 1, %.lr.ph363 ], [ %i.hk, %_ZN2cvL5gfMulEhh.exit203 ] ; 2 uses
  %i.gx = icmp eq i8 %.0112360, 0
  br i1 %i.gx, label %_ZN2cvL5gfMulEhh.exit203, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gy = zext i8 %.0112360 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !10
  %i.hb = zext i8 %i.ha to i16
  %i.hc = load i8, ptr %i.gv, align 1, !tbaa !10
  %i.hd = zext i8 %i.hc to i16
  %.lhs.trunc.i201 = add nuw nsw i16 %i.hd, %i.hb
  %i.he = urem i16 %.lhs.trunc.i201, 255
  %i.hf = zext nneg i16 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !10
  br label %_ZN2cvL5gfMulEhh.exit203

_ZN2cvL5gfMulEhh.exit203:                         ; preds = %bb.ah, %bb.ai
  %.0.i202 = phi i8 [ %i.hh, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.br, i64 %.0111361
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !10  ; 2 uses
  %i.hk = xor i8 %i.hj, %.0.i202
  %i.hl = add nuw i64 %.0111361, 1
  %exitcond407 = icmp eq i64 %.0111361, %i.cl
  br i1 %exitcond407, label %._crit_edge364, label %bb.ah, !llvm.loop !322

bb.aj:                                            ; preds = %._crit_edge364
  %i.hm = xor i64 %.0113369, -1
  %i.hn = add i64 %i.go, %i.hm
  %sext = shl i64 %i.hn, 32
  %i.ho = ashr exact i64 %sext, 32                ; 2 uses
  %.not.i.i204 = icmp eq ptr %.sroa.18.0367, %.sroa.29.0368
  br i1 %.not.i.i204, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i64 %i.ho, ptr %.sroa.18.0367, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.18.0367, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.al:                                            ; preds = %bb.aj
  %i.hq = ptrtoint ptr %.sroa.29.0368 to i64
  %i.hr = ptrtoint ptr %.sroa.0267.0366 to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 6 uses
  %i.ht = icmp eq i64 %i.hs, 9223372036854775800
  br i1 %i.ht, label %bb.am, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
          to label %.noexc206 unwind label %.loopexit.split-lp

.noexc206:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.hu = ashr exact i64 %i.hs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hu, i64 1)
  %i.hv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hu ; 2 uses
  %i.hw = icmp ult i64 %i.hv, %i.hu
  %i.hx = call i64 @llvm.umin.i64(i64 %i.hv, i64 1152921504606846975)
  %i.hy = select i1 %i.hw, i64 1152921504606846975, i64 %i.hx ; 3 uses
  %.not.i.i.i.i205 = icmp ne i64 %i.hy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i205)
  %i.hz = shl nuw nsw i64 %i.hy, 3
  %i.ia = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hz) #30
          to label %.noexc207 unwind label %.loopexit ; 4 uses

.noexc207:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 %i.hs ; 2 uses
  store i64 %i.ho, ptr %i.ib, align 8, !tbaa !18
  %i.ic = icmp sgt i64 %i.hs, 0
  br i1 %i.ic, label %bb.an, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.an:                                            ; preds = %.noexc207
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr align 8 %.sroa.0267.0366, i64 %i.hs, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.an, %.noexc207
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0267.0366, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0366, i64 noundef %i.hs) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ao, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.hy
  %.pre419 = load ptr, ptr %i.cf, align 8, !tbaa !58
  %.pre420 = load ptr, ptr %1, align 8, !tbaa !59
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.ag, %bb.ak, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %._crit_edge364
  %i.if = phi ptr [ %i.gm, %._crit_edge364 ], [ %.pre420, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.gm, %bb.ak ], [ %i.gm, %bb.ag ] ; 2 uses
  %i.ig = phi ptr [ %i.gn, %._crit_edge364 ], [ %.pre419, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.gn, %bb.ak ], [ %i.gn, %bb.ag ] ; 2 uses
  %.sroa.0267.1 = phi ptr [ %.sroa.0267.0366, %._crit_edge364 ], [ %i.ia, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0267.0366, %bb.ak ], [ %.sroa.0267.0366, %bb.ag ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.0367, %._crit_edge364 ], [ %i.id, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.hp, %bb.ak ], [ %.sroa.18.0367, %bb.ag ] ; 2 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.0368, %._crit_edge364 ], [ %i.ie, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.29.0368, %bb.ak ], [ %.sroa.29.0368, %bb.ag ] ; 2 uses
  %i.ih = add nuw i64 %.0113369, 1                ; 2 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 2 uses
  %i.il = icmp ult i64 %i.ih, %i.ik
  br i1 %i.il, label %bb.ag, label %._crit_edge371, !llvm.loop !323

bb.ap:                                            ; preds = %._crit_edge371
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN2cvL9gfPolyMulERKSt6vectorIhSaIhEES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 unwind label %bb.as

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208: ; preds = %bb.ap
  %.not.i.i.i.i209 = icmp eq ptr %.sroa.18.0.lcssa, %.sroa.0267.0.lcssa
  br i1 %.not.i.i.i.i209, label %._crit_edge387, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208
  %i.im = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.0123.lcssa472476) #30
          to label %.noexc212 unwind label %bb.at ; 7 uses

.noexc212:                                        ; preds = %bb.aq
  %i.in = getelementptr i8, ptr %i.im, i64 %.0123.lcssa472476
  store i8 0, ptr %i.im, align 1, !tbaa !10
  %i.io = add nsw i64 %.0123.lcssa472476, -1      ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %.lr.ph376, label %bb.ar

bb.ar:                                            ; preds = %.noexc212
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.iq, i8 0, i64 %i.io, i1 false)
  br label %.lr.ph376

.lr.ph376:                                        ; preds = %bb.ar, %.noexc212
  %i.ir = load ptr, ptr %i.cf, align 8, !tbaa !58
  %i.is = load ptr, ptr %1, align 8, !tbaa !59
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %umax408 = call i64 @llvm.umax.i64(i64 %.0123.lcssa472476, i64 1)
  br label %bb.au

.lr.ph386:                                        ; preds = %bb.au
  %umax411 = call i64 @llvm.umax.i64(i64 %.0123.lcssa472476, i64 1) ; 2 uses
  br label %bb.ay

bb.as:                                            ; preds = %bb.ap
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit242

bb.at:                                            ; preds = %bb.aq
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit242

bb.au:                                            ; preds = %.lr.ph376, %bb.au
  %.0110375 = phi i64 [ 0, %.lr.ph376 ], [ %i.ji, %bb.au ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0267.0.lcssa, i64 %.0110375
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !18
  %i.ja = xor i64 %i.iz, -1
  %i.jb = add i64 %i.iv, %i.ja
  %i.jc = trunc i64 %i.jb to i32
  %i.jd = srem i32 %i.jc, 255
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr @_ZN2cvL6gf_expE, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !10
  %i.jh = getelementptr inbounds nuw i8, ptr %i.im, i64 %.0110375
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !10
  %i.ji = add nuw i64 %.0110375, 1                ; 2 uses
  %exitcond409.not = icmp eq i64 %i.ji, %umax408
  br i1 %exitcond409.not, label %.lr.ph386, label %bb.au, !llvm.loop !324

._crit_edge387.loopexit:                          ; preds = %_ZN2cvL5gfDivEhh.exit228
  %i.jj = ptrtoint ptr %i.in to i64
  br label %._crit_edge387

._crit_edge387:                                   ; preds = %._crit_edge387.loopexit, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208
  %.sroa.0260.0482488 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 ], [ %i.im, %._crit_edge387.loopexit ] ; 6 uses
  %.sroa.12.0484487 = phi i64 [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 ], [ %i.jj, %._crit_edge387.loopexit ] ; 2 uses
  %i.jk = load ptr, ptr %i.cf, align 8, !tbaa !58 ; 2 uses
  %i.jl = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 3 uses
  %i.jp = sub i64 %i.jo, %i.k                     ; 2 uses
  %i.jq = icmp ult i64 %i.jo, %i.k
  br i1 %i.jq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge387
  %i.jr = sub nsw i64 0, %i.k
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jr)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216 unwind label %bb.bi

bb.aw:                                            ; preds = %._crit_edge387
  %10 = icmp ult i64 %i.jp, %i.jo
  br i1 %10, label %bb.ax, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216

bb.ax:                                            ; preds = %bb.aw
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jp ; 2 uses
  %.not.i.i213 = icmp eq ptr %i.jk, %i.js
  br i1 %.not.i.i213, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214:     ; preds = %bb.ax
  store ptr %i.js, ptr %i.cf, align 8, !tbaa !58
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216

bb.ay:                                            ; preds = %.lr.ph386, %_ZN2cvL5gfDivEhh.exit228
  %.0109385 = phi i64 [ 0, %.lr.ph386 ], [ %i.ma, %_ZN2cvL5gfDivEhh.exit228 ] ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.im, i64 %.0109385
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !10  ; 2 uses
  %i.jv = icmp eq i8 %i.ju, 0
  br i1 %i.jv, label %_ZN2cvL5gfDivEhh.exit220.thread, label %_ZN2cvL5gfDivEhh.exit220

_ZN2cvL5gfDivEhh.exit220:                         ; preds = %bb.ay
  %i.jw = zext i8 %i.ju to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !10
  %i.jz = zext i8 %i.jy to i16
  %.lhs.trunc.i218 = sub nuw nsw i16 510, %i.jz
  %i.ka = urem i16 %.lhs.trunc.i218, 255
  %i.kb = zext nneg i16 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !10
  %i.ke = freeze i8 %i.kd                         ; 3 uses
  br i1 %.not, label %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, label %.lr.ph379

_ZN2cvL5gfDivEhh.exit220.thread:                  ; preds = %bb.ay
  br i1 %.not, label %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, label %.lr.ph379.thread

.lr.ph379.thread:                                 ; preds = %_ZN2cvL5gfDivEhh.exit220.thread
  %i.kf = load ptr, ptr %8, align 8, !tbaa !59
  br label %_ZN2cvL5gfMulEhh.exit224.us.preheader

_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge:    ; preds = %_ZN2cvL5gfDivEhh.exit220.thread, %_ZN2cvL5gfDivEhh.exit220
  %.0.i219492 = phi i8 [ 0, %_ZN2cvL5gfDivEhh.exit220.thread ], [ %i.ke, %_ZN2cvL5gfDivEhh.exit220 ] ; 2 uses
  %.pre423.a = zext i8 %.0.i219492 to i64
  %i.kg = icmp eq i8 %.0.i219492, 0
  br label %.preheader

.lr.ph379:                                        ; preds = %_ZN2cvL5gfDivEhh.exit220
  %i.kh = icmp eq i8 %i.ke, 0
  %i.ki = zext i8 %i.ke to i64                    ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ki
  %i.kk = load ptr, ptr %8, align 8, !tbaa !59    ; 2 uses
  %i.kl = getelementptr i8, ptr %i.kk, i64 %.0123.lcssa472476
  br i1 %i.kh, label %_ZN2cvL5gfMulEhh.exit224.us.preheader, label %.lr.ph379.split

_ZN2cvL5gfMulEhh.exit224.us.preheader:            ; preds = %.lr.ph379.thread, %.lr.ph379
  %i.km = phi ptr [ %i.kf, %.lr.ph379.thread ], [ %i.kk, %.lr.ph379 ]
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !10
  br label %.preheader

.preheader:                                       ; preds = %_ZN2cvL5gfMulEhh.exit224, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, %_ZN2cvL5gfMulEhh.exit224.us.preheader
  %.0.i219491 = phi i1 [ %i.kg, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ true, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ false, %_ZN2cvL5gfMulEhh.exit224 ]
  %.pre-phi = phi i64 [ %.pre423.a, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ 0, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ %i.ki, %_ZN2cvL5gfMulEhh.exit224 ]
  %.0108.lcssa = phi i8 [ 0, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ %i.kn, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ %i.ld, %_ZN2cvL5gfMulEhh.exit224 ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %.pre-phi
  br label %bb.bc

.lr.ph379.split:                                  ; preds = %.lr.ph379, %_ZN2cvL5gfMulEhh.exit224
  %.0105378 = phi i64 [ %i.le, %_ZN2cvL5gfMulEhh.exit224 ], [ 0, %.lr.ph379 ] ; 2 uses
  %.0108377 = phi i8 [ %i.ld, %_ZN2cvL5gfMulEhh.exit224 ], [ 0, %.lr.ph379 ] ; 2 uses
  %i.kp = icmp eq i8 %.0108377, 0
  br i1 %i.kp, label %_ZN2cvL5gfMulEhh.exit224, label %bb.az

bb.az:                                            ; preds = %.lr.ph379.split
  %i.kq = zext i8 %.0108377 to i64
  %i.kr = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !10
  %i.kt = zext i8 %i.ks to i16
  %i.ku = load i8, ptr %i.kj, align 1, !tbaa !10
  %i.kv = zext i8 %i.ku to i16
  %.lhs.trunc.i222 = add nuw nsw i16 %i.kv, %i.kt
  %i.kw = urem i16 %.lhs.trunc.i222, 255
  %i.kx = zext nneg i16 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !10
  br label %_ZN2cvL5gfMulEhh.exit224

_ZN2cvL5gfMulEhh.exit224:                         ; preds = %.lr.ph379.split, %bb.az
  %.0.i223 = phi i8 [ %i.kz, %bb.az ], [ 0, %.lr.ph379.split ]
  %i.la = xor i64 %.0105378, -1
  %i.lb = getelementptr i8, ptr %i.kl, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !10
  %i.ld = xor i8 %i.lc, %.0.i223                  ; 2 uses
  %i.le = add nuw i64 %.0105378, 1                ; 2 uses
  %exitcond410.not = icmp eq i64 %i.le, %.0123.lcssa472476
  br i1 %exitcond410.not, label %.preheader, label %.lr.ph379.split, !llvm.loop !325

bb.ba:                                            ; preds = %_ZN2cvL5gfMulEhh.exit236
  %i.lf = icmp eq i8 %.0108.lcssa, 0
  %i.lg = icmp eq i8 %.1107, 0
  %or.cond.i225 = or i1 %i.lf, %i.lg
  br i1 %or.cond.i225, label %_ZN2cvL5gfDivEhh.exit228, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lh = zext i8 %.0108.lcssa to i64
  %i.li = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !10
  %i.lk = zext i8 %i.lj to i16
  %i.ll = add nuw nsw i16 %i.lk, 255
  %i.lm = zext i8 %.1107 to i64
  %i.ln = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !10
  %i.lp = zext i8 %i.lo to i16
  %.lhs.trunc.i226 = sub nuw nsw i16 %i.ll, %i.lp
  %i.lq = urem i16 %.lhs.trunc.i226, 255
  %i.lr = zext nneg i16 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !10
  br label %_ZN2cvL5gfDivEhh.exit228

_ZN2cvL5gfDivEhh.exit228:                         ; preds = %bb.ba, %bb.bb
  %.0.i227 = phi i8 [ %i.lt, %bb.bb ], [ 0, %bb.ba ]
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0267.0.lcssa, i64 %.0109385
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !18
  %i.lw = load ptr, ptr %1, align 8, !tbaa !59
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lv ; 2 uses
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !10
  %i.lz = xor i8 %i.ly, %.0.i227
  store i8 %i.lz, ptr %i.lx, align 1, !tbaa !10
  %i.ma = add nuw i64 %.0109385, 1                ; 2 uses
  %exitcond413.not = icmp eq i64 %i.ma, %umax411
  br i1 %exitcond413.not, label %._crit_edge387.loopexit, label %bb.ay, !llvm.loop !326

bb.bc:                                            ; preds = %.preheader, %_ZN2cvL5gfMulEhh.exit236
  %.0104384 = phi i64 [ 0, %.preheader ], [ %i.ne, %_ZN2cvL5gfMulEhh.exit236 ] ; 3 uses
  %.0106383 = phi i8 [ 1, %.preheader ], [ %.1107, %_ZN2cvL5gfMulEhh.exit236 ] ; 3 uses
  %i.mb = icmp eq i64 %.0109385, %.0104384
  br i1 %i.mb, label %_ZN2cvL5gfMulEhh.exit236, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mc = getelementptr inbounds nuw i8, ptr %i.im, i64 %.0104384
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !10  ; 2 uses
  %i.me = icmp eq i8 %i.md, 0
  %or.cond.i229 = or i1 %.0.i219491, %i.me
  br i1 %or.cond.i229, label %_ZN2cvL5gfMulEhh.exit232, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mf = load i8, ptr %i.ko, align 1, !tbaa !10
  %i.mg = zext i8 %i.mf to i16
  %i.mh = zext i8 %i.md to i64
  %i.mi = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !10
  %i.mk = zext i8 %i.mj to i16
  %.lhs.trunc.i230 = add nuw nsw i16 %i.mk, %i.mg
  %i.ml = urem i16 %.lhs.trunc.i230, 255
  %i.mm = zext nneg i16 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !10
  %i.mp = xor i8 %i.mo, 1
  br label %_ZN2cvL5gfMulEhh.exit232

_ZN2cvL5gfMulEhh.exit232:                         ; preds = %bb.bd, %bb.be
  %.0.i231 = phi i8 [ %i.mp, %bb.be ], [ 1, %bb.bd ] ; 2 uses
  %i.mq = icmp eq i8 %.0106383, 0
  %i.mr = icmp eq i8 %.0.i231, 0
  %or.cond.i233 = or i1 %i.mq, %i.mr
  br i1 %or.cond.i233, label %_ZN2cvL5gfMulEhh.exit236, label %bb.bf

bb.bf:                                            ; preds = %_ZN2cvL5gfMulEhh.exit232
  %i.ms = zext i8 %.0106383 to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !10
  %i.mv = zext i8 %i.mu to i16
  %i.mw = zext i8 %.0.i231 to i64
  %i.mx = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !10
  %i.mz = zext i8 %i.my to i16
  %.lhs.trunc.i234 = add nuw nsw i16 %i.mz, %i.mv
  %i.na = urem i16 %.lhs.trunc.i234, 255
  %i.nb = zext nneg i16 %i.na to i64
  %i.nc = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !10
  br label %_ZN2cvL5gfMulEhh.exit236

_ZN2cvL5gfMulEhh.exit236:                         ; preds = %bb.bf, %_ZN2cvL5gfMulEhh.exit232, %bb.bc
  %.1107 = phi i8 [ %.0106383, %bb.bc ], [ %i.nd, %bb.bf ], [ 0, %_ZN2cvL5gfMulEhh.exit232 ] ; 3 uses
  %i.ne = add nuw i64 %.0104384, 1                ; 2 uses
  %exitcond412.not = icmp eq i64 %i.ne, %umax411
  br i1 %exitcond412.not, label %bb.ba, label %bb.bc, !llvm.loop !327

_ZNSt6vectorIhSaIhEE6resizeEm.exit216:            ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214, %bb.ax, %bb.aw, %bb.av
  %.not.i.i.i237 = icmp eq ptr %.sroa.0260.0482488, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIhSaIhEED2Ev.exit238, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit216
  %i.nf = ptrtoint ptr %.sroa.0260.0482488 to i64
  %i.ng = sub i64 %.sroa.12.0484487, %i.nf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0260.0482488, i64 noundef %i.ng) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit238

_ZNSt6vectorIhSaIhEED2Ev.exit238:                 ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit216, %bb.bg
  %i.nh = load ptr, ptr %8, align 8, !tbaa !59    ; 3 uses
  %.not.i.i.i239 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i239, label %_ZNSt6vectorIhSaIhEED2Ev.exit240, label %bb.bh
end_hunk_1
