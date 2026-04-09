inline.NumInlined: 804
inline.NumDeleted: 412
begin_hunk_0_@_ZN6Assimp11PLYImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.d, ptr noundef nonnull %i.a)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.c ; 10 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %.not = icmp eq ptr %i.h, null
end_hunk_0
begin_hunk_1_@_ZN6Assimp11PLYImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc80 unwind label %bb.w   ; 7 uses

.noexc80:                                         ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp11PLYImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i81, i64 1
  br label %bb.ab, !llvm.loop !7

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPKT_PS3_S3_.exit: ; preds = %bb.ab, %bb.ac
  %.0.lcssa.i = phi ptr [ %.0.i81, %bb.ab ], [ %i.bp, %bb.ac ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp11PLYImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.em = load i32, ptr %i.eb, align 8
  %i.en = zext i32 %i.em to i64
  %i.eo = icmp samesign ult i64 %indvars.iv.next, %i.en
  br i1 %i.eo, label %.lr.ph, label %._crit_edge, !llvm.loop !8

bb.bt:                                            ; preds = %._crit_edge
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_3
begin_hunk_4_@_ZN6Assimp11PLYImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.fz = load ptr, ptr %i.h, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #20, !inline_history !9
  %i.gc = load ptr, ptr %4, align 8               ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.a
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
end_hunk_4
begin_hunk_5_@_ZN6Assimp11PLYImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.go = load i32, ptr %i.gn, align 8
  %i.gp = zext i32 %i.go to i64
  %i.gq = icmp samesign ult i64 %indvars.iv.next170, %i.gp
  br i1 %i.gq, label %.lr.ph164, label %._crit_edge165, !llvm.loop !10

bb.cc:                                            ; preds = %bb.cb, %bb.bs
  %.pn65 = phi { ptr, i32 } [ %i.eh, %bb.bs ], [ %i.gg, %bb.cb ]
end_hunk_5
begin_hunk_6_@_ZN6Assimp11PLYImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.hu = load ptr, ptr %i.h, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #20, !inline_history !9
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit121

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit121: ; preds = %bb.d, %bb.e, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i120, %bb.c
end_hunk_6
begin_hunk_7_@_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE:bb.a
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef %i.g, i32 noundef 0), !inline_history !11 ; 0 uses
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8
end_hunk_7
begin_hunk_8_@_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE:bb.a
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.p, i64 noundef 1, i64 noundef %i.q), !inline_history !11 ; 4 uses
  %.not21 = icmp eq i64 %i.u, 0
  br i1 %.not21, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.c

end_hunk_8
begin_hunk_9_@_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE:bb.a
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.am, i32 noundef 0), !inline_history !11 ; 0 uses
  %i.aw = load ptr, ptr %0, align 8               ; 2 uses
  %i.ax = load ptr, ptr %i.ag, align 8
  %i.ay = load i64, ptr %i.a, align 8
  %i.az = load ptr, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.ax, i64 noundef 1, i64 noundef %i.ay), !inline_history !11 ; 4 uses
  %.not22 = icmp eq i64 %i.bc, 0
  br i1 %.not22, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.h

end_hunk_9
begin_hunk_10_@_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bp = load i8, ptr %i.bo, align 1
  %.not14 = icmp eq i8 %i.bp, 10
  br i1 %.not14, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, label %bb.f, !llvm.loop !12

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread:          ; preds = %bb.j, %bb.e
  %i.bq = phi ptr [ %i.ah, %bb.e ], [ %i.bk, %bb.j ]
end_hunk_10
begin_hunk_11_@_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE:bb.a
  %i.co = load ptr, ptr %i.cm, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i64 noundef %i.cn, i32 noundef 0), !inline_history !11 ; 0 uses
  %i.cs = load ptr, ptr %0, align 8               ; 2 uses
  %i.ct = load ptr, ptr %i.ag, align 8
  %i.cu = load i64, ptr %i.a, align 8
  %i.cv = load ptr, ptr %i.cs, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call noundef i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull %i.ct, i64 noundef 1, i64 noundef %i.cu), !inline_history !11 ; 4 uses
  %.not23 = icmp eq i64 %i.cy, 0
  br i1 %.not23, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.o

end_hunk_11
begin_hunk_12_@_ZN6Assimp14IOStreamBufferIcE11getNextLineERSt6vectorIcSaIcEE:bb.a
bb.q:                                             ; preds = %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread, %bb.m
  %i.dg = phi i64 [ 0, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit20.thread ], [ %i.ck, %bb.m ]
  %.pre28 = load ptr, ptr %i.ag, align 8
  br label %bb.k, !llvm.loop !13

bb.r:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  store i8 10, ptr %i.bz, align 1
end_hunk_12
begin_hunk_13_@_ZN6Assimp11PLYImporter12LoadMaterialEPSt6vectorIP10aiMaterialSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %.047300304 = phi i32 [ -1, %.lr.ph311 ], [ %.047299, %.thread270 ] ; 15 uses
  %i.bi = phi i32 [ 0, %.lr.ph311 ], [ %i.cn, %.thread270 ] ; 15 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0127.0305, i64 40
  %i.bk = load i8, ptr %i.bj, align 8, !range !14, !noundef !15
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.thread270, label %bb.d

end_hunk_13
begin_hunk_14_@_ZN6Assimp11PLYImporter12LoadMaterialEPSt6vectorIP10aiMaterialSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0127.0305, i64 48 ; 2 uses
  %i.cp = add i32 %.047309, 1
  %.not284 = icmp eq ptr %i.co, %i.aa
  br i1 %.not284, label %._crit_edge, label %bb.c, !llvm.loop !16

bb.r:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0160.0297, i64 32
end_hunk_14
begin_hunk_15_@_ZN6Assimp11PLYImporter12LoadMaterialEPSt6vectorIP10aiMaterialSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  %.not283 = icmp eq ptr %i.cs, %i.cv
  br i1 %.not283, label %.thread275, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.thread270
  store i32 %.047309319, ptr %i.ab, align 4
end_hunk_15
begin_hunk_16_@_ZN6Assimp11PLYImporter12LoadMaterialEPSt6vectorIP10aiMaterialSaIS3_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0119.0373, i64 24 ; 2 uses
  %i.gt = load ptr, ptr %i.cy, align 8
  %.not285 = icmp eq ptr %i.gs, %i.gt
  br i1 %.not285, label %.loopexit, label %bb.v, !llvm.loop !18

bb.bg:                                            ; preds = %bb.ax, %bb.ag
  %.pn65 = phi { ptr, i32 } [ %lpad.phi, %bb.ax ], [ %i.eg, %bb.ag ]
end_hunk_16
begin_hunk_17_@_ZN6Assimp11PLYImporter10LoadVertexEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %.sroa.749.0241 = phi i32 [ %.sroa.749.1, %bb.o ], [ -1, %bb.a ] ; 13 uses
  %.sroa.0206.0240 = phi ptr [ %i.ah, %bb.o ], [ %i.a, %bb.a ] ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0206.0240, i64 40
  %i.f = load i8, ptr %i.e, align 8, !range !14, !noundef !15
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.o, label %bb.b

end_hunk_17
begin_hunk_18_@_ZN6Assimp11PLYImporter10LoadVertexEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0206.0240, i64 48 ; 2 uses
  %i.ai = add i32 %.0100251, 1
  %.not235 = icmp eq ptr %i.ah, %i.c
  br i1 %.not235, label %._crit_edge, label %.lr.ph, !llvm.loop !19

bb.p:                                             ; preds = %._crit_edge
  %.not106 = icmp eq i32 %.sroa.066.1, -1
end_hunk_18
begin_hunk_19_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a

bb.g:                                             ; preds = %.lr.ph185
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0147.0178, i64 40
  %i.n = load i8, ptr %i.m, align 8, !range !14, !noundef !15
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.h, label %bb.k

end_hunk_19
begin_hunk_20_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a

bb.i:                                             ; preds = %.lr.ph185
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0147.0178, i64 40
  %i.r = load i8, ptr %i.q, align 8, !range !14, !noundef !15
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.j, label %bb.k

end_hunk_20
begin_hunk_21_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0147.0178, i64 48 ; 2 uses
  %i.v = add i32 %.099179, 1
  %.not164 = icmp eq ptr %i.u, %i.j
  br i1 %.not164, label %.loopexit170, label %.lr.ph185, !llvm.loop !20

bb.l:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %1, align 8                ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %.0100176 = phi i32 [ %i.ae, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.sroa.0142.0175 = phi ptr [ %i.ad, %bb.n ], [ %i.w, %bb.l ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0142.0175, i64 40
  %i.aa = load i8, ptr %i.z, align 8, !range !14, !noundef !15
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.m, label %bb.n

end_hunk_22
begin_hunk_23_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0142.0175, i64 48 ; 2 uses
  %i.ae = add i32 %.0100176, 1
  %.not163 = icmp eq ptr %i.ad, %i.y
  br i1 %.not163, label %.loopexit171, label %.lr.ph, !llvm.loop !21

.loopexit171:                                     ; preds = %bb.n, %bb.l, %bb.m
  %.287 = phi i32 [ %i.ac, %bb.m ], [ 0, %bb.l ], [ 0, %bb.n ]
end_hunk_23
begin_hunk_24_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !22

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.unr = phi ptr [ %i.au, %bb.q ], [ %i.bb, %.prol.preheader ]
end_hunk_24
begin_hunk_25_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0139.0190, i64 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit168, label %.lr.ph192, !llvm.loop !24

.loopexit168:                                     ; preds = %_ZN6Assimp3PLY16PropertyInstance9ConvertToIjEET_NS1_10ValueUnionENS0_9EDataTypeE.exit, %_ZN6Assimp12_GLOBAL__N_111GetPropertyINS_3PLY16PropertyInstanceEEERKT_RKSt6vectorIS4_SaIS4_EEi.exit119, %bb.w
  %.not107 = icmp eq i32 %.294, -1
end_hunk_25
begin_hunk_26_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %i.gz = add nuw i32 %.091195, 1                 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0136.0193, i64 8
  %exitcond208.not = icmp eq i32 %i.gz, %i.er
  br i1 %exitcond208.not, label %.thread, label %bb.al, !llvm.loop !25

bb.bb:                                            ; preds = %bb.v
  %.val = load ptr, ptr %2, align 8               ; 2 uses
end_hunk_26
begin_hunk_27_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.prol.loopexit241, label %.prol.preheader240, !llvm.loop !26

.prol.loopexit241:                                ; preds = %.prol.preheader240, %bb.bl
  %.unr246 = phi ptr [ %i.ij, %bb.bl ], [ %i.iq, %.prol.preheader240 ]
end_hunk_27
begin_hunk_28_@_ZN6Assimp11PLYImporter8LoadFaceEPKNS_3PLY7ElementEPKNS1_15ElementInstanceEj:bb.a
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0133.0198, i64 8 ; 2 uses
  %i.kw = load ptr, ptr %i.hl, align 8
  %.not165 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not165, label %.thread, label %bb.bf, !llvm.loop !27

.thread:                                          ; preds = %bb.ba, %bb.bo, %bb.f, %_ZN6Assimp12_GLOBAL__N_111GetPropertyINS_3PLY16PropertyInstanceEEERKT_RKSt6vectorIS4_SaIS4_EEi.exit130, %bb.e, %_ZN6Assimp12_GLOBAL__N_111GetPropertyINS_3PLY16PropertyInstanceEEERKT_RKSt6vectorIS4_SaIS4_EEi.exit123, %.loopexit168, %.loopexit170
  ret void
end_hunk_28
begin_hunk_29_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !28

bb.e:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.l to i64                 ; 2 uses
end_hunk_29
begin_hunk_30_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_:bb.a

bb.g:                                             ; preds = %bb.h
  %i.x = icmp eq ptr %i.c, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS2_EEPNS4_10_Hash_nodeIS2_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !29

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
end_hunk_30
begin_hunk_31_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS2_SI_NS4_10_AllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb0EEEbEOT_OT0_RKT1_:bb.a
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !29

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !29

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
end_hunk_31
begin_hunk_32_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE
define linkonce_odr hidden void @_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
end_hunk_32
begin_hunk_33_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPK6aiBoneLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
end_hunk_33
begin_hunk_34_@_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIPK6aiBoneS2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
end_hunk_34
begin_hunk_35_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !41
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !41
  store i8 0, ptr %i.a, align 8, !alias.scope !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !41 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !41 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_35
begin_hunk_36_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !41 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
end_hunk_36
begin_hunk_37_@_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_:bb.a
bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !41 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

end_hunk_37
begin_hunk_38_@_ZNSt6vectorIN6Assimp3PLY19ElementInstanceListESaIS2_EED2Ev:bb.a
_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !42

_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY16PropertyInstanceEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8
end_hunk_38
begin_hunk_39_@_ZNSt6vectorIN6Assimp3PLY19ElementInstanceListESaIS2_EED2Ev:bb.a
_ZSt8_DestroyIN6Assimp3PLY15ElementInstanceEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPN6Assimp3PLY16PropertyInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY15ElementInstanceEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i, align 8
end_hunk_39
begin_hunk_40_@_ZNSt6vectorIN6Assimp3PLY19ElementInstanceListESaIS2_EED2Ev:bb.a
_ZSt8_DestroyIN6Assimp3PLY19ElementInstanceListEEvPT_.exit.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN6Assimp3PLY15ElementInstanceES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY19ElementInstanceListES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !44

_ZSt8_DestroyIPN6Assimp3PLY19ElementInstanceListES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6Assimp3PLY19ElementInstanceListEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
end_hunk_40
begin_hunk_41_@_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EED2Ev:bb.a
_ZSt8_DestroyIN6Assimp3PLY8PropertyEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !45

_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3PLY8PropertyEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i, align 8
end_hunk_41
begin_hunk_42_@_ZNSt6vectorIN6Assimp3PLY7ElementESaIS2_EED2Ev:bb.a
_ZSt8_DestroyIN6Assimp3PLY7ElementEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6Assimp3PLY8PropertyES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3PLY7ElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !46

_ZSt8_DestroyIPN6Assimp3PLY7ElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6Assimp3PLY7ElementEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
end_hunk_42
begin_hunk_43_@llvm.umax.i64
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{null, null}
!10 = distinct !{!10, !4}
!11 = distinct !{null}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = distinct !{!31, !4}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!34 = distinct !{!34, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!37 = distinct !{!37, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!40 = distinct !{!40, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!41 = !{!39, !36, !33}
!42 = distinct !{!42, !4}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !4}
end_hunk_43
