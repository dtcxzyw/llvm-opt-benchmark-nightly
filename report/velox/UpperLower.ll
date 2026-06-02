inline.NumInlined: 6582
inline.NumDeleted: 2126
begin_hunk_0_@_ZNK8facebook5velox9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
.loopexit:                                        ; preds = %.lr.ph.i52
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.critedge, %.critedge93
  %lpad.loopexit.split-lp96 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit95, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i.i40 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i40, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit41, label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp
  %i.ep = ptrtoint ptr %i.bu to i64
  %i.eq = ptrtoint ptr %i.bv to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.er) #34
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit41

_ZN8facebook5velox17SelectivityVectorD2Ev.exit41: ; preds = %bb.az, %.loopexit.split-lp, %bb.ay, %bb.ax
  %.pn24.pn = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %i.eo, %bb.ay ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %bb.az ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.ba

bb.ba:                                            ; preds = %bb.au, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit41, %bb.at
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.at ], [ %.pn24.pn, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit41 ], [ %i.el, %bb.au ]
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE34ensureStringEncodingSetAtAllInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE36propagateStringEncodingFromAllInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEENKUlT_E_clIiEEDaSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::exec::StringWriter", align 8 ; 18 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !1750, !nonnull !73, !align !437
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %2, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 0, ptr %i.d, align 8, !tbaa !1660
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !1663
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.b, ptr %i.f, align 8, !tbaa !1664
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %1, ptr %i.g, align 8, !tbaa !1665
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 0, ptr %i.j, align 8, !tbaa !59
  store i8 0, ptr %i.i, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1751, !nonnull !73, !align !437
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1358
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !1357, !range !72, !noundef !73
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !1363, !range !72, !noundef !73
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1364
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1368
  %i.z = sext i32 %1 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.ab, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ac = sext i32 %.0.i.i to i64
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.ae, align 8
  %i.af = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ag = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 9 uses
  %.not16 = icmp eq i64 %i.ag, 0
  br i1 %.not16, label %_ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ai = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.b, i64 noundef %i.ag, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.i     ; 5 uses

.noexc:                                           ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !429
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !365 ; 2 uses
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !302
  %i.aq = and i8 %i.ap, 2
  %.not.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, label %bb.f, !prof !122

bb.f:                                             ; preds = %.noexc
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc17 unwind label %bb.i

.noexc17:                                         ; preds = %bb.f
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i: ; preds = %.noexc
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !303
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.am ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1667 ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %._ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit_crit_edge, label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !1668
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.aw, i64 %i.av, i1 false)
  br label %._ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit_crit_edge

._ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit_crit_edge: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, %bb.g
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !1669
  store ptr %i.at, ptr %i.c, align 8, !tbaa !1668
  store ptr %i.ai, ptr %i.e, align 8, !tbaa !1663
  br label %_ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit

_ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit: ; preds = %._ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit_crit_edge, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.ax = phi ptr [ %i.at, %._ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit_crit_edge ], [ null, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ag, ptr %i.ay, align 8, !tbaa !1667
  %i.az = icmp ult i32 %i.af, 13
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bb = select i1 %i.az, ptr %i.ba, ptr %.sroa.2.0.copyload.i ; 6 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit, label %iter.check

iter.check:                                       ; preds = %_ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = ptrtoaddr ptr %i.ax to i64
  %min.iters.check = icmp samesign ult i64 %i.ag, 16
  %i.be = sub i64 %i.bd, %i.bc
  %diff.check = icmp ult i64 %i.be, 128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check23 = icmp samesign ult i64 %i.ag, 128
  br i1 %min.iters.check23, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.sroa.0.0.copyload.i, 112
  %n.vec = and i64 %.sroa.0.0.copyload.i, 4294967168 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %wide.load = load <32 x i8>, ptr %i.bf, align 1, !tbaa !36 ; 2 uses
  %wide.load24 = load <32 x i8>, ptr %i.bg, align 1, !tbaa !36 ; 2 uses
  %wide.load25 = load <32 x i8>, ptr %i.bh, align 1, !tbaa !36 ; 2 uses
  %wide.load26 = load <32 x i8>, ptr %i.bi, align 1, !tbaa !36 ; 2 uses
  %i.bj = add <32 x i8> %wide.load, splat (i8 -65)
  %i.bk = add <32 x i8> %wide.load24, splat (i8 -65)
  %i.bl = add <32 x i8> %wide.load25, splat (i8 -65)
  %i.bm = add <32 x i8> %wide.load26, splat (i8 -65)
  %i.bn = icmp ult <32 x i8> %i.bj, splat (i8 26)
  %i.bo = icmp ult <32 x i8> %i.bk, splat (i8 26)
  %i.bp = icmp ult <32 x i8> %i.bl, splat (i8 26)
  %i.bq = icmp ult <32 x i8> %i.bm, splat (i8 26)
  %4 = select <32 x i1> %i.bn, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.br = or disjoint <32 x i8> %wide.load, %4
  %5 = select <32 x i1> %i.bo, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.bs = or disjoint <32 x i8> %wide.load24, %5
  %i.bt = select <32 x i1> %i.bp, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %6 = or disjoint <32 x i8> %wide.load25, %i.bt
  %i.bu = select <32 x i1> %i.bq, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %7 = or disjoint <32 x i8> %wide.load26, %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  store <32 x i8> %i.br, ptr %i.bv, align 1, !tbaa !36
  store <32 x i8> %i.bs, ptr %i.bw, align 1, !tbaa !36
  store <32 x i8> %6, ptr %i.bx, align 1, !tbaa !36
  store <32 x i8> %7, ptr %i.by, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1752

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !1671

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %.sroa.0.0.copyload.i, 4294967280 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index29
  %wide.load30 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !36 ; 2 uses
  %i.cb = add <16 x i8> %wide.load30, splat (i8 -65)
  %i.cc = icmp ult <16 x i8> %i.cb, splat (i8 26)
  %8 = select <16 x i1> %i.cc, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %9 = or disjoint <16 x i8> %wide.load30, %8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index29
  store <16 x i8> %9, ptr %i.cd, align 1, !tbaa !36
  %index.next31 = add nuw i64 %index29, 16        ; 2 uses
  %i.ce = icmp eq i64 %index.next31, %n.vec28
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1753

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.ag, %n.vec28
  br i1 %cmp.n32, label %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i11.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0.i11.ph, 1
  %xtraiter = and i64 %.sroa.0.0.copyload.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.0.i11.ph
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !36  ; 3 uses
  %i.ch = add i8 %i.cg, -65
  %or.cond.i.prol = icmp ult i8 %i.ch, 26
  %i.ci = or disjoint i8 %i.cg, 32
  %spec.select.prol = select i1 %or.cond.i.prol, i8 %i.ci, i8 %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0.i11.ph
  store i8 %spec.select.prol, ptr %i.cj, align 1, !tbaa !36
  %i.ck = or disjoint i64 %.0.i11.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i11.unr = phi i64 [ %.0.i11.ph, %.lr.ph.preheader ], [ %i.ck, %.lr.ph.prol ]
  %i.cl = icmp eq i64 %i.ag, %.neg
  br i1 %i.cl, label %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i11 = phi i64 [ %i.cx, %.lr.ph ], [ %.0.i11.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.0.i11
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !36  ; 3 uses
  %i.co = add i8 %i.cn, -65
  %or.cond.i = icmp ult i8 %i.co, 26
  %i.cp = or disjoint i8 %i.cn, 32
  %spec.select = select i1 %or.cond.i, i8 %i.cp, i8 %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0.i11
  store i8 %spec.select, ptr %i.cq, align 1, !tbaa !36
  %i.cr = add nuw nsw i64 %.0.i11, 1              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !36  ; 3 uses
  %i.cu = add i8 %i.ct, -65
  %or.cond.i.1 = icmp ult i8 %i.cu, 26
  %i.cv = or disjoint i8 %i.ct, 32
  %spec.select.1 = select i1 %or.cond.i.1, i8 %i.cv, i8 %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cr
  store i8 %spec.select.1, ptr %i.cw, align 1, !tbaa !36
  %i.cx = add nuw nsw i64 %.0.i11, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cx, %i.ag
  br i1 %exitcond.not.1, label %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit, label %.lr.ph, !llvm.loop !1754

_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit: ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %_ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  invoke void @_ZN8facebook5velox4exec12StringWriter8finalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %2, align 8, !tbaa !7
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !63  ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.i
  br i1 %i.cz, label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.da = load i64, ptr %i.i, align 8, !tbaa !36
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #34, !inline_history !1674
  br label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit

_ZN8facebook5velox4exec12StringWriterD2Ev.exit:   ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.k

bb.j:                                             ; preds = %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.j ], [ %i.dc, %bb.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %2, align 8, !tbaa !7
  %i.de = load ptr, ptr %i.h, align 8, !tbaa !63  ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.i
  br i1 %i.df, label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.k
  %i.dg = load i64, ptr %i.i, align 8, !tbaa !36
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #34, !inline_history !1674
  br label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit10

_ZN8facebook5velox4exec12StringWriterD2Ev.exit10: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSJ_EUlimE_ZNS3_ISK_EEvSM_iibSJ_EUliE_EEviiSJ_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.525) align 8 %2, ptr noundef byval(%class.anon.526) align 8 %3) local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !1735, !range !72, !noundef !73
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1738
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !117
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ac = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = or disjoint i32 %i.d, %i.ad
  call void @_ZZN8facebook5velox9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEENKUlT_E_clIiEEDaSG_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i32 noundef %i.ae)
  %i.af = add nsw i64 %.011.i, -1
  %i.ag = and i64 %i.af, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1755

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sdiv i32 %0, 64                         ; 2 uses
  %i.ai = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i.i35, -1
  %i.al = sub nsw i32 64, %i.ai
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl i64 %i.ak, %i.am
  %i.ao = load i8, ptr %2, align 8, !tbaa !1735, !range !72, !noundef !73
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1738
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !117
  %i.au = xor i8 %i.ao, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = xor i64 %i.at, %i.aw
  %i.ay = and i64 %i.ax, %i.an                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.ay, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = shl nsw i32 %i.ah, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.ay, %.preheader.i37 ], [ %i.bf, %bb.g ] ; 3 uses
  %i.bb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSJ_EUlimE_ZNS3_ISK_EEvSM_iibSJ_EUliE_EEviiSJ_T0_:bb.a
  call void @_ZZN8facebook5velox9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEENKUlT_E_clIiEEDaSG_(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.cd)
  %i.ce = add i64 %.01519.i, -1
  %i.cf = and i64 %i.ce, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.cf, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1757

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.cg = add nsw i32 %i.bj, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.cg, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1758

bb.l:                                             ; preds = %._crit_edge
  %i.ch = ashr i32 %1, 6
  %i.ci = and i32 %1, 63
  %i.cj = zext nneg i32 %i.ci to i64
  %notmask.i42 = shl nsw i64 -1, %i.cj
  %i.ck = xor i64 %notmask.i42, -1
  %i.cl = load i8, ptr %2, align 8, !tbaa !1735, !range !72, !noundef !73
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1738
  %i.co = sext i32 %i.ch to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !117
  %i.cr = xor i8 %i.cl, 1
  %i.cs = zext nneg i8 %i.cr to i64
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = xor i64 %i.cq, %i.ct
  %i.cv = and i64 %i.cu, %i.ck                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.cv, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.cv, %.preheader.i44 ], [ %i.db, %bb.m ] ; 3 uses
  %i.cx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = or disjoint i32 %i.d, %i.cy
  call void @_ZZN8facebook5velox9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEENKUlT_E_clIiEEDaSG_(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i32 noundef %i.cz)
  %i.da = add nsw i64 %.011.i45, -1
  %i.db = and i64 %i.da, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.db, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1755

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEEUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEENKUlT_E_clImEEDaSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::exec::StringWriter", align 8 ; 18 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !1750, !nonnull !73, !align !437
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = trunc i64 %1 to i32                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %2, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 0, ptr %i.e, align 8, !tbaa !1660
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !1663
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.b, ptr %i.g, align 8, !tbaa !1664
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.c, ptr %i.h, align 8, !tbaa !1665
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 0, ptr %i.k, align 8, !tbaa !59
  store i8 0, ptr %i.j, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1751, !nonnull !73, !align !437
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !185  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1358
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 58
  %i.r = load i8, ptr %i.q, align 2, !tbaa !1357, !range !72, !noundef !73
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 59
  %i.u = load i8, ptr %i.t, align 1, !tbaa !1363, !range !72, !noundef !73
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1364
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1368
  %sext = shl i64 %1, 32
  %i.aa = ashr exact i64 %sext, 30
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.x, %bb.c ], [ %i.c, %bb.a ]
  %i.ad = sext i32 %.0.i.i to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.ad ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8 ; 7 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.af, align 8
  %i.ag = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ah = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 9 uses
  %.not16 = icmp eq i64 %i.ah, 0
  br i1 %.not16, label %_ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.b, i64 noundef %i.ah, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.i     ; 5 uses

.noexc:                                           ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !429
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !365 ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !302
  %i.ar = and i8 %i.aq, 2
  %.not.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, label %bb.f, !prof !122

bb.f:                                             ; preds = %.noexc
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc17 unwind label %bb.i

.noexc17:                                         ; preds = %bb.f
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i: ; preds = %.noexc
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !303
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1667 ; 2 uses
  %.not10.i = icmp eq i64 %i.aw, 0
  br i1 %.not10.i, label %._ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit_crit_edge, label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !1668
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %i.aw, i1 false)
  br label %._ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit_crit_edge

._ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit_crit_edge: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, %bb.g
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !1669
  store ptr %i.au, ptr %i.d, align 8, !tbaa !1668
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !1663
  br label %_ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit

_ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit: ; preds = %._ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit_crit_edge, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.ay = phi ptr [ %i.au, %._ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit_crit_edge ], [ null, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ah, ptr %i.az, align 8, !tbaa !1667
  %i.ba = icmp ult i32 %i.ag, 13
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bc = select i1 %i.ba, ptr %i.bb, ptr %.sroa.2.0.copyload.i ; 6 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit, label %iter.check

iter.check:                                       ; preds = %_ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit
  %i.bd = ptrtoaddr ptr %i.bc to i64
  %i.be = ptrtoaddr ptr %i.ay to i64
  %min.iters.check = icmp samesign ult i64 %i.ah, 16
  %i.bf = sub i64 %i.be, %i.bd
  %diff.check = icmp ult i64 %i.bf, 128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check23 = icmp samesign ult i64 %i.ah, 128
  br i1 %min.iters.check23, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.sroa.0.0.copyload.i, 112
  %n.vec = and i64 %.sroa.0.0.copyload.i, 4294967168 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %wide.load = load <32 x i8>, ptr %i.bg, align 1, !tbaa !36 ; 2 uses
  %wide.load24 = load <32 x i8>, ptr %i.bh, align 1, !tbaa !36 ; 2 uses
  %wide.load25 = load <32 x i8>, ptr %i.bi, align 1, !tbaa !36 ; 2 uses
  %wide.load26 = load <32 x i8>, ptr %i.bj, align 1, !tbaa !36 ; 2 uses
  %i.bk = add <32 x i8> %wide.load, splat (i8 -65)
  %i.bl = add <32 x i8> %wide.load24, splat (i8 -65)
  %i.bm = add <32 x i8> %wide.load25, splat (i8 -65)
  %i.bn = add <32 x i8> %wide.load26, splat (i8 -65)
  %i.bo = icmp ult <32 x i8> %i.bk, splat (i8 26)
  %i.bp = icmp ult <32 x i8> %i.bl, splat (i8 26)
  %i.bq = icmp ult <32 x i8> %i.bm, splat (i8 26)
  %i.br = icmp ult <32 x i8> %i.bn, splat (i8 26)
  %4 = select <32 x i1> %i.bo, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.bs = or disjoint <32 x i8> %wide.load, %4
  %5 = select <32 x i1> %i.bp, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %i.bt = or disjoint <32 x i8> %wide.load24, %5
  %i.bu = select <32 x i1> %i.bq, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %6 = or disjoint <32 x i8> %wide.load25, %i.bu
  %i.bv = select <32 x i1> %i.br, <32 x i8> splat (i8 32), <32 x i8> zeroinitializer
  %7 = or disjoint <32 x i8> %wide.load26, %i.bv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  store <32 x i8> %i.bs, ptr %i.bw, align 1, !tbaa !36
  store <32 x i8> %i.bt, ptr %i.bx, align 1, !tbaa !36
  store <32 x i8> %6, ptr %i.by, align 1, !tbaa !36
  store <32 x i8> %7, ptr %i.bz, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !1759

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !1671

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %.sroa.0.0.copyload.i, 4294967280 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index29
  %wide.load30 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !36 ; 2 uses
  %i.cc = add <16 x i8> %wide.load30, splat (i8 -65)
  %i.cd = icmp ult <16 x i8> %i.cc, splat (i8 26)
  %8 = select <16 x i1> %i.cd, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %9 = or disjoint <16 x i8> %wide.load30, %8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index29
  store <16 x i8> %9, ptr %i.ce, align 1, !tbaa !36
  %index.next31 = add nuw i64 %index29, 16        ; 2 uses
  %i.cf = icmp eq i64 %index.next31, %n.vec28
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1760

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.ah, %n.vec28
  br i1 %cmp.n32, label %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i11.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec28, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0.i11.ph, 1
  %xtraiter = and i64 %.sroa.0.0.copyload.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.0.i11.ph
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !36  ; 3 uses
  %i.ci = add i8 %i.ch, -65
  %or.cond.i.prol = icmp ult i8 %i.ci, 26
  %i.cj = or disjoint i8 %i.ch, 32
  %spec.select.prol = select i1 %or.cond.i.prol, i8 %i.cj, i8 %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.0.i11.ph
  store i8 %spec.select.prol, ptr %i.ck, align 1, !tbaa !36
  %i.cl = or disjoint i64 %.0.i11.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i11.unr = phi i64 [ %.0.i11.ph, %.lr.ph.preheader ], [ %i.cl, %.lr.ph.prol ]
  %i.cm = icmp eq i64 %i.ah, %.neg
  br i1 %i.cm, label %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i11 = phi i64 [ %i.cy, %.lr.ph ], [ %.0.i11.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.0.i11
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !36  ; 3 uses
  %i.cp = add i8 %i.co, -65
  %or.cond.i = icmp ult i8 %i.cp, 26
  %i.cq = or disjoint i8 %i.co, 32
  %spec.select = select i1 %or.cond.i, i8 %i.cq, i8 %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.0.i11
  store i8 %spec.select, ptr %i.cr, align 1, !tbaa !36
  %i.cs = add nuw nsw i64 %.0.i11, 1              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !36  ; 3 uses
  %i.cv = add i8 %i.cu, -65
  %or.cond.i.1 = icmp ult i8 %i.cv, 26
  %i.cw = or disjoint i8 %i.cu, 32
  %spec.select.1 = select i1 %or.cond.i.1, i8 %i.cw, i8 %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cs
  store i8 %spec.select.1, ptr %i.cx, align 1, !tbaa !36
  %i.cy = add nuw nsw i64 %.0.i11, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cy, %i.ah
  br i1 %exitcond.not.1, label %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit, label %.lr.ph, !llvm.loop !1761

_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit: ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %_ZN8facebook5velox9functions10stringImpl5lowerILb1ELb0ELb0ENS0_4exec12StringWriterENS0_10StringViewEEEbRT2_RKT3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  invoke void @_ZN8facebook5velox4exec12StringWriter8finalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %2, align 8, !tbaa !7
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !63  ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.j
  br i1 %i.da, label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.db = load i64, ptr %i.j, align 8, !tbaa !36
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #34, !inline_history !1674
  br label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit

_ZN8facebook5velox4exec12StringWriterD2Ev.exit:   ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.k

bb.j:                                             ; preds = %_ZN8facebook5velox9functions10stringCoreL10lowerAsciiEPcPKcm.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.de, %bb.j ], [ %i.dd, %bb.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %2, align 8, !tbaa !7
  %i.df = load ptr, ptr %i.i, align 8, !tbaa !63  ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.j
  br i1 %i.dg, label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.k
  %i.dh = load i64, ptr %i.j, align 8, !tbaa !36
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #34, !inline_history !1674
  br label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit10

_ZN8facebook5velox4exec12StringWriterD2Ev.exit10: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox9functions26UpperLowerTemplateFunctionILb1ELb0ELb0EE13ApplyInternalILb0EE5applyERKNS0_17SelectivityVectorEPKNS0_13DecodedVectorEPNS0_10FlatVectorINS0_10StringViewEEEENKUlT_E_clIiEEDaSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::exec::StringWriter", align 8 ; 20 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !1762, !nonnull !73, !align !437
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %2, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 0, ptr %i.d, align 8, !tbaa !1660
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !1663
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.b, ptr %i.f, align 8, !tbaa !1664
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %1, ptr %i.g, align 8, !tbaa !1665
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 0, ptr %i.j, align 8, !tbaa !59
  store i8 0, ptr %i.i, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1763, !nonnull !73, !align !437
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1358
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.q = load i8, ptr %i.p, align 2, !tbaa !1357, !range !72, !noundef !73
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !1363, !range !72, !noundef !73
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1364
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1368
  %i.z = sext i32 %1 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.ab, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ac = sext i32 %.0.i.i to i64
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.ae, align 8
  %i.af = trunc i64 %.sroa.0.0.copyload.i to i32  ; 2 uses
  %i.ag = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 4 uses
  %i.ah = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.not65 = icmp eq i64 %i.ag, 0
  br i1 %.not65, label %.noexc6, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.aj = invoke noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18getBufferWithSpaceEmb(ptr noundef nonnull align 8 dereferenceable(272) %i.b, i64 noundef %i.ah, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.ac    ; 5 uses

.noexc:                                           ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !429
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !365 ; 2 uses
  %i.ao = sub i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !302
  %i.ar = and i8 %i.aq, 2
  %.not.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit.i, label %bb.f, !prof !122

bb.f:                                             ; preds = %.noexc
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #36
          to label %.noexc75 unwind label %bb.ac

.noexc75:                                         ; preds = %bb.f
end_hunk_1
