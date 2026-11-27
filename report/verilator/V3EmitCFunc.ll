Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitCFunc?download=true
inline.NumInlined: 1671
inline.NumDeleted: 265
begin_hunk_0_@_ZN9EmitCFunc13emitCCallArgsEPK12AstNodeCCallRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  store i64 2, ptr %i.ej, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 18
  store i8 0, ptr %i.ek, align 2, !tbaa !20
  %i.el = load ptr, ptr %i.h, align 8, !tbaa !50
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.el, ptr noundef null, ptr noundef nonnull %i.ei)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit104 unwind label %bb.x

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit104: ; preds = %bb.w
  %i.em = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ei
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit104
  %i.eo = load i64, ptr %i.ei, align 8, !tbaa !20
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ei
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.x
  %i.et = load i64, ptr %i.ei, align 8, !tbaa !20
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ae

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ev, ptr %11, align 8, !tbaa !40, !alias.scope !289
  %i.ew = load ptr, ptr %i.dm, align 8, !tbaa !19, !noalias !289 ; 2 uses
  %i.ex = load i64, ptr %i.dp, align 8, !tbaa !18, !noalias !289 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !289
  store i64 %i.ex, ptr %i.a, align 8, !tbaa !105, !noalias !289
  %i.ey = icmp ugt i64 %i.ex, 15
  br i1 %i.ey, label %.noexc.i.i112, label %._crit_edge.i.i.i111

.noexc.i.i112:                                    ; preds = %bb.y
  %i.ez = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ez, ptr %11, align 8, !tbaa !19, !alias.scope !289
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !105, !noalias !289
  store i64 %i.fa, ptr %i.ev, align 8, !tbaa !20, !alias.scope !289
  br label %._crit_edge.i.i.i111

._crit_edge.i.i.i111:                             ; preds = %.noexc.i.i112, %bb.y
  %i.fb = phi ptr [ %i.ez, %.noexc.i.i112 ], [ %i.ev, %bb.y ] ; 2 uses
  switch i64 %i.ex, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNK12AstNodeCCall8argTypesB5cxx11Ev.exit113
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i111
  %i.fc = load i8, ptr %i.ew, align 1, !tbaa !20
  store i8 %i.fc, ptr %i.fb, align 1, !tbaa !20
  br label %_ZNK12AstNodeCCall8argTypesB5cxx11Ev.exit113

bb.aa:                                            ; preds = %._crit_edge.i.i.i111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fb, ptr align 1 %i.ew, i64 %i.ex, i1 false)
  br label %_ZNK12AstNodeCCall8argTypesB5cxx11Ev.exit113

_ZNK12AstNodeCCall8argTypesB5cxx11Ev.exit113:     ; preds = %._crit_edge.i.i.i111, %bb.z, %bb.aa
  %i.fd = load i64, ptr %i.a, align 8, !tbaa !105, !noalias !289 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !18, !alias.scope !289
  %i.ff = load ptr, ptr %11, align 8, !tbaa !19, !alias.scope !289
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  store i8 0, ptr %i.fg, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !289
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.fi = load ptr, ptr %11, align 8, !tbaa !19
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.fh, ptr noundef null, ptr noundef %i.fi)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit115 unwind label %bb.ab

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit115: ; preds = %_ZNK12AstNodeCCall8argTypesB5cxx11Ev.exit113
  %i.fj = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ev
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit115
  %i.fl = load i64, ptr %i.ev, align 8, !tbaa !20
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK12AstNodeCCall8argTypesB5cxx11Ev.exit113
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ev
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.ab
  %i.fq = load i64, ptr %i.ev, align 8, !tbaa !20
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %.2 = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !38
  %i.fu = trunc nuw i8 %.2 to i1
  call void @_ZN9EmitCFunc19putCommaIterateNextEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.ft, i1 noundef zeroext %i.fu)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.fv, ptr %12, align 8, !tbaa !40
  store i8 41, ptr %i.fv, align 8, !tbaa !20
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.fw, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.fx, align 1, !tbaa !20
  %i.fy = load ptr, ptr %i.h, align 8, !tbaa !50
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.fy, ptr noundef null, ptr noundef nonnull %i.fv)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit127 unwind label %bb.ad

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit127: ; preds = %bb.ac
  %i.fz = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.fv
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit127
  %i.gb = load i64, ptr %i.fv, align 8, !tbaa !20
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  ret void

bb.ad:                                            ; preds = %bb.ac
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.fv
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.ad
  %i.gg = load i64, ptr %i.fv, align 8, !tbaa !20
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn41.pn.pn = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  resume { ptr, i32 } %.pn41.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI9AstCAwaitS_EEbPKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !101
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 407
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9EmitCFunc19putCommaIterateNextEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.a, ptr %3, align 8, !tbaa !40
  store i16 8236, ptr %i.a, align 8
  store i64 2, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 2, !tbaa !20
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.e, ptr noundef null, ptr noundef nonnull %i.a)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel: ; preds = %bb.b
  %i.f = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel
  %i.h = load i64, ptr %i.a, align 8, !tbaa !20
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %.lr.ph
  %i.j = load ptr, ptr %1, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117  ; 2 uses
  %.not.peel = icmp eq ptr %i.n, null
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.c, %bb.a
  ret void

.peel.next:                                       ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.0818 = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.n, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.a, ptr %3, align 8, !tbaa !40
  store i16 8236, ptr %i.a, align 8
  store i64 2, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 2, !tbaa !20
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !50
  invoke void @_ZN14V3OutFormatter5putnsEPK7AstNodePKc(ptr noundef nonnull align 8 dereferenceable(132) %i.o, ptr noundef null, ptr noundef nonnull %i.a)
          to label %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.peel.next
  %i.p = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = load i64, ptr %i.a, align 8, !tbaa !20
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.v = load i64, ptr %i.a, align 8, !tbaa !20
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN21EmitCBaseVisitorConst4putsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.x = load ptr, ptr %.0818, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 312
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(152) %.0818, ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !0
  %i.aa = getelementptr inbounds nuw i8, ptr %.0818, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !117 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !290
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12AstNodeCCall5argspEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK9EmitCFunc17dereferenceStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !19     ; 6 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !20
  %i.d = icmp eq i8 %i.c, 40
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20
  %i.g = icmp eq i8 %i.f, 38
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.107, i64 noundef 2, i64 noundef %i.i) #22, !noalias !300
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  %i.k = add i64 %i.i, -3
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !40, !alias.scope !300
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.n = add i64 %i.i, -2
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.n) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !300
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !105, !noalias !300
  %i.o = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.o, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !19, !alias.scope !300
  %i.q = load i64, ptr %i.a, align 8, !tbaa !105, !noalias !300
  store i64 %i.q, ptr %i.l, align 8, !tbaa !20, !alias.scope !300
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.r = phi ptr [ %i.p, %.noexc10.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.m, align 1, !tbaa !20
  store i8 %i.s, ptr %i.r, align 1, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.m, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.t = load i64, ptr %i.a, align 8, !tbaa !105, !noalias !300 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !18, !alias.scope !300
  %i.v = load ptr, ptr %3, align 8, !tbaa !19, !alias.scope !300
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !300
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.x = load i64, ptr %i.u, align 8, !tbaa !18, !noalias !301
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.x, i64 noundef 0, i64 noundef 1, i8 noundef signext 46)
          to label %.noexc unwind label %bb.i, !noalias !301 ; 6 uses

.noexc:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !40, !alias.scope !301
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !19  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !18 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.aa, ptr %0, align 8, !tbaa !19, !alias.scope !301
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !20
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !20, !alias.scope !301
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.ai = phi i64 [ %i.ae, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !18, !alias.scope !301
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !19
  store i64 0, ptr %i.aj, align 8, !tbaa !18
  store i8 0, ptr %i.ab, align 8, !tbaa !20
  %i.al = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.l
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.h
  %i.an = load i64, ptr %i.l, align 8, !tbaa !20
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ap = landingpad { ptr, i32 }
end_hunk_0
