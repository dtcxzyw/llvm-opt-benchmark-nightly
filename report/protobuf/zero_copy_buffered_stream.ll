inline.NumInlined: 136
inline.NumDeleted: 81
begin_hunk_0_@_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13BufferAtLeastEm:bb.a
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %.0.i.i, i64 noundef %.sroa.010.0.i.i) #13
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = sub nuw i64 %.sroa.010.0.i.i, %.0.i.i
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.f, label %bb.al

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.d, align 8, !tbaa !22
  %i.x = sub i64 %i.j, %i.w
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.010.0.i.i19 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.010.0.copyload.i.i, %bb.f ] ; 3 uses
  %.0.i.i21 = phi i64 [ %i.x, %bb.g ], [ %i.j, %bb.f ] ; 3 uses
  %i.ad = icmp ugt i64 %.0.i.i21, %.sroa.010.0.i.i19
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %.0.i.i21, i64 noundef %.sroa.010.0.i.i19) #13
          to label %.noexc25 unwind label %bb.t

.noexc25:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = icmp eq i64 %.sroa.010.0.i.i19, %.0.i.i21
  br i1 %i.ae, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.g, align 4, !tbaa !34  ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.g, align 4, !tbaa !34
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %bb.l, label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit

bb.l:                                             ; preds = %bb.k
  store i64 %i.j, ptr %i.d, align 8, !tbaa !22
  br label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit

_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit: ; preds = %bb.l, %bb.k
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 76 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !34 ; 2 uses
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !34
  %i.al = icmp sgt i32 %i.aj, 1
  br i1 %i.al, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !20, !range !21, !noundef !33
  %i.ao = trunc nuw i8 %i.an to i1
  %.not4.i.i.i = xor i1 %i.ao, true
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.aq = load i8, ptr %i.ap, align 8, !range !21
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i.i.i = select i1 %.not4.i.i.i, i1 true, i1 %i.ar
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !23 ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !46
  %.neg79 = add i64 %i.az, %i.aw
  %i.bc = add i64 %i.bb, %i.ax
  %i.bd = sub i64 %.neg79, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !7
  %storemerge.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.bf, i64 %i.bd)
  store i64 %storemerge.i.i.i, ptr %i.be, align 8, !tbaa !7
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.o
  store ptr %i.av, ptr %i.at, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i:          ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i, %bb.o
  store i8 0, ptr %i.am, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit, %bb.m, %bb.n, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i
  store ptr %1, ptr %3, align 8, !tbaa !43
  %i.bg = load i32, ptr %i.g, align 4, !tbaa !34  ; 5 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.g, align 4, !tbaa !34
  %i.bi = icmp eq i32 %i.bg, 0
  br i1 %i.bi, label %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit.thread, label %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit

_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit.thread: ; preds = %bb.p
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.bj, ptr %i.d, align 8, !tbaa !22
  store i32 %i.bg, ptr %i.g, align 4, !tbaa !34
  br label %bb.q

_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit: ; preds = %bb.p
  store i32 %i.bg, ptr %i.g, align 4, !tbaa !34
  %i.bk = icmp sgt i32 %i.bg, 0
  br i1 %i.bk, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit.thread, %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit
  %i.bl = load i8, ptr %i.c, align 8, !tbaa !20, !range !21, !noundef !33
  %i.bm = trunc nuw i8 %i.bl to i1
  %.not4.i.i = xor i1 %i.bm, true
  %i.bn = load i8, ptr %i.h, align 8, !range !21
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond.i.i = select i1 %.not4.i.i, i1 true, i1 %i.bo
  br i1 %or.cond.i.i, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !24  ; 2 uses
  %i.bq = load ptr, ptr %i.e, align 8, !tbaa !23  ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !22
  %i.bu = add i64 %i.bt, %i.br
  %i.bv = add i64 %.sroa.010.0.copyload.i.i, %i.bs
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !7
  %storemerge.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.bx, i64 %i.bw)
  store i64 %storemerge.i.i, ptr %i.a, align 8, !tbaa !7
  %.not.i.i.i.i = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.r
  store ptr %i.bq, ptr %i.f, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.r
  store i8 0, ptr %i.c, align 8, !tbaa !20
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit

bb.s:                                             ; preds = %bb.d
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.t:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit: ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i, %bb.q, %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit, %bb.j
  %i.ca = phi ptr [ %1, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i ], [ %1, %bb.q ], [ %1, %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit ], [ %i.i, %bb.j ] ; 10 uses
  %i.cb = invoke noundef zeroext i1 @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9ReadChunkEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit
  br i1 %i.cb, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %4, i64 14, ptr nonnull @.str)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cc = load i64, ptr %4, align 8, !tbaa !27    ; 2 uses
  store i64 %i.cc, ptr %0, align 8, !tbaa !27
  store i64 55, ptr %4, align 8, !tbaa !27
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.x, label %_ZN4absl12lts_202505126StatusD2Ev.exit, !prof !47

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14BufferingGuardEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSA_.exit unwind label %.body

.body:                                            ; preds = %bb.x
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #16
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  br label %bb.ac

_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14BufferingGuardEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSA_.exit: ; preds = %bb.x
  %.pre = load i64, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.cf = trunc i64 %.pre to i1
  br i1 %i.cf, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14BufferingGuardEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSA_.exit
  %5 = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #17
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.w, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14BufferingGuardEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSA_.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60

bb.aa:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ab:                                            ; preds = %bb.v
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.body, %bb.ab
  %.pn11 = phi { ptr, i32 } [ %i.ce, %.body ], [ %i.cj, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.at

bb.ad:                                            ; preds = %bb.u
  %i.ck = load i32, ptr %i.g, align 4, !tbaa !34  ; 2 uses
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.g, align 4, !tbaa !34
  %i.cm = icmp eq i32 %i.ck, 0
  br i1 %i.cm, label %bb.ae, label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.cn, ptr %i.d, align 8, !tbaa !22
  br label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28

_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28: ; preds = %bb.ae, %bb.ad
  %.not.i.i29 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i29, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 76 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !34 ; 2 uses
  %i.cq = add nsw i32 %i.cp, -1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !34
  %i.cr = icmp sgt i32 %i.cp, 1
  br i1 %i.cr, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !20, !range !21, !noundef !33
  %i.cu = trunc nuw i8 %i.ct to i1
  %.not4.i.i.i30 = xor i1 %i.cu, true
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cw = load i8, ptr %i.cv, align 8, !range !21
  %i.cx = trunc nuw i8 %i.cw to i1
  %or.cond.i.i.i31 = select i1 %.not4.i.i.i30, i1 true, i1 %i.cx
  br i1 %or.cond.i.i.i31, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !24 ; 2 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !23 ; 3 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.df = load i64, ptr %i.de, align 8, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !46
  %.neg87 = add i64 %i.df, %i.dc
  %i.di = add i64 %i.dh, %i.dd
  %i.dj = sub i64 %.neg87, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ca, i64 56 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !7
  %storemerge.i.i.i33 = tail call i64 @llvm.usub.sat.i64(i64 %i.dl, i64 %i.dj)
  store i64 %storemerge.i.i.i33, ptr %i.dk, align 8, !tbaa !7
  %.not.i.i.i.i.i34 = icmp eq ptr %i.da, %i.db
  br i1 %.not.i.i.i.i.i34, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i35

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i35: ; preds = %bb.ah
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36:        ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i35, %bb.ah
  store i8 0, ptr %i.cs, align 8, !tbaa !20
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28, %bb.af, %bb.ag, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36
  store ptr %1, ptr %3, align 8, !tbaa !43
  %i.dm = load i32, ptr %i.g, align 4, !tbaa !34  ; 5 uses
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.g, align 4, !tbaa !34
  %i.do = icmp eq i32 %i.dm, 0
  br i1 %i.do, label %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39.thread, label %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39

_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39.thread: ; preds = %bb.ai
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.dp, ptr %i.d, align 8, !tbaa !22
  store i32 %i.dm, ptr %i.g, align 4, !tbaa !34
  br label %bb.aj

_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39: ; preds = %bb.ai
  store i32 %i.dm, ptr %i.g, align 4, !tbaa !34
  %i.dq = icmp sgt i32 %i.dm, 0
  br i1 %i.dq, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge, label %bb.aj

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge: ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39, %bb.aj, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48, !llvm.loop !48

bb.aj:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39.thread, %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39
  %i.dr = load i8, ptr %i.c, align 8, !tbaa !20, !range !21, !noundef !33
  %i.ds = trunc nuw i8 %i.dr to i1
  %.not4.i.i41 = xor i1 %i.ds, true
  %i.dt = load i8, ptr %i.h, align 8, !range !21
  %i.du = trunc nuw i8 %i.dt to i1
  %or.cond.i.i42 = select i1 %.not4.i.i41, i1 true, i1 %i.du
  br i1 %or.cond.i.i42, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !24  ; 2 uses
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !23  ; 3 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = load i64, ptr %i.d, align 8, !tbaa !22
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !46
  %.neg90 = add i64 %i.dz, %i.dx
  %i.eb = add i64 %i.ea, %i.dy
  %i.ec = sub i64 %.neg90, %i.eb
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !7
  %storemerge.i.i44 = tail call i64 @llvm.usub.sat.i64(i64 %i.ed, i64 %i.ec)
  store i64 %storemerge.i.i44, ptr %i.a, align 8, !tbaa !7
  %.not.i.i.i.i45 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not.i.i.i.i45, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i46

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i46:  ; preds = %bb.ak
  store ptr %i.dw, ptr %i.f, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47:          ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i46, %bb.ak
  store i8 0, ptr %i.c, align 8, !tbaa !20
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge

bb.al:                                            ; preds = %bb.e
  %i.ee = load i32, ptr %i.g, align 4, !tbaa !34  ; 4 uses
  %i.ef = add nsw i32 %i.ee, 1                    ; 4 uses
  store i32 %i.ef, ptr %i.g, align 4, !tbaa !34
  %i.eg = icmp eq i32 %i.ee, 0
  br i1 %i.eg, label %.thread74, label %bb.am

.thread74:                                        ; preds = %bb.al
  store i64 %i.j, ptr %i.d, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.eh, align 8, !tbaa !43
  store i64 1, ptr %0, align 8, !tbaa !27
  store i32 %i.ef, ptr %i.g, align 4, !tbaa !34
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60

bb.am:                                            ; preds = %bb.al
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ei, align 8, !tbaa !43
  %i.ej = add nsw i32 %i.ee, 2
  store i32 %i.ej, ptr %i.g, align 4, !tbaa !34
  %i.ek = icmp eq i32 %i.ef, 0
  br i1 %i.ek, label %.thread75, label %bb.an

.thread75:                                        ; preds = %bb.am
  store i64 %i.j, ptr %i.d, align 8, !tbaa !22
  store i64 1, ptr %0, align 8, !tbaa !27
  store i32 0, ptr %i.g, align 4, !tbaa !34
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i64 1, ptr %0, align 8, !tbaa !27
  store i32 %i.ef, ptr %i.g, align 4, !tbaa !34
  %i.el = icmp sgt i32 %i.ee, -1
  br i1 %i.el, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60, label %bb.ao

bb.ao:                                            ; preds = %.thread75, %bb.an
  %.not4.i.i53 = xor i1 %i.l, true
  %i.em = load i8, ptr %i.h, align 8, !range !21
  %i.en = trunc nuw i8 %i.em to i1
  %or.cond.i.i54 = select i1 %.not4.i.i53, i1 true, i1 %i.en
  br i1 %or.cond.i.i54, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eo = load ptr, ptr %i.f, align 8, !tbaa !24  ; 2 uses
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !23  ; 3 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = load i64, ptr %i.d, align 8, !tbaa !22
  %i.et = add i64 %i.es, %i.eq
  %i.eu = add i64 %.sroa.010.0.copyload.i.i, %i.er
  %i.ev = sub i64 %i.et, %i.eu
  %storemerge.i.i56 = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.ev)
  store i64 %storemerge.i.i56, ptr %i.a, align 8, !tbaa !7
  %.not.i.i.i.i57 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i.i.i.i57, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i58

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i58:  ; preds = %bb.ap
  store ptr %i.ep, ptr %i.f, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59:          ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i58, %bb.ap
  store i8 0, ptr %i.c, align 8, !tbaa !20
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60: ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59, %bb.ao, %bb.an, %.thread74, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.ew = phi ptr [ %i.i, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59 ], [ %i.i, %bb.ao ], [ %i.i, %bb.an ], [ %i.i, %.thread74 ], [ %i.ca, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 9 uses
  %.not.i61 = icmp eq ptr %i.ew, null
  br i1 %.not.i61, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69, label %bb.aq

bb.aq:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 76 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !34 ; 2 uses
  %i.ez = add nsw i32 %i.ey, -1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !34
  %i.fa = icmp sgt i32 %i.ey, 1
  br i1 %i.fa, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 48 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !20, !range !21, !noundef !33
  %i.fd = trunc nuw i8 %i.fc to i1
  %.not4.i.i62 = xor i1 %i.fd, true
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.ff = load i8, ptr %i.fe, align 8, !range !21
  %i.fg = trunc nuw i8 %i.ff to i1
  %or.cond.i.i63 = select i1 %.not4.i.i62, i1 true, i1 %i.fg
  br i1 %or.cond.i.i63, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !24 ; 2 uses
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !23 ; 3 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !22
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !46
  %.neg84 = add i64 %i.fo, %i.fl
  %i.fr = add i64 %i.fq, %i.fm
  %i.fs = sub i64 %.neg84, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ew, i64 56 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !7
  %storemerge.i.i65 = call i64 @llvm.usub.sat.i64(i64 %i.fu, i64 %i.fs)
  store i64 %storemerge.i.i65, ptr %i.ft, align 8, !tbaa !7
  %.not.i.i.i.i66 = icmp eq ptr %i.fj, %i.fk
  br i1 %.not.i.i.i.i66, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i67

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i67:  ; preds = %bb.as
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68:          ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i67, %bb.as
  store i8 0, ptr %i.fb, align 8, !tbaa !20
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69: ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60, %bb.aq, %bb.ar, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.at:                                            ; preds = %bb.ac, %bb.aa, %bb.t, %bb.s
  %.pn13.pn = phi { ptr, i32 } [ %i.bz, %bb.t ], [ %.pn11, %bb.ac ], [ %i.ci, %bb.aa ], [ %i.by, %bb.s ]
  call void @_ZN6google8protobuf13json_internal14BufferingGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn13.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13json_internal14BufferingGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34   ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !34
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !20, !range !21, !noundef !33
  %i.h = trunc nuw i8 %i.g to i1
  %.not4.i = xor i1 %i.h, true
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load i8, ptr %i.i, align 8, !range !21
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %.not4.i, i1 true, i1 %i.k
  br i1 %or.cond.i, label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46
  %.neg2 = add i64 %i.s, %i.p
  %i.v = add i64 %i.u, %i.q
  %i.w = sub i64 %.neg2, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !7
  %storemerge.i = tail call i64 @llvm.usub.sat.i64(i64 %i.y, i64 %i.w)
  store i64 %storemerge.i, ptr %i.x, align 8, !tbaa !7
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i

_ZNSt6vectorIcSaIcEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i, %bb.d
  store i8 0, ptr %i.f, align 8, !tbaa !20
  br label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit

_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit: ; preds = %bb.b, %bb.c, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream16BufferAtLeastOneEv(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !19
  %i.h = load i8, ptr %i.c, align 8, !tbaa !20, !range !21, !noundef !33
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8, !tbaa !22
  %i.k = sub i64 %i.g, %i.j
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0.i.i = phi i64 [ %i.p, %bb.c ], [ %.sroa.010.0.copyload.i.i, %bb.b ] ; 3 uses
  %.0.i.i = phi i64 [ %i.k, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.q = icmp ugt i64 %.0.i.i, %.sroa.010.0.i.i
  br i1 %i.q, label %bb.e, label %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %.0.i.i, i64 noundef %.sroa.010.0.i.i) #13
  unreachable

_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit: ; preds = %bb.d
  %i.r = icmp eq i64 %.sroa.010.0.i.i, %.0.i.i
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit
  %i.s = tail call noundef zeroext i1 @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9ReadChunkEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.s, label %bb.b, label %bb.g, !llvm.loop !49

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 14, ptr nonnull @.str)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit
  store i64 1, ptr %0, align 8, !tbaa !27, !alias.scope !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !34
  %i.d = icmp sgt i32 %i.b, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !33
  %i.g = trunc nuw i8 %i.f to i1
  %.not4 = xor i1 %i.g, true
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !21
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond = select i1 %.not4, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46
  %.neg8 = add i64 %i.r, %i.o
  %i.u = add i64 %i.t, %i.p
  %i.v = sub i64 %.neg8, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !7
  %storemerge = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 %i.v)
  store i64 %storemerge, ptr %i.w, align 8, !tbaa !7
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  store ptr %i.n, ptr %i.l, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %bb.c, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  store i8 0, ptr %i.e, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %_ZNSt6vectorIcSaIcEE5clearEv.exit
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
end_hunk_0
