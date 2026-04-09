inline.NumInlined: 220
inline.NumDeleted: 113
begin_hunk_0_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef signext i8 %i.bc(ptr noundef nonnull align 8 dereferenceable(570) %i.ax, i8 noundef signext 32)
          to label %.noexc36._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge unwind label %.loopexit, !inline_history !56 ; 0 uses

.noexc36._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge: ; preds = %.noexc36
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !27
end_hunk_0
begin_hunk_1_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
bb.o:                                             ; preds = %bb.k, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.be = phi ptr [ %i.ap, %bb.k ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  store i8 48, ptr %i.bf, align 8, !tbaa !57
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.b, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 2, ptr %i.bj, align 8, !tbaa !58
  %.sroa.07.0.extract.trunc.mask = and i16 %i.am, 255
  %i.bk = zext nneg i16 %.sroa.07.0.extract.trunc.mask to i32 ; 2 uses
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.bk)
end_hunk_1
begin_hunk_2_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %i.ae, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !58
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %bb.r, label %bb.q

end_hunk_2
begin_hunk_3_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bw = add nuw i64 %.02484, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %i.ad
  br i1 %exitcond.not, label %.critedge, label %bb.i, !llvm.loop !59

.loopexit:                                        ; preds = %bb.o, %bb.n, %.noexc36, %bb.q, %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a

.critedge:                                        ; preds = %bb.s, %_ZNK22photos_editing_formats8image_io11JpegSegment16GetValidatedByteEm.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bx, ptr %7, align 8, !tbaa !19, !alias.scope !66
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.by, align 8, !tbaa !22, !alias.scope !66
  store i8 0, ptr %i.bx, align 8, !tbaa !15, !alias.scope !66
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !67, !noalias !66 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !66 ; 2 uses
  %i.cd = icmp ugt ptr %i.ca, %i.cc
  %.08.i.i.i = select i1 %i.cd, ptr %i.ca, ptr %i.cc ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
end_hunk_4
begin_hunk_5_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a

bb.t:                                             ; preds = %.critedge
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !69, !noalias !66 ; 2 uses
  %i.cg = ptrtoint ptr %.08.i.i.i to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
end_hunk_5
begin_hunk_6_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
bb.u:                                             ; preds = %bb.v, %bb.t
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %7, align 8, !tbaa !25, !alias.scope !66 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bx
  br i1 %i.cm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.u
  %i.cn = load i64, ptr %i.bx, align 8, !tbaa !15, !alias.scope !66
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #15
  br label %.body
end_hunk_6
begin_hunk_7_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.cy, ptr %8, align 8, !tbaa !19, !alias.scope !76
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 0, ptr %i.cz, align 8, !tbaa !22, !alias.scope !76
  store i8 0, ptr %i.cy, align 8, !tbaa !15, !alias.scope !76
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !67, !noalias !76 ; 3 uses
  %.not.i.not.i.i40 = icmp eq ptr %i.db, null
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !76 ; 2 uses
  %i.de = icmp ugt ptr %i.db, %i.dd
  %.08.i.i.i41 = select i1 %i.de, ptr %i.db, ptr %i.dd ; 2 uses
  %.not5.i.i42 = icmp eq ptr %.08.i.i.i41, null
end_hunk_7
begin_hunk_8_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a

bb.w:                                             ; preds = %._crit_edge
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !69, !noalias !76 ; 2 uses
  %i.dh = ptrtoint ptr %.08.i.i.i41 to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
end_hunk_8
begin_hunk_9_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
bb.x:                                             ; preds = %bb.y, %bb.w
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %8, align 8, !tbaa !25, !alias.scope !76 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cy
  br i1 %i.dn, label %.body47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i44: ; preds = %bb.x
  %i.do = load i64, ptr %i.cy, align 8, !tbaa !15, !alias.scope !76
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #15
  br label %.body47
end_hunk_9
begin_hunk_10_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dt = add i64 %.085, 1                        ; 2 uses
  %exitcond87.not = icmp eq i64 %i.dt, %1
  br i1 %exitcond87.not, label %._crit_edge, label %bb.z, !llvm.loop !77

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.z
  %i.du = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %i.eb = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eb)
  %.not21.i = icmp eq ptr %8, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ac, !prof !78

bb.ac:                                            ; preds = %bb.ab
  switch i64 %i.ea, label %bb.ae [
end_hunk_11
begin_hunk_12_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  store ptr %i.er, ptr %9, align 8, !tbaa !19, !alias.scope !85
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i64 0, ptr %i.es, align 8, !tbaa !22, !alias.scope !85
  store i8 0, ptr %i.er, align 8, !tbaa !15, !alias.scope !85
  %i.et = load ptr, ptr %i.bz, align 8, !tbaa !67, !noalias !85 ; 3 uses
  %.not.i.not.i.i57 = icmp eq ptr %i.et, null
  %i.eu = load ptr, ptr %i.cb, align 8, !noalias !85 ; 2 uses
  %i.ev = icmp ugt ptr %i.et, %i.eu
  %.08.i.i.i58 = select i1 %i.ev, ptr %i.et, ptr %i.eu ; 2 uses
  %.not5.i.i59 = icmp eq ptr %.08.i.i.i58, null
end_hunk_12
begin_hunk_13_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !69, !noalias !85 ; 2 uses
  %i.ey = ptrtoint ptr %.08.i.i.i58 to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
end_hunk_13
begin_hunk_14_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %9, align 8, !tbaa !25, !alias.scope !85 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.er
  br i1 %i.fe, label %.body64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i61: ; preds = %bb.ai
  %i.ff = load i64, ptr %i.er, align 8, !tbaa !15, !alias.scope !85
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #15
  br label %.body64
end_hunk_14
begin_hunk_15_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %i.fo = icmp ult i64 %i.fn, 16
  call void @llvm.assume(i1 %i.fo)
  %.not21.i70 = icmp eq ptr %9, %3
  br i1 %.not21.i70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit75, label %bb.al, !prof !78

bb.al:                                            ; preds = %bb.ak
  switch i64 %i.fn, label %bb.an [
end_hunk_15
begin_hunk_16_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %i.gw = getelementptr inbounds i8, ptr %5, i64 %i.gv
  store ptr %i.gt, ptr %i.gw, align 8, !tbaa !27
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.gx, align 8, !tbaa !86
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gy) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
end_hunk_16
begin_hunk_17_@_ZNK22photos_editing_formats8image_io11JpegSegment24GetPayloadHexDumpStringsEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %i.hl = getelementptr inbounds i8, ptr %4, i64 %i.hk
  store ptr %i.gt, ptr %i.hl, align 8, !tbaa !27
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.hm, align 8, !tbaa !86
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.hn) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
end_hunk_17
begin_hunk_18_@llvm.experimental.noalias.scope.decl
!53 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!54 = !{!"p1 int", !13, i64 0}
!55 = !{!"p1 short", !13, i64 0}
!56 = distinct !{null}
!57 = !{!40, !5, i64 224}
!58 = !{!30, !9, i64 16}
!59 = distinct !{!59, !18}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!62 = distinct !{!62, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!65 = distinct !{!65, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!66 = !{!64, !61}
!67 = !{!68, !21, i64 40}
!68 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !36, i64 56}
!69 = !{!68, !21, i64 32}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!72 = distinct !{!72, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!75 = distinct !{!75, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!76 = !{!74, !71}
!77 = distinct !{!77, !18}
!78 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!81 = distinct !{!81, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!84 = distinct !{!84, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!85 = !{!83, !80}
!86 = !{!87, !9, i64 8}
!87 = !{!"_ZTSSi", !9, i64 8}
end_hunk_18
