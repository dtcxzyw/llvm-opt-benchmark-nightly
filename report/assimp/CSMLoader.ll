inline.NumInlined: 486
inline.NumDeleted: 262
begin_hunk_0_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE7reserveEm.exit, %.critedge
  %.sroa.20.0.a = phi ptr [ %i.dg, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE7reserveEm.exit ], [ %.sroa.20.4.a, %.critedge ] ; 12 uses
  %.sroa.12.0 = phi ptr [ %i.dg, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE7reserveEm.exit ], [ %.sroa.12.2, %.critedge ] ; 7 uses
  %.sroa.0309.0 = phi ptr [ %i.di, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE7reserveEm.exit ], [ %.sroa.0309.4, %.critedge ] ; 7 uses
  %.1.a = phi ptr [ %i.dh, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE7reserveEm.exit ], [ %.3, %.critedge ] ; 3 uses
  %i.dj = ptrtoint ptr %.1.a to i64
  %i.dk = sub i64 %i.ak, %i.dj
end_hunk_0
begin_hunk_1_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1064
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.dt, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false)
  %.not.i.i221 = icmp eq ptr %.sroa.12.0, %.sroa.0309.0
  br i1 %.not.i.i221, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
end_hunk_1
begin_hunk_2_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backEOS1_.exit

bb.bb:                                            ; preds = %bb.az
  %i.dx = ptrtoint ptr %.sroa.12.0 to i64
  %i.dy = ptrtoint ptr %.sroa.20.0.a to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 6 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775800
  br i1 %i.ea, label %bb.bc, label %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_2
begin_hunk_3_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br i1 %i.ej, label %bb.bd, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

bb.bd:                                            ; preds = %.noexc223
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr align 8 %.sroa.20.0.a, i64 %i.dz, i1 false)
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bd, %.noexc223
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.20.0.a, i64 noundef %i.dz) #22
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ef
  %.pre659 = load ptr, ptr %i.ei, align 8
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP10aiNodeAnimSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ba
  %i.el = phi ptr [ %.pre659, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.dt, %bb.ba ] ; 2 uses
  %.sroa.20.4.a = phi ptr [ %i.eh, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.20.0.a, %bb.ba ]
  %.pn416 = phi ptr [ %i.ei, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.12.0, %bb.ba ]
  %.sroa.0309.4 = phi ptr [ %i.ek, %_ZNSt6vectorIP10aiNodeAnimSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0309.0, %bb.ba ]
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn416, i64 8
  br label %bb.be

end_hunk_3
begin_hunk_4_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br label %bb.be, !llvm.loop !8

.loopexit436.a:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.20.0.lcssa581 = phi ptr [ %.sroa.0309.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.sroa.12.0, %_ZNKSt6vectorIP10aiNodeAnimSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit438 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm
end_hunk_4
begin_hunk_5_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

bb.bg:                                            ; preds = %.loopexit431.a
  %i.eq = ptrtoint ptr %.sroa.12.0 to i64
  %i.er = ptrtoint ptr %.sroa.20.0.a to i64       ; 2 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 2 uses
  %i.et = lshr exact i64 %i.es, 3
  %i.eu = trunc i64 %i.et to i32                  ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.fc = load i32, ptr %i.ew, align 8
  %i.fd = zext i32 %i.fc to i64
  %i.fe = shl nuw nsw i64 %i.fd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr nonnull align 8 %.sroa.20.0.a, i64 %i.fe, i1 false)
  %i.ff = ptrtoint ptr %.sroa.0309.0 to i64
  %i.fg = sub i64 %i.ff, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.20.0.a, i64 noundef %i.fg) #22
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit

bb.bm:                                            ; preds = %.loopexit436.a, %.loopexit.split-lp437, %.loopexit446, %.loopexit.split-lp447, %bb.bj
  %.sroa.20.2.a = phi ptr [ %.sroa.20.0.a, %.loopexit.split-lp447 ], [ %.sroa.20.0.a, %bb.bj ], [ %.sroa.20.1.ph.a, %.loopexit446 ], [ %.sroa.20.0.a, %.loopexit436.a ], [ %.sroa.20.0.a, %.loopexit.split-lp437 ] ; 3 uses
  %.sroa.0309.2 = phi ptr [ %.sroa.0309.0, %.loopexit.split-lp447 ], [ %.sroa.0309.0, %bb.bj ], [ %.sroa.0309.1.ph, %.loopexit446 ], [ %.sroa.20.0.lcssa581, %.loopexit436.a ], [ %.sroa.12.0, %.loopexit.split-lp437 ]
  %.pn141 = phi { ptr, i32 } [ %lpad.loopexit.split-lp449, %.loopexit.split-lp447 ], [ %i.ey, %bb.bj ], [ %lpad.loopexit448, %.loopexit446 ], [ %lpad.loopexit438, %.loopexit436.a ], [ %lpad.loopexit.split-lp439, %.loopexit.split-lp437 ] ; 2 uses
  %.not.i.i.i224 = icmp eq ptr %.sroa.20.2.a, null
  br i1 %.not.i.i.i224, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit225, label %.thread

.thread:                                          ; preds = %bb.bm
  %i.fh = ptrtoint ptr %.sroa.0309.2 to i64
  %i.fi = ptrtoint ptr %.sroa.20.2.a to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.20.2.a, i64 noundef %i.fj) #22
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit225

bb.bn:                                            ; preds = %bb.aq, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i208
end_hunk_6
begin_hunk_7_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %.1372 = phi i32 [ %.sroa.speculated302, %._crit_edge ], [ %.0371, %.loopexit434.preheader ] ; 3 uses
  %.1369 = phi i32 [ %.0.lcssa.i, %._crit_edge ], [ %.0368.a, %.loopexit434.preheader ] ; 2 uses
  %.4 = phi ptr [ %.6.lcssa, %._crit_edge ], [ %i.fn, %.loopexit434.preheader ] ; 3 uses
  %.0111 = phi i32 [ %spec.select, %._crit_edge ], [ %.1107.ph, %.loopexit434.preheader ] ; 5 uses
  %.1107 = phi i32 [ %i.jb, %._crit_edge ], [ 0, %.loopexit434.preheader ] ; 2 uses
  %i.hv = ptrtoint ptr %.4 to i64
  %i.hw = sub i64 %i.ak, %i.hv
  %scevgep.i.i230 = getelementptr i8, ptr %.4, i64 %i.hw ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br i1 %.not559, label %._crit_edge, label %.lr.ph547

.lr.ph547:                                        ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.iq = shl i32 %.0111, 1                       ; 2 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = mul nuw nsw i64 %i.ir, 24
  %i.it = icmp eq i32 %i.iq, 0
  %i.iu = zext i32 %.0111 to i64
  %i.iv = mul nuw nsw i64 %i.iu, 24
  %i.iw = sitofp i32 %.0.lcssa.i to double
  br label %bb.cm
end_hunk_8
begin_hunk_9_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ix = phi ptr [ %i.ht, %_ZN6Assimp9strtoul10EPKcPS1_.exit ], [ %i.lj, %bb.dt ]
  %i.iy = phi ptr [ %i.hu, %_ZN6Assimp9strtoul10EPKcPS1_.exit ], [ %i.lj, %bb.dt ]
  %.6.lcssa = phi ptr [ %.08.lcssa.i, %_ZN6Assimp9strtoul10EPKcPS1_.exit ], [ %.7, %bb.dt ]
  %i.iz = icmp eq i32 %.1107, %.0111
  %i.ja = zext i1 %i.iz to i32
  %spec.select = shl i32 %.0111, %i.ja
  %i.jb = add i32 %.1107, 1
  br label %.loopexit434, !llvm.loop !12

bb.cm:                                            ; preds = %.lr.ph547, %bb.dt
end_hunk_9
begin_hunk_10_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.jh = load ptr, ptr %i.jg, align 8            ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1028 ; 4 uses
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = icmp eq i32 %i.jj, %.0111
  br i1 %i.jk, label %bb.cn, label %bb.ct

bb.cn:                                            ; preds = %bb.cm
end_hunk_10
