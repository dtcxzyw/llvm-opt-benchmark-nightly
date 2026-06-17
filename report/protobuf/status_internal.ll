inline.NumInlined: 591
inline.NumDeleted: 315
begin_hunk_0_@_ZNK4absl12lts_2025051215status_internal9StatusRep8ToStringB5cxx11ENS0_18StatusToStringModeE:bb.a

.lr.ph.i:                                         ; preds = %bb.f
  %i.ab = ptrtoint ptr %.fr18.i to i64
  %i.ac = urem i64 %i.ab, 13
  %i.ad = icmp samesign ugt i64 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %.fr18.i, i64 8 ; 3 uses
  br i1 %i.ad, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.preheader.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.af = lshr i64 %i.z, 1
  br label %.lr.ph.split.us.i

.thread.i:                                        ; preds = %bb.f
  %.not1521.i = icmp samesign ult i64 %i.z, 2
  br i1 %.not1521.i, label %_ZNK4absl12lts_2025051215status_internal9StatusRep14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit, label %.lr.ph.thread.i

.lr.ph.thread.i:                                  ; preds = %.thread.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.fr18.i, i64 8
  br label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.thread.i, %.lr.ph.i
  %i.ah = phi ptr [ %i.ag, %.lr.ph.thread.i ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.noexc
  %i.ai = phi i64 [ %i.aw, %.noexc ], [ %i.af, %.lr.ph.split.us.i.preheader ]
  %i.aj = phi i64 [ %i.av, %.noexc ], [ %i.z, %.lr.ph.split.us.i.preheader ]
  %.014.us.i = phi i64 [ %i.au, %.noexc ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.ak = xor i64 %.014.us.i, -1
  %i.al = trunc i64 %i.aj to i1
  %i.am = load ptr, ptr %i.ae, align 8
  %i.an = select i1 %i.al, ptr %i.am, ptr %i.ae
  %i.ao = getelementptr [48 x i8], ptr %i.an, i64 %i.ai
  %i.ap = getelementptr [48 x i8], ptr %i.ao, i64 %i.ak ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  invoke fastcc void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNKS0_15status_internal9StatusRep8ToStringB5cxx11ENS0_18StatusToStringModeEE3$_0vJSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nonnull %7, i64 %i.as, ptr %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %.noexc unwind label %.loopexit, !inline_history !53

.noexc:                                           ; preds = %.lr.ph.split.us.i
  %i.au = add nuw nsw i64 %.014.us.i, 1           ; 2 uses
  %i.av = load i64, ptr %.fr18.i, align 8, !tbaa !10 ; 2 uses
  %i.aw = lshr i64 %i.av, 1                       ; 2 uses
  %i.ax = icmp samesign ult i64 %i.au, %i.aw
  br i1 %i.ax, label %.lr.ph.split.us.i, label %_ZNK4absl12lts_2025051215status_internal9StatusRep14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit, !llvm.loop !47

.lr.ph.split.i:                                   ; preds = %.noexc14, %.lr.ph.split.preheader.i
  %i.ay = phi i64 [ %i.bi, %.noexc14 ], [ %i.z, %.lr.ph.split.preheader.i ]
  %.014.i = phi i64 [ %i.bh, %.noexc14 ], [ 0, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.az = trunc i64 %i.ay to i1
  %i.ba = load ptr, ptr %i.ah, align 8
  %i.bb = select i1 %i.az, ptr %i.ba, ptr %i.ah
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.bb, i64 %.014.i ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  invoke fastcc void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNKS0_15status_internal9StatusRep8ToStringB5cxx11ENS0_18StatusToStringModeEE3$_0vJSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nonnull %7, i64 %i.bf, ptr %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %.noexc14 unwind label %.loopexit.split-lp, !inline_history !53

.noexc14:                                         ; preds = %.lr.ph.split.i
  %i.bh = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %i.bi = load i64, ptr %.fr18.i, align 8, !tbaa !10 ; 2 uses
  %i.bj = lshr i64 %i.bi, 1
  %i.bk = icmp samesign ult i64 %i.bh, %i.bj
  br i1 %i.bk, label %.lr.ph.split.i, label %_ZNK4absl12lts_2025051215status_internal9StatusRep14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit, !llvm.loop !47

_ZNK4absl12lts_2025051215status_internal9StatusRep14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit: ; preds = %.noexc14, %.noexc, %.thread.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.h:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bn = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.h
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !16
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.g ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.bm, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit:                                        ; preds = %.lr.ph.split.us.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %.lr.ph.split.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn11 = phi { ptr, i32 } [ %lpad.phi, %bb.j ], [ %i.bs, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK4absl12lts_2025051215status_internal9StatusRep14ForEachPayloadENS0_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEE.exit
  ret void

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.k ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  %i.bt = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.b
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.m
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !16
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  resume { ptr, i32 } %.pn11.pn
}

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN4absl12lts_2025051218StatusCodeToStringB5cxx11ENS0_10StatusCodeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4absl12lts_2025051215status_internal23GetStatusPayloadPrinterB5cxx11Ev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051215status_internal9StatusRepeqERKS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::InlinedVector", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !12
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.n, ptr %i.m, i64 %i.h)
  %.not85 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not85, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !7    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !7    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 0, ptr %2, align 8, !tbaa !28
  %.not45 = icmp eq ptr %i.p, null                ; 2 uses
  %i.s = select i1 %.not45, ptr %2, ptr %i.p      ; 2 uses
  %.not46 = icmp eq ptr %i.r, null                ; 2 uses
  %i.t = select i1 %.not46, ptr %2, ptr %i.r      ; 2 uses
  %i.u = load i64, ptr %i.s, align 8, !tbaa !10   ; 3 uses
  %i.v = lshr i64 %i.u, 1
  %i.w = load i64, ptr %i.t, align 8, !tbaa !10   ; 3 uses
  %i.x = lshr i64 %i.w, 1
  %i.y = icmp samesign ult i64 %i.v, %i.x         ; 5 uses
  %i.z = select i1 %i.y, i64 %i.w, i64 %i.u       ; 2 uses
  %3 = lshr i64 %i.z, 1                           ; 3 uses
  %4 = select i1 %i.y, i64 %i.u, i64 %i.w
  %i.aa = lshr i64 %4, 1
  %i.ab = sub nsw i64 %3, %i.aa
  %i.ac = icmp ugt i64 %i.ab, 1
  br i1 %i.ac, label %.thread69, label %bb.d

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57
  %i.ad = trunc i64 %i.z to i1
  %.sroa.sel.v.sroa.sel.v = select i1 %.not46, ptr %2, ptr %i.r
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v, i64 8 ; 2 uses
  %.sroa.sel133.v = select i1 %.not45, ptr %2, ptr %i.p
  %.sroa.sel133 = getelementptr inbounds nuw i8, ptr %.sroa.sel133.v, i64 8 ; 2 uses
  %spec.select.sroa.sel = select i1 %i.y, ptr %.sroa.sel.v.sroa.sel, ptr %.sroa.sel133 ; 2 uses
  %i.ae = load ptr, ptr %spec.select.sroa.sel, align 8
  %i.af = select i1 %i.ad, ptr %i.ae, ptr %spec.select.sroa.sel ; 2 uses
  %.idx = mul nuw nsw i64 %3, 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %.not4792 = icmp eq i64 %3, 0
  br i1 %.not4792, label %.thread69, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.d
  %spec.select84.sroa.sel = select i1 %i.y, ptr %.sroa.sel133, ptr %.sroa.sel.v.sroa.sel ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph95, %.thread76
  %.04093 = phi ptr [ %i.af, %.lr.ph95 ], [ %i.ca, %.thread76 ] ; 5 uses
  %.val = load i64, ptr %i.s, align 8
  %.val116 = load i64, ptr %i.t, align 8
  %i.ah = select i1 %i.y, i64 %.val, i64 %.val116 ; 2 uses
  %i.ai = trunc i64 %i.ah to i1
  %i.aj = load ptr, ptr %spec.select84.sroa.sel, align 8
  %i.ak = select i1 %i.ai, ptr %i.aj, ptr %spec.select84.sroa.sel ; 3 uses
  %i.al = lshr i64 %i.ah, 1                       ; 2 uses
  %.idx98 = mul nuw nsw i64 %i.al, 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx98 ; 2 uses
  %.not4888 = icmp eq i64 %i.al, 0
  br i1 %.not4888, label %.thread69, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.04093, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !17
  %.fr99 = freeze i64 %i.ao                       ; 3 uses
  %i.ap = icmp eq i64 %.fr99, 0
  br i1 %i.ap, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58.us
  %.04489.us = phi ptr [ %i.at, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58.us ], [ %i.ak, %.lr.ph ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.04489.us, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !17
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58.us: ; preds = %.lr.ph.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %.04489.us, i64 48 ; 2 uses
  %.not48.us = icmp eq ptr %i.at, %i.am
  br i1 %.not48.us, label %.thread69, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58
  %.04489 = phi ptr [ %i.bz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58 ], [ %i.ak, %.lr.ph ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04489, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !17
  %i.aw = icmp eq i64 %.fr99, %i.av
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.lr.ph.split
  %i.ax = load ptr, ptr %.04489, align 8, !tbaa !12
  %i.ay = load ptr, ptr %.04093, align 8, !tbaa !12
  %bcmp.i = call i32 @bcmp(ptr %i.ay, ptr %i.ax, i64 %.fr99)
  %i.az = icmp eq i32 %bcmp.i, 0
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.04489.us, %.lr.ph.split.us ], [ %.04489, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04093, i64 32 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32 ; 3 uses
  %i.bc = load i128, ptr %i.ba, align 1
  %i.bd = load i128, ptr %i.bb, align 1
  %i.be = icmp ne i128 %i.bc, %i.bd
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.thread76, label %bb.f

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.bh = load i8, ptr %i.bb, align 1, !tbaa !16  ; 2 uses
  %i.bi = trunc i8 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.us-phi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !54
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.bm = sext i8 %i.bh to i64
  %i.bn = lshr exact i64 %i.bm, 1
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit.i.i

_ZNK4absl12lts_202505124Cord4sizeEv.exit.i.i:     ; preds = %bb.h, %bb.g
  %i.bo = phi i64 [ %i.bl, %bb.g ], [ %i.bn, %bb.h ] ; 2 uses
  %i.bp = load i8, ptr %i.ba, align 8, !tbaa !16  ; 2 uses
  %i.bq = trunc i8 %i.bp to i1
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.04093, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !54
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit9.i.i

bb.j:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit.i.i
  %i.bu = sext i8 %i.bp to i64
  %i.bv = lshr exact i64 %i.bu, 1
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit9.i.i

_ZNK4absl12lts_202505124Cord4sizeEv.exit9.i.i:    ; preds = %bb.j, %bb.i
  %i.bw = phi i64 [ %i.bt, %bb.i ], [ %i.bv, %bb.j ]
  %.not.i.i = icmp eq i64 %i.bw, %i.bo
  br i1 %.not.i.i, label %bb.k, label %.thread69

bb.k:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit9.i.i
  %i.bx = invoke noundef zeroext i1 @_ZNK4absl12lts_202505124Cord10EqualsImplERKS1_m(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 noundef %i.bo)
          to label %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit unwind label %bb.l

_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit:    ; preds = %bb.k
  br i1 %i.bx, label %.thread76, label %.thread69

bb.l:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.by

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58: ; preds = %.lr.ph.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.04489, i64 48 ; 2 uses
  %.not48 = icmp eq ptr %i.bz, %i.am
  br i1 %.not48, label %.thread69, label %.lr.ph.split

.thread76:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.04093, i64 48 ; 2 uses
  %.not47 = icmp eq ptr %i.ca, %i.ag
  br i1 %.not47, label %.thread69, label %bb.e

.thread69:                                        ; preds = %.thread76, %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit, %_ZNK4absl12lts_202505124Cord4sizeEv.exit9.i.i, %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58.us, %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57
  %.6 = phi i1 [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread57 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58.us ], [ true, %bb.d ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58 ], [ false, %_ZNK4absl12lts_202505124Cord4sizeEv.exit9.i.i ], [ true, %.thread76 ], [ false, %_ZN4absl12lts_20250512neERKNS0_4CordES3_.exit ], [ false, %bb.e ]
  %i.cb = load i64, ptr %2, align 8, !tbaa !10
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.thread69
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #19
  unreachable

_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EED2Ev.exit: ; preds = %.thread69, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.a, %_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EED2Ev.exit
  %.7 = phi i1 [ %.6, %_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EED2Ev.exit ], [ false, %bb.a ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.b ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !10
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK4absl12lts_2025051215status_internal9StatusRep13CloneAndUnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %i.b = load atomic i32, ptr %0 acquire, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr null, ptr %1, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7    ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZNSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %.noexc unwind label %bb.e     ; 6 uses

.noexc:                                           ; preds = %bb.c
  store i64 0, ptr %i.f, align 8, !tbaa !28, !noalias !58
  %i.g = load i64, ptr %i.e, align 8, !tbaa !10, !noalias !58
  %.not.i.i.i.i = icmp ult i64 %i.g, 2
end_hunk_0
