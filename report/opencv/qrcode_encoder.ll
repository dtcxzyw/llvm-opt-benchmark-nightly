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
  %i.aq = load i32, ptr %i.ae, align 8, !tbaa !134
  %i.ar = icmp slt i32 %i.aq, 10
  %i.as = select i1 %i.ar, i32 8, i32 16
  %i.at = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef %i.as) ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.lr.ph.i:                                         ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i
  %.04.i = phi i32 [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ], [ 0, %bb.o ]
  %i.av = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8)
  %i.aw = trunc i32 %i.av to i8
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !25  ; 4 uses
  %i.ay = add i64 %i.ax, 1                        ; 3 uses
  %i.az = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.af
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %.lr.ph.i
  %i.bb = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.bb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.bc = load i64, ptr %i.af, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bd = phi i64 [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.be = icmp ugt i64 %i.ay, %i.bd
  br i1 %i.be, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bf = phi ptr [ %.pre.i.i.i, %bb.p ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  store i8 %i.aw, ptr %i.bg, align 1, !tbaa !16
  store i64 %i.ay, ptr %i.q, align 8, !tbaa !25
  %i.bh = load ptr, ptr %1, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ay
  store i8 0, ptr %i.bi, align 1, !tbaa !16
  %i.bj = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bj, %i.at
  br i1 %exitcond.not.i, label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i, !llvm.loop !5

bb.q:                                             ; preds = %bb.l
  %i.bk = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !316 ; 6 uses
  %i.bl = and i32 %i.bk, 128
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !316
  %i.bn = shl i32 %i.bm, 8
  %i.bo = or i32 %i.bn, %i.bk                     ; 2 uses
  %i.bp = and i32 %i.bk, 64
  %.not.i.1 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.1, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !316
  %i.br = shl i32 %i.bq, 16
  %i.bs = or i32 %i.br, %i.bo                     ; 2 uses
  %i.bt = and i32 %i.bk, 32
  %.not.i.2 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.2, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !316
  %i.bv = shl i32 %i.bu, 24
  %i.bw = or i32 %i.bv, %i.bs
  %i.bx = and i32 %i.bk, 16
  %.not.i.3 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.3, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8), !inline_history !316 ; 0 uses
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.08.i.lcssa = phi i32 [ %i.bk, %bb.q ], [ %i.bs, %bb.s ], [ %i.bo, %bb.r ], [ %i.bw, %bb.t ]
  %i.bz = load i32, ptr %i.ad, align 4, !tbaa !136
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %_ZN2cv17QRCodeDecoderImpl9decodeECIERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.w:                                             ; preds = %bb.v
  store i32 %.08.i.lcssa, ptr %i.ad, align 4, !tbaa !136
  br label %_ZN2cv17QRCodeDecoderImpl9decodeECIERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN2cv17QRCodeDecoderImpl9decodeECIERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.v, %bb.w
  tail call void @_ZN2cv17QRCodeDecoderImpl13decodeSymbolsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !316
  br label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.x:                                             ; preds = %bb.l
  tail call void @_ZN2cv17QRCodeDecoderImpl11decodeKanjiERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.y:                                             ; preds = %bb.l
  %i.cb = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 4)
  %i.cc = trunc i32 %i.cb to i8
  store i8 %i.cc, ptr %i.aa, align 1, !tbaa !317
  %i.cd = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 4)
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = add i8 %i.ce, 1
  store i8 %i.cf, ptr %i.ab, align 2, !tbaa !128
  %i.cg = tail call noundef i32 @_ZN2cv17QRCodeDecoderImpl9Bitstream4nextEi(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 8)
  %i.ch = trunc i32 %i.cg to i8
  store i8 %i.ch, ptr %i.ac, align 8, !tbaa !318
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
  %i.cj = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.ab
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !16
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ac

_ZN2cv17QRCodeDecoderImpl10decodeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i, %bb.o, %bb.m, %bb.x, %bb.y, %_ZN2cv17QRCodeDecoderImpl9decodeECIERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.n
  %i.co = load i64, ptr %i.b, align 8, !tbaa !131
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !62
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !134
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [112 x i8], ptr @_ZN2cvL21version_info_databaseE, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !137
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !100  ; 4 uses
  %i.k = sext i32 %i.j to i64                     ; 7 uses
  %i.l = and i32 %i.j, 1
  %sext304 = sub nsw i32 0, %i.l
  %i.m = sext i32 %sext304 to i64
  %spec.select = add nsw i64 %i.m, %i.k           ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.n = load ptr, ptr %1, align 8, !tbaa !62
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
  store ptr %i.p, ptr %2, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !64
  %i.t = load i8, ptr %i.n, align 1, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 %i.t, i64 %spec.select, i1 false)
  store ptr %i.r, ptr %i.q, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !61  ; 2 uses
  %.pre413 = load ptr, ptr %1, align 8, !tbaa !62 ; 3 uses
  %i.v = ptrtoint ptr %.pre to i64
  %i.w = ptrtoint ptr %.pre413 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ugt i64 %i.x, 1
  %i.z = ptrtoint ptr %.pre to i64
  %i.aa = ptrtoint ptr %.pre413 to i64
  %i.ab = sub i64 %i.z, %i.aa
  br label %.preheader312

.preheader312:                                    ; preds = %.preheader312.lr.ph, %._crit_edge
  %.0127336 = phi i64 [ 0, %.preheader312.lr.ph ], [ %i.ak, %._crit_edge ] ; 3 uses
  %.0142335 = phi i1 [ false, %.preheader312.lr.ph ], [ %i.aj, %._crit_edge ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0127336 ; 3 uses
  br i1 %i.y, label %.lr.ph, label %.preheader312.._crit_edge_crit_edge

.preheader312.._crit_edge_crit_edge:              ; preds = %.preheader312
  %.pre415 = load i8, ptr %i.ac, align 1, !tbaa !16
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader312
  %i.ad = trunc i64 %.0127336 to i32
  %i.ae = srem i32 %i.ad, 255
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr @_ZN2cvL6gf_expE, i64 %i.af
  %.pre414 = load i8, ptr %i.ac, align 1, !tbaa !16
  br label %bb.b

._crit_edge337:                                   ; preds = %._crit_edge
  br i1 %i.aj, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164, label %._crit_edge337.thread

._crit_edge:                                      ; preds = %_ZN2cvL5gfMulEhh.exit, %.preheader312.._crit_edge_crit_edge
  %i.ah = phi i8 [ %.pre415, %.preheader312.._crit_edge_crit_edge ], [ %i.bc, %_ZN2cvL5gfMulEhh.exit ]
  %i.ai = icmp ne i8 %i.ah, 0
  %i.aj = or i1 %.0142335, %i.ai                  ; 2 uses
  %i.ak = add nuw i64 %.0127336, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %spec.select
  br i1 %exitcond.not, label %._crit_edge337, label %.preheader312, !llvm.loop !319

bb.b:                                             ; preds = %.lr.ph, %_ZN2cvL5gfMulEhh.exit
  %i.al = phi i8 [ %.pre414, %.lr.ph ], [ %i.bc, %_ZN2cvL5gfMulEhh.exit ] ; 2 uses
  %.0126334 = phi i64 [ 1, %.lr.ph ], [ %i.bd, %_ZN2cvL5gfMulEhh.exit ] ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %_ZN2cvL5gfMulEhh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ao = zext i8 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = zext i8 %i.aq to i16
  %i.as = zext i8 %i.an to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i16
  %.lhs.trunc.i = add nuw nsw i16 %i.av, %i.ar
  %i.aw = urem i16 %.lhs.trunc.i, 255
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit

_ZN2cvL5gfMulEhh.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi i8 [ %i.az, %bb.c ], [ 0, %bb.b ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre413, i64 %.0126334
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = xor i8 %i.bb, %.0.i                     ; 3 uses
  store i8 %i.bc, ptr %i.ac, align 1, !tbaa !16
  %i.bd = add nuw i64 %.0126334, 1                ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.ab
  br i1 %i.be, label %bb.b, label %._crit_edge, !llvm.loop !320

._crit_edge337.thread:                            ; preds = %.thread, %._crit_edge337
  %i.bf = phi ptr [ %i.p, %._crit_edge337 ], [ null, %.thread ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !61 ; 2 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = sub nuw i64 %i.bl, %i.k
  %i.bn = icmp ult i64 %i.bl, %i.k
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge337.thread
  %i.bo = sub nsw i64 0, %i.k
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bo)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit unwind label %bb.g

bb.e:                                             ; preds = %._crit_edge337.thread
  %.not389 = icmp eq i32 %i.j, 0
  br i1 %.not389, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bp
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.bp, ptr %i.bg, align 8, !tbaa !61
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.g:                                             ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164: ; preds = %._crit_edge337
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30
          to label %bb.h unwind label %bb.k       ; 11 uses

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164
  store ptr %i.br, ptr %3, align 8, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %spec.select ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.br, i8 0, i64 %spec.select, i1 false)
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.select) #30
          to label %.lr.ph356 unwind label %bb.l  ; 4 uses

.lr.ph356:                                        ; preds = %bb.h
  store ptr %i.bv, ptr %4, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %spec.select ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bv, i8 0, i64 %spec.select, i1 false)
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !61
  store i8 1, ptr %i.bv, align 1, !tbaa !16
  store i8 1, ptr %i.br, align 1, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not501 = icmp eq i64 %spec.select, 1
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
  %.0123.lcssa471475 = phi i64 [ %.2125, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ 0, %bb.j ] ; 9 uses
  %.sroa.0267.3 = phi ptr [ %i.cd, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.j ] ; 4 uses
  %.sroa.29.3 = phi ptr [ %i.ce, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.j ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !61 ; 2 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  %.not391 = icmp eq i64 %i.ck, 0
  br i1 %.not391, label %._crit_edge371, label %.lr.ph370

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i164
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit255

bb.l:                                             ; preds = %bb.h
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit253

bb.m:                                             ; preds = %.lr.ph356, %bb.af
  %.0117353 = phi i64 [ 0, %.lr.ph356 ], [ %i.gf, %bb.af ] ; 5 uses
  %.0118352 = phi i8 [ 1, %.lr.ph356 ], [ %.2, %bb.af ] ; 3 uses
  %.0120351 = phi i64 [ 1, %.lr.ph356 ], [ %.2122, %bb.af ] ; 4 uses
  %.0123349 = phi i64 [ 0, %.lr.ph356 ], [ %.2125, %bb.af ] ; 8 uses
  %i.cn = add i64 %.0123349, -1
  %i.co = add i64 %i.cn, %.0120351
  %i.cp = icmp ult i64 %i.co, %spec.select
  br i1 %i.cp, label %bb.s, label %bb.n

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
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !16
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %.pn150 = phi { ptr, i32 } [ %i.cq, %bb.q ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cr, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit251

bb.s:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 %.0117353
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !16  ; 2 uses
  %.not152339 = icmp eq i64 %.0123349, 0          ; 2 uses
  br i1 %.not152339, label %._crit_edge344, label %.lr.ph343.preheader

.lr.ph343.preheader:                              ; preds = %bb.s
  %i.cz = add i64 %.0123349, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.cz, i64 2)
  br label %.lr.ph343

._crit_edge344:                                   ; preds = %_ZN2cvL5gfMulEhh.exit183, %bb.s
  %.0116.lcssa = phi i8 [ %i.cy, %bb.s ], [ %.0.i182, %_ZN2cvL5gfMulEhh.exit183 ] ; 3 uses
  %i.da = icmp eq i8 %.0116.lcssa, 0
  br i1 %i.da, label %bb.u, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i

.lr.ph343:                                        ; preds = %.lr.ph343.preheader, %_ZN2cvL5gfMulEhh.exit183
  %.0115341 = phi i64 [ %i.dv, %_ZN2cvL5gfMulEhh.exit183 ], [ 1, %.lr.ph343.preheader ] ; 3 uses
  %.0116340 = phi i8 [ %.0.i182, %_ZN2cvL5gfMulEhh.exit183 ], [ %i.cy, %.lr.ph343.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.br, i64 %.0115341
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !16  ; 2 uses
  %i.dd = sub i64 %.0117353, %.0115341
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !16  ; 2 uses
  %i.dg = icmp eq i8 %i.dc, 0
  %i.dh = icmp eq i8 %i.df, 0
  %or.cond.i180 = or i1 %i.dg, %i.dh
  br i1 %or.cond.i180, label %_ZN2cvL5gfMulEhh.exit183, label %bb.t

bb.t:                                             ; preds = %.lr.ph343
  %i.di = zext i8 %i.dc to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !16
  %i.dl = zext i8 %i.dk to i16
  %i.dm = zext i8 %i.df to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = zext i8 %i.do to i16
  %.lhs.trunc.i181 = add nuw nsw i16 %i.dp, %i.dl
  %i.dq = urem i16 %.lhs.trunc.i181, 255
  %i.dr = zext nneg i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = xor i8 %i.dt, %.0116340
  br label %_ZN2cvL5gfMulEhh.exit183

_ZN2cvL5gfMulEhh.exit183:                         ; preds = %.lr.ph343, %bb.t
  %.0.i182 = phi i8 [ %i.du, %bb.t ], [ %.0116340, %.lr.ph343 ] ; 2 uses
  %i.dv = add nuw i64 %.0115341, 1                ; 2 uses
  %exitcond403 = icmp eq i64 %i.dv, %umax
  br i1 %exitcond403, label %._crit_edge344, label %.lr.ph343, !llvm.loop !321

bb.u:                                             ; preds = %._crit_edge344
  %i.dw = add i64 %.0120351, 1
  br label %bb.af

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %._crit_edge344
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
end_hunk_0
begin_hunk_1_@_ZN2cv17QRCodeDecoderImpl20errorCorrectionBlockERSt6vectorIhSaIhEE:bb.a
  br label %bb.ag

._crit_edge364:                                   ; preds = %_ZN2cvL5gfMulEhh.exit203
  %i.gv = icmp eq i8 %i.hi, %.0.i202
  br i1 %i.gv, label %bb.ai, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ag:                                            ; preds = %.lr.ph363, %_ZN2cvL5gfMulEhh.exit203
  %.0111361 = phi i64 [ 1, %.lr.ph363 ], [ %i.hk, %_ZN2cvL5gfMulEhh.exit203 ] ; 3 uses
  %.0112360 = phi i8 [ 1, %.lr.ph363 ], [ %i.hj, %_ZN2cvL5gfMulEhh.exit203 ] ; 2 uses
  %i.gw = icmp eq i8 %.0112360, 0
  br i1 %i.gw, label %_ZN2cvL5gfMulEhh.exit203, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gx = zext i8 %.0112360 to i64
  %i.gy = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !16
  %i.ha = zext i8 %i.gz to i16
  %i.hb = load i8, ptr %i.gu, align 1, !tbaa !16
  %i.hc = zext i8 %i.hb to i16
  %.lhs.trunc.i201 = add nuw nsw i16 %i.hc, %i.ha
  %i.hd = urem i16 %.lhs.trunc.i201, 255
  %i.he = zext nneg i16 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit203

_ZN2cvL5gfMulEhh.exit203:                         ; preds = %bb.ag, %bb.ah
  %.0.i202 = phi i8 [ %i.hg, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.br, i64 %.0111361
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !16  ; 2 uses
  %i.hj = xor i8 %i.hi, %.0.i202
  %i.hk = add nuw i64 %.0111361, 1
  %exitcond406.not = icmp eq i64 %.0111361, %.0123.lcssa471475
  br i1 %exitcond406.not, label %._crit_edge364, label %bb.ag, !llvm.loop !324

bb.ai:                                            ; preds = %._crit_edge364
  %i.hl = xor i64 %.0113369, -1
  %i.hm = add i64 %i.gn, %i.hl
  %sext = shl i64 %i.hm, 32
  %i.hn = ashr exact i64 %sext, 32                ; 2 uses
  %.not.i.i204 = icmp eq ptr %.sroa.18.0367, %.sroa.29.0368
  br i1 %.not.i.i204, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i64 %i.hn, ptr %.sroa.18.0367, align 8, !tbaa !24
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.18.0367, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ak:                                            ; preds = %bb.ai
  %i.hp = ptrtoint ptr %.sroa.29.0368 to i64
  %i.hq = ptrtoint ptr %.sroa.0267.0366 to i64
  %i.hr = sub i64 %i.hp, %i.hq                    ; 6 uses
  %i.hs = icmp eq i64 %i.hr, 9223372036854775800
  br i1 %i.hs, label %bb.al, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #28
          to label %.noexc206 unwind label %.loopexit.split-lp

.noexc206:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ak
  %i.ht = ashr exact i64 %i.hr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ht, i64 1)
  %i.hu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ht ; 2 uses
  %i.hv = icmp ult i64 %i.hu, %i.ht
  %i.hw = call i64 @llvm.umin.i64(i64 %i.hu, i64 1152921504606846975)
  %i.hx = select i1 %i.hv, i64 1152921504606846975, i64 %i.hw ; 3 uses
  %.not.i.i.i.i205 = icmp ne i64 %i.hx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i205)
  %i.hy = shl nuw nsw i64 %i.hx, 3
  %i.hz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hy) #30
          to label %.noexc207 unwind label %.loopexit ; 4 uses

.noexc207:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 %i.hr ; 2 uses
  store i64 %i.hn, ptr %i.ia, align 8, !tbaa !24
  %i.ib = icmp sgt i64 %i.hr, 0
  br i1 %i.ib, label %bb.am, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.am:                                            ; preds = %.noexc207
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hz, ptr align 8 %.sroa.0267.0366, i64 %i.hr, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.am, %.noexc207
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0267.0366, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0267.0366, i64 noundef %i.hr) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.an, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hx
  %.pre418 = load ptr, ptr %i.cf, align 8, !tbaa !61
  %.pre419 = load ptr, ptr %1, align 8, !tbaa !62
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %.lr.ph370, %bb.aj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %._crit_edge364
  %i.ie = phi ptr [ %i.gl, %._crit_edge364 ], [ %.pre419, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.gl, %bb.aj ], [ %i.gl, %.lr.ph370 ] ; 2 uses
  %i.if = phi ptr [ %i.gm, %._crit_edge364 ], [ %.pre418, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.gm, %bb.aj ], [ %i.gm, %.lr.ph370 ] ; 2 uses
  %.sroa.0267.1 = phi ptr [ %.sroa.0267.0366, %._crit_edge364 ], [ %i.hz, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0267.0366, %bb.aj ], [ %.sroa.0267.0366, %.lr.ph370 ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.0367, %._crit_edge364 ], [ %i.ic, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ho, %bb.aj ], [ %.sroa.18.0367, %.lr.ph370 ] ; 2 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.0368, %._crit_edge364 ], [ %i.id, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.29.0368, %bb.aj ], [ %.sroa.29.0368, %.lr.ph370 ] ; 2 uses
  %i.ig = add nuw i64 %.0113369, 1                ; 2 uses
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ie to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 2 uses
  %i.ik = icmp ult i64 %i.ig, %i.ij
  br i1 %i.ik, label %.lr.ph370, label %._crit_edge371, !llvm.loop !325

bb.ao:                                            ; preds = %._crit_edge371
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN2cvL9gfPolyMulERKSt6vectorIhSaIhEES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 unwind label %bb.ar

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208: ; preds = %bb.ao
  %.not.i.i.i.i209 = icmp eq ptr %.sroa.18.0.lcssa, %.sroa.0267.0.lcssa
  br i1 %.not.i.i.i.i209, label %._crit_edge387, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208
  %i.il = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.0123.lcssa471475) #30
          to label %.noexc212 unwind label %bb.as ; 7 uses

.noexc212:                                        ; preds = %bb.ap
  %i.im = getelementptr i8, ptr %i.il, i64 %.0123.lcssa471475
  store i8 0, ptr %i.il, align 1, !tbaa !16
  %i.in = add nsw i64 %.0123.lcssa471475, -1      ; 2 uses
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %.lr.ph376, label %bb.aq

bb.aq:                                            ; preds = %.noexc212
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ip, i8 0, i64 %i.in, i1 false)
  br label %.lr.ph376

.lr.ph376:                                        ; preds = %bb.aq, %.noexc212
  %i.iq = load ptr, ptr %i.cf, align 8, !tbaa !61
  %i.ir = load ptr, ptr %1, align 8, !tbaa !62
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %umax407 = call i64 @llvm.umax.i64(i64 %.0123.lcssa471475, i64 1)
  br label %bb.at

.lr.ph386:                                        ; preds = %bb.at
  %umax410 = call i64 @llvm.umax.i64(i64 %.0123.lcssa471475, i64 1) ; 2 uses
  br label %bb.ax

bb.ar:                                            ; preds = %bb.ao
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit242

bb.as:                                            ; preds = %bb.ap
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit242

bb.at:                                            ; preds = %.lr.ph376, %bb.at
  %.0110375 = phi i64 [ 0, %.lr.ph376 ], [ %i.jh, %bb.at ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0267.0.lcssa, i64 %.0110375
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !24
  %i.iz = xor i64 %i.iy, -1
  %i.ja = add i64 %i.iu, %i.iz
  %i.jb = trunc i64 %i.ja to i32
  %i.jc = srem i32 %i.jb, 255
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr @_ZN2cvL6gf_expE, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.il, i64 %.0110375
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !16
  %i.jh = add nuw nsw i64 %.0110375, 1            ; 2 uses
  %exitcond408.not = icmp eq i64 %i.jh, %umax407
  br i1 %exitcond408.not, label %.lr.ph386, label %bb.at, !llvm.loop !326

._crit_edge387.loopexit:                          ; preds = %_ZN2cvL5gfDivEhh.exit228
  %i.ji = ptrtoint ptr %i.im to i64
  br label %._crit_edge387

._crit_edge387:                                   ; preds = %._crit_edge387.loopexit, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208
  %.sroa.0260.0481487 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 ], [ %i.il, %._crit_edge387.loopexit ] ; 6 uses
  %.sroa.12.0483486 = phi i64 [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i208 ], [ %i.ji, %._crit_edge387.loopexit ] ; 2 uses
  %i.jj = load ptr, ptr %i.cf, align 8, !tbaa !61 ; 2 uses
  %i.jk = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm                    ; 2 uses
  %i.jo = sub nuw i64 %i.jn, %i.k
  %i.jp = icmp ult i64 %i.jn, %i.k
  br i1 %i.jp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge387
  %i.jq = sub nsw i64 0, %i.k
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jq)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216 unwind label %bb.bh

bb.av:                                            ; preds = %._crit_edge387
  %.not396 = icmp eq i32 %i.j, 0
  br i1 %.not396, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jo ; 2 uses
  %.not.i.i213 = icmp eq ptr %i.jj, %i.jr
  br i1 %.not.i.i213, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214:     ; preds = %bb.aw
  store ptr %i.jr, ptr %i.cf, align 8, !tbaa !61
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit216

bb.ax:                                            ; preds = %.lr.ph386, %_ZN2cvL5gfDivEhh.exit228
  %.0109385 = phi i64 [ 0, %.lr.ph386 ], [ %i.lz, %_ZN2cvL5gfDivEhh.exit228 ] ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.il, i64 %.0109385
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !16  ; 2 uses
  %i.ju = icmp eq i8 %i.jt, 0
  br i1 %i.ju, label %_ZN2cvL5gfDivEhh.exit220.thread, label %_ZN2cvL5gfDivEhh.exit220

_ZN2cvL5gfDivEhh.exit220:                         ; preds = %bb.ax
  %i.jv = zext i8 %i.jt to i64
  %i.jw = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !16
  %i.jy = zext i8 %i.jx to i16
  %.lhs.trunc.i218 = sub nuw nsw i16 510, %i.jy
  %i.jz = urem i16 %.lhs.trunc.i218, 255
  %i.ka = zext nneg i16 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !16
  %i.kd = freeze i8 %i.kc                         ; 3 uses
  br i1 %.not, label %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, label %.lr.ph379

_ZN2cvL5gfDivEhh.exit220.thread:                  ; preds = %bb.ax
  br i1 %.not, label %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, label %.lr.ph379.thread

.lr.ph379.thread:                                 ; preds = %_ZN2cvL5gfDivEhh.exit220.thread
  %i.ke = load ptr, ptr %8, align 8, !tbaa !62
  br label %_ZN2cvL5gfMulEhh.exit224.us.preheader

_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge:    ; preds = %_ZN2cvL5gfDivEhh.exit220.thread, %_ZN2cvL5gfDivEhh.exit220
  %.0.i219491 = phi i8 [ 0, %_ZN2cvL5gfDivEhh.exit220.thread ], [ %i.kd, %_ZN2cvL5gfDivEhh.exit220 ] ; 2 uses
  %.pre422.a = zext i8 %.0.i219491 to i64
  %i.kf = icmp eq i8 %.0.i219491, 0
  br label %.preheader

.lr.ph379:                                        ; preds = %_ZN2cvL5gfDivEhh.exit220
  %i.kg = icmp eq i8 %i.kd, 0
  %i.kh = zext i8 %i.kd to i64                    ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.kh
  %i.kj = load ptr, ptr %8, align 8, !tbaa !62    ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 %.0123.lcssa471475
  br i1 %i.kg, label %_ZN2cvL5gfMulEhh.exit224.us.preheader, label %.lr.ph379.split

_ZN2cvL5gfMulEhh.exit224.us.preheader:            ; preds = %.lr.ph379.thread, %.lr.ph379
  %i.kl = phi ptr [ %i.ke, %.lr.ph379.thread ], [ %i.kj, %.lr.ph379 ]
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !16
  br label %.preheader

.preheader:                                       ; preds = %_ZN2cvL5gfMulEhh.exit224, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge, %_ZN2cvL5gfMulEhh.exit224.us.preheader
  %.0.i219490 = phi i1 [ %i.kf, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ true, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ false, %_ZN2cvL5gfMulEhh.exit224 ]
  %.pre-phi = phi i64 [ %.pre422.a, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ 0, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ %i.kh, %_ZN2cvL5gfMulEhh.exit224 ]
  %.0108.lcssa = phi i8 [ 0, %_ZN2cvL5gfDivEhh.exit220..preheader_crit_edge ], [ %i.km, %_ZN2cvL5gfMulEhh.exit224.us.preheader ], [ %i.lc, %_ZN2cvL5gfMulEhh.exit224 ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %.pre-phi
  br label %bb.bb

.lr.ph379.split:                                  ; preds = %.lr.ph379, %_ZN2cvL5gfMulEhh.exit224
  %.0105378 = phi i64 [ %i.ld, %_ZN2cvL5gfMulEhh.exit224 ], [ 0, %.lr.ph379 ] ; 2 uses
  %.0108377 = phi i8 [ %i.lc, %_ZN2cvL5gfMulEhh.exit224 ], [ 0, %.lr.ph379 ] ; 2 uses
  %i.ko = icmp eq i8 %.0108377, 0
  br i1 %i.ko, label %_ZN2cvL5gfMulEhh.exit224, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph379.split
  %i.kp = zext i8 %.0108377 to i64
  %i.kq = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !16
  %i.ks = zext i8 %i.kr to i16
  %i.kt = load i8, ptr %i.ki, align 1, !tbaa !16
  %i.ku = zext i8 %i.kt to i16
  %.lhs.trunc.i222 = add nuw nsw i16 %i.ku, %i.ks
  %i.kv = urem i16 %.lhs.trunc.i222, 255
  %i.kw = zext nneg i16 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit224

_ZN2cvL5gfMulEhh.exit224:                         ; preds = %.lr.ph379.split, %bb.ay
  %.0.i223 = phi i8 [ %i.ky, %bb.ay ], [ 0, %.lr.ph379.split ]
  %i.kz = xor i64 %.0105378, -1
  %i.la = getelementptr i8, ptr %i.kk, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !16
  %i.lc = xor i8 %i.lb, %.0.i223                  ; 2 uses
  %i.ld = add nuw nsw i64 %.0105378, 1            ; 2 uses
  %exitcond409.not = icmp eq i64 %i.ld, %.0123.lcssa471475
  br i1 %exitcond409.not, label %.preheader, label %.lr.ph379.split, !llvm.loop !327

bb.az:                                            ; preds = %_ZN2cvL5gfMulEhh.exit236
  %i.le = icmp eq i8 %.0108.lcssa, 0
  %i.lf = icmp eq i8 %.1107, 0
  %or.cond.i225 = or i1 %i.le, %i.lf
  br i1 %or.cond.i225, label %_ZN2cvL5gfDivEhh.exit228, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lg = zext i8 %.0108.lcssa to i64
  %i.lh = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !16
  %i.lj = zext i8 %i.li to i16
  %i.lk = add nuw nsw i16 %i.lj, 255
  %i.ll = zext i8 %.1107 to i64
  %i.lm = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !16
  %i.lo = zext i8 %i.ln to i16
  %.lhs.trunc.i226 = sub nuw nsw i16 %i.lk, %i.lo
  %i.lp = urem i16 %.lhs.trunc.i226, 255
  %i.lq = zext nneg i16 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !16
  br label %_ZN2cvL5gfDivEhh.exit228

_ZN2cvL5gfDivEhh.exit228:                         ; preds = %bb.az, %bb.ba
  %.0.i227 = phi i8 [ %i.ls, %bb.ba ], [ 0, %bb.az ]
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0267.0.lcssa, i64 %.0109385
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !24
  %i.lv = load ptr, ptr %1, align 8, !tbaa !62
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lu ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !16
  %i.ly = xor i8 %i.lx, %.0.i227
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !16
  %i.lz = add nuw nsw i64 %.0109385, 1            ; 2 uses
  %exitcond412.not = icmp eq i64 %i.lz, %umax410
  br i1 %exitcond412.not, label %._crit_edge387.loopexit, label %bb.ax, !llvm.loop !328

bb.bb:                                            ; preds = %.preheader, %_ZN2cvL5gfMulEhh.exit236
  %.0104384 = phi i64 [ 0, %.preheader ], [ %i.nd, %_ZN2cvL5gfMulEhh.exit236 ] ; 3 uses
  %.0106383 = phi i8 [ 1, %.preheader ], [ %.1107, %_ZN2cvL5gfMulEhh.exit236 ] ; 3 uses
  %i.ma = icmp eq i64 %.0109385, %.0104384
  br i1 %i.ma, label %_ZN2cvL5gfMulEhh.exit236, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mb = getelementptr inbounds nuw i8, ptr %i.il, i64 %.0104384
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !16  ; 2 uses
  %i.md = icmp eq i8 %i.mc, 0
  %or.cond.i229 = or i1 %.0.i219490, %i.md
  br i1 %or.cond.i229, label %_ZN2cvL5gfMulEhh.exit232, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.me = load i8, ptr %i.kn, align 1, !tbaa !16
  %i.mf = zext i8 %i.me to i16
  %i.mg = zext i8 %i.mc to i64
  %i.mh = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !16
  %i.mj = zext i8 %i.mi to i16
  %.lhs.trunc.i230 = add nuw nsw i16 %i.mj, %i.mf
  %i.mk = urem i16 %.lhs.trunc.i230, 255
  %i.ml = zext nneg i16 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !16
  %i.mo = xor i8 %i.mn, 1
  br label %_ZN2cvL5gfMulEhh.exit232

_ZN2cvL5gfMulEhh.exit232:                         ; preds = %bb.bc, %bb.bd
  %.0.i231 = phi i8 [ %i.mo, %bb.bd ], [ 1, %bb.bc ] ; 2 uses
  %i.mp = icmp eq i8 %.0106383, 0
  %i.mq = icmp eq i8 %.0.i231, 0
  %or.cond.i233 = or i1 %i.mp, %i.mq
  br i1 %or.cond.i233, label %_ZN2cvL5gfMulEhh.exit236, label %bb.be

bb.be:                                            ; preds = %_ZN2cvL5gfMulEhh.exit232
  %i.mr = zext i8 %.0106383 to i64
  %i.ms = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !16
  %i.mu = zext i8 %i.mt to i16
  %i.mv = zext i8 %.0.i231 to i64
  %i.mw = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_logE, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !16
  %i.my = zext i8 %i.mx to i16
  %.lhs.trunc.i234 = add nuw nsw i16 %i.my, %i.mu
  %i.mz = urem i16 %.lhs.trunc.i234, 255
  %i.na = zext nneg i16 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr @_ZN2cvL6gf_expE, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !16
  br label %_ZN2cvL5gfMulEhh.exit236

_ZN2cvL5gfMulEhh.exit236:                         ; preds = %bb.be, %_ZN2cvL5gfMulEhh.exit232, %bb.bb
  %.1107 = phi i8 [ %.0106383, %bb.bb ], [ %i.nc, %bb.be ], [ 0, %_ZN2cvL5gfMulEhh.exit232 ] ; 3 uses
  %i.nd = add nuw nsw i64 %.0104384, 1            ; 2 uses
  %exitcond411.not = icmp eq i64 %i.nd, %umax410
  br i1 %exitcond411.not, label %bb.az, label %bb.bb, !llvm.loop !329

_ZNSt6vectorIhSaIhEE6resizeEm.exit216:            ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i214, %bb.aw, %bb.av, %bb.au
  %.not.i.i.i237 = icmp eq ptr %.sroa.0260.0481487, null
  br i1 %.not.i.i.i237, label %_ZNSt6vectorIhSaIhEED2Ev.exit238, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit216
  %i.ne = ptrtoint ptr %.sroa.0260.0481487 to i64
  %i.nf = sub i64 %.sroa.12.0483486, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0260.0481487, i64 noundef %i.nf) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit238

_ZNSt6vectorIhSaIhEED2Ev.exit238:                 ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit216, %bb.bf
  %i.ng = load ptr, ptr %8, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i239 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i239, label %_ZNSt6vectorIhSaIhEED2Ev.exit240, label %bb.bg
end_hunk_1
