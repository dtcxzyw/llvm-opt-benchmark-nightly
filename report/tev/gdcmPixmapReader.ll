Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmPixmapReader?download=true
inline.NumInlined: 2427
inline.NumDeleted: 878
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt3__16vectorIbNS_9allocatorIbEEE6resizeEmb:bb.a
  store ptr %i.al, ptr %3, align 8, !tbaa !128
  %i.ao = load <2 x i64>, ptr %i.t, align 8, !tbaa !35
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !35
  %i.aq = load <2 x i64>, ptr %i.a, align 8, !tbaa !35
  store <2 x i64> %i.ao, ptr %i.a, align 8, !tbaa !35
  store <2 x i64> %i.aq, ptr %i.t, align 8, !tbaa !35
  %.not.i.i35 = icmp eq ptr %i.al, null
  br i1 %.not.i.i35, label %_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ne180100Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = shl i64 %i.ap, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ar) #24
  br label %_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ne180100Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.p

bb.n:                                             ; preds = %_ZNKSt3__16vectorIbNS_9allocatorIbEEE11__recommendB8ne180100Em.exit, %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.at, null
  br i1 %.not.i.i36, label %_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ne180100Ev.exit37, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !35
  %i.aw = shl i64 %i.av, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aw) #24
  br label %_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ne180100Ev.exit37

_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ne180100Ev.exit37: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.as

bb.p:                                             ; preds = %bb.c, %_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ne180100Ev.exit
  %.sroa.046.0 = phi ptr [ %i.am, %_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ne180100Ev.exit ], [ %i.k, %bb.c ] ; 8 uses
  %.sroa.7.0 = phi i32 [ %.sroa.5.1.i, %_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ne180100Ev.exit ], [ %i.m, %bb.c ] ; 5 uses
  %.not.i.i39 = icmp eq i32 %.sroa.7.0, 0         ; 2 uses
  br i1 %2, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i.i39, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = sub nuw nsw i32 64, %.sroa.7.0
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %.sroa.speculated.i.i40 = call i64 @llvm.umin.i64(i64 %i.g, i64 %i.ay) ; 2 uses
  %i.az = zext nneg i32 %.sroa.7.0 to i64
  %i.ba = shl nsw i64 -1, %i.az
  %i.bb = sub nuw nsw i64 %i.ay, %.sroa.speculated.i.i40
  %i.bc = lshr i64 -1, %i.bb
  %i.bd = and i64 %i.bc, %i.ba
  %i.be = load i64, ptr %.sroa.046.0, align 8, !tbaa !35
  %i.bf = or i64 %i.be, %i.bd
  store i64 %i.bf, ptr %.sroa.046.0, align 8, !tbaa !35
  %i.bg = sub nuw i64 %i.g, %.sroa.speculated.i.i40
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.046.0, i64 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bi = phi ptr [ %.sroa.046.0, %bb.q ], [ %i.bh, %bb.r ] ; 2 uses
  %.0.i.i41 = phi i64 [ %i.g, %bb.q ], [ %i.bg, %bb.r ] ; 2 uses
  %i.bj = lshr i64 %.0.i.i41, 6                   ; 3 uses
  %.not6.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16fill_nB8ne180100IPmmmEET_S2_T0_RKT1_.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.s
  %i.bk = shl nuw nsw i64 %i.bj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 -1, i64 %i.bk, i1 false), !tbaa !35
  br label %_ZNSt3__16fill_nB8ne180100IPmmmEET_S2_T0_RKT1_.exit.i.i

_ZNSt3__16fill_nB8ne180100IPmmmEET_S2_T0_RKT1_.exit.i.i: ; preds = %.lr.ph.i.i.preheader.i.i, %bb.s
  %i.bl = and i64 %.0.i.i41, 63                   ; 2 uses
  %.not7.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not7.i.i, label %_ZNSt3__16fill_nB8ne180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16fill_nB8ne180100IPmmmEET_S2_T0_RKT1_.exit.i.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bn = sub nuw nsw i64 64, %i.bl
  %i.bo = lshr i64 -1, %i.bn
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !35
  %i.bq = or i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !35
  br label %_ZNSt3__16fill_nB8ne180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit

bb.u:                                             ; preds = %bb.p
  br i1 %.not.i.i39, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = sub nuw nsw i32 64, %.sroa.7.0
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %.sroa.speculated.i6.i = call i64 @llvm.umin.i64(i64 %i.g, i64 %i.bs) ; 2 uses
  %i.bt = zext nneg i32 %.sroa.7.0 to i64
  %i.bu = shl nsw i64 -1, %i.bt
  %i.bv = sub nuw nsw i64 %i.bs, %.sroa.speculated.i6.i
  %i.bw = lshr i64 -1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %i.by = xor i64 %i.bx, -1
  %i.bz = load i64, ptr %.sroa.046.0, align 8, !tbaa !35
  %i.ca = and i64 %i.bz, %i.by
  store i64 %i.ca, ptr %.sroa.046.0, align 8, !tbaa !35
  %i.cb = sub nuw i64 %i.g, %.sroa.speculated.i6.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.046.0, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cd = phi ptr [ %.sroa.046.0, %bb.u ], [ %i.cc, %bb.v ] ; 2 uses
  %.0.i7.i = phi i64 [ %i.g, %bb.u ], [ %i.cb, %bb.v ] ; 2 uses
  %i.ce = lshr i64 %.0.i7.i, 6                    ; 3 uses
  %.not6.i.i.i8.i = icmp eq i64 %i.ce, 0
  br i1 %.not6.i.i.i8.i, label %_ZNSt3__16fill_nB8ne180100IPmmmEET_S2_T0_RKT1_.exit.i10.i, label %.lr.ph.i.i.preheader.i9.i

.lr.ph.i.i.preheader.i9.i:                        ; preds = %bb.w
  %i.cf = shl nuw nsw i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %i.cf, i1 false), !tbaa !35
  br label %_ZNSt3__16fill_nB8ne180100IPmmmEET_S2_T0_RKT1_.exit.i10.i

_ZNSt3__16fill_nB8ne180100IPmmmEET_S2_T0_RKT1_.exit.i10.i: ; preds = %.lr.ph.i.i.preheader.i9.i, %bb.w
  %i.cg = and i64 %.0.i7.i, 63                    ; 2 uses
  %.not7.i11.i = icmp eq i64 %i.cg, 0
  br i1 %.not7.i11.i, label %_ZNSt3__16fill_nB8ne180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt3__16fill_nB8ne180100IPmmmEET_S2_T0_RKT1_.exit.i10.i
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.ci = sub nuw nsw i64 64, %i.cg
  %i.cj = lshr i64 -1, %i.ci
  %i.ck = xor i64 %i.cj, -1
  %i.cl = load i64, ptr %i.ch, align 8, !tbaa !35
  %i.cm = and i64 %i.cl, %i.ck
  store i64 %i.cm, ptr %i.ch, align 8, !tbaa !35
  br label %_ZNSt3__16fill_nB8ne180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit

bb.y:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !127
  br label %_ZNSt3__16fill_nB8ne180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit

_ZNSt3__16fill_nB8ne180100INS_6vectorIbNS_9allocatorIbEEEEEEvNS_14__bit_iteratorIT_Lb0ELi0EEENS6_9size_typeEb.exit: ; preds = %bb.x, %_ZNSt3__16fill_nB8ne180100IPmmmEET_S2_T0_RKT1_.exit.i10.i, %bb.t, %_ZNSt3__16fill_nB8ne180100IPmmmEET_S2_T0_RKT1_.exit.i.i, %bb.y
  ret void
}

declare void @_ZN4gdcm7Overlay6UpdateERKNS_11DataElementE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZNK4gdcm7Overlay10DecompressERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4gdcm7Overlay7IsEmptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4gdcm7Overlay13IsInPixelDataEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN4gdcm7Overlay13IsInPixelDataEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i16 @_ZNK4gdcm7Overlay16GetBitsAllocatedEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN4gdcm7Overlay16SetBitsAllocatedEt(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZNK4gdcm6Bitmap12GetDimensionEj(ptr noundef nonnull align 8 dereferenceable(106), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i8 @_ZNK4gdcm11PixelFormat12GetPixelSizeEv(ptr noundef nonnull align 2 dereferenceable(10)) local_unnamed_addr #1

declare noundef ptr @_ZNK4gdcm7Overlay9GetOriginEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i16 @_ZNK4gdcm7Overlay7GetRowsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i16 @_ZNK4gdcm7Overlay10GetColumnsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4gdcm7Overlay24GrabOverlayFromPixelDataERKNS_7DataSetE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef zeroext i16 @_ZNK4gdcm7Overlay14GetBitPositionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm6Pixmap13RemoveOverlayEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.45, i32 noundef 68, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #22
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds [24 x i8], ptr %i.d, i64 %1 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.c
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPN4gdcm7OverlayES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.l, %bb.e ] ; 2 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4gdcm7OverlayaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %storemerge9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPN4gdcm7OverlayES3_EET0_T_S5_S4_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !280

_ZNSt3__14moveB8ne180100IPN4gdcm7OverlayES3_EET0_T_S5_S4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !114
  br label %_ZNSt3__14moveB8ne180100IPN4gdcm7OverlayES3_EET0_T_S5_S4_.exit.i

_ZNSt3__14moveB8ne180100IPN4gdcm7OverlayES3_EET0_T_S5_S4_.exit.i: ; preds = %_ZNSt3__14moveB8ne180100IPN4gdcm7OverlayES3_EET0_T_S5_S4_.exit.loopexit.i, %bb.e
  %i.q = phi ptr [ %i.c, %bb.e ], [ %.pre.i, %_ZNSt3__14moveB8ne180100IPN4gdcm7OverlayES3_EET0_T_S5_S4_.exit.loopexit.i ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.p, %_ZNSt3__14moveB8ne180100IPN4gdcm7OverlayES3_EET0_T_S5_S4_.exit.loopexit.i ] ; 3 uses
  %.not6.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.q
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN4gdcm7OverlayENS_9allocatorIS2_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS2_EE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8ne180100IPN4gdcm7OverlayES3_EET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.q, %_ZNSt3__14moveB8ne180100IPN4gdcm7OverlayES3_EET0_T_S5_S4_.exit.i ]
  %i.r = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #22, !inline_history !281
  %.not.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN4gdcm7OverlayENS_9allocatorIS2_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS2_EE.exit, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN4gdcm7OverlayENS_9allocatorIS2_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS2_EE.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt3__14moveB8ne180100IPN4gdcm7OverlayES3_EET0_T_S5_S4_.exit.i
  %2 = ptrtoint ptr %storemerge.lcssa.i.i.i.i.i.i to i64
  %3 = ptrtoint ptr %i.l to i64
  %4 = sub i64 %2, %3
  %5 = getelementptr inbounds i8, ptr %i.l, i64 %4
  store ptr %5, ptr %i.b, align 8, !tbaa !114
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE5eraseB8ne180100ENS_14__bit_iteratorIS3_Lb1ELm0EEE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::__bit_iterator.87") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__1::__bit_iterator.87", align 8 ; 5 uses
  %5 = alloca %"class.std::__1::__bit_iterator.87", align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.a = load ptr, ptr %1, align 8, !tbaa !119, !noalias !295 ; 3 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = shl nsw i64 %i.d, 3
  %i.f = zext i32 %3 to i64                       ; 2 uses
  %i.g = add nsw i64 %i.e, %i.f                   ; 5 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.g, 6
  br label %_ZNSt3__16vectorIbNS_9allocatorIbEEE21__const_iterator_castB8ne180100ENS_14__bit_iteratorIS3_Lb1ELm0EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = add i64 %i.g, -63
  %i.k = sdiv i64 %i.j, 64
  br label %_ZNSt3__16vectorIbNS_9allocatorIbEEE21__const_iterator_castB8ne180100ENS_14__bit_iteratorIS3_Lb1ELm0EEE.exit

_ZNSt3__16vectorIbNS_9allocatorIbEEE21__const_iterator_castB8ne180100ENS_14__bit_iteratorIS3_Lb1ELm0EEE.exit: ; preds = %bb.b, %bb.c
  %.sink5.i.i.i = phi i64 [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.sink5.i.i.i ; 6 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !130, !alias.scope !296
  %i.n = trunc i64 %i.g to i32
  %i.o = and i32 %i.n, 63                         ; 5 uses
  store i32 %i.o, ptr %i.l, align 8, !tbaa !131, !alias.scope !296
  %i.p = add nuw nsw i64 %i.f, 1
  %i.q = lshr i64 %i.p, 6
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.q ; 5 uses
  %i.s = add i32 %3, 1
  %i.t = and i32 %i.s, 63                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !127  ; 3 uses
  %i.w = lshr i64 %i.v, 6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.y = icmp eq i32 %i.t, %i.o
  br i1 %i.y, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNSt3__16vectorIbNS_9allocatorIbEEE21__const_iterator_castB8ne180100ENS_14__bit_iteratorIS3_Lb1ELm0EEE.exit
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = and i64 %i.v, 63
  %i.ae = and i64 %i.g, 63                        ; 3 uses
  %i.af = sub nsw i64 %i.ad, %i.ae
  %i.ag = add i64 %i.ac, %i.af                    ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_ZNSt3__14copyB8ne180100INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0ELi0EEENS5_IS6_XT0_ELi0EEES8_S7_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub nuw nsw i32 64, %i.o
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.aj) ; 3 uses
  %i.ak = sub nuw nsw i64 %i.ag, %.sroa.speculated.i.i
  %i.al = shl nsw i64 -1, %i.ae
  %i.am = sub nuw nsw i64 %i.aj, %.sroa.speculated.i.i
  %i.an = lshr i64 -1, %i.am
  %i.ao = and i64 %i.an, %i.al                    ; 2 uses
  %i.ap = load i64, ptr %i.r, align 8, !tbaa !35, !noalias !297
  %i.aq = and i64 %i.ap, %i.ao
  %i.ar = xor i64 %i.ao, -1
  %i.as = load i64, ptr %i.m, align 8, !tbaa !35, !noalias !297
  %i.at = and i64 %i.as, %i.ar
  %i.au = or i64 %i.at, %i.aq
  store i64 %i.au, ptr %i.m, align 8, !tbaa !35, !noalias !297
  %i.av = add nuw nsw i64 %.sroa.speculated.i.i, %i.ae
  %i.aw = lshr i64 %i.av, 6
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.m, %bb.e ], [ %i.ax, %bb.f ] ; 2 uses
  %.0.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.ak, %bb.f ] ; 3 uses
  %.sroa.024.0.i.i = phi ptr [ %i.r, %bb.e ], [ %i.ay, %bb.f ] ; 2 uses
  %i.az = lshr i64 %.0.i.i, 6                     ; 3 uses
  %i.ba = icmp samesign ult i64 %.0.i.i, 64
  br i1 %i.ba, label %_ZNSt3__16copy_nB8ne180100IPKmmPmTnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEET1_S5_T0_S8_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i.i = shl nuw nsw i64 %i.az, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.0.i, ptr align 8 %.sroa.024.0.i.i, i64 %.idx.i.i.i, i1 false), !noalias !297
  br label %_ZNSt3__16copy_nB8ne180100IPKmmPmTnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEET1_S5_T0_S8_.exit.i.i

_ZNSt3__16copy_nB8ne180100IPKmmPmTnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEET1_S5_T0_S8_.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bb = and i64 %.0.i.i, 63                     ; 2 uses
  %.not37.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not37.i.i, label %_ZNSt3__14copyB8ne180100INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0ELi0EEENS5_IS6_XT0_ELi0EEES8_S7_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16copy_nB8ne180100IPKmmPmTnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEET1_S5_T0_S8_.exit.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %i.az ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0.i.i, i64 %i.az
  %i.be = sub nuw nsw i64 64, %i.bb
  %i.bf = lshr i64 -1, %i.be                      ; 2 uses
  %i.bg = load i64, ptr %i.bd, align 8, !tbaa !35, !noalias !297
  %i.bh = and i64 %i.bg, %i.bf
  %i.bi = xor i64 %i.bf, -1
  %i.bj = load i64, ptr %i.bc, align 8, !tbaa !35, !noalias !297
  %i.bk = and i64 %i.bj, %i.bi
  %i.bl = or i64 %i.bk, %i.bh
  store i64 %i.bl, ptr %i.bc, align 8, !tbaa !35, !noalias !297
  br label %_ZNSt3__14copyB8ne180100INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0ELi0EEENS5_IS6_XT0_ELi0EEES8_S7_.exit

bb.j:                                             ; preds = %_ZNSt3__16vectorIbNS_9allocatorIbEEE21__const_iterator_castB8ne180100ENS_14__bit_iteratorIS3_Lb1ELm0EEE.exit
  %i.bm = trunc i64 %i.v to i32
  %i.bn = and i32 %i.bm, 63
  store ptr %i.m, ptr %4, align 8, !tbaa !130, !noalias !298
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.o, ptr %i.bo, align 8, !tbaa !131, !noalias !298
  call void @_ZNSt3__116__copy_unalignedB8ne180100INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0ELi0EEENS5_IS6_XT0_ELi0EEES8_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__bit_iterator.87") align 8 %5, ptr %i.r, i32 %i.t, ptr %i.x, i32 %i.bn, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(16) %4)
  br label %_ZNSt3__14copyB8ne180100INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0ELi0EEENS5_IS6_XT0_ELi0EEES8_S7_.exit

_ZNSt3__14copyB8ne180100INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0ELi0EEENS5_IS6_XT0_ELi0EEES8_S7_.exit: ; preds = %bb.d, %_ZNSt3__16copy_nB8ne180100IPKmmPmTnNS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueEiE4typeELi0EEET1_S5_T0_S8_.exit.i.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bp = load i64, ptr %i.u, align 8, !tbaa !127
  %i.bq = add i64 %i.bp, -1
  store i64 %i.bq, ptr %i.u, align 8, !tbaa !127
  ret void
}

declare void @_ZN4gdcm7Overlay14SetBitPositionEt(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.43) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35
  %i.c = shl i64 %i.b, 6
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ne180100Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt3__16vectorIbNS_9allocatorIbEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i: ; preds = %bb.b
  %i.f = add nsw i64 %1, -1
  %i.g = lshr i64 %i.f, 6
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #21 ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !119, !noalias !314 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !127, !noalias !315 ; 4 uses
  %i.n = lshr i64 %i.m, 3
  %.idx = and i64 %i.n, 2305843009213693944       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %i.p = trunc i64 %i.m to i32
  %i.q = and i32 %i.p, 63                         ; 2 uses
  %i.r = icmp ult i64 %i.m, 65
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i
  store i64 0, ptr %i.j, align 8, !tbaa !35
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorImEEEEDaRT_m.exit.i
  %i.s = add i64 %i.m, -1
  %i.t = lshr i64 %i.s, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t
  store i64 0, ptr %i.u, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = icmp samesign ne i64 %.idx, 0
  %i.w = icmp ne i32 %i.q, 0
  %.not3.i10.i.i.i.i.i = or i1 %i.v, %i.w
  br i1 %.not3.i10.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZNSt3__16vectorIbNS_9allocatorIbEEE18__construct_at_endINS_14__bit_iteratorIS3_Lb0ELm0EEES6_EEvT_T0_m.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEaSB8ne180100ERKS5_.exit.i.i.i.i.i
end_hunk_0
