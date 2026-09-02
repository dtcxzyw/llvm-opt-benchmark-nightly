Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/import-svg?download=true
inline.NumInlined: 174
inline.NumDeleted: 62
begin_hunk_0_@_ZN7msdfgen12loadSvgShapeERNS_5ShapeEPKciPNS_7Vector2E:bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %i.af = call double @strtod(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.ah = icmp ugt ptr %i.ag, %i.ac
  br i1 %i.ah, label %bb.r, label %_ZN7msdfgenL10readDoubleERdRPKc.exit45

_ZN7msdfgenL10readDoubleERdRPKc.exit45:           ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN7msdfgenL10readDoubleERdRPKc.exit

bb.r:                                             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i44
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ai = call fastcc noundef zeroext i1 @_ZN7msdfgenL10readDoubleERdRPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.ai, label %bb.s, label %_ZN7msdfgenL10readDoubleERdRPKc.exit

bb.s:                                             ; preds = %bb.r
  %i.aj = call fastcc noundef zeroext i1 @_ZN7msdfgenL10readDoubleERdRPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  br label %_ZN7msdfgenL10readDoubleERdRPKc.exit

bb.t:                                             ; preds = %bb.y, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, %bb.o, %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.u:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %bb.aa

_ZN7msdfgenL10readDoubleERdRPKc.exit:             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i, %bb.r, %bb.s, %_ZN7msdfgenL10readDoubleERdRPKc.exit45, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  %.not36 = icmp eq ptr %3, null
  br i1 %.not36, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN7msdfgenL10readDoubleERdRPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !42
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN7msdfgenL10readDoubleERdRPKc.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.am
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.az, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i ], [ %i.am, %bb.w ] ; 5 uses
  %i.ap = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !18 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i ] ; 2 uses
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i.i) #12
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.at = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #13
  br label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i: ; preds = %bb.x, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i
  store ptr %i.am, ptr %i.an, align 8, !tbaa !30
  br label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit: ; preds = %bb.w, %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i
  invoke void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef 1)
          to label %bb.y unwind label %bb.t

bb.y:                                             ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit
  %i.ba = load double, ptr %5, align 8, !tbaa !25 ; 2 uses
  %i.bb = load double, ptr %i.u, align 8, !tbaa !26 ; 2 uses
  %i.bc = fmul double %i.bb, %i.bb
  %i.bd = call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.bc)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.bd)
  %i.be = fmul double %sqrt.i, f0x3F10000000000000
  %i.bf = invoke noundef zeroext i1 @_ZN7msdfgen21buildShapeFromSvgPathERNS_5ShapeEPKcd(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %i.q, double noundef %i.be)
          to label %bb.z unwind label %bb.t

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ab

bb.aa:                                            ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.t ], [ %i.al, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.l, %bb.j
  %.125 = phi i1 [ false, %bb.j ], [ %i.bf, %bb.z ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ad

bb.ac:                                            ; preds = %bb.m, %bb.aa, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %.pn, %bb.aa ], [ %i.r, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit, %bb.b
  %.327 = phi i1 [ false, %bb.b ], [ %.125, %bb.ab ], [ false, %_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit ]
  call void @_ZN8tinyxml211XMLDocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(776) dereferenceable(776) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i1 %.327

bb.ae:                                            ; preds = %bb.e, %bb.ac, %bb.c
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn.pn.pn, %bb.ac ], [ %i.j, %bb.e ]
  call void @_ZN8tinyxml211XMLDocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(776) dereferenceable(776) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN8tinyxml211XMLDocumentC1EbNS_10WhitespaceE(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext, i32 noundef) unnamed_addr #2

declare noundef i32 @_ZN8tinyxml211XMLDocument8LoadFileEPKc(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7msdfgenL22findPathByForwardIndexERPN8tinyxml210XMLElementERiS4_S2_b(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr noundef nonnull %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8tinyxml27XMLNode17FirstChildElementEPKc(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef null) ; 2 uses
  %.not40 = icmp eq ptr %i.a, null
  br i1 %.not40, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.041 = phi ptr [ %i.am, %bb.s ], [ %i.a, %bb.a ] ; 13 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !23
  %i.c = and i32 %i.b, 13
  %.not28 = icmp eq i32 %i.c, 13
  br i1 %.not28, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph, %bb.s, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(5) @.str.5) #14
  %.not29 = icmp eq i32 %i.e, 0
  br i1 %.not29, label %bb.c, label %sub_0

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %2, align 4, !tbaa !23
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr %.041, ptr %0, align 8, !tbaa !22
  %i.h = load i32, ptr %1, align 4, !tbaa !23
  %i.i = or i32 %i.h, 1                           ; 2 uses
  store i32 %i.i, ptr %1, align 4, !tbaa !23
  br i1 %4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef ptr @_ZNK8tinyxml210XMLElement9AttributeEPKcS2_(ptr noundef nonnull align 8 dereferenceable(120) %.041, ptr noundef nonnull @.str.6, ptr noundef null)
  %.not31 = icmp eq ptr %i.j, null
  br i1 %.not31, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %1, align 4, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.k = phi i32 [ %.pre, %._crit_edge ], [ %i.i, %bb.d ]
  %i.l = or i32 %i.k, 16
  store i32 %i.l, ptr %1, align 4, !tbaa !23
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %i.m = load i32, ptr %1, align 4, !tbaa !23     ; 2 uses
  %5 = and i32 %i.m, 1
  %.not32 = icmp eq i32 %5, 0
  br i1 %.not32, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = or i32 %i.m, 4
  store i32 %i.n, ptr %1, align 4, !tbaa !23
  br label %bb.s

sub_0:                                            ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041) ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %.not43 = icmp eq i8 %i.p, 103
  br i1 %.not43, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.i, label %.tail.thread

bb.i:                                             ; preds = %.tail
  br i1 %4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call noundef ptr @_ZNK8tinyxml210XMLElement9AttributeEPKcS2_(ptr noundef nonnull align 8 dereferenceable(120) %.041, ptr noundef nonnull @.str.6, ptr noundef null)
  %i.u = icmp ne ptr %i.t, null
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = phi i1 [ true, %bb.i ], [ %i.u, %bb.j ]
  tail call fastcc void @_ZN7msdfgenL22findPathByForwardIndexERPN8tinyxml210XMLElementERiS4_S2_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %.041, i1 noundef zeroext %i.v)
  br label %bb.s

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.w = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(5) @.str.8) #14
  %.not34 = icmp eq i32 %i.x, 0
  br i1 %.not34, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.tail.thread
  %i.y = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(7) @.str.9) #14
  %.not35 = icmp eq i32 %i.z, 0
  br i1 %.not35, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(8) @.str.10) #14
  %.not36 = icmp eq i32 %i.ab, 0
  br i1 %.not36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(8) @.str.11) #14
  %.not37 = icmp eq i32 %i.ad, 0
  br i1 %.not37, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.tail.thread
  %i.ae = load i32, ptr %1, align 4, !tbaa !23
  %i.af = or i32 %i.ae, 4
  store i32 %i.af, ptr %1, align 4, !tbaa !23
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ag = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(5) @.str.12) #14
  %.not38 = icmp eq i32 %i.ah, 0
  br i1 %.not38, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(4) @.str.13) #14
  %.not39 = icmp eq i32 %i.aj, 0
  br i1 %.not39, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ak = load i32, ptr %1, align 4, !tbaa !23
  %i.al = or i32 %i.ak, 8
  store i32 %i.al, ptr %1, align 4, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f, %bb.o, %bb.r, %bb.q, %bb.k
  %i.am = tail call noundef ptr @_ZNK8tinyxml27XMLNode18NextSiblingElementEPKc(ptr noundef nonnull align 8 dereferenceable(104) %.041, ptr noundef null) ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !43
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7msdfgenL23findPathByBackwardIndexERPN8tinyxml210XMLElementERiS4_S2_b(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr noundef nonnull %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8tinyxml27XMLNode16LastChildElementEPKc(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef null) ; 2 uses
  %.not40 = icmp eq ptr %i.a, null
  br i1 %.not40, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.041 = phi ptr [ %i.am, %bb.s ], [ %i.a, %bb.a ] ; 13 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !23
  %i.c = and i32 %i.b, 13
  %.not28 = icmp eq i32 %i.c, 13
  br i1 %.not28, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph, %bb.s, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(5) @.str.5) #14
  %.not29 = icmp eq i32 %i.e, 0
  br i1 %.not29, label %bb.c, label %sub_0

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %2, align 4, !tbaa !23
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr %.041, ptr %0, align 8, !tbaa !22
  %i.h = load i32, ptr %1, align 4, !tbaa !23
  %i.i = or i32 %i.h, 1                           ; 2 uses
  store i32 %i.i, ptr %1, align 4, !tbaa !23
  br i1 %4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef ptr @_ZNK8tinyxml210XMLElement9AttributeEPKcS2_(ptr noundef nonnull align 8 dereferenceable(120) %.041, ptr noundef nonnull @.str.6, ptr noundef null)
  %.not31 = icmp eq ptr %i.j, null
  br i1 %.not31, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %1, align 4, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.k = phi i32 [ %.pre, %._crit_edge ], [ %i.i, %bb.d ]
  %i.l = or i32 %i.k, 16
  store i32 %i.l, ptr %1, align 4, !tbaa !23
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %i.m = load i32, ptr %1, align 4, !tbaa !23     ; 2 uses
  %5 = and i32 %i.m, 1
  %.not32 = icmp eq i32 %5, 0
  br i1 %.not32, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = or i32 %i.m, 4
  store i32 %i.n, ptr %1, align 4, !tbaa !23
  br label %bb.s

sub_0:                                            ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041) ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %.not43 = icmp eq i8 %i.p, 103
  br i1 %.not43, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.i, label %.tail.thread

bb.i:                                             ; preds = %.tail
  br i1 %4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call noundef ptr @_ZNK8tinyxml210XMLElement9AttributeEPKcS2_(ptr noundef nonnull align 8 dereferenceable(120) %.041, ptr noundef nonnull @.str.6, ptr noundef null)
  %i.u = icmp ne ptr %i.t, null
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = phi i1 [ true, %bb.i ], [ %i.u, %bb.j ]
  tail call fastcc void @_ZN7msdfgenL23findPathByBackwardIndexERPN8tinyxml210XMLElementERiS4_S2_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %.041, i1 noundef zeroext %i.v)
  br label %bb.s

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.w = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(5) @.str.8) #14
  %.not34 = icmp eq i32 %i.x, 0
  br i1 %.not34, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.tail.thread
  %i.y = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(7) @.str.9) #14
  %.not35 = icmp eq i32 %i.z, 0
  br i1 %.not35, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(8) @.str.10) #14
  %.not36 = icmp eq i32 %i.ab, 0
  br i1 %.not36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(8) @.str.11) #14
  %.not37 = icmp eq i32 %i.ad, 0
  br i1 %.not37, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.tail.thread
  %i.ae = load i32, ptr %1, align 4, !tbaa !23
  %i.af = or i32 %i.ae, 4
  store i32 %i.af, ptr %1, align 4, !tbaa !23
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ag = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(5) @.str.12) #14
  %.not38 = icmp eq i32 %i.ah, 0
  br i1 %.not38, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = tail call noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(120) %.041)
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(4) @.str.13) #14
  %.not39 = icmp eq i32 %i.aj, 0
  br i1 %.not39, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ak = load i32, ptr %1, align 4, !tbaa !23
  %i.al = or i32 %i.ak, 8
  store i32 %i.al, ptr %1, align 4, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f, %bb.o, %bb.r, %bb.q, %bb.k
  %i.am = tail call noundef ptr @_ZNK8tinyxml27XMLNode22PreviousSiblingElementEPKc(ptr noundef nonnull align 8 dereferenceable(104) %.041, ptr noundef null) ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !44
}

declare noundef ptr @_ZNK8tinyxml210XMLElement9AttributeEPKcS2_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef double @_ZNK8tinyxml210XMLElement15DoubleAttributeEPKcd(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, double noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN8tinyxml211XMLDocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(776) dereferenceable(776)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7msdfgen12loadSvgShapeERNS_5ShapeERNS0_6BoundsEPKc(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.tinyxml2::XMLDocument", align 8 ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"struct.msdfgen::Vector2", align 16 ; 7 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN8tinyxml211XMLDocumentC1EbNS_10WhitespaceE(ptr noundef nonnull align 8 dereferenceable(776) %3, i1 noundef zeroext true, i32 noundef 0)
  %i.f = invoke noundef i32 @_ZN8tinyxml211XMLDocument8LoadFileEPKc(ptr noundef nonnull align 8 dereferenceable(776) %3, ptr noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.d:                                             ; preds = %bb.b
  %i.h = invoke noundef ptr @_ZNK8tinyxml27XMLNode17FirstChildElementEPKc(ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull @.str)
          to label %_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit unwind label %bb.e ; 5 uses

_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit: ; preds = %bb.d
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.ab, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.f:                                             ; preds = %_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !23
  invoke fastcc void @_ZN7msdfgenL23findPathByBackwardIndexERPN8tinyxml210XMLElementERiS4_S2_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef %i.h, i1 noundef zeroext false)
          to label %5 unwind label %bb.h

5:                                                ; preds = %bb.f
  %6 = load ptr, ptr %i.b, align 8, !tbaa !22     ; 2 uses
  %.not35 = icmp eq ptr %6, null
  br i1 %.not35, label %bb.z, label %bb.g

bb.g:                                             ; preds = %5
  %i.j = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %7 = and i32 %i.j, 1
  %.not36 = icmp eq i32 %7, 0
  br i1 %.not36, label %bb.z, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.l = invoke noundef ptr @_ZNK8tinyxml210XMLElement9AttributeEPKcS2_(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull @.str.1, ptr noundef null)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not37 = icmp eq ptr %i.l, null
  br i1 %.not37, label %bb.z, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.o = invoke noundef double @_ZNK8tinyxml210XMLElement15DoubleAttributeEPKcd(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull @.str.2, double noundef 0.000000e+00)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.p = invoke noundef double @_ZNK8tinyxml210XMLElement15DoubleAttributeEPKcd(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull @.str.3, double noundef 0.000000e+00)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  store double %i.o, ptr %4, align 16, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store double %i.p, ptr %i.q, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.r = invoke noundef ptr @_ZNK8tinyxml210XMLElement9AttributeEPKcS2_(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull @.str.4, ptr noundef null)
          to label %bb.o unwind label %bb.t       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %.not38 = icmp eq ptr %i.r, null
  br i1 %.not38, label %bb.u, label %.preheader

.preheader:                                       ; preds = %bb.o, %.critedge.i.i
  %i.s = phi ptr [ %i.u, %.critedge.i.i ], [ %i.r, %bb.o ] ; 4 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11
  switch i8 %i.t, label %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i [
    i8 44, label %.critedge.i.i
    i8 32, label %.critedge.i.i
    i8 9, label %.critedge.i.i
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
  ]

.critedge.i.i:                                    ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  br label %.preheader, !llvm.loop !0

_ZN7msdfgenL14skipExtraCharsERPKc.exit.i:         ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %i.v = call double @strtod(ptr noundef nonnull %i.s, ptr noundef nonnull %i.a) #12
  store double %i.v, ptr %1, align 8, !tbaa !20
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.x = icmp ugt ptr %i.w, %i.s
  br i1 %i.x, label %bb.p, label %_ZN7msdfgenL10readDoubleERdRPKc.exit.a

_ZN7msdfgenL10readDoubleERdRPKc.exit.a:           ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.u

bb.p:                                             ; preds = %_ZN7msdfgenL14skipExtraCharsERPKc.exit.i
  store ptr %i.w, ptr %i.e, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %8 = call fastcc noundef zeroext i1 @_ZN7msdfgenL10readDoubleERdRPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %8, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.y = call fastcc noundef zeroext i1 @_ZN7msdfgenL10readDoubleERdRPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br i1 %i.y, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.z = call fastcc noundef zeroext i1 @_ZN7msdfgenL10readDoubleERdRPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.w, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, %bb.m, %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.y

bb.u:                                             ; preds = %_ZN7msdfgenL10readDoubleERdRPKc.exit.a, %bb.p, %bb.q, %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load <2 x double>, ptr %1, align 8, !tbaa !20
  %i.ae = load <2 x double>, ptr %4, align 16, !tbaa !20 ; 4 uses
  %i.af = fadd <2 x double> %i.ad, %i.ae
  store <2 x double> %i.af, ptr %i.ac, align 8, !tbaa !20
  %i.ag = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.ag
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i ], [ %i.ag, %bb.u ] ; 5 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !18 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i ] ; 2 uses
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i.i) #12
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.an = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #13
  br label %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i: ; preds = %bb.v, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.ai
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7msdfgen7ContourEEvPT_.exit.i.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !30
  br label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit: ; preds = %bb.u, %_ZSt8_DestroyIPN7msdfgen7ContourES1_EvT_S3_RSaIT0_E.exit.i.i
  invoke void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef 1)
          to label %bb.w unwind label %bb.s

bb.w:                                             ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE5clearEv.exit
  %foldExtExtBinop = fmul <2 x double> %i.ae, %i.ae
  %i.au = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.av = extractelement <2 x double> %i.ae, i64 0 ; 2 uses
  %i.aw = call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.au)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.aw)
  %i.ax = fmul double %sqrt.i, f0x3F10000000000000
  %i.ay = invoke noundef zeroext i1 @_ZN7msdfgen21buildShapeFromSvgPathERNS_5ShapeEPKcd(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %i.l, double noundef %i.ax)
          to label %bb.x unwind label %bb.s

bb.x:                                             ; preds = %bb.w
  %.026 = select i1 %i.ay, i32 %i.j, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.z

bb.y:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.s ], [ %i.ab, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %bb.j, %5, %bb.g
  %.228 = phi i32 [ 0, %5 ], [ 0, %bb.g ], [ %.026, %bb.x ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ab

bb.aa:                                            ; preds = %bb.k, %bb.y, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %.pn, %bb.y ], [ %i.m, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit, %bb.b
  %.430 = phi i32 [ 0, %bb.b ], [ %.228, %bb.z ], [ 0, %_ZN8tinyxml27XMLNode17FirstChildElementEPKc.exit ]
  call void @_ZN8tinyxml211XMLDocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(776) dereferenceable(776) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.430

bb.ac:                                            ; preds = %bb.e, %bb.aa, %bb.c
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %.pn.pn.pn, %bb.aa ], [ %i.i, %bb.e ]
  call void @_ZN8tinyxml211XMLDocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(776) dereferenceable(776) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double, double, double, double, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #6

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_NS_9EdgeColorE(double, double, double, double, double, double, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double, double, double, double, double, double, double, double, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #8

declare noundef ptr @_ZNK8tinyxml27XMLNode17FirstChildElementEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNK8tinyxml27XMLNode5ValueEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

declare noundef ptr @_ZNK8tinyxml27XMLNode18NextSiblingElementEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK8tinyxml27XMLNode16LastChildElementEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK8tinyxml27XMLNode22PreviousSiblingElementEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = distinct !{!2, !12}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTSN7msdfgen10EdgeHolderE", !13, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 0}
!19 = !{!"double", !7, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTSN8tinyxml210XMLElementE", !13, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!8, !8, i64 0}
!24 = !{!"_ZTSN7msdfgen7Vector2E", !19, i64 0, !19, i64 8}
!25 = !{!24, !19, i64 0}
!26 = !{!24, !19, i64 8}
!27 = !{!"p1 _ZTSN7msdfgen7ContourE", !13, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!28, !27, i64 0}
!30 = !{!28, !27, i64 8}
!31 = !{!17, !16, i64 8}
!32 = !{!17, !16, i64 16}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !13, i64 0}
!37 = !{!"_ZTSN7msdfgen10EdgeHolderE", !36, i64 0}
!38 = !{!37, !36, i64 0}
!39 = !{!16, !16, i64 0}
!40 = !{!"vtable pointer", !6, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{i64 0, i64 8, !20, i64 8, i64 8, !20}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
end_hunk_0
