Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15413
inline.NumDeleted: 5213
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN5boost2io6detail9feed_implIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEERNS_12basic_formatIT_T0_T1_EESF_T2_:bb.a

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %i.w = phi ptr [ %i.k, %.lr.ph.i ], [ %i.af, %bb.j ] ; 2 uses
  %i.x = phi ptr [ %i.j, %.lr.ph.i ], [ %i.ag, %bb.j ]
  %.020.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ah, %bb.j ] ; 2 uses
  %i.y = getelementptr inbounds nuw [136 x i8], ptr %i.w, i64 %.020.i ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !705
  %i.aa = load i32, ptr %i.e, align 4, !tbaa !683
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load i8, ptr %i.m, align 8, !tbaa !697, !range !82, !noundef !83
  %i.ae = trunc nuw i8 %i.ad to i1
  %spec.select.i.i.i = select i1 %i.ae, ptr %i.n, ptr null
  tail call void @_ZN5boost2io6detail3putIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEEvT2_RKNS1_11format_itemIT_T0_T1_EERNS_12basic_formatISC_SD_SE_E11string_typeERNSJ_20internal_streambuf_tEPSt6locale(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(132) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(81) %i.l, ptr noundef %spec.select.i.i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !664
  %.pre22.i = load ptr, ptr %0, align 8, !tbaa !665
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %i.w, %bb.h ], [ %.pre22.i, %bb.i ] ; 2 uses
  %i.ag = phi ptr [ %i.x, %bb.h ], [ %.pre.i, %bb.i ] ; 2 uses
  %i.ah = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 136
  %i.am = icmp ult i64 %i.ah, %i.al
  br i1 %i.am, label %bb.h, label %_ZN5boost2io6detail10distributeIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEEvRNS_12basic_formatIT_T0_T1_EET2_.exit.loopexit, !llvm.loop !2876

_ZN5boost2io6detail10distributeIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEEvRNS_12basic_formatIT_T0_T1_EET2_.exit.loopexit: ; preds = %bb.j
  %.pre = load i32, ptr %i.e, align 4, !tbaa !683
  br label %_ZN5boost2io6detail10distributeIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEEvRNS_12basic_formatIT_T0_T1_EET2_.exit

_ZN5boost2io6detail10distributeIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEEvRNS_12basic_formatIT_T0_T1_EET2_.exit: ; preds = %_ZN5boost2io6detail10distributeIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEEvRNS_12basic_formatIT_T0_T1_EET2_.exit.loopexit, %.preheader.i, %bb.d
  %i.an = phi i32 [ %.pre, %_ZN5boost2io6detail10distributeIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEEvRNS_12basic_formatIT_T0_T1_EET2_.exit.loopexit ], [ %i.f, %.preheader.i ], [ %i.f, %bb.d ]
  %i.ao = add nsw i32 %i.an, 1                    ; 3 uses
  store i32 %i.ao, ptr %i.e, align 4, !tbaa !683
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !692
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !693
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !692 ; 2 uses
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = zext i32 %i.at to i64
  %i.ba = sub nsw i64 0, %i.az
  %.not = icmp eq i64 %i.ay, %i.ba
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_ZN5boost2io6detail10distributeIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEEvRNS_12basic_formatIT_T0_T1_EET2_.exit
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !684 ; 2 uses
  %i.bc = icmp slt i32 %i.ao, %i.bb
  br i1 %i.bc, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bd = sext i32 %i.ao to i64
  %wide.trip.count = sext i32 %i.bb to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.be = trunc nsw i64 %indvars.iv to i32
  %i.bf = sdiv i32 %i.be, 64
  %.sext = sext i32 %i.bf to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.sext
  %i.bh = and i64 %indvars.iv, -9223372036854775745
  %i.bi = icmp ugt i64 %i.bh, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bi, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bg, i64 %storemerge.idx.i.i.i.i.i
  %i.bj = and i64 %indvars.iv, 63
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !92
  %i.bm = and i64 %i.bl, %i.bk
  %.not12 = icmp eq i64 %i.bm, 0
  br i1 %.not12, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bn = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.bn, ptr %i.e, align 4, !tbaa !683
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !2877

.critedge:                                        ; preds = %.lr.ph, %bb.k, %.preheader, %_ZN5boost2io6detail10distributeIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEEvRNS_12basic_formatIT_T0_T1_EET2_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(224) ptr @_ZN5boost12basic_formatIcSt11char_traitsIcESaIcEE5clearEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !664  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !665    ; 2 uses
  %.not19 = icmp eq ptr %i.b, %i.c
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !683
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 0, ptr %i.h, align 4, !tbaa !691
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !692
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !693
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !692  ; 2 uses
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = shl nsw i64 %i.q, 3
  %i.s = zext i32 %i.m to i64
  %i.t = sub nsw i64 0, %i.s
  %.not = icmp eq i64 %i.r, %i.t
  br i1 %.not, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !684  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph17.preheader, label %.critedge2

.lr.ph17.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %.lr.ph17

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.x = phi ptr [ %i.c, %.lr.ph ], [ %i.av, %bb.e ] ; 3 uses
  %i.y = phi ptr [ %i.b, %.lr.ph ], [ %i.aw, %bb.e ]
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %bb.e ] ; 3 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !692
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !693
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !692 ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = zext i32 %i.aa to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw [136 x i8], ptr %i.x, i64 %.016
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !705 ; 3 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = lshr i32 %i.ak, 6
  %.zext = zext nneg i32 %i.am to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.zext
  %i.ao = and i32 %i.ak, 63
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !92
  %i.as = and i64 %i.ar, %i.aq
  %.not15 = icmp eq i64 %i.as, 0
  br i1 %.not15, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.d
  %i.at = getelementptr inbounds nuw [136 x i8], ptr %i.x, i64 %.016
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef 0, i8 noundef signext 0)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !664
  %.pre21 = load ptr, ptr %0, align 8, !tbaa !665
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %i.av = phi ptr [ %i.x, %bb.d ], [ %.pre21, %.critedge ] ; 2 uses
  %i.aw = phi ptr [ %i.y, %bb.d ], [ %.pre, %.critedge ] ; 2 uses
  %i.ax = add nuw i64 %.016, 1                    ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 136
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.b, label %._crit_edge, !llvm.loop !2881

.lr.ph17:                                         ; preds = %.lr.ph17.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph17.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %1 = trunc nsw i64 %indvars.iv to i32
  %2 = sdiv i32 %1, 64
  %.sext = sext i32 %2 to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.sext
  %i.be = and i64 %indvars.iv, 63
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = load i64, ptr %i.bd, align 8, !tbaa !92
  %i.bh = and i64 %i.bg, %i.bf
  %.not14 = icmp eq i64 %i.bh, 0
  br i1 %.not14, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %.lr.ph17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.bi, ptr %i.g, align 4, !tbaa !683
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph17, !llvm.loop !2882

.critedge2:                                       ; preds = %.lr.ph17, %bb.f, %.preheader, %._crit_edge
  ret ptr %0
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN5boost15throw_exceptionINS_2io13too_many_argsEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 72) #38 ; 3 uses
  invoke void @_ZN5boost10wrapexceptINS_2io13too_many_argsEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptINS_2io13too_many_argsEEE, ptr nonnull @_ZN5boost10wrapexceptINS_2io13too_many_argsEED2Ev) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #38
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost2io6detail3putIcSt11char_traitsIcESaIcERKNS1_10put_holderIcS4_EEEEvT2_RKNS1_11format_itemIT_T0_T1_EERNS_12basic_formatISC_SD_SE_E11string_typeERNSJ_20internal_streambuf_tEPSt6locale(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(81) %3, ptr noundef %4) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.boost::io::basic_oaltstringstream", align 8 ; 30 uses
  %6 = alloca %"class.std::locale", align 8       ; 2 uses
  %7 = alloca %"class.boost::io::basic_oaltstringstream", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @_ZN5boost2io22basic_oaltstringstreamIcSt11char_traitsIcESaIcEEC1EPNS0_18basic_altstringbufIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %3)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %5, align 8, !tbaa !136
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.e
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %6, ptr noundef nonnull align 8 dereferenceable(264) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #38
  br label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = load ptr, ptr %5, align 8, !tbaa !136
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %5, i64 %i.k
  invoke void @_ZNK5boost2io6detail19stream_format_stateIcSt11char_traitsIcEE8apply_onERSt9basic_iosIcS4_EPSt6locale(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(264) %i.l, ptr noundef %4)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !538
  %i.o = load ptr, ptr %0, align 8, !tbaa !537
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.o)
          to label %_ZN5boost2io6detail8put_headIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit unwind label %bb.d, !inline_history !2883

_ZN5boost2io6detail8put_headIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit: ; preds = %bb.f
  %i.p = load ptr, ptr %5, align 8, !tbaa !136
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %5, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !738  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !661  ; 8 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %_ZN5boost2io6detail8put_headIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit
  %i.x = and i32 %i.u, 16
  %i.y = icmp ne i32 %i.x, 0
  %i.z = icmp ne i64 %i.w, 0
  %i.aa = and i1 %i.y, %i.z
  br i1 %i.aa, label %bb.z, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.ab = icmp sgt i64 %i.w, 0
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %5, align 8, !tbaa !136
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %5, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %i.ag, align 8, !tbaa !661
  br label %bb.j

bb.i:                                             ; preds = %bb.bv, %bb.bu, %bb.z, %bb.j, %_ZN5boost2io6detail8put_headIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !539
  %i.ak = load ptr, ptr %0, align 8, !tbaa !537
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.ak)
          to label %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit unwind label %bb.i, !inline_history !2884

_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit: ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !732 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !720
  %i.ap = and i32 %i.ao, 2
  %.not104 = icmp eq i32 %i.ap, 0
  %.pre = load ptr, ptr %5, align 8, !tbaa !136   ; 4 uses
  br i1 %.not104, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit141, label %bb.k

bb.k:                                             ; preds = %_ZN5boost2io6detail8put_lastIcSt11char_traitsIcEEEvRSt13basic_ostreamIT_T0_ERKNS1_10put_holderIS6_S7_EE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !700
  %i.as = icmp eq ptr %i.ar, %i.am
  br i1 %i.as, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit133._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i8, ptr %i.am, align 1, !tbaa !91
  %i.au = getelementptr i8, ptr %.pre, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %5, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 240
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !283 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i:  ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !288
  %.not.i1.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i1.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 100
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !91
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ay)
          to label %.noexc124 unwind label %bb.t

.noexc124:                                        ; preds = %bb.n
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !136
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke noundef signext i8 %i.bf(ptr noundef nonnull align 8 dereferenceable(570) %i.ay, i8 noundef signext 43)
          to label %.noexc124._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit_crit_edge unwind label %bb.t, !inline_history !2885

.noexc124._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit_crit_edge: ; preds = %.noexc124
  %.pre235.pre = load ptr, ptr %5, align 8, !tbaa !136
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit: ; preds = %.noexc124._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit_crit_edge, %bb.m
  %.pre235 = phi ptr [ %.pre, %bb.m ], [ %.pre235.pre, %.noexc124._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit_crit_edge ] ; 3 uses
  %.0.i.i = phi i8 [ %i.bc, %bb.m ], [ %i.bg, %.noexc124._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit_crit_edge ]
  %.not105 = icmp eq i8 %i.at, %.0.i.i
  br i1 %.not105, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit141, label %bb.o

bb.o:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit
  %i.bh = load i8, ptr %i.am, align 1, !tbaa !91
  %i.bi = getelementptr i8, ptr %.pre235, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %5, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 240
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !283 ; 6 uses
  %.not.i.i126 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i126, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i127

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i127: ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !288
end_hunk_0
