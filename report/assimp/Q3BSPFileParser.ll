begin_hunk_0_@_ZN6Assimp15Q3BSPFileParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_18ZipArchiveIOSystemE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc6 unwind label %bb.e    ; 3 uses

.noexc6:                                          ; preds = %bb.c
  invoke void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.s)
end_hunk_0
begin_hunk_1_@_ZN6Assimp15Q3BSPFileParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_18ZipArchiveIOSystemE:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull %i.n)
          to label %_ZN6Assimp15Q3BSPFileParser8readDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN6Assimp15Q3BSPFileParser8readDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.sink.split.i
  br i1 %.not.i, label %bb.g, label %_ZN6Assimp15Q3BSPFileParser8readDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
end_hunk_1
begin_hunk_2_@_ZN6Assimp15Q3BSPFileParser9parseFileEv:bb.a
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = icmp ult i64 %i.ah, %i.aq
  br i1 %i.ar, label %bb.f, label %_ZN6Assimp15Q3BSPFileParser11getVerticesEv.exit, !llvm.loop !3

_ZN6Assimp15Q3BSPFileParser11getVerticesEv.exit:  ; preds = %bb.f, %bb.e
  %i.as = phi ptr [ %i.p, %bb.e ], [ %i.ai, %bb.f ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp15Q3BSPFileParser9parseFileEv:bb.a
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3
  %i.cy = icmp ult i64 %i.co, %i.cx
  br i1 %i.cy, label %bb.j, label %_ZN6Assimp15Q3BSPFileParser8getFacesEv.exit, !llvm.loop !5

_ZN6Assimp15Q3BSPFileParser8getFacesEv.exit:      ; preds = %bb.j, %_ZN6Assimp15Q3BSPFileParser10getIndicesEv.exit
  %i.cz = phi ptr [ %i.bw, %_ZN6Assimp15Q3BSPFileParser10getIndicesEv.exit ], [ %i.cp, %bb.j ] ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp15Q3BSPFileParser9parseFileEv:bb.a
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3
  %i.eb = icmp ult i64 %i.dr, %i.ea
  br i1 %i.eb, label %bb.k, label %_ZN6Assimp15Q3BSPFileParser11getTexturesEv.exit, !llvm.loop !6

_ZN6Assimp15Q3BSPFileParser11getTexturesEv.exit:  ; preds = %bb.k, %_ZN6Assimp15Q3BSPFileParser8getFacesEv.exit
  %i.ec = phi ptr [ %i.cz, %_ZN6Assimp15Q3BSPFileParser8getFacesEv.exit ], [ %i.ds, %bb.k ] ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN6Assimp15Q3BSPFileParser9parseFileEv:bb.a
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 3
  %i.fe = icmp ult i64 %i.eu, %i.fd
  br i1 %i.fe, label %bb.l, label %_ZN6Assimp15Q3BSPFileParser12getLightMapsEv.exit, !llvm.loop !7

_ZN6Assimp15Q3BSPFileParser12getLightMapsEv.exit: ; preds = %bb.l, %_ZN6Assimp15Q3BSPFileParser11getTexturesEv.exit
  %i.ff = phi ptr [ %i.ec, %_ZN6Assimp15Q3BSPFileParser11getTexturesEv.exit ], [ %i.ev, %bb.l ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6Assimp5Q3BSP10Q3BSPModelD2Ev:bb.a
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = icmp ugt i64 %i.v, %i.r
  br i1 %i.w, label %.lr.ph, label %.preheader42, !llvm.loop !8

.preheader41:                                     ; preds = %bb.e, %.preheader42
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp5Q3BSP10Q3BSPModelD2Ev:bb.a
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = icmp ugt i64 %i.ao, %i.ak
  br i1 %i.ap, label %.lr.ph55, label %.preheader41, !llvm.loop !9

.preheader40:                                     ; preds = %bb.g, %.preheader41
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
end_hunk_7
begin_hunk_8_@_ZN6Assimp5Q3BSP10Q3BSPModelD2Ev:bb.a
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = icmp ugt i64 %i.bh, %i.bd
  br i1 %i.bi, label %.lr.ph57, label %.preheader40, !llvm.loop !10

.preheader:                                       ; preds = %bb.i, %.preheader40
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN6Assimp5Q3BSP10Q3BSPModelD2Ev:bb.a
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 3
  %i.cb = icmp ugt i64 %i.ca, %i.bw
  br i1 %i.cb, label %.lr.ph59, label %.preheader, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %bb.s
  %i.cc = icmp eq ptr %i.ew, %i.ev
end_hunk_9
begin_hunk_10_@_ZN6Assimp5Q3BSP10Q3BSPModelD2Ev:bb.a
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = icmp ugt i64 %i.fc, %i.ey
  br i1 %i.fd, label %.lr.ph61, label %._crit_edge.loopexit, !llvm.loop !12
}

; Function Attrs: nobuiltin nounwind
end_hunk_10
begin_hunk_11_@_ZN6Assimp15Q3BSPFileParser11getVerticesEv:bb.a
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = icmp ult i64 %i.u, %i.ad
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !3
}

; Function Attrs: mustprogress uwtable
end_hunk_11
begin_hunk_12_@_ZN6Assimp15Q3BSPFileParser8getFacesEv:bb.a
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = icmp ult i64 %i.u, %i.ad
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !5
}

; Function Attrs: mustprogress uwtable
end_hunk_12
begin_hunk_13_@_ZN6Assimp15Q3BSPFileParser11getTexturesEv:bb.a
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = icmp ult i64 %i.u, %i.ad
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !6
}

; Function Attrs: mustprogress uwtable
end_hunk_13
begin_hunk_14_@_ZN6Assimp15Q3BSPFileParser12getLightMapsEv:bb.a
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = icmp ult i64 %i.u, %i.ad
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !7
}

; Function Attrs: mustprogress uwtable
end_hunk_14
begin_hunk_15_@llvm.umin.i64
!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
end_hunk_15
