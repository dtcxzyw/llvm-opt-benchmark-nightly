inline.NumInlined: 704
inline.NumDeleted: 344
begin_hunk_0_@_ZNK6google8protobuf11MessageLite21AppendPartialToStringEPN4absl12lts_202505124CordE:bb.a
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer16IncreaseLengthByEm.exit
  %i.cc = ashr i8 %i.ca, 1
  %i.cd = sext i8 %i.cc to i64
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

bb.q:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer16IncreaseLengthByEm.exit
  %i.ce = load ptr, ptr %5, align 8               ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !152
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = trunc i64 %i.cg to i8
  br label %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i

_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i: ; preds = %bb.q, %bb.p
  %i.ci = phi i8 [ %i.ca, %bb.p ], [ %i.ch, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %i.cd, %bb.p ], [ %i.cf, %bb.q ]
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit, label %bb.r, !prof !51

bb.r:                                             ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i
  %i.cl = load i8, ptr %1, align 1, !tbaa !30
  %i.cm = trunc i8 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load ptr, ptr %i.cn, align 8            ; 4 uses
  %i.cp = icmp ne ptr %i.co, null
  %.not6.i.i = select i1 %i.cm, i1 %i.cp, i1 false
  br i1 %.not6.i.i, label %bb.s, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !152
  %.not.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i, label %bb.t, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i, !prof !51

bb.t:                                             ; preds = %bb.s
  %i.cr = load i64, ptr %1, align 8, !tbaa !30
  %i.cs = add nsw i64 %i.cr, -1                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i, label %bb.u, !prof !24

bb.u:                                             ; preds = %bb.t
  %i.ct = inttoptr i64 %i.cs to ptr
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.ct)
          to label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i unwind label %bb.z

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i: ; preds = %bb.u, %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cv = atomicrmw sub ptr %i.cu, i32 2 acq_rel, align 4
  %.not.i4.i.i = icmp eq i32 %i.cv, 2
  br i1 %.not.i4.i.i, label %bb.v, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i, !prof !51

bb.v:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.co)
          to label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i unwind label %bb.z

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i: ; preds = %bb.v, %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %.pre.i = load i8, ptr %5, align 8, !tbaa !30
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i, %bb.s, %bb.r
  %i.cw = phi i8 [ %i.ci, %bb.r ], [ %i.ci, %bb.s ], [ %.pre.i, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit.i.i ] ; 2 uses
  %i.cx = trunc i8 %i.cw to i1
  br i1 %i.cx, label %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i, label %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.cz = ashr i8 %i.cw, 1
  %i.da = sext i8 %i.cz to i64
  store i8 1, ptr %5, align 8, !tbaa !30
  br label %bb.x

_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.i
  %i.db = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  store i8 1, ptr %5, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  invoke void @_ZN4absl12lts_202505124Cord9InlineRep10AppendTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.db, i32 noundef 2)
          to label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit unwind label %bb.z

bb.x:                                             ; preds = %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  %.sroa.5.08.i = phi ptr [ %i.cy, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i ], [ null, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %.sroa.0.07.i = phi i64 [ %i.da, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i ], [ 0, %_ZN4absl12lts_2025051210CordBuffer12ConsumeValueERSt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  invoke void @_ZN4absl12lts_202505124Cord13AppendPreciseESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %.sroa.0.07.i, ptr %.sroa.5.08.i, i32 noundef 2)
          to label %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit unwind label %bb.z

_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit: ; preds = %_ZNK4absl12lts_2025051210CordBuffer6lengthEv.exit.i, %bb.w, %bb.x
  %i.dc = load i8, ptr %5, align 8, !tbaa !30
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit
  %i.de = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.dg = load i8, ptr %i.df, align 4, !tbaa !189 ; 3 uses
  %i.dh = zext i8 %i.dg to i32
  %i.di = icmp ult i8 %i.dg, 67                   ; 2 uses
  %i.dj = icmp ult i8 %i.dg, -69                  ; 2 uses
  %..i.i.i = select i1 %i.dj, i32 6, i32 12
  %.7.i.i.i = select i1 %i.dj, i32 -3712, i32 -753664
  %.sink6.i.i.i = select i1 %i.di, i32 3, i32 %..i.i.i
  %.sink5.i.i.i = select i1 %i.di, i32 -16, i32 %.7.i.i.i
  %i.dk = shl nuw nsw i32 %i.dh, %.sink6.i.i.i
  %i.dl = add nsw i32 %i.dk, %.sink5.i.i.i
  %i.dm = sext i32 %i.dl to i64
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dm) #27
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit

_ZN4absl12lts_2025051210CordBufferD2Ev.exit:      ; preds = %_ZN4absl12lts_202505124Cord6AppendENS0_10CordBufferE.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.aw

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051210CordBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.o
  %.pn28 = phi { ptr, i32 } [ %i.dn, %bb.z ], [ %i.bz, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ay

bb.ab:                                            ; preds = %bb.j
  store i8 31, ptr %3, align 8, !tbaa !30
  br label %_ZN4absl12lts_2025051210CordBuffer9SetLengthEm.exit

.thread67:                                        ; preds = %.thread57
  store i64 %i.bd, ptr %i.ar, align 8, !tbaa !152
  br label %_ZN4absl12lts_2025051210CordBuffer9SetLengthEm.exit

_ZN4absl12lts_2025051210CordBuffer9SetLengthEm.exit: ; preds = %bb.ab, %.thread67
  %.pn4.i667178 = phi i64 [ %i.aq, %bb.ab ], [ %i.be, %.thread67 ] ; 3 uses
  %.pn6.i647376 = phi ptr [ %i.ap, %bb.ab ], [ %i.au, %.thread67 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !195
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !195
  store i8 1, ptr %3, align 8, !tbaa !30
  invoke void @_ZN6google8protobuf2io16CordOutputStreamC1EN4absl12lts_202505124CordENS4_10CordBufferEm(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i64 noundef %i.p)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %_ZN4absl12lts_2025051210CordBuffer9SetLengthEm.exit
  %i.do = load i8, ptr %8, align 8, !tbaa !30
  %i.dp = trunc i8 %i.do to i1
  br i1 %i.dp, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit42, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i8, ptr %i.dr, align 4, !tbaa !189 ; 3 uses
  %i.dt = zext i8 %i.ds to i32
  %i.du = icmp ult i8 %i.ds, 67                   ; 2 uses
  %i.dv = icmp ult i8 %i.ds, -69                  ; 2 uses
  %..i.i.i38 = select i1 %i.dv, i32 6, i32 12
  %.7.i.i.i39 = select i1 %i.dv, i32 -3712, i32 -753664
  %.sink6.i.i.i40 = select i1 %i.du, i32 3, i32 %..i.i.i38
  %.sink5.i.i.i41 = select i1 %i.du, i32 -16, i32 %.7.i.i.i39
  %i.dw = shl nuw nsw i32 %i.dt, %.sink6.i.i.i40
  %i.dx = add nsw i32 %i.dw, %.sink5.i.i.i41
  %i.dy = sext i32 %i.dx to i64
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dy) #27
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit42

_ZN4absl12lts_2025051210CordBufferD2Ev.exit42:    ; preds = %bb.ac, %bb.ad
  %i.dz = load i8, ptr %7, align 8, !tbaa !30
  %i.ea = trunc i8 %i.dz to i1
  br i1 %i.ea, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit42
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #30
  unreachable

bb.ag:                                            ; preds = %bb.ae, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit42
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ed = load atomic i8, ptr @_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E monotonic, align 1, !range !71, !noundef !72
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %6, ptr %i.eg, align 8, !tbaa !172
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  store i8 0, ptr %i.eh, align 8, !tbaa !173
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 57
  store i8 0, ptr %i.ei, align 1, !tbaa !174
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 58
  store i8 %i.ed, ptr %i.ej, align 2, !tbaa !175
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 59
  store i8 0, ptr %i.ek, align 1, !tbaa !176
  %i.el = icmp samesign ugt i64 %.pn4.i667178, 16 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.pn6.i647376, i64 %.pn4.i667178
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -16
  %i.eo = getelementptr inbounds i8, ptr %i.ef, i64 %.pn4.i667178
  %.sink9.i.i = select i1 %i.el, ptr %i.en, ptr %i.eo
  %.sink.i.i = select i1 %i.el, ptr null, ptr %.pn6.i647376
  %.0.i.i = select i1 %i.el, ptr %.pn6.i647376, ptr %i.ef
  store ptr %.sink9.i.i, ptr %9, align 8, !tbaa !168
  store ptr %.sink.i.i, ptr %i.ee, align 8, !tbaa !171
  %i.ep = load ptr, ptr %0, align 8, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = invoke noundef ptr %i.er(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i, ptr noundef nonnull %9)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.et = invoke noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream4TrimEPh(ptr noundef nonnull align 8 dereferenceable(60) %9, ptr noundef %i.es)
          to label %bb.ai unwind label %bb.ak     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load i8, ptr %i.eh, align 8, !tbaa !173, !range !71, !noundef !72
  %i.ev = trunc nuw i8 %i.eu to i1                ; 2 uses
  br i1 %i.ev, label %bb.aq, label %bb.al

bb.aj:                                            ; preds = %_ZN4absl12lts_2025051210CordBuffer9SetLengthEm.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051210CordBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #27
  call void @_ZN4absl12lts_202505124CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  br label %bb.av

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZN6google8protobuf2io16CordOutputStream7ConsumeEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Cord") align 8 %10, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.ey = load i8, ptr %1, align 1, !tbaa !30
  %i.ez = trunc i8 %i.ey to i1
  br i1 %i.ez, label %bb.an, label %_ZN4absl12lts_202505124CordD2Ev.exit43

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4absl12lts_202505124Cord9InlineRep9UnrefTreeEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN4absl12lts_202505124CordD2Ev.exit43 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #30
  unreachable

_ZN4absl12lts_202505124CordD2Ev.exit43:           ; preds = %bb.an, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !195
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.au

bb.aq:                                            ; preds = %bb.ai, %_ZN4absl12lts_202505124CordD2Ev.exit43
  %.0 = xor i1 %i.ev, true
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !30
  %i.ff = trunc i8 %i.fe to i1
  br i1 %i.ff, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !30 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !189 ; 3 uses
  %i.fj = zext i8 %i.fi to i32
  %i.fk = icmp ult i8 %i.fi, 67                   ; 2 uses
  %i.fl = icmp ult i8 %i.fi, -69                  ; 2 uses
  %..i.i.i.i44 = select i1 %i.fl, i32 6, i32 12
  %.7.i.i.i.i = select i1 %i.fl, i32 -3712, i32 -753664
  %.sink6.i.i.i.i45 = select i1 %i.fk, i32 3, i32 %..i.i.i.i44
  %.sink5.i.i.i.i = select i1 %i.fk, i32 -16, i32 %.7.i.i.i.i
  %i.fm = shl nuw nsw i32 %i.fj, %.sink6.i.i.i.i45
  %i.fn = add nsw i32 %i.fm, %.sink5.i.i.i.i
  %i.fo = sext i32 %i.fn to i64
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fo) #27
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit.i

_ZN4absl12lts_2025051210CordBufferD2Ev.exit.i:    ; preds = %bb.ar, %bb.aq
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !30
  %i.fr = trunc i8 %i.fq to i1
  br i1 %i.fr, label %bb.as, label %_ZN6google8protobuf2io16CordOutputStreamD2Ev.exit

bb.as:                                            ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit.i
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp)
          to label %_ZN6google8protobuf2io16CordOutputStreamD2Ev.exit unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #30
  unreachable

_ZN6google8protobuf2io16CordOutputStreamD2Ev.exit: ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.aw

bb.au:                                            ; preds = %bb.ap, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.ap ], [ %i.ex, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN6google8protobuf2io16CordOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #27
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.au ], [ %i.ew, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ay

bb.aw:                                            ; preds = %_ZN6google8protobuf2io16CordOutputStreamD2Ev.exit, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit
  %.1 = phi i1 [ true, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit ], [ %.0, %_ZN6google8protobuf2io16CordOutputStreamD2Ev.exit ]
  %i.fu = load i8, ptr %3, align 8, !tbaa !30
  %i.fv = trunc i8 %i.fu to i1
  br i1 %i.fv, label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit50, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fw = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.fy = load i8, ptr %i.fx, align 4, !tbaa !189 ; 3 uses
  %i.fz = zext i8 %i.fy to i32
  %i.ga = icmp ult i8 %i.fy, 67                   ; 2 uses
  %i.gb = icmp ult i8 %i.fy, -69                  ; 2 uses
  %..i.i.i46 = select i1 %i.gb, i32 6, i32 12
  %.7.i.i.i47 = select i1 %i.gb, i32 -3712, i32 -753664
  %.sink6.i.i.i48 = select i1 %i.ga, i32 3, i32 %..i.i.i46
  %.sink5.i.i.i49 = select i1 %i.ga, i32 -16, i32 %.7.i.i.i47
  %i.gc = shl nuw nsw i32 %i.fz, %.sink6.i.i.i48
  %i.gd = add nsw i32 %i.gc, %.sink5.i.i.i49
  %i.ge = sext i32 %i.gd to i64
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ge) #27
  br label %_ZN4absl12lts_2025051210CordBufferD2Ev.exit50

_ZN4absl12lts_2025051210CordBufferD2Ev.exit50:    ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.az

bb.ay:                                            ; preds = %bb.aa, %bb.av
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.av ], [ %.pn28, %bb.aa ]
  call void @_ZN4absl12lts_2025051210CordBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.ba

bb.az:                                            ; preds = %_ZN4absl12lts_2025051210CordBufferD2Ev.exit50, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.2 = phi i1 [ false, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %.1, %_ZN4absl12lts_2025051210CordBufferD2Ev.exit50 ]
  ret i1 %.2

bb.ba:                                            ; preds = %bb.ay, %bb.d
  %.pn32 = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn28.pn.pn, %bb.ay ]
  resume { ptr, i32 } %.pn32
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051210CordBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !30
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i8, ptr %i.d, align 4, !tbaa !189   ; 3 uses
  %i.f = zext i8 %i.e to i32
  %i.g = icmp ult i8 %i.e, 67                     ; 2 uses
  %i.h = icmp ult i8 %i.e, -69                    ; 2 uses
  %..i.i = select i1 %i.h, i32 6, i32 12
  %.7.i.i = select i1 %i.h, i32 -3712, i32 -753664
  %.sink6.i.i = select i1 %i.g, i32 3, i32 %..i.i
  %.sink5.i.i = select i1 %i.g, i32 -16, i32 %.7.i.i
  %i.i = shl nuw nsw i32 %i.f, %.sink6.i.i
  %i.j = add nsw i32 %i.i, %.sink5.i.i
  %i.k = sext i32 %i.j to i64
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.k) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6google8protobuf2io16CordOutputStreamC1EN4absl12lts_202505124CordENS4_10CordBufferEm(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505124CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !30
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_0
