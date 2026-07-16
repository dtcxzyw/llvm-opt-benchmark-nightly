inline.NumInlined: 2799
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6google8protobuf8compiler4java13GenerateLargeEPNS0_2io7PrinterEPKNS0_14EnumDescriptorEbPNS2_7ContextEPNS2_17ClassNameResolverE:bb.a
  store i8 0, ptr %i.du, align 8, !tbaa !110
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 176
  store i8 0, ptr %i.dv, align 8, !tbaa !118
  %i.dw = getelementptr inbounds nuw i8, ptr %16, i64 184 ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 11 uses
  store ptr %i.dx, ptr %18, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dx, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store i64 6, ptr %i.dy, align 8, !tbaa !102
  %i.dz = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i8 0, ptr %i.dz, align 2, !tbaa !30
  %i.ea = load ptr, ptr %i.t, align 8, !tbaa !52  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !120
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.u, label %_ZN6google8protobuf8compiler4java9IsOwnFileINS0_14EnumDescriptorEEEbPKT_b.exit.thread.thread

_ZN6google8protobuf8compiler4java9IsOwnFileINS0_14EnumDescriptorEEEbPKT_b.exit.thread.thread: ; preds = %._crit_edge.i.i207
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  store ptr %i.ee, ptr %i.dw, align 8, !tbaa !100
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i207
  %i.ef = load i8, ptr %i.u, align 1, !tbaa !53, !range !47, !noundef !48
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler4java17NestedInFileClassERKNS0_14EnumDescriptorEb(ptr noundef nonnull align 8 dereferenceable(88) %i.ea, i1 noundef zeroext %i.eg)
          to label %_ZN6google8protobuf8compiler4java9IsOwnFileINS0_14EnumDescriptorEEEbPKT_b.exit.thread unwind label %bb.bp

_ZN6google8protobuf8compiler4java9IsOwnFileINS0_14EnumDescriptorEEEbPKT_b.exit.thread: ; preds = %bb.u
  %spec.select = select i1 %i.eh, ptr @.str.3, ptr @.str.2 ; 2 uses
  %.pre1364 = load ptr, ptr %18, align 8, !tbaa !104 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 4 uses
  store ptr %i.ei, ptr %i.dw, align 8, !tbaa !100
  %i.ej = icmp eq ptr %.pre1364, %i.dx
  br i1 %i.ej, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

bb.v:                                             ; preds = %_ZN6google8protobuf8compiler4java9IsOwnFileINS0_14EnumDescriptorEEEbPKT_b.exit.thread.thread, %_ZN6google8protobuf8compiler4java9IsOwnFileINS0_14EnumDescriptorEEEbPKT_b.exit.thread
  %i.ek = phi ptr [ %i.ee, %_ZN6google8protobuf8compiler4java9IsOwnFileINS0_14EnumDescriptorEEEbPKT_b.exit.thread.thread ], [ %i.ei, %_ZN6google8protobuf8compiler4java9IsOwnFileINS0_14EnumDescriptorEEEbPKT_b.exit.thread ] ; 2 uses
  %i.el = phi ptr [ @.str.3, %_ZN6google8protobuf8compiler4java9IsOwnFileINS0_14EnumDescriptorEEEbPKT_b.exit.thread.thread ], [ %spec.select, %_ZN6google8protobuf8compiler4java9IsOwnFileINS0_14EnumDescriptorEEEbPKT_b.exit.thread ]
  %i.em = load i64, ptr %i.dy, align 8, !tbaa !102 ; 3 uses
  %i.en = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.en)
  %i.eo = add nuw nsw i64 %i.em, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.dx, i64 %i.eo, i1 false)
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %_ZN6google8protobuf8compiler4java9IsOwnFileINS0_14EnumDescriptorEEEbPKT_b.exit.thread
  store ptr %.pre1364, ptr %i.dw, align 8, !tbaa !104
  %i.ep = load i64, ptr %i.dx, align 8, !tbaa !30
  store i64 %i.ep, ptr %i.ei, align 8, !tbaa !30
  %.pre1365 = load i64, ptr %i.dy, align 8, !tbaa !102
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  %i.eq = phi ptr [ %i.ek, %bb.v ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ] ; 2 uses
  %i.er = phi ptr [ %i.el, %bb.v ], [ %spec.select, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ] ; 3 uses
  %i.es = phi i64 [ %i.em, %bb.v ], [ %.pre1365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ]
  %i.et = getelementptr inbounds nuw i8, ptr %16, i64 192
  store i64 %i.es, ptr %i.et, align 8, !tbaa !102
  store ptr %i.dx, ptr %18, align 8, !tbaa !104
  store i64 0, ptr %i.dy, align 8, !tbaa !102
  store i8 0, ptr %i.dx, align 8, !tbaa !30
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ev = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ev, ptr %12, align 8, !tbaa !100
  %i.ew = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 %i.ew, ptr %i.f, align 8, !tbaa !90
  %i.ex = icmp ugt i64 %i.ew, 15
  br i1 %i.ex, label %.noexc.i.i710, label %._crit_edge.i.i.i

.noexc.i.i710:                                    ; preds = %bb.w
  %i.ey = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc713 unwind label %bb.ab ; 2 uses

.noexc713:                                        ; preds = %.noexc.i.i710
  store ptr %i.ey, ptr %12, align 8, !tbaa !104
  %i.ez = load i64, ptr %i.f, align 8, !tbaa !90
  store i64 %i.ez, ptr %i.ev, align 8, !tbaa !30
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc713, %bb.w
  %i.fa = phi ptr [ %i.ey, %.noexc713 ], [ %i.ev, %bb.w ] ; 2 uses
  switch i64 %i.ew, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.fb = load i8, ptr %i.er, align 1, !tbaa !30
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !30
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr nonnull align 1 %i.er, i64 %i.ew, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i
  %i.fc = load i64, ptr %i.f, align 8, !tbaa !90  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !102
  %i.fe = load ptr, ptr %12, align 8, !tbaa !104
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fc
  store i8 0, ptr %i.ff, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.fg = getelementptr inbounds nuw i8, ptr %16, i64 232 ; 3 uses
  store ptr %i.fg, ptr %i.eu, align 8, !tbaa !100, !alias.scope !121
  %i.fh = load ptr, ptr %12, align 8, !tbaa !104, !noalias !121 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.ev
  br i1 %i.fi, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i708

bb.aa:                                            ; preds = %bb.z
  %i.fj = load i64, ptr %i.fd, align 8, !tbaa !102, !noalias !121 ; 3 uses
  %i.fk = icmp ult i64 %i.fj, 16
  call void @llvm.assume(i1 %i.fk)
  %i.fl = add nuw nsw i64 %i.fj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fg, ptr noundef nonnull align 8 dereferenceable(1) %i.ev, i64 %i.fl, i1 false)
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i708: ; preds = %bb.z
  store ptr %i.fh, ptr %i.eu, align 8, !tbaa !104, !alias.scope !121
  %i.fm = load i64, ptr %i.ev, align 8, !tbaa !30, !noalias !121
  store i64 %i.fm, ptr %i.fg, align 8, !tbaa !30, !alias.scope !121
  %.pre.i.i709 = load i64, ptr %i.fd, align 8, !tbaa !102, !noalias !121
  br label %bb.ac

bb.ab:                                            ; preds = %.noexc.i.i710
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %i.dw, align 8, !tbaa !104 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.eq
  br i1 %i.fp, label %.body217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i214: ; preds = %bb.ab
  %i.fq = load i64, ptr %i.eq, align 8, !tbaa !30
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #28
  br label %.body217

bb.ac:                                            ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i708
  %i.fs = phi i64 [ %i.fj, %bb.aa ], [ %.pre.i.i709, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i708 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %16, i64 224
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !102, !alias.scope !121
  %i.fu = getelementptr inbounds nuw i8, ptr %16, i64 248
  store i8 0, ptr %i.fu, align 8, !tbaa !108, !alias.scope !121
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 256
  %i.fw = getelementptr inbounds nuw i8, ptr %16, i64 272 ; 2 uses
  store ptr %i.fw, ptr %i.fv, align 8, !tbaa !100
  %i.fx = getelementptr inbounds nuw i8, ptr %16, i64 264
  store i64 0, ptr %i.fx, align 8, !tbaa !102
  store i8 0, ptr %i.fw, align 8, !tbaa !30
  %i.fy = getelementptr inbounds nuw i8, ptr %16, i64 288
  store i8 0, ptr %i.fy, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.fz = getelementptr inbounds nuw i8, ptr %16, i64 360
  store i8 0, ptr %i.fz, align 8, !tbaa !118
  %i.ga = getelementptr inbounds nuw i8, ptr %16, i64 368 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.gb, ptr noundef nonnull align 1 dereferenceable(11) @.str.4, i64 11, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %19, i64 27
  store i8 0, ptr %i.gd, align 1, !tbaa !30
  %i.ge = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !124
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 49
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !30, !range !47, !noundef !48
  %i.gj = trunc nuw i8 %i.gi to i1                ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 384 ; 4 uses
  store ptr %i.gk, ptr %i.ga, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gk, ptr noundef nonnull align 8 dereferenceable(12) %i.gb, i64 12, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 376
  store i64 11, ptr %i.gl, align 8, !tbaa !102
  store ptr %i.gb, ptr %19, align 8, !tbaa !104
  store i64 0, ptr %i.gc, align 8, !tbaa !102
  store i8 0, ptr %i.gb, align 8, !tbaa !30
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 400 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.gn, ptr %11, align 8, !tbaa !100
  %i.go = select i1 %i.gj, i64 21, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 %i.go, ptr %i.e, align 8, !tbaa !90
  br i1 %i.gj, label %.noexc.i.i717, label %.critedge

.noexc.i.i717:                                    ; preds = %bb.ac
  %i.gp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %bb.ad unwind label %bb.af     ; 2 uses

bb.ad:                                            ; preds = %.noexc.i.i717
  store ptr %i.gp, ptr %11, align 8, !tbaa !104
  %i.gq = load i64, ptr %i.e, align 8, !tbaa !90  ; 2 uses
  store i64 %i.gq, ptr %i.gn, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.gp, ptr noundef nonnull align 1 dereferenceable(21) @.str.5, i64 21, i1 false)
  %.pre1367 = load ptr, ptr %11, align 8, !tbaa !104
  br label %.critedge

.critedge:                                        ; preds = %bb.ac, %bb.ad
  %i.gr = phi ptr [ %i.gn, %bb.ac ], [ %.pre1367, %bb.ad ]
  %i.gs = phi i64 [ 0, %bb.ac ], [ %i.gq, %bb.ad ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !102
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs
  store i8 0, ptr %i.gu, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 416 ; 3 uses
  store ptr %i.gv, ptr %i.gm, align 8, !tbaa !100, !alias.scope !125
  %i.gw = load ptr, ptr %11, align 8, !tbaa !104, !noalias !125 ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.gn
  br i1 %i.gx, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i715

bb.ae:                                            ; preds = %.critedge
  %i.gy = load i64, ptr %i.gt, align 8, !tbaa !102, !noalias !125 ; 3 uses
  %i.gz = icmp ult i64 %i.gy, 16
  call void @llvm.assume(i1 %i.gz)
  %i.ha = add nuw nsw i64 %i.gy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gv, ptr noundef nonnull align 8 dereferenceable(1) %i.gn, i64 %i.ha, i1 false)
  br label %.noexc.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i715: ; preds = %.critedge
  store ptr %i.gw, ptr %i.gm, align 8, !tbaa !104, !alias.scope !125
  %i.hb = load i64, ptr %i.gn, align 8, !tbaa !30, !noalias !125
  store i64 %i.hb, ptr %i.gv, align 8, !tbaa !30, !alias.scope !125
  %.pre.i.i716 = load i64, ptr %i.gt, align 8, !tbaa !102, !noalias !125
  br label %.noexc.i232

bb.af:                                            ; preds = %.noexc.i.i717
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %i.ga, align 8, !tbaa !104 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gk
  br i1 %i.he, label %.body228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i225: ; preds = %bb.af
  %i.hf = load i64, ptr %i.gk, align 8, !tbaa !30
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #28
  br label %.body228

.noexc.i232:                                      ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i715
  %i.hh = phi i64 [ %i.gy, %bb.ae ], [ %.pre.i.i716, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i715 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 408
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !102, !alias.scope !125
  %i.hj = getelementptr inbounds nuw i8, ptr %16, i64 432
  store i8 0, ptr %i.hj, align 8, !tbaa !108, !alias.scope !125
  %i.hk = getelementptr inbounds nuw i8, ptr %16, i64 440
  %i.hl = getelementptr inbounds nuw i8, ptr %16, i64 456 ; 2 uses
  store ptr %i.hl, ptr %i.hk, align 8, !tbaa !100
  %i.hm = getelementptr inbounds nuw i8, ptr %16, i64 448
  store i64 0, ptr %i.hm, align 8, !tbaa !102
  store i8 0, ptr %i.hl, align 8, !tbaa !30
  %i.hn = getelementptr inbounds nuw i8, ptr %16, i64 472
  store i8 0, ptr %i.hn, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.ho = getelementptr inbounds nuw i8, ptr %16, i64 544
  store i8 0, ptr %i.ho, align 8, !tbaa !118
  %i.hp = getelementptr inbounds nuw i8, ptr %16, i64 552 ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 11 uses
  store ptr %i.hq, ptr %20, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #25
  store i64 18, ptr %i.r, align 8, !tbaa !90
  %i.hr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 0)
          to label %.noexc233 unwind label %bb.bq ; 2 uses

.noexc233:                                        ; preds = %.noexc.i232
  store ptr %i.hr, ptr %20, align 8, !tbaa !104
  %i.hs = load i64, ptr %i.r, align 8, !tbaa !90  ; 3 uses
  store i64 %i.hs, ptr %i.hq, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.hr, ptr noundef nonnull align 1 dereferenceable(18) @.str.7, i64 18, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !102
  %i.hu = load ptr, ptr %20, align 8, !tbaa !104
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hs
  store i8 0, ptr %i.hv, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #25
  %i.hw = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !58
  %i.hz = getelementptr inbounds nuw i8, ptr %16, i64 568 ; 5 uses
  store ptr %i.hz, ptr %i.hp, align 8, !tbaa !100
  %i.ia = load ptr, ptr %20, align 8, !tbaa !104  ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.hq
  br i1 %i.ib, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

bb.ag:                                            ; preds = %.noexc233
  %i.ic = load i64, ptr %i.ht, align 8, !tbaa !102 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 16
  call void @llvm.assume(i1 %i.id)
  %i.ie = add nuw nsw i64 %i.ic, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hz, ptr noundef nonnull align 8 dereferenceable(1) %i.hq, i64 %i.ie, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %.noexc233
  store ptr %i.ia, ptr %i.hp, align 8, !tbaa !104
  %i.if = load i64, ptr %i.hq, align 8, !tbaa !30
  store i64 %i.if, ptr %i.hz, align 8, !tbaa !30
  %.pre1368 = load i64, ptr %i.ht, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i236: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235, %bb.ag
  %i.ig = phi i64 [ %.pre1368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235 ], [ %i.ic, %bb.ag ]
  %i.ih = getelementptr inbounds nuw i8, ptr %16, i64 560
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !102
  store ptr %i.hq, ptr %20, align 8, !tbaa !104
  store i64 0, ptr %i.ht, align 8, !tbaa !102
  store i8 0, ptr %i.hq, align 8, !tbaa !30
  %i.ii = getelementptr inbounds nuw i8, ptr %16, i64 584 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ik = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.hy, ptr noundef nonnull %i.ij)
          to label %.noexc726 unwind label %bb.al

.noexc726:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i236
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ij to i64
  %i.in = sub i64 %i.il, %i.im                    ; 5 uses
  store i64 %i.in, ptr %10, align 8, !tbaa !128
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ij, ptr %i.io, align 8, !tbaa !130
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !131
  %i.ip = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ip, ptr %9, align 8, !tbaa !100, !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !131
  store i64 %i.in, ptr %i.d, align 8, !tbaa !90, !noalias !131
  %i.iq = icmp ugt i64 %i.in, 15
  br i1 %i.iq, label %.noexc.i.i.i.i.i725, label %._crit_edge.i.i.i.i.i.i722

.noexc.i.i.i.i.i725:                              ; preds = %.noexc726
  %i.ir = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc727 unwind label %bb.al ; 2 uses

.noexc727:                                        ; preds = %.noexc.i.i.i.i.i725
  store ptr %i.ir, ptr %9, align 8, !tbaa !104, !noalias !131
  %i.is = load i64, ptr %i.d, align 8, !tbaa !90, !noalias !131
  store i64 %i.is, ptr %i.ip, align 8, !tbaa !30, !noalias !131
  br label %._crit_edge.i.i.i.i.i.i722

._crit_edge.i.i.i.i.i.i722:                       ; preds = %.noexc727, %.noexc726
  %i.it = phi ptr [ %i.ir, %.noexc727 ], [ %i.ip, %.noexc726 ] ; 2 uses
  switch i64 %i.in, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i.i722
  %i.iu = load i8, ptr %i.ij, align 8, !tbaa !30, !noalias !131
  store i8 %i.iu, ptr %i.it, align 1, !tbaa !30, !noalias !131
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i722
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr nonnull align 8 %i.ij, i64 %i.in, i1 false), !noalias !131
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i.i.i.i722
  %i.iv = load i64, ptr %i.d, align 8, !tbaa !90, !noalias !131 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !102, !noalias !131
  %i.ix = load ptr, ptr %9, align 8, !tbaa !104, !noalias !131
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iv
  store i8 0, ptr %i.iy, align 1, !tbaa !30, !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !131
  %i.iz = getelementptr inbounds nuw i8, ptr %16, i64 600 ; 3 uses
  store ptr %i.iz, ptr %i.ii, align 8, !tbaa !100, !alias.scope !131
  %i.ja = load ptr, ptr %9, align 8, !tbaa !104, !noalias !131 ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ip
  br i1 %i.jb, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i723

bb.ak:                                            ; preds = %bb.aj
  %i.jc = load i64, ptr %i.iw, align 8, !tbaa !102, !noalias !131 ; 3 uses
  %i.jd = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jd)
  %i.je = add nuw nsw i64 %i.jc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iz, ptr noundef nonnull align 8 dereferenceable(1) %i.ip, i64 %i.je, i1 false)
  br label %.noexc.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i723: ; preds = %bb.aj
  store ptr %i.ja, ptr %i.ii, align 8, !tbaa !104, !alias.scope !131
  %i.jf = load i64, ptr %i.ip, align 8, !tbaa !30, !noalias !131
  store i64 %i.jf, ptr %i.iz, align 8, !tbaa !30, !alias.scope !131
  %.pre.i.i724 = load i64, ptr %i.iw, align 8, !tbaa !102, !noalias !131
  br label %.noexc.i243

bb.al:                                            ; preds = %.noexc.i.i.i.i.i725, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i236
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = load ptr, ptr %i.hp, align 8, !tbaa !104 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.hz
  br i1 %i.ji, label %.body240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i237: ; preds = %bb.al
  %i.jj = load i64, ptr %i.hz, align 8, !tbaa !30
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #28
  br label %.body240

.noexc.i243:                                      ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i723
  %i.jl = phi i64 [ %i.jc, %bb.ak ], [ %.pre.i.i724, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i723 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %16, i64 592
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_12vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
  store ptr %i.qk, ptr %i.ay, align 8, !tbaa !104, !alias.scope !547
  %i.qp = load i64, ptr %i.az, align 8, !tbaa !30, !noalias !547
  store i64 %i.qp, ptr %i.bb, align 8, !tbaa !30, !alias.scope !547
  %.pre.i.i361.i.i.i.i = load i64, ptr %i.ba, align 8, !tbaa !102, !noalias !547
  br label %.noexc.i144.i.i.i.i

.loopexit513.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i362.i.i.i.i
  %lpad.loopexit515.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp514.i.i.i.i:                    ; preds = %.noexc.i.i363.i.i.i.i
  %lpad.loopexit.split-lp516.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp514.i.i.i.i, %.loopexit513.i.i.i.i
  %lpad.phi517.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit515.i.i.i.i, %.loopexit513.i.i.i.i ], [ %lpad.loopexit.split-lp516.i.i.i.i, %.loopexit.split-lp514.i.i.i.i ] ; 2 uses
  %i.qq = load ptr, ptr %i.at, align 8, !tbaa !104 ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.aw
  br i1 %i.qr, label %.body140.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137.i.i.i.i: ; preds = %bb.ah
  %i.qs = load i64, ptr %i.aw, align 8, !tbaa !30
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qt) #28
  br label %.body140.i.i.i.i

.noexc.i144.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i360.i.i.i.i, %bb.ag
  %i.qu = phi i64 [ %i.qm, %bb.ag ], [ %.pre.i.i361.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i360.i.i.i.i ]
  store i64 %i.qu, ptr %i.bc, align 8, !tbaa !102, !alias.scope !547
  store i8 0, ptr %i.bd, align 8, !tbaa !108, !alias.scope !547
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !547
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !100
  store i64 0, ptr %i.bg, align 8, !tbaa !102
  store i8 0, ptr %i.bf, align 8, !tbaa !30
  store i8 0, ptr %i.bh, align 8, !tbaa !110
  store i8 0, ptr %i.bi, align 8, !tbaa !118
  store ptr %i.bk, ptr %22, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  store i64 25, ptr %i.l, align 8, !tbaa !90
  %i.qv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc145.i.i.i.i unwind label %bb.bp ; 2 uses

.noexc145.i.i.i.i:                                ; preds = %.noexc.i144.i.i.i.i
  store ptr %i.qv, ptr %22, align 8, !tbaa !104
  %i.qw = load i64, ptr %i.l, align 8, !tbaa !90  ; 3 uses
  store i64 %i.qw, ptr %i.bk, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.qv, ptr noundef nonnull align 1 dereferenceable(25) @.str.79, i64 25, i1 false)
  store i64 %i.qw, ptr %i.bl, align 8, !tbaa !102
  %i.qx = load ptr, ptr %22, align 8, !tbaa !104
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qw
  store i8 0, ptr %i.qy, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !100
  %i.qz = load ptr, ptr %22, align 8, !tbaa !104  ; 2 uses
  %i.ra = icmp eq ptr %i.qz, %i.bk
  br i1 %i.ra, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i.i.i.i

bb.ai:                                            ; preds = %.noexc145.i.i.i.i
  %i.rb = load i64, ptr %i.bl, align 8, !tbaa !102 ; 3 uses
  %i.rc = icmp ult i64 %i.rb, 16
  call void @llvm.assume(i1 %i.rc)
  %i.rd = add nuw nsw i64 %i.rb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.rd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i148.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i.i.i.i: ; preds = %.noexc145.i.i.i.i
  store ptr %i.qz, ptr %i.bj, align 8, !tbaa !104
  %i.re = load i64, ptr %i.bk, align 8, !tbaa !30
  store i64 %i.re, ptr %i.bm, align 8, !tbaa !30
  %.pre803.i.i.i.i = load i64, ptr %i.bl, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i148.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i148.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i.i.i.i, %bb.ai
  %i.rf = phi i64 [ %.pre803.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i.i.i.i ], [ %i.rb, %bb.ai ]
  store i64 %i.rf, ptr %i.bn, align 8, !tbaa !102
  store ptr %i.bk, ptr %22, align 8, !tbaa !104
  store i64 0, ptr %i.bl, align 8, !tbaa !102
  store i8 0, ptr %i.bk, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.rg = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.nc, ptr noundef nonnull %i.bp)
          to label %.noexc371.i.i.i.i unwind label %bb.an

.noexc371.i.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i148.i.i.i.i
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = sub i64 %i.rh, %i.bq                    ; 5 uses
  store i64 %i.ri, ptr %13, align 8, !tbaa !128
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !130
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !550
  store ptr %i.bs, ptr %12, align 8, !tbaa !100, !noalias !550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25, !noalias !550
  store i64 %i.ri, ptr %i.i, align 8, !tbaa !90, !noalias !550
  %i.rj = icmp ugt i64 %i.ri, 15
  br i1 %i.rj, label %.noexc.i.i.i.i.i370.i.i.i.i, label %._crit_edge.i.i.i.i.i.i367.i.i.i.i

.noexc.i.i.i.i.i370.i.i.i.i:                      ; preds = %.noexc371.i.i.i.i
  %i.rk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc372.i.i.i.i unwind label %bb.an ; 2 uses

.noexc372.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i370.i.i.i.i
  store ptr %i.rk, ptr %12, align 8, !tbaa !104, !noalias !550
  %i.rl = load i64, ptr %i.i, align 8, !tbaa !90, !noalias !550
  store i64 %i.rl, ptr %i.bs, align 8, !tbaa !30, !noalias !550
  br label %._crit_edge.i.i.i.i.i.i367.i.i.i.i

._crit_edge.i.i.i.i.i.i367.i.i.i.i:               ; preds = %.noexc372.i.i.i.i, %.noexc371.i.i.i.i
  %i.rm = phi ptr [ %i.rk, %.noexc372.i.i.i.i ], [ %i.bs, %.noexc371.i.i.i.i ] ; 2 uses
  switch i64 %i.ri, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i367.i.i.i.i
  %i.rn = load i8, ptr %i.bp, align 8, !tbaa !30, !noalias !550
  store i8 %i.rn, ptr %i.rm, align 1, !tbaa !30, !noalias !550
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i367.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rm, ptr nonnull align 8 %i.bp, i64 %i.ri, i1 false), !noalias !550
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i.i.i.i367.i.i.i.i
  %i.ro = load i64, ptr %i.i, align 8, !tbaa !90, !noalias !550 ; 2 uses
  store i64 %i.ro, ptr %i.bt, align 8, !tbaa !102, !noalias !550
  %i.rp = load ptr, ptr %12, align 8, !tbaa !104, !noalias !550
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.ro
  store i8 0, ptr %i.rq, align 1, !tbaa !30, !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25, !noalias !550
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !100, !alias.scope !550
  %i.rr = load ptr, ptr %12, align 8, !tbaa !104, !noalias !550 ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.bs
  br i1 %i.rs, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i368.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.rt = load i64, ptr %i.bt, align 8, !tbaa !102, !noalias !550 ; 3 uses
  %i.ru = icmp ult i64 %i.rt, 16
  call void @llvm.assume(i1 %i.ru)
  %i.rv = add nuw nsw i64 %i.rt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.rv, i1 false)
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i368.i.i.i.i: ; preds = %bb.al
  store ptr %i.rr, ptr %i.bo, align 8, !tbaa !104, !alias.scope !550
  %i.rw = load i64, ptr %i.bs, align 8, !tbaa !30, !noalias !550
  store i64 %i.rw, ptr %i.bu, align 8, !tbaa !30, !alias.scope !550
  %.pre.i.i369.i.i.i.i = load i64, ptr %i.bt, align 8, !tbaa !102, !noalias !550
  br label %bb.ao

bb.an:                                            ; preds = %.noexc.i.i.i.i.i370.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i148.i.i.i.i
  %i.rx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ry = load ptr, ptr %i.bj, align 8, !tbaa !104 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.bm
  br i1 %i.rz, label %.body152.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149.i.i.i.i: ; preds = %bb.an
  %i.sa = load i64, ptr %i.bm, align 8, !tbaa !30
  br label %.body152.i.i.i.i.sink.split

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i368.i.i.i.i, %bb.am
  %i.sb = phi i64 [ %i.rt, %bb.am ], [ %.pre.i.i369.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i368.i.i.i.i ]
  store i64 %i.sb, ptr %i.bv, align 8, !tbaa !102, !alias.scope !550
  store i8 0, ptr %i.bw, align 8, !tbaa !108, !alias.scope !550
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !100
  store i64 0, ptr %i.bz, align 8, !tbaa !102
  store i8 0, ptr %i.by, align 8, !tbaa !30
  store i8 0, ptr %i.ca, align 8, !tbaa !110
  store i8 0, ptr %i.cb, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cd, ptr noundef nonnull align 1 dereferenceable(11) @.str.4, i64 11, i1 false)
  store i8 0, ptr %i.hk, align 1, !tbaa !30
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cf, ptr noundef nonnull align 8 dereferenceable(12) %i.cd, i64 12, i1 false)
  store i64 11, ptr %i.cg, align 8, !tbaa !102
  store ptr %i.cd, ptr %23, align 8, !tbaa !104
  store i64 0, ptr %i.ce, align 8, !tbaa !102
  store i8 0, ptr %i.cd, align 8, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !553
  store ptr %i.ci, ptr %11, align 8, !tbaa !100, !noalias !553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25, !noalias !553
  store i64 %i.ki, ptr %i.h, align 8, !tbaa !90, !noalias !553
  br i1 %i.kh, label %.noexc.i.i.i.i.i380.i.i.i.i, label %.critedge505.i.i.i.i

.noexc.i.i.i.i.i380.i.i.i.i:                      ; preds = %bb.ao
  %i.sc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %bb.ap unwind label %bb.ar     ; 2 uses

bb.ap:                                            ; preds = %.noexc.i.i.i.i.i380.i.i.i.i
  store ptr %i.sc, ptr %11, align 8, !tbaa !104, !noalias !553
  %i.sd = load i64, ptr %i.h, align 8, !tbaa !90, !noalias !553 ; 2 uses
  store i64 %i.sd, ptr %i.ci, align 8, !tbaa !30, !noalias !553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.sc, ptr noundef nonnull align 1 dereferenceable(22) @.str.75, i64 22, i1 false), !noalias !553
  %.pre805.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !104, !noalias !553
  br label %.critedge505.i.i.i.i

.critedge505.i.i.i.i:                             ; preds = %bb.ap, %bb.ao
  %i.se = phi ptr [ %i.ci, %bb.ao ], [ %.pre805.i.i.i.i, %bb.ap ]
  %i.sf = phi i64 [ 0, %bb.ao ], [ %i.sd, %bb.ap ] ; 2 uses
  store i64 %i.sf, ptr %i.cj, align 8, !tbaa !102, !noalias !553
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sf
  store i8 0, ptr %i.sg, align 1, !tbaa !30, !noalias !553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25, !noalias !553
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !100, !alias.scope !553
  %i.sh = load ptr, ptr %11, align 8, !tbaa !104, !noalias !553 ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.ci
  br i1 %i.si, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i378.i.i.i.i

bb.aq:                                            ; preds = %.critedge505.i.i.i.i
  %i.sj = load i64, ptr %i.cj, align 8, !tbaa !102, !noalias !553 ; 3 uses
  %i.sk = icmp ult i64 %i.sj, 16
  call void @llvm.assume(i1 %i.sk)
  %i.sl = add nuw nsw i64 %i.sj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ck, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %i.sl, i1 false)
  br label %bb.as

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i378.i.i.i.i: ; preds = %.critedge505.i.i.i.i
  store ptr %i.sh, ptr %i.ch, align 8, !tbaa !104, !alias.scope !553
  %i.sm = load i64, ptr %i.ci, align 8, !tbaa !30, !noalias !553
  store i64 %i.sm, ptr %i.ck, align 8, !tbaa !30, !alias.scope !553
  %.pre.i.i379.i.i.i.i = load i64, ptr %i.cj, align 8, !tbaa !102, !noalias !553
  br label %bb.as

bb.ar:                                            ; preds = %.noexc.i.i.i.i.i380.i.i.i.i
  %i.sn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.so = load ptr, ptr %i.cc, align 8, !tbaa !104 ; 2 uses
  %i.sp = icmp eq ptr %i.so, %i.cf
  br i1 %i.sp, label %.body163.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160.i.i.i.i: ; preds = %bb.ar
  %i.sq = load i64, ptr %i.cf, align 8, !tbaa !30
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.sr) #28
  br label %.body163.i.i.i.i

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i378.i.i.i.i, %bb.aq
  %i.ss = phi i64 [ %i.sj, %bb.aq ], [ %.pre.i.i379.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i378.i.i.i.i ]
  store i64 %i.ss, ptr %i.cl, align 8, !tbaa !102, !alias.scope !553
  store i8 0, ptr %i.cm, align 8, !tbaa !108, !alias.scope !553
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !553
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !100
  store i64 0, ptr %i.cp, align 8, !tbaa !102
  store i8 0, ptr %i.co, align 8, !tbaa !30
  store i8 0, ptr %i.cq, align 8, !tbaa !110
  store i8 0, ptr %i.cr, align 8, !tbaa !118
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.ne, ptr nonnull %19, i64 4, i64 172, ptr nonnull @.str.80)
          to label %.preheader796.i.i.i.i unwind label %.body163.loopexit.i.i.i.i

.preheader796.i.i.i.i:                            ; preds = %bb.as
  %i.st = load i8, ptr %i.cr, align 8, !tbaa !118, !range !47, !noundef !48
  %i.su = trunc nuw i8 %i.st to i1
  store i8 0, ptr %i.cr, align 8, !tbaa !118
  br i1 %i.su, label %bb.at, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.at:                                            ; preds = %.preheader796.i.i.i.i
  %i.sv = load ptr, ptr %i.hm, align 8, !tbaa !104 ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.hn
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.sx = load i64, ptr %i.hn, align 8, !tbaa !30
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sz = load ptr, ptr %i.hl, align 8, !tbaa !216 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.sz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.ta = load ptr, ptr %i.ho, align 8, !tbaa !218
  %i.tb = ptrtoint ptr %i.ta to i64
  %i.tc = ptrtoint ptr %i.sz to i64
  %i.td = sub i64 %i.tb, %i.tc
  call void @_ZdlPvm(ptr noundef nonnull %i.sz, i64 noundef %i.td) #28
  br label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, %.preheader796.i.i.i.i
  %i.te = load ptr, ptr %i.cn, align 8, !tbaa !104 ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.co
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.tg = load i64, ptr %i.co, align 8, !tbaa !30
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ti = load i8, ptr %i.cm, align 8, !tbaa !108
  %i.tj = icmp eq i8 %i.ti, 0
  br i1 %i.tj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.tk = load ptr, ptr %i.ch, align 8, !tbaa !104 ; 2 uses
  %i.tl = icmp eq ptr %i.tk, %i.ck
  br i1 %i.tl, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av
  %i.tm = load i64, ptr %i.ck, align 8, !tbaa !30
  %i.tn = add i64 %i.tm, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.tn) #28
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.to = load ptr, ptr %i.ck, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.to, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.tp = invoke noundef zeroext i1 %i.to(ptr noundef nonnull align 8 dereferenceable(73) %i.ch, ptr noundef nonnull align 8 dereferenceable(73) %i.ch, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i unwind label %bb.ay ; 0 uses

bb.ay:                                            ; preds = %bb.bm, %bb.bh, %bb.bc, %bb.ax
  %i.tq = landingpad { ptr, i32 }
          catch ptr null
  %i.tr = extractvalue { ptr, i32 } %i.tq, 0
  call void @__clang_call_terminate(ptr %i.tr) #27
  unreachable

_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i: ; preds = %bb.av, %bb.ax, %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ts = load ptr, ptr %i.cc, align 8, !tbaa !104 ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %i.cf
  br i1 %i.tt, label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i
  %i.tu = load i64, ptr %i.cf, align 8, !tbaa !30
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.ts, i64 noundef %i.tv) #28
  br label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i

_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165.i.i.i.i
  %i.tw = load i8, ptr %i.cb, align 8, !tbaa !118, !range !47, !noundef !48
  %i.tx = trunc nuw i8 %i.tw to i1
  store i8 0, ptr %i.cb, align 8, !tbaa !118
  br i1 %i.tx, label %bb.az, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i

bb.az:                                            ; preds = %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i
  %i.ty = load ptr, ptr %i.hq, align 8, !tbaa !104 ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %i.hr
  br i1 %i.tz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.1.i.i.i.i: ; preds = %bb.az
  %i.ua = load i64, ptr %i.hr, align 8, !tbaa !30
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.ty, i64 noundef %i.ub) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1.i.i.i.i: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.1.i.i.i.i
  %i.uc = load ptr, ptr %i.hp, align 8, !tbaa !216 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.1.i.i.i.i = icmp eq ptr %i.uc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.1.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1.i.i.i.i
  %i.ud = load ptr, ptr %i.hs, align 8, !tbaa !218
  %i.ue = ptrtoint ptr %i.ud to i64
  %i.uf = ptrtoint ptr %i.uc to i64
  %i.ug = sub i64 %i.ue, %i.uf
  call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef %i.ug) #28
  br label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i: ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1.i.i.i.i, %_ZN6google8protobuf2io7Printer3SubD2Ev.exit.i.i.i.i
  %i.uh = load ptr, ptr %i.bx, align 8, !tbaa !104 ; 2 uses
  %i.ui = icmp eq ptr %i.uh, %i.by
  br i1 %i.ui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i
  %i.uj = load i64, ptr %i.by, align 8, !tbaa !30
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.uk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.1.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.1.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i.1.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1.i.i.i.i
  %i.ul = load i8, ptr %i.bw, align 8, !tbaa !108
  %i.um = icmp eq i8 %i.ul, 0
  br i1 %i.um, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.1.i.i.i.i
  %i.un = load ptr, ptr %i.bu, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i = icmp eq ptr %i.un, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.1.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.uo = invoke noundef zeroext i1 %i.un(ptr noundef nonnull align 8 dereferenceable(73) %i.bo, ptr noundef nonnull align 8 dereferenceable(73) %i.bo, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.1.i.i.i.i unwind label %bb.ay ; 0 uses

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.1.i.i.i.i
  %i.up = load ptr, ptr %i.bo, align 8, !tbaa !104 ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.bu
  br i1 %i.uq, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.1.i.i.i.i: ; preds = %bb.bd
  %i.ur = load i64, ptr %i.bu, align 8, !tbaa !30
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.us) #28
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i.1.i.i.i.i

end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_12vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
    i64 1, label %bb.bw
    i64 0, label %bb.by
  ]

bb.bw:                                            ; preds = %._crit_edge.i.i.i.i.i.i396.i.i.i.i
  %i.zy = load i8, ptr %i.dn, align 8, !tbaa !30, !noalias !559
  store i8 %i.zy, ptr %i.zx, align 1, !tbaa !30, !noalias !559
  br label %bb.by

bb.bx:                                            ; preds = %._crit_edge.i.i.i.i.i.i396.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zx, ptr nonnull align 8 %i.dn, i64 %i.zt, i1 false), !noalias !559
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %._crit_edge.i.i.i.i.i.i396.i.i.i.i
  %i.zz = load i64, ptr %i.f, align 8, !tbaa !90, !noalias !559 ; 2 uses
  store i64 %i.zz, ptr %i.dr, align 8, !tbaa !102, !noalias !559
  %i.aaa = load ptr, ptr %8, align 8, !tbaa !104, !noalias !559
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %i.zz
  store i8 0, ptr %i.aab, align 1, !tbaa !30, !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25, !noalias !559
  store ptr %i.ds, ptr %i.dm, align 8, !tbaa !100, !alias.scope !559
  %i.aac = load ptr, ptr %8, align 8, !tbaa !104, !noalias !559 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, %i.dq
  br i1 %i.aad, label %bb.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i397.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.aae = load i64, ptr %i.dr, align 8, !tbaa !102, !noalias !559 ; 3 uses
  %i.aaf = icmp ult i64 %i.aae, 16
  call void @llvm.assume(i1 %i.aaf)
  %i.aag = add nuw nsw i64 %i.aae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ds, ptr noundef nonnull align 8 dereferenceable(1) %i.dq, i64 %i.aag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i220.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i397.i.i.i.i: ; preds = %bb.by
  store ptr %i.aac, ptr %i.dm, align 8, !tbaa !104, !alias.scope !559
  %i.aah = load i64, ptr %i.dq, align 8, !tbaa !30, !noalias !559
  store i64 %i.aah, ptr %i.ds, align 8, !tbaa !30, !alias.scope !559
  %.pre.i.i398.i.i.i.i = load i64, ptr %i.dr, align 8, !tbaa !102, !noalias !559
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i220.i.i.i.i

bb.ca:                                            ; preds = %.noexc.i.i.i.i.i399.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i209.i.i.i.i
  %i.aai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaj = load ptr, ptr %i.dh, align 8, !tbaa !104 ; 2 uses
  %i.aak = icmp eq ptr %i.aaj, %i.dk
  br i1 %i.aak, label %.body213.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210.i.i.i.i: ; preds = %bb.ca
  %i.aal = load i64, ptr %i.dk, align 8, !tbaa !30
  br label %.body213.i.i.i.i.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i220.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i397.i.i.i.i, %bb.bz
  %i.aam = phi i64 [ %i.aae, %bb.bz ], [ %.pre.i.i398.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i397.i.i.i.i ]
  store i64 %i.aam, ptr %i.dt, align 8, !tbaa !102, !alias.scope !559
  store i8 0, ptr %i.du, align 8, !tbaa !108, !alias.scope !559
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !100
  store i64 0, ptr %i.dx, align 8, !tbaa !102
  store i8 0, ptr %i.dw, align 8, !tbaa !30
  store i8 0, ptr %i.dy, align 8, !tbaa !110
  store i8 0, ptr %i.dz, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.eb, ptr noundef nonnull align 1 dereferenceable(5) @.str.60, i64 5, i1 false)
  store i8 0, ptr %i.id, align 1, !tbaa !30
  %i.aan = load ptr, ptr %i.m, align 8, !tbaa !66 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !527
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 56
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !65
  %i.aas = ptrtoint ptr %i.aan to i64
  %i.aat = ptrtoint ptr %i.aar to i64
  %i.aau = sub i64 %i.aas, %i.aat
  %i.aav = sdiv exact i64 %i.aau, 48
  %i.aaw = trunc i64 %i.aav to i32
  store ptr %i.ed, ptr %i.ea, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ed, ptr noundef nonnull align 8 dereferenceable(6) %i.eb, i64 6, i1 false)
  store i64 5, ptr %i.ee, align 8, !tbaa !102
  store ptr %i.eb, ptr %27, align 8, !tbaa !104
  store i64 0, ptr %i.ec, align 8, !tbaa !102
  store i8 0, ptr %i.eb, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.aax = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.aaw, ptr noundef nonnull %i.eg)
          to label %.noexc406.i.i.i.i unwind label %bb.cf

.noexc406.i.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i220.i.i.i.i
  %i.aay = ptrtoint ptr %i.aax to i64
  %i.aaz = sub i64 %i.aay, %i.eh                  ; 5 uses
  store i64 %i.aaz, ptr %7, align 8, !tbaa !128
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !130
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !562
  store ptr %i.ej, ptr %6, align 8, !tbaa !100, !noalias !562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !562
  store i64 %i.aaz, ptr %i.e, align 8, !tbaa !90, !noalias !562
  %i.aba = icmp ugt i64 %i.aaz, 15
  br i1 %i.aba, label %.noexc.i.i.i.i.i405.i.i.i.i, label %._crit_edge.i.i.i.i.i.i402.i.i.i.i

.noexc.i.i.i.i.i405.i.i.i.i:                      ; preds = %.noexc406.i.i.i.i
  %i.abb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc407.i.i.i.i unwind label %bb.cf ; 2 uses

.noexc407.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i405.i.i.i.i
  store ptr %i.abb, ptr %6, align 8, !tbaa !104, !noalias !562
  %i.abc = load i64, ptr %i.e, align 8, !tbaa !90, !noalias !562
  store i64 %i.abc, ptr %i.ej, align 8, !tbaa !30, !noalias !562
  br label %._crit_edge.i.i.i.i.i.i402.i.i.i.i

._crit_edge.i.i.i.i.i.i402.i.i.i.i:               ; preds = %.noexc407.i.i.i.i, %.noexc406.i.i.i.i
  %i.abd = phi ptr [ %i.abb, %.noexc407.i.i.i.i ], [ %i.ej, %.noexc406.i.i.i.i ] ; 2 uses
  switch i64 %i.aaz, label %bb.cc [
    i64 1, label %bb.cb
    i64 0, label %bb.cd
  ]

bb.cb:                                            ; preds = %._crit_edge.i.i.i.i.i.i402.i.i.i.i
  %i.abe = load i8, ptr %i.eg, align 8, !tbaa !30, !noalias !562
  store i8 %i.abe, ptr %i.abd, align 1, !tbaa !30, !noalias !562
  br label %bb.cd

bb.cc:                                            ; preds = %._crit_edge.i.i.i.i.i.i402.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abd, ptr nonnull align 8 %i.eg, i64 %i.aaz, i1 false), !noalias !562
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %._crit_edge.i.i.i.i.i.i402.i.i.i.i
  %i.abf = load i64, ptr %i.e, align 8, !tbaa !90, !noalias !562 ; 2 uses
  store i64 %i.abf, ptr %i.ek, align 8, !tbaa !102, !noalias !562
  %i.abg = load ptr, ptr %6, align 8, !tbaa !104, !noalias !562
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.abf
  store i8 0, ptr %i.abh, align 1, !tbaa !30, !noalias !562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !562
  store ptr %i.el, ptr %i.ef, align 8, !tbaa !100, !alias.scope !562
  %i.abi = load ptr, ptr %6, align 8, !tbaa !104, !noalias !562 ; 2 uses
  %i.abj = icmp eq ptr %i.abi, %i.ej
  br i1 %i.abj, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i403.i.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.abk = load i64, ptr %i.ek, align 8, !tbaa !102, !noalias !562 ; 3 uses
  %i.abl = icmp ult i64 %i.abk, 16
  call void @llvm.assume(i1 %i.abl)
  %i.abm = add nuw nsw i64 %i.abk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.el, ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i64 %i.abm, i1 false)
  br label %bb.cg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i403.i.i.i.i: ; preds = %bb.cd
  store ptr %i.abi, ptr %i.ef, align 8, !tbaa !104, !alias.scope !562
  %i.abn = load i64, ptr %i.ej, align 8, !tbaa !30, !noalias !562
  store i64 %i.abn, ptr %i.el, align 8, !tbaa !30, !alias.scope !562
  %.pre.i.i404.i.i.i.i = load i64, ptr %i.ek, align 8, !tbaa !102, !noalias !562
  br label %bb.cg

bb.cf:                                            ; preds = %.noexc.i.i.i.i.i405.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i220.i.i.i.i
  %i.abo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abp = load ptr, ptr %i.ea, align 8, !tbaa !104 ; 2 uses
  %i.abq = icmp eq ptr %i.abp, %i.ed
  br i1 %i.abq, label %.body224.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221.i.i.i.i: ; preds = %bb.cf
  %i.abr = load i64, ptr %i.ed, align 8, !tbaa !30
  br label %.body224.i.i.i.i.sink.split

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i403.i.i.i.i, %bb.ce
  %i.abs = phi i64 [ %i.abk, %bb.ce ], [ %.pre.i.i404.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i403.i.i.i.i ]
  store i64 %i.abs, ptr %i.em, align 8, !tbaa !102, !alias.scope !562
  store i8 0, ptr %i.en, align 8, !tbaa !108, !alias.scope !562
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !562
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !100
  store i64 0, ptr %i.eq, align 8, !tbaa !102
  store i8 0, ptr %i.ep, align 8, !tbaa !30
  store i8 0, ptr %i.er, align 8, !tbaa !110
  store i8 0, ptr %i.es, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.eu, ptr noundef nonnull align 1 dereferenceable(11) @.str.4, i64 11, i1 false)
  store i8 0, ptr %i.ie, align 1, !tbaa !30
  store ptr %i.ew, ptr %i.et, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ew, ptr noundef nonnull align 8 dereferenceable(12) %i.eu, i64 12, i1 false)
  store i64 11, ptr %i.ex, align 8, !tbaa !102
  store ptr %i.eu, ptr %28, align 8, !tbaa !104
  store i64 0, ptr %i.ev, align 8, !tbaa !102
  store i8 0, ptr %i.eu, align 8, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !565
  store ptr %i.ez, ptr %5, align 8, !tbaa !100, !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !565
  store i64 %i.ki, ptr %i.d, align 8, !tbaa !90, !noalias !565
  br i1 %i.kh, label %.noexc.i.i.i.i.i416.i.i.i.i, label %.critedge506.i.i.i.i

.noexc.i.i.i.i.i416.i.i.i.i:                      ; preds = %bb.cg
  %i.abt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %bb.ch unwind label %bb.cj     ; 2 uses

bb.ch:                                            ; preds = %.noexc.i.i.i.i.i416.i.i.i.i
  store ptr %i.abt, ptr %5, align 8, !tbaa !104, !noalias !565
  %i.abu = load i64, ptr %i.d, align 8, !tbaa !90, !noalias !565 ; 2 uses
  store i64 %i.abu, ptr %i.ez, align 8, !tbaa !30, !noalias !565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.abt, ptr noundef nonnull align 1 dereferenceable(22) @.str.75, i64 22, i1 false), !noalias !565
  %.pre807.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !104, !noalias !565
  br label %.critedge506.i.i.i.i

.critedge506.i.i.i.i:                             ; preds = %bb.ch, %bb.cg
  %i.abv = phi ptr [ %i.ez, %bb.cg ], [ %.pre807.i.i.i.i, %bb.ch ]
  %i.abw = phi i64 [ 0, %bb.cg ], [ %i.abu, %bb.ch ] ; 2 uses
  store i64 %i.abw, ptr %i.fa, align 8, !tbaa !102, !noalias !565
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abv, i64 %i.abw
  store i8 0, ptr %i.abx, align 1, !tbaa !30, !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !565
  store ptr %i.fb, ptr %i.ey, align 8, !tbaa !100, !alias.scope !565
  %i.aby = load ptr, ptr %5, align 8, !tbaa !104, !noalias !565 ; 2 uses
  %i.abz = icmp eq ptr %i.aby, %i.ez
  br i1 %i.abz, label %bb.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i414.i.i.i.i

bb.ci:                                            ; preds = %.critedge506.i.i.i.i
  %i.aca = load i64, ptr %i.fa, align 8, !tbaa !102, !noalias !565 ; 3 uses
  %i.acb = icmp ult i64 %i.aca, 16
  call void @llvm.assume(i1 %i.acb)
  %i.acc = add nuw nsw i64 %i.aca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fb, ptr noundef nonnull align 8 dereferenceable(1) %i.ez, i64 %i.acc, i1 false)
  br label %bb.ck

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i414.i.i.i.i: ; preds = %.critedge506.i.i.i.i
  store ptr %i.aby, ptr %i.ey, align 8, !tbaa !104, !alias.scope !565
  %i.acd = load i64, ptr %i.ez, align 8, !tbaa !30, !noalias !565
  store i64 %i.acd, ptr %i.fb, align 8, !tbaa !30, !alias.scope !565
  %.pre.i.i415.i.i.i.i = load i64, ptr %i.fa, align 8, !tbaa !102, !noalias !565
  br label %bb.ck

bb.cj:                                            ; preds = %.noexc.i.i.i.i.i416.i.i.i.i
  %i.ace = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acf = load ptr, ptr %i.et, align 8, !tbaa !104 ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.ew
  br i1 %i.acg, label %.body236.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i233.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i233.i.i.i.i: ; preds = %bb.cj
  %i.ach = load i64, ptr %i.ew, align 8, !tbaa !30
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.aci) #28
  br label %.body236.i.i.i.i

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i414.i.i.i.i, %bb.ci
  %i.acj = phi i64 [ %i.aca, %bb.ci ], [ %.pre.i.i415.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i414.i.i.i.i ]
  store i64 %i.acj, ptr %i.fc, align 8, !tbaa !102, !alias.scope !565
  store i8 0, ptr %i.fd, align 8, !tbaa !108, !alias.scope !565
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !565
  store ptr %i.ff, ptr %i.fe, align 8, !tbaa !100
  store i64 0, ptr %i.fg, align 8, !tbaa !102
  store i8 0, ptr %i.ff, align 8, !tbaa !30
  store i8 0, ptr %i.fh, align 8, !tbaa !110
  store i8 0, ptr %i.fi, align 8, !tbaa !118
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.yo, ptr nonnull %24, i64 4, i64 159, ptr nonnull @.str.82)
          to label %.preheader795.i.i.i.i unwind label %.body236.loopexit.i.i.i.i

.preheader795.i.i.i.i:                            ; preds = %bb.ck
  %i.ack = load i8, ptr %i.fi, align 8, !tbaa !118, !range !47, !noundef !48
  %i.acl = trunc nuw i8 %i.ack to i1
  store i8 0, ptr %i.fi, align 8, !tbaa !118
  br i1 %i.acl, label %bb.cl, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.i.i.i.i

bb.cl:                                            ; preds = %.preheader795.i.i.i.i
  %i.acm = load ptr, ptr %i.ig, align 8, !tbaa !104 ; 2 uses
  %i.acn = icmp eq ptr %i.acm, %i.ih
  br i1 %i.acn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i251.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i250.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i250.i.i.i.i: ; preds = %bb.cl
  %i.aco = load i64, ptr %i.ih, align 8, !tbaa !30
  %i.acp = add i64 %i.aco, 1
  call void @_ZdlPvm(ptr noundef %i.acm, i64 noundef %i.acp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i251.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i251.i.i.i.i: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i250.i.i.i.i
  %i.acq = load ptr, ptr %i.if, align 8, !tbaa !216 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i252.i.i.i.i = icmp eq ptr %i.acq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i252.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i251.i.i.i.i
  %i.acr = load ptr, ptr %i.ii, align 8, !tbaa !218
  %i.acs = ptrtoint ptr %i.acr to i64
  %i.act = ptrtoint ptr %i.acq to i64
  %i.acu = sub i64 %i.acs, %i.act
  call void @_ZdlPvm(ptr noundef nonnull %i.acq, i64 noundef %i.acu) #28
  br label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.i.i.i.i

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.i.i.i.i: ; preds = %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i251.i.i.i.i, %.preheader795.i.i.i.i
  %i.acv = load ptr, ptr %i.fe, align 8, !tbaa !104 ; 2 uses
  %i.acw = icmp eq ptr %i.acv, %i.ff
  br i1 %i.acw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i241.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i240.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i240.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.i.i.i.i
  %i.acx = load i64, ptr %i.ff, align 8, !tbaa !30
  %i.acy = add i64 %i.acx, 1
  call void @_ZdlPvm(ptr noundef %i.acv, i64 noundef %i.acy) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i241.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i241.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i240.i.i.i.i
  %i.acz = load i8, ptr %i.fd, align 8, !tbaa !108
  %i.ada = icmp eq i8 %i.acz, 0
  br i1 %i.ada, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i241.i.i.i.i
  %i.adb = load ptr, ptr %i.ey, align 8, !tbaa !104 ; 2 uses
  %i.adc = icmp eq ptr %i.adb, %i.fb
  br i1 %i.adc, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i243.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i247.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i247.i.i.i.i: ; preds = %bb.cn
  %i.add = load i64, ptr %i.fb, align 8, !tbaa !30
  %i.ade = add i64 %i.add, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.ade) #28
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i243.i.i.i.i

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i241.i.i.i.i
  %i.adf = load ptr, ptr %i.fb, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i242.i.i.i.i = icmp eq ptr %i.adf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i242.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i243.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.adg = invoke noundef zeroext i1 %i.adf(ptr noundef nonnull align 8 dereferenceable(73) %i.ey, ptr noundef nonnull align 8 dereferenceable(73) %i.ey, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i243.i.i.i.i unwind label %bb.cq ; 0 uses

bb.cq:                                            ; preds = %bb.de, %bb.cz, %bb.cu, %bb.cp
  %i.adh = landingpad { ptr, i32 }
          catch ptr null
  %i.adi = extractvalue { ptr, i32 } %i.adh, 0
  call void @__clang_call_terminate(ptr %i.adi) #27
  unreachable

_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i243.i.i.i.i: ; preds = %bb.cn, %bb.cp, %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i247.i.i.i.i
  %i.adj = load ptr, ptr %i.et, align 8, !tbaa !104 ; 2 uses
  %i.adk = icmp eq ptr %i.adj, %i.ew
  br i1 %i.adk, label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit254.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i244.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i244.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i243.i.i.i.i
  %i.adl = load i64, ptr %i.ew, align 8, !tbaa !30
  %i.adm = add i64 %i.adl, 1
  call void @_ZdlPvm(ptr noundef %i.adj, i64 noundef %i.adm) #28
  br label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit254.i.i.i.i

_ZN6google8protobuf2io7Printer3SubD2Ev.exit254.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i243.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i244.i.i.i.i
  %i.adn = load i8, ptr %i.es, align 8, !tbaa !118, !range !47, !noundef !48
  %i.ado = trunc nuw i8 %i.adn to i1
  store i8 0, ptr %i.es, align 8, !tbaa !118
  br i1 %i.ado, label %bb.cr, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.1.i.i.i.i

bb.cr:                                            ; preds = %_ZN6google8protobuf2io7Printer3SubD2Ev.exit254.i.i.i.i
  %i.adp = load ptr, ptr %i.ik, align 8, !tbaa !104 ; 2 uses
  %i.adq = icmp eq ptr %i.adp, %i.il
  br i1 %i.adq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i251.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i250.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i250.1.i.i.i.i: ; preds = %bb.cr
  %i.adr = load i64, ptr %i.il, align 8, !tbaa !30
  %i.ads = add i64 %i.adr, 1
  call void @_ZdlPvm(ptr noundef %i.adp, i64 noundef %i.ads) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i251.1.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i251.1.i.i.i.i: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i250.1.i.i.i.i
  %i.adt = load ptr, ptr %i.ij, align 8, !tbaa !216 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i252.1.i.i.i.i = icmp eq ptr %i.adt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i252.1.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.1.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i251.1.i.i.i.i
  %i.adu = load ptr, ptr %i.im, align 8, !tbaa !218
  %i.adv = ptrtoint ptr %i.adu to i64
  %i.adw = ptrtoint ptr %i.adt to i64
  %i.adx = sub i64 %i.adv, %i.adw
  call void @_ZdlPvm(ptr noundef nonnull %i.adt, i64 noundef %i.adx) #28
  br label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.1.i.i.i.i

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.1.i.i.i.i: ; preds = %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i251.1.i.i.i.i, %_ZN6google8protobuf2io7Printer3SubD2Ev.exit254.i.i.i.i
  %i.ady = load ptr, ptr %i.eo, align 8, !tbaa !104 ; 2 uses
  %i.adz = icmp eq ptr %i.ady, %i.ep
  br i1 %i.adz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i241.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i240.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i240.1.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.1.i.i.i.i
  %i.aea = load i64, ptr %i.ep, align 8, !tbaa !30
  %i.aeb = add i64 %i.aea, 1
  call void @_ZdlPvm(ptr noundef %i.ady, i64 noundef %i.aeb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i241.1.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i241.1.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i239.1.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i240.1.i.i.i.i
  %i.aec = load i8, ptr %i.en, align 8, !tbaa !108
  %i.aed = icmp eq i8 %i.aec, 0
  br i1 %i.aed, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i241.1.i.i.i.i
  %i.aee = load ptr, ptr %i.el, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i242.1.i.i.i.i = icmp eq ptr %i.aee, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i242.1.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i243.1.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aef = invoke noundef zeroext i1 %i.aee(ptr noundef nonnull align 8 dereferenceable(73) %i.ef, ptr noundef nonnull align 8 dereferenceable(73) %i.ef, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i243.1.i.i.i.i unwind label %bb.cq ; 0 uses

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i241.1.i.i.i.i
  %i.aeg = load ptr, ptr %i.ef, align 8, !tbaa !104 ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.el
  br i1 %i.aeh, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i243.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i247.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i247.1.i.i.i.i: ; preds = %bb.cv
  %i.aei = load i64, ptr %i.el, align 8, !tbaa !30
  %i.aej = add i64 %i.aei, 1
  call void @_ZdlPvm(ptr noundef %i.aeg, i64 noundef %i.aej) #28
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i243.1.i.i.i.i

end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4java13GenerateLargeEPS4_PKNS2_14EnumDescriptorEbPNS9_7ContextEPNS9_17ClassNameResolverEE4$_12vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data":bb.a
    i64 0, label %bb.dj
  ]

bb.dh:                                            ; preds = %._crit_edge.i.i.i.i.i.i425.i.i.i.i
  %i.aiq = load i8, ptr %i.aih, align 1, !tbaa !30, !noalias !568
  store i8 %i.aiq, ptr %i.aip, align 1, !tbaa !30, !noalias !568
  br label %bb.dj

bb.di:                                            ; preds = %._crit_edge.i.i.i.i.i.i425.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aip, ptr align 1 %i.aih, i64 %i.aij, i1 false), !noalias !568
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %._crit_edge.i.i.i.i.i.i425.i.i.i.i
  %i.air = load i64, ptr %i.c, align 8, !tbaa !90, !noalias !568 ; 2 uses
  store i64 %i.air, ptr %i.fp, align 8, !tbaa !102, !noalias !568
  %i.ais = load ptr, ptr %4, align 8, !tbaa !104, !noalias !568
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.air
  store i8 0, ptr %i.ait, align 1, !tbaa !30, !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !568
  store ptr %i.fq, ptr %i.fn, align 8, !tbaa !100, !alias.scope !568
  %i.aiu = load ptr, ptr %4, align 8, !tbaa !104, !noalias !568 ; 2 uses
  %i.aiv = icmp eq ptr %i.aiu, %i.fo
  br i1 %i.aiv, label %bb.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i426.i.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.aiw = load i64, ptr %i.fp, align 8, !tbaa !102, !noalias !568 ; 3 uses
  %i.aix = icmp ult i64 %i.aiw, 16
  call void @llvm.assume(i1 %i.aix)
  %i.aiy = add nuw nsw i64 %i.aiw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fq, ptr noundef nonnull align 8 dereferenceable(1) %i.fo, i64 %i.aiy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i298.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i426.i.i.i.i: ; preds = %bb.dj
  store ptr %i.aiu, ptr %i.fn, align 8, !tbaa !104, !alias.scope !568
  %i.aiz = load i64, ptr %i.fo, align 8, !tbaa !30, !noalias !568
  store i64 %i.aiz, ptr %i.fq, align 8, !tbaa !30, !alias.scope !568
  %.pre.i.i427.i.i.i.i = load i64, ptr %i.fp, align 8, !tbaa !102, !noalias !568
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i298.i.i.i.i

.loopexit523.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i428.i.i.i.i
  %lpad.loopexit525.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.loopexit.split-lp524.i.i.i.i:                    ; preds = %.noexc.i.i429.i.i.i.i
  %lpad.loopexit.split-lp526.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dl:                                            ; preds = %.loopexit.split-lp524.i.i.i.i, %.loopexit523.i.i.i.i
  %lpad.phi527.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit525.i.i.i.i, %.loopexit523.i.i.i.i ], [ %lpad.loopexit.split-lp526.i.i.i.i, %.loopexit.split-lp524.i.i.i.i ] ; 2 uses
  %i.aja = load ptr, ptr %29, align 8, !tbaa !104 ; 2 uses
  %i.ajb = icmp eq ptr %i.aja, %i.fl
  br i1 %i.ajb, label %.body290.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i287.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i287.i.i.i.i: ; preds = %bb.dl
  %i.ajc = load i64, ptr %i.fl, align 8, !tbaa !30
  br label %.body290.i.i.i.i.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i298.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i426.i.i.i.i, %bb.dk
  %i.ajd = phi i64 [ %i.aiw, %bb.dk ], [ %.pre.i.i427.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i426.i.i.i.i ]
  store i64 %i.ajd, ptr %i.fr, align 8, !tbaa !102, !alias.scope !568
  store i8 0, ptr %i.fs, align 8, !tbaa !108, !alias.scope !568
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !568
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !100
  store i64 0, ptr %i.fv, align 8, !tbaa !102
  store i8 0, ptr %i.fu, align 8, !tbaa !30
  store i8 0, ptr %i.fw, align 8, !tbaa !110
  store i8 0, ptr %i.fx, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.fz, ptr noundef nonnull align 1 dereferenceable(6) @.str.81, i64 6, i1 false)
  store i8 0, ptr %i.iw, align 2, !tbaa !30
  %i.aje = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 4
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !67
  store ptr %i.gb, ptr %i.fy, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.gb, ptr noundef nonnull align 8 dereferenceable(7) %i.fz, i64 7, i1 false)
  store i64 6, ptr %i.gc, align 8, !tbaa !102
  store ptr %i.fz, ptr %31, align 8, !tbaa !104
  store i64 0, ptr %i.ga, align 8, !tbaa !102
  store i8 0, ptr %i.fz, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ajh = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.ajg, ptr noundef nonnull %i.ge)
          to label %.noexc437.i.i.i.i unwind label %bb.dq

.noexc437.i.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i298.i.i.i.i
  %i.aji = ptrtoint ptr %i.ajh to i64
  %i.ajj = sub i64 %i.aji, %i.gf                  ; 5 uses
  store i64 %i.ajj, ptr %3, align 8, !tbaa !128
  store ptr %i.ge, ptr %i.gg, align 8, !tbaa !130
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !571
  store ptr %i.gh, ptr %2, align 8, !tbaa !100, !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !571
  store i64 %i.ajj, ptr %i.b, align 8, !tbaa !90, !noalias !571
  %i.ajk = icmp ugt i64 %i.ajj, 15
  br i1 %i.ajk, label %.noexc.i.i.i.i.i436.i.i.i.i, label %._crit_edge.i.i.i.i.i.i433.i.i.i.i

.noexc.i.i.i.i.i436.i.i.i.i:                      ; preds = %.noexc437.i.i.i.i
  %i.ajl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc438.i.i.i.i unwind label %bb.dq ; 2 uses

.noexc438.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i436.i.i.i.i
  store ptr %i.ajl, ptr %2, align 8, !tbaa !104, !noalias !571
  %i.ajm = load i64, ptr %i.b, align 8, !tbaa !90, !noalias !571
  store i64 %i.ajm, ptr %i.gh, align 8, !tbaa !30, !noalias !571
  br label %._crit_edge.i.i.i.i.i.i433.i.i.i.i

._crit_edge.i.i.i.i.i.i433.i.i.i.i:               ; preds = %.noexc438.i.i.i.i, %.noexc437.i.i.i.i
  %i.ajn = phi ptr [ %i.ajl, %.noexc438.i.i.i.i ], [ %i.gh, %.noexc437.i.i.i.i ] ; 2 uses
  switch i64 %i.ajj, label %bb.dn [
    i64 1, label %bb.dm
    i64 0, label %bb.do
  ]

bb.dm:                                            ; preds = %._crit_edge.i.i.i.i.i.i433.i.i.i.i
  %i.ajo = load i8, ptr %i.ge, align 8, !tbaa !30, !noalias !571
  store i8 %i.ajo, ptr %i.ajn, align 1, !tbaa !30, !noalias !571
  br label %bb.do

bb.dn:                                            ; preds = %._crit_edge.i.i.i.i.i.i433.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajn, ptr nonnull align 8 %i.ge, i64 %i.ajj, i1 false), !noalias !571
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %._crit_edge.i.i.i.i.i.i433.i.i.i.i
  %i.ajp = load i64, ptr %i.b, align 8, !tbaa !90, !noalias !571 ; 2 uses
  store i64 %i.ajp, ptr %i.gi, align 8, !tbaa !102, !noalias !571
  %i.ajq = load ptr, ptr %2, align 8, !tbaa !104, !noalias !571
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 %i.ajp
  store i8 0, ptr %i.ajr, align 1, !tbaa !30, !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !571
  store ptr %i.gj, ptr %i.gd, align 8, !tbaa !100, !alias.scope !571
  %i.ajs = load ptr, ptr %2, align 8, !tbaa !104, !noalias !571 ; 2 uses
  %i.ajt = icmp eq ptr %i.ajs, %i.gh
  br i1 %i.ajt, label %bb.dp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i434.i.i.i.i

bb.dp:                                            ; preds = %bb.do
  %i.aju = load i64, ptr %i.gi, align 8, !tbaa !102, !noalias !571 ; 3 uses
  %i.ajv = icmp ult i64 %i.aju, 16
  call void @llvm.assume(i1 %i.ajv)
  %i.ajw = add nuw nsw i64 %i.aju, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gj, ptr noundef nonnull align 8 dereferenceable(1) %i.gh, i64 %i.ajw, i1 false)
  br label %bb.dr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i434.i.i.i.i: ; preds = %bb.do
  store ptr %i.ajs, ptr %i.gd, align 8, !tbaa !104, !alias.scope !571
  %i.ajx = load i64, ptr %i.gh, align 8, !tbaa !30, !noalias !571
  store i64 %i.ajx, ptr %i.gj, align 8, !tbaa !30, !alias.scope !571
  %.pre.i.i435.i.i.i.i = load i64, ptr %i.gi, align 8, !tbaa !102, !noalias !571
  br label %bb.dr

bb.dq:                                            ; preds = %.noexc.i.i.i.i.i436.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i298.i.i.i.i
  %i.ajy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajz = load ptr, ptr %i.fy, align 8, !tbaa !104 ; 2 uses
  %i.aka = icmp eq ptr %i.ajz, %i.gb
  br i1 %i.aka, label %.body302.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i299.i.i.i.i: ; preds = %bb.dq
  %i.akb = load i64, ptr %i.gb, align 8, !tbaa !30
  br label %.body302.i.i.i.i.sink.split

bb.dr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i434.i.i.i.i, %bb.dp
  %i.akc = phi i64 [ %i.aju, %bb.dp ], [ %.pre.i.i435.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i434.i.i.i.i ]
  store i64 %i.akc, ptr %i.gk, align 8, !tbaa !102, !alias.scope !571
  store i8 0, ptr %i.gl, align 8, !tbaa !108, !alias.scope !571
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  store ptr %i.gn, ptr %i.gm, align 8, !tbaa !100
  store i64 0, ptr %i.go, align 8, !tbaa !102
  store i8 0, ptr %i.gn, align 8, !tbaa !30
  store i8 0, ptr %i.gp, align 8, !tbaa !110
  store i8 0, ptr %i.gq, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.gs, ptr noundef nonnull align 1 dereferenceable(11) @.str.4, i64 11, i1 false)
  store i8 0, ptr %i.ix, align 1, !tbaa !30
  store ptr %i.gu, ptr %i.gr, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gu, ptr noundef nonnull align 8 dereferenceable(12) %i.gs, i64 12, i1 false)
  store i64 11, ptr %i.gv, align 8, !tbaa !102
  store ptr %i.gs, ptr %32, align 8, !tbaa !104
  store i64 0, ptr %i.gt, align 8, !tbaa !102
  store i8 0, ptr %i.gs, align 8, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !574
  store ptr %i.gx, ptr %1, align 8, !tbaa !100, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !574
  store i64 %i.ki, ptr %i.a, align 8, !tbaa !90, !noalias !574
  br i1 %i.kh, label %.noexc.i.i.i.i.i447.i.i.i.i, label %.critedge507.i.i.i.i

.noexc.i.i.i.i.i447.i.i.i.i:                      ; preds = %bb.dr
  %i.akd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.ds unwind label %bb.du     ; 2 uses

bb.ds:                                            ; preds = %.noexc.i.i.i.i.i447.i.i.i.i
  store ptr %i.akd, ptr %1, align 8, !tbaa !104, !noalias !574
  %i.ake = load i64, ptr %i.a, align 8, !tbaa !90, !noalias !574 ; 2 uses
  store i64 %i.ake, ptr %i.gx, align 8, !tbaa !30, !noalias !574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.akd, ptr noundef nonnull align 1 dereferenceable(22) @.str.75, i64 22, i1 false), !noalias !574
  %.pre809.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !104, !noalias !574
  br label %.critedge507.i.i.i.i

.critedge507.i.i.i.i:                             ; preds = %bb.ds, %bb.dr
  %i.akf = phi ptr [ %i.gx, %bb.dr ], [ %.pre809.i.i.i.i, %bb.ds ]
  %i.akg = phi i64 [ 0, %bb.dr ], [ %i.ake, %bb.ds ] ; 2 uses
  store i64 %i.akg, ptr %i.gy, align 8, !tbaa !102, !noalias !574
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akf, i64 %i.akg
  store i8 0, ptr %i.akh, align 1, !tbaa !30, !noalias !574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !574
  store ptr %i.gz, ptr %i.gw, align 8, !tbaa !100, !alias.scope !574
  %i.aki = load ptr, ptr %1, align 8, !tbaa !104, !noalias !574 ; 2 uses
  %i.akj = icmp eq ptr %i.aki, %i.gx
  br i1 %i.akj, label %bb.dt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i445.i.i.i.i

bb.dt:                                            ; preds = %.critedge507.i.i.i.i
  %i.akk = load i64, ptr %i.gy, align 8, !tbaa !102, !noalias !574 ; 3 uses
  %i.akl = icmp ult i64 %i.akk, 16
  call void @llvm.assume(i1 %i.akl)
  %i.akm = add nuw nsw i64 %i.akk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gz, ptr noundef nonnull align 8 dereferenceable(1) %i.gx, i64 %i.akm, i1 false)
  br label %bb.dv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i445.i.i.i.i: ; preds = %.critedge507.i.i.i.i
  store ptr %i.aki, ptr %i.gw, align 8, !tbaa !104, !alias.scope !574
  %i.akn = load i64, ptr %i.gx, align 8, !tbaa !30, !noalias !574
  store i64 %i.akn, ptr %i.gz, align 8, !tbaa !30, !alias.scope !574
  %.pre.i.i446.i.i.i.i = load i64, ptr %i.gy, align 8, !tbaa !102, !noalias !574
  br label %bb.dv

bb.du:                                            ; preds = %.noexc.i.i.i.i.i447.i.i.i.i
  %i.ako = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akp = load ptr, ptr %i.gr, align 8, !tbaa !104 ; 2 uses
  %i.akq = icmp eq ptr %i.akp, %i.gu
  br i1 %i.akq, label %.body314.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311.i.i.i.i: ; preds = %bb.du
  %i.akr = load i64, ptr %i.gu, align 8, !tbaa !30
  %i.aks = add i64 %i.akr, 1
  call void @_ZdlPvm(ptr noundef %i.akp, i64 noundef %i.aks) #28
  br label %.body314.i.i.i.i

bb.dv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i445.i.i.i.i, %bb.dt
  %i.akt = phi i64 [ %i.akk, %bb.dt ], [ %.pre.i.i446.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i445.i.i.i.i ]
  store i64 %i.akt, ptr %i.ha, align 8, !tbaa !102, !alias.scope !574
  store i8 0, ptr %i.hb, align 8, !tbaa !108, !alias.scope !574
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !574
  store ptr %i.hd, ptr %i.hc, align 8, !tbaa !100
  store i64 0, ptr %i.he, align 8, !tbaa !102
  store i8 0, ptr %i.hd, align 8, !tbaa !30
  store i8 0, ptr %i.hf, align 8, !tbaa !110
  store i8 0, ptr %i.hg, align 8, !tbaa !118
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %i.aid, ptr nonnull %29, i64 3, i64 122, ptr nonnull @.str.83)
          to label %.preheader794.i.i.i.i unwind label %.body314.loopexit.i.i.i.i

.preheader794.i.i.i.i:                            ; preds = %bb.dv
  %i.aku = load i8, ptr %i.hg, align 8, !tbaa !118, !range !47, !noundef !48
  %i.akv = trunc nuw i8 %i.aku to i1
  store i8 0, ptr %i.hg, align 8, !tbaa !118
  br i1 %i.akv, label %bb.dw, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.i.i.i.i

bb.dw:                                            ; preds = %.preheader794.i.i.i.i
  %i.akw = load ptr, ptr %i.iz, align 8, !tbaa !104 ; 2 uses
  %i.akx = icmp eq ptr %i.akw, %i.ja
  br i1 %i.akx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i329.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i328.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i328.i.i.i.i: ; preds = %bb.dw
  %i.aky = load i64, ptr %i.ja, align 8, !tbaa !30
  %i.akz = add i64 %i.aky, 1
  call void @_ZdlPvm(ptr noundef %i.akw, i64 noundef %i.akz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i329.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i329.i.i.i.i: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i328.i.i.i.i
  %i.ala = load ptr, ptr %i.iy, align 8, !tbaa !216 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i330.i.i.i.i = icmp eq ptr %i.ala, null
  br i1 %.not.i.i.i.i.i.i.i.i.i330.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i329.i.i.i.i
  %i.alb = load ptr, ptr %i.jb, align 8, !tbaa !218
  %i.alc = ptrtoint ptr %i.alb to i64
  %i.ald = ptrtoint ptr %i.ala to i64
  %i.ale = sub i64 %i.alc, %i.ald
  call void @_ZdlPvm(ptr noundef nonnull %i.ala, i64 noundef %i.ale) #28
  br label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.i.i.i.i

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.i.i.i.i: ; preds = %bb.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i329.i.i.i.i, %.preheader794.i.i.i.i
  %i.alf = load ptr, ptr %i.hc, align 8, !tbaa !104 ; 2 uses
  %i.alg = icmp eq ptr %i.alf, %i.hd
  br i1 %i.alg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i319.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i318.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i318.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.i.i.i.i
  %i.alh = load i64, ptr %i.hd, align 8, !tbaa !30
  %i.ali = add i64 %i.alh, 1
  call void @_ZdlPvm(ptr noundef %i.alf, i64 noundef %i.ali) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i319.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i319.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i318.i.i.i.i
  %i.alj = load i8, ptr %i.hb, align 8, !tbaa !108
  %i.alk = icmp eq i8 %i.alj, 0
  br i1 %i.alk, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i319.i.i.i.i
  %i.all = load ptr, ptr %i.gw, align 8, !tbaa !104 ; 2 uses
  %i.alm = icmp eq ptr %i.all, %i.gz
  br i1 %i.alm, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i321.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i325.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i325.i.i.i.i: ; preds = %bb.dy
  %i.aln = load i64, ptr %i.gz, align 8, !tbaa !30
  %i.alo = add i64 %i.aln, 1
  call void @_ZdlPvm(ptr noundef %i.all, i64 noundef %i.alo) #28
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i321.i.i.i.i

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i319.i.i.i.i
  %i.alp = load ptr, ptr %i.gz, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i320.i.i.i.i = icmp eq ptr %i.alp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i320.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i321.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.alq = invoke noundef zeroext i1 %i.alp(ptr noundef nonnull align 8 dereferenceable(73) %i.gw, ptr noundef nonnull align 8 dereferenceable(73) %i.gw, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i321.i.i.i.i unwind label %bb.eb ; 0 uses

bb.eb:                                            ; preds = %bb.ek, %bb.ef, %bb.ea
  %i.alr = landingpad { ptr, i32 }
          catch ptr null
  %i.als = extractvalue { ptr, i32 } %i.alr, 0
  call void @__clang_call_terminate(ptr %i.als) #27
  unreachable

_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i321.i.i.i.i: ; preds = %bb.dy, %bb.ea, %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i325.i.i.i.i
  %i.alt = load ptr, ptr %i.gr, align 8, !tbaa !104 ; 2 uses
  %i.alu = icmp eq ptr %i.alt, %i.gu
  br i1 %i.alu, label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit332.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i322.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i322.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i321.i.i.i.i
  %i.alv = load i64, ptr %i.gu, align 8, !tbaa !30
  %i.alw = add i64 %i.alv, 1
  call void @_ZdlPvm(ptr noundef %i.alt, i64 noundef %i.alw) #28
  br label %_ZN6google8protobuf2io7Printer3SubD2Ev.exit332.i.i.i.i

_ZN6google8protobuf2io7Printer3SubD2Ev.exit332.i.i.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i321.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i322.i.i.i.i
  %i.alx = load i8, ptr %i.gq, align 8, !tbaa !118, !range !47, !noundef !48
  %i.aly = trunc nuw i8 %i.alx to i1
  store i8 0, ptr %i.gq, align 8, !tbaa !118
  br i1 %i.aly, label %bb.ec, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.1.i.i.i.i

bb.ec:                                            ; preds = %_ZN6google8protobuf2io7Printer3SubD2Ev.exit332.i.i.i.i
  %i.alz = load ptr, ptr %i.jd, align 8, !tbaa !104 ; 2 uses
  %i.ama = icmp eq ptr %i.alz, %i.je
  br i1 %i.ama, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i329.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i328.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i328.1.i.i.i.i: ; preds = %bb.ec
  %i.amb = load i64, ptr %i.je, align 8, !tbaa !30
  %i.amc = add i64 %i.amb, 1
  call void @_ZdlPvm(ptr noundef %i.alz, i64 noundef %i.amc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i329.1.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i329.1.i.i.i.i: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i328.1.i.i.i.i
  %i.amd = load ptr, ptr %i.jc, align 8, !tbaa !216 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i330.1.i.i.i.i = icmp eq ptr %i.amd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i330.1.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.1.i.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i329.1.i.i.i.i
  %i.ame = load ptr, ptr %i.jf, align 8, !tbaa !218
  %i.amf = ptrtoint ptr %i.ame to i64
  %i.amg = ptrtoint ptr %i.amd to i64
  %i.amh = sub i64 %i.amf, %i.amg
  call void @_ZdlPvm(ptr noundef nonnull %i.amd, i64 noundef %i.amh) #28
  br label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.1.i.i.i.i

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.1.i.i.i.i: ; preds = %bb.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i329.1.i.i.i.i, %_ZN6google8protobuf2io7Printer3SubD2Ev.exit332.i.i.i.i
  %i.ami = load ptr, ptr %i.gm, align 8, !tbaa !104 ; 2 uses
  %i.amj = icmp eq ptr %i.ami, %i.gn
  br i1 %i.amj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i319.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i318.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i318.1.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.1.i.i.i.i
  %i.amk = load i64, ptr %i.gn, align 8, !tbaa !30
  %i.aml = add i64 %i.amk, 1
  call void @_ZdlPvm(ptr noundef %i.ami, i64 noundef %i.aml) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i319.1.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i319.1.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit.i317.1.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i318.1.i.i.i.i
  %i.amm = load i8, ptr %i.gl, align 8, !tbaa !108
  %i.amn = icmp eq i8 %i.amm, 0
  br i1 %i.amn, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i319.1.i.i.i.i
  %i.amo = load ptr, ptr %i.gj, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i320.1.i.i.i.i = icmp eq ptr %i.amo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i320.1.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i321.1.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.amp = invoke noundef zeroext i1 %i.amo(ptr noundef nonnull align 8 dereferenceable(73) %i.gd, ptr noundef nonnull align 8 dereferenceable(73) %i.gd, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i321.1.i.i.i.i unwind label %bb.eb ; 0 uses

bb.eg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i319.1.i.i.i.i
  %i.amq = load ptr, ptr %i.gd, align 8, !tbaa !104 ; 2 uses
  %i.amr = icmp eq ptr %i.amq, %i.gj
  br i1 %i.amr, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i321.1.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i325.1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i325.1.i.i.i.i: ; preds = %bb.eg
  %i.ams = load i64, ptr %i.gj, align 8, !tbaa !30
  %i.amt = add i64 %i.ams, 1
  call void @_ZdlPvm(ptr noundef %i.amq, i64 noundef %i.amt) #28
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit.i321.1.i.i.i.i

end_hunk_3
