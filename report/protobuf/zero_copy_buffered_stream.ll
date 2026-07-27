inline.NumInlined: 136
inline.NumDeleted: 81
begin_hunk_0_@_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13BufferAtLeastEm:bb.a
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
  %i.cg = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cg)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #17
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.w, %_ZN4absl12lts_202505128StatusOrIN6google8protobuf13json_internal14BufferingGuardEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES5_T_EE5valueEiE4typeELi0EEEOSA_.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60

bb.aa:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ab:                                            ; preds = %bb.v
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.body, %bb.ab
  %.pn11 = phi { ptr, i32 } [ %i.ce, %.body ], [ %i.ck, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.at

bb.ad:                                            ; preds = %bb.u
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !34  ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.g, align 4, !tbaa !34
  %i.cn = icmp eq i32 %i.cl, 0
  br i1 %i.cn, label %bb.ae, label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28

bb.ae:                                            ; preds = %bb.ad
  %i.co = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.co, ptr %i.d, align 8, !tbaa !22
  br label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28

_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28: ; preds = %bb.ae, %bb.ad
  %.not.i.i29 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i29, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 76 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !34 ; 2 uses
  %i.cr = add nsw i32 %i.cq, -1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !34
  %i.cs = icmp sgt i32 %i.cq, 1
  br i1 %i.cs, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !20, !range !21, !noundef !33
  %i.cv = trunc nuw i8 %i.cu to i1
  %.not4.i.i.i30 = xor i1 %i.cv, true
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cx = load i8, ptr %i.cw, align 8, !range !21
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond.i.i.i31 = select i1 %.not4.i.i.i30, i1 true, i1 %i.cy
  br i1 %or.cond.i.i.i31, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !24 ; 2 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !23 ; 3 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !22
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !46
  %.neg87 = add i64 %i.dg, %i.dd
  %i.dj = add i64 %i.di, %i.de
  %i.dk = sub i64 %.neg87, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ca, i64 56 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !7
  %storemerge.i.i.i33 = tail call i64 @llvm.usub.sat.i64(i64 %i.dm, i64 %i.dk)
  store i64 %storemerge.i.i.i33, ptr %i.dl, align 8, !tbaa !7
  %.not.i.i.i.i.i34 = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i.i.i.i.i34, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i35

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i35: ; preds = %bb.ah
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36:        ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i35, %bb.ah
  store i8 0, ptr %i.ct, align 8, !tbaa !20
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit28, %bb.af, %bb.ag, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i36
  store ptr %1, ptr %3, align 8, !tbaa !43
  %i.dn = load i32, ptr %i.g, align 4, !tbaa !34  ; 5 uses
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.g, align 4, !tbaa !34
  %i.dp = icmp eq i32 %i.dn, 0
  br i1 %i.dp, label %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39.thread, label %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39

_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39.thread: ; preds = %bb.ai
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.dq, ptr %i.d, align 8, !tbaa !22
  store i32 %i.dn, ptr %i.g, align 4, !tbaa !34
  br label %bb.aj

_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39: ; preds = %bb.ai
  store i32 %i.dn, ptr %i.g, align 4, !tbaa !34
  %i.dr = icmp sgt i32 %i.dn, 0
  br i1 %i.dr, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge, label %bb.aj

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge: ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39, %bb.aj, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48, !llvm.loop !48

bb.aj:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39.thread, %_ZN6google8protobuf13json_internal14BufferingGuardaSERKS2_.exit39
  %i.ds = load i8, ptr %i.c, align 8, !tbaa !20, !range !21, !noundef !33
  %i.dt = trunc nuw i8 %i.ds to i1
  %.not4.i.i41 = xor i1 %i.dt, true
  %i.du = load i8, ptr %i.h, align 8, !range !21
  %i.dv = trunc nuw i8 %i.du to i1
  %or.cond.i.i42 = select i1 %.not4.i.i41, i1 true, i1 %i.dv
  br i1 %or.cond.i.i42, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = load ptr, ptr %i.f, align 8, !tbaa !24  ; 2 uses
  %i.dx = load ptr, ptr %i.e, align 8, !tbaa !23  ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = load i64, ptr %i.d, align 8, !tbaa !22
  %i.eb = load i64, ptr %i.b, align 8, !tbaa !46
  %.neg90 = add i64 %i.ea, %i.dy
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = sub i64 %.neg90, %i.ec
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !7
  %storemerge.i.i44 = tail call i64 @llvm.usub.sat.i64(i64 %i.ee, i64 %i.ed)
  store i64 %storemerge.i.i44, ptr %i.a, align 8, !tbaa !7
  %.not.i.i.i.i45 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not.i.i.i.i45, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i46

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i46:  ; preds = %bb.ak
  store ptr %i.dx, ptr %i.f, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i47:          ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i46, %bb.ak
  store i8 0, ptr %i.c, align 8, !tbaa !20
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge

bb.al:                                            ; preds = %bb.e
  %i.ef = load i32, ptr %i.g, align 4, !tbaa !34  ; 4 uses
  %i.eg = add nsw i32 %i.ef, 1                    ; 3 uses
  store i32 %i.eg, ptr %i.g, align 4, !tbaa !34
  %i.eh = icmp eq i32 %i.ef, 0
  br i1 %i.eh, label %.thread74, label %bb.am

.thread74:                                        ; preds = %bb.al
  store i64 %i.j, ptr %i.d, align 8, !tbaa !22
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ei, align 8, !tbaa !43
  store i64 1, ptr %0, align 8, !tbaa !27
  store i32 1, ptr %i.g, align 4, !tbaa !34
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ej, align 8, !tbaa !43
  %i.ek = add nsw i32 %i.ef, 2
  store i32 %i.ek, ptr %i.g, align 4, !tbaa !34
  %i.el = icmp eq i32 %i.eg, 0
  br i1 %i.el, label %.thread75, label %bb.an

.thread75:                                        ; preds = %bb.am
  store i64 %i.j, ptr %i.d, align 8, !tbaa !22
  store i64 1, ptr %0, align 8, !tbaa !27
  store i32 0, ptr %i.g, align 4, !tbaa !34
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i64 1, ptr %0, align 8, !tbaa !27
  store i32 %i.eg, ptr %i.g, align 4, !tbaa !34
  %i.em = icmp sgt i32 %i.ef, -1
  br i1 %i.em, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60, label %bb.ao

bb.ao:                                            ; preds = %.thread75, %bb.an
  %.not4.i.i53 = xor i1 %i.l, true
  %i.en = load i8, ptr %i.h, align 8, !range !21
  %i.eo = trunc nuw i8 %i.en to i1
  %or.cond.i.i54 = select i1 %.not4.i.i53, i1 true, i1 %i.eo
  br i1 %or.cond.i.i54, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ep = load ptr, ptr %i.f, align 8, !tbaa !24  ; 2 uses
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !23  ; 3 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = load i64, ptr %i.d, align 8, !tbaa !22
  %i.eu = add i64 %i.et, %i.er
  %i.ev = add i64 %.sroa.010.0.copyload.i.i, %i.es
  %i.ew = sub i64 %i.eu, %i.ev
  %storemerge.i.i56 = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.ew)
  store i64 %storemerge.i.i56, ptr %i.a, align 8, !tbaa !7
  %.not.i.i.i.i57 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i.i.i.i57, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i58

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i58:  ; preds = %bb.ap
  store ptr %i.eq, ptr %i.f, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59:          ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i58, %bb.ap
  store i8 0, ptr %i.c, align 8, !tbaa !20
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60: ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59, %bb.ao, %bb.an, %.thread74, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.ex = phi ptr [ %i.i, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i59 ], [ %i.i, %bb.ao ], [ %i.i, %bb.an ], [ %i.i, %.thread74 ], [ %i.ca, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 9 uses
  %.not.i61 = icmp eq ptr %i.ex, null
  br i1 %.not.i61, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69, label %bb.aq

bb.aq:                                            ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 76 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !34 ; 2 uses
  %i.fa = add nsw i32 %i.ez, -1
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !34
  %i.fb = icmp sgt i32 %i.ez, 1
  br i1 %i.fb, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 48 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 8, !tbaa !20, !range !21, !noundef !33
  %i.fe = trunc nuw i8 %i.fd to i1
  %.not4.i.i62 = xor i1 %i.fe, true
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  %i.fg = load i8, ptr %i.ff, align 8, !range !21
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i.i63 = select i1 %.not4.i.i62, i1 true, i1 %i.fh
  br i1 %or.cond.i.i63, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !24 ; 2 uses
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !23 ; 3 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !22
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !46
  %.neg84 = add i64 %i.fp, %i.fm
  %i.fs = add i64 %i.fr, %i.fn
  %i.ft = sub i64 %.neg84, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ex, i64 56 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !7
  %storemerge.i.i65 = call i64 @llvm.usub.sat.i64(i64 %i.fv, i64 %i.ft)
  store i64 %storemerge.i.i65, ptr %i.fu, align 8, !tbaa !7
  %.not.i.i.i.i66 = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i.i.i.i66, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i67

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i67:  ; preds = %bb.as
  store ptr %i.fl, ptr %i.fj, align 8, !tbaa !24
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68

_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68:          ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i67, %bb.as
  store i8 0, ptr %i.fc, align 8, !tbaa !20
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit69: ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit60, %bb.aq, %bb.ar, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.at:                                            ; preds = %bb.ac, %bb.aa, %bb.t, %bb.s
  %.pn13.pn = phi { ptr, i32 } [ %i.bz, %bb.t ], [ %.pn11, %bb.ac ], [ %i.cj, %bb.aa ], [ %i.by, %bb.s ]
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
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
end_hunk_0
