Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileFormatTruelight?download=true
inline.NumInlined: 946
inline.NumDeleted: 393
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.eo = icmp ult <8 x i8> %i.en, splat (i8 26)
  %i.ep = or disjoint <8 x i8> %wide.load1010, splat (i8 32)
  %i.eq = select <8 x i1> %i.eo, <8 x i8> %i.ep, <8 x i8> %wide.load1010
  store <8 x i8> %i.eq, ptr %next.gep1009, align 1, !tbaa !21, !noalias !104
  %index.next1011 = add nuw i64 %index1008, 8     ; 2 uses
  %i.er = icmp eq i64 %index.next1011, %n.vec1006
  br i1 %i.er, label %vec.epilog.middle.block1012, label %vec.epilog.vector.body1007, !llvm.loop !87

vec.epilog.middle.block1012:                      ; preds = %vec.epilog.vector.body1007
  %cmp.n1013 = icmp eq i64 %i.dy, %n.vec1006
  br i1 %cmp.n1013, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i193, label %.lr.ph.i.i188.preheader

.lr.ph.i.i188.preheader:                          ; preds = %iter.check1001, %vec.epilog.iter.check1003, %vec.epilog.middle.block1012
  %.sroa.0.08.i.i189.ph = phi ptr [ %i.dx, %iter.check1001 ], [ %i.eb, %vec.epilog.iter.check1003 ], [ %i.em, %vec.epilog.middle.block1012 ]
  br label %.lr.ph.i.i188

.lr.ph.i.i188:                                    ; preds = %.lr.ph.i.i188.preheader, %.lr.ph.i.i188
  %.sroa.0.08.i.i189 = phi ptr [ %i.ev, %.lr.ph.i.i188 ], [ %.sroa.0.08.i.i189.ph, %.lr.ph.i.i188.preheader ] ; 3 uses
  %i.es = load i8, ptr %.sroa.0.08.i.i189, align 1, !tbaa !21, !noalias !104 ; 3 uses
  %i.et = add i8 %i.es, -65
  %or.cond.i.i.i.i190 = icmp ult i8 %i.et, 26
  %i.eu = or disjoint i8 %i.es, 32
  %.0.i.i.i.i191 = select i1 %or.cond.i.i.i.i190, i8 %i.eu, i8 %i.es
  store i8 %.0.i.i.i.i191, ptr %.sroa.0.08.i.i189, align 1, !tbaa !21, !noalias !104
  %i.ev = getelementptr i8, ptr %.sroa.0.08.i.i189, i64 1 ; 2 uses
  %.not.i.i192 = icmp eq ptr %i.ev, %i.dz
  br i1 %.not.i.i192, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i193, label %.lr.ph.i.i188, !llvm.loop !88

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i193: ; preds = %.lr.ph.i.i188, %vec.epilog.middle.block1012, %middle.block998
  %.pre.i194 = load ptr, ptr %14, align 8, !tbaa !26, !noalias !104
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i195

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i195: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i193, %bb.x
  %i.ew = phi ptr [ %.pre.i194, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i193 ], [ %i.dx, %bb.x ] ; 2 uses
  store ptr %i.da, ptr %13, align 8, !tbaa !17, !alias.scope !104
  %i.ex = icmp eq ptr %i.ew, %i.db
  br i1 %i.ex, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

bb.y:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i195
  %i.ey = load i64, ptr %i.cz, align 8, !tbaa !20, !noalias !104 ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 16
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add nuw nsw i64 %i.ey, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.da, ptr noundef nonnull align 8 dereferenceable(1) %i.db, i64 %i.fa, i1 false)
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i195
  store ptr %i.ew, ptr %13, align 8, !tbaa !26, !alias.scope !104
  %i.fb = load i64, ptr %i.db, align 8, !tbaa !21, !noalias !104
  store i64 %i.fb, ptr %i.da, align 8, !tbaa !21, !alias.scope !104
  %.pre4.i197 = load i64, ptr %i.cz, align 8, !tbaa !20, !noalias !104
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %bb.y
  %i.fc = phi i64 [ %i.ey, %bb.y ], [ %.pre4.i197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ]
  store i64 %i.fc, ptr %i.dc, align 8, !tbaa !20, !alias.scope !104
  store ptr %i.db, ptr %14, align 8, !tbaa !26, !noalias !104
  store i64 0, ptr %i.cz, align 8, !tbaa !20, !noalias !104
  store i8 0, ptr %i.db, align 8, !tbaa !21, !noalias !104
  invoke void @_ZN11StringUtils18SplitByWhiteSpacesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.9") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.fd = load ptr, ptr %10, align 16, !tbaa !41  ; 5 uses
  %i.fe = load ptr, ptr %i.dd, align 8, !tbaa !42 ; 2 uses
  %i.ff = load ptr, ptr %i.de, align 16, !tbaa !43
  %i.fg = load <2 x ptr>, ptr %12, align 16, !tbaa !105
  store <2 x ptr> %i.fg, ptr %10, align 16, !tbaa !105
  %i.fh = load ptr, ptr %i.dg, align 16, !tbaa !43
  store ptr %i.fh, ptr %i.de, align 16, !tbaa !43
  %.not4.i.i.i.i.i = icmp eq ptr %i.fd, %i.fe
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aa, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.fn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.fd, %bb.aa ] ; 3 uses
  %i.fi = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !21
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fn, %i.fe
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.aa
  %.not.i.i1.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.fo = ptrtoint ptr %i.ff to i64
  %i.fp = ptrtoint ptr %i.fd to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fq) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.ab
  %i.fr = load ptr, ptr %12, align 16, !tbaa !41  ; 3 uses
  %i.fs = load ptr, ptr %i.df, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fr, %i.fs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fy, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.fr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.ft = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !21
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fy, %i.fs
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %12, align 16, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.fz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.fr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ga = load ptr, ptr %i.dg, align 16, !tbaa !43
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gd) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ac
  %i.ge = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.da
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.gg = load i64, ptr %i.da, align 8, !tbaa !21
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  %i.gi = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.db
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %i.gk = load i64, ptr %i.db, align 8, !tbaa !21
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  %i.gm = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.cx
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %i.go = load i64, ptr %i.cx, align 8, !tbaa !21
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.gq = load ptr, ptr %10, align 16, !tbaa !105 ; 8 uses
  %i.gr = load ptr, ptr %i.dd, align 8, !tbaa !105 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %.backedge.backedge, label %bb.ag

.backedge.backedge:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %bb.ah
  br label %.backedge, !llvm.loop !89

.loopexit489.loopexit:                            ; preds = %.backedge
  %lpad.loopexit492 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit489

.loopexit489.loopexit.split-lp:                   ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i311, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i301, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i291, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i281, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i271, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i254, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %bb.ch, %bb.br, %bb.an, %bb.al, %bb.aj
  %.sroa.0405.1.ph.ph = phi ptr [ %.sroa.0405.7, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i271 ], [ %.sroa.0405.2471, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0405.2471, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i311 ], [ %.sroa.0405.2471, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i301 ], [ %.sroa.0405.2471, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i291 ], [ %.sroa.0405.2471, %bb.ch ], [ %.sroa.0405.0.ph, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ], [ %.sroa.0405.0.ph, %bb.an ], [ %.sroa.0405.0.ph, %bb.al ], [ %.sroa.0405.0.ph, %bb.aj ], [ %.sroa.0405.0.ph, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i254 ], [ %.sroa.0405.0.ph, %bb.br ], [ %.sroa.0405.8, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i281 ]
  %.sroa.34.1.ph.ph = phi ptr [ %.sroa.34.7, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i271 ], [ %.sroa.34.2473, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.34.2473, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i311 ], [ %.sroa.34.2473, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i301 ], [ %.sroa.34.2473, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i291 ], [ %.sroa.34.2473, %bb.ch ], [ %.sroa.34.0.ph, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i ], [ %.sroa.34.0.ph, %bb.an ], [ %.sroa.34.0.ph, %bb.al ], [ %.sroa.34.0.ph, %bb.aj ], [ %.sroa.34.0.ph, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i254 ], [ %.sroa.34.0.ph, %bb.br ], [ %.sroa.19.5, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i281 ]
  %lpad.loopexit.split-lp493 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit489

.loopexit.split-lp:                               ; preds = %.invoke1027, %.invoke1025, %.invoke, %bb.cu, %bb.cz
  %.sroa.0405.1.ph490 = phi ptr [ %.sroa.0405.8, %bb.cz ], [ %.sroa.0405.7, %bb.cu ], [ %.sroa.0405.2471, %.invoke1027 ], [ %.sroa.0405.0.ph, %.invoke ], [ %.sroa.0405.2471, %.invoke1025 ]
  %.sroa.34.1.ph491 = phi ptr [ %.sroa.19.5, %bb.cz ], [ %.sroa.34.7, %bb.cu ], [ %.sroa.34.2473, %.invoke1027 ], [ %.sroa.34.0.ph, %.invoke ], [ %.sroa.34.2473, %.invoke1025 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit489

bb.ad:                                            ; preds = %.noexc.i184
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

bb.ae:                                            ; preds = %bb.w
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

bb.af:                                            ; preds = %bb.z
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.da
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.af
  %i.gy = load i64, ptr %i.da, align 8, !tbaa !21
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  %i.ha = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.db
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.hc = load i64, ptr %i.db, align 8, !tbaa !21
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211, %bb.ae
  %.pn110.pn = phi { ptr, i32 } [ %i.gu, %bb.ae ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ] ; 2 uses
  %i.he = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.cx
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213
  %i.hg = load i64, ptr %i.cx, align 8, !tbaa !21
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214, %bb.ad
  %.pn110.pn.pn = phi { ptr, i32 } [ %i.gt, %bb.ad ], [ %.pn110.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214 ], [ %.pn110.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.loopexit489

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !20
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit, label %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.ag
  %i.hl = load ptr, ptr %i.gq, align 8, !tbaa !26
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !21
  %i.hn = icmp eq i8 %i.hm, 35
  br i1 %i.hn, label %bb.ah, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

bb.ah:                                            ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit
  %i.ho = ptrtoint ptr %i.gr to i64
  %i.hp = ptrtoint ptr %i.gq to i64
  %i.hq = sub i64 %i.ho, %i.hp                    ; 3 uses
  %i.hr = icmp ult i64 %i.hq, 33
  br i1 %i.hr, label %.backedge.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gq, i64 32 ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !20 ; 5 uses
  switch i64 %i.hu, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ai
  %i.hv = load ptr, ptr %i.hs, align 8, !tbaa !26 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 1
  %i.hx = xor i32 %i.hw, 1952737655
  %i.hy = getelementptr i8, ptr %i.hv, i64 4
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = zext i8 %i.hz to i32
  %i.ib = xor i32 %i.ia, 104
  %i.ic = or i32 %i.hx, %i.ib
  %i.id = icmp ne i32 %i.ic, 0
  %i.ie = zext i1 %i.id to i32
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.not131 = icmp eq i64 %i.hq, 160
  br i1 %.not131, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gq, i64 64
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !26
  %i.ii = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.d, ptr noundef %i.ih, i1 noundef zeroext false)
          to label %bb.ak unwind label %.loopexit489.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ii, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.ij = load ptr, ptr %10, align 16, !tbaa !41
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 96
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !26
  %i.im = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.dh, ptr noundef %i.il, i1 noundef zeroext false)
          to label %bb.am unwind label %.loopexit489.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  br i1 %i.im, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.in = load ptr, ptr %10, align 16, !tbaa !41
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 128
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !26
  %i.iq = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.di, ptr noundef %i.ip, i1 noundef zeroext false)
          to label %bb.ao unwind label %.loopexit489.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  br i1 %i.iq, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ir = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull @.str.7)
          to label %.invoke unwind label %bb.aq

.invoke:                                          ; preds = %bb.bt, %bb.ap
  %i.is = phi ptr [ %i.ir, %bb.ap ], [ %i.ls, %bb.bt ]
  invoke void @__cxa_throw(ptr nonnull %i.is, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ir) #23
  br label %.loopexit489

bb.ar:                                            ; preds = %bb.ao
  %i.iu = load i32, ptr %i.d, align 4, !tbaa !38  ; 6 uses
  %i.iv = load i32, ptr %i.dh, align 4, !tbaa !38
  %.not132 = icmp eq i32 %i.iu, %i.iv
  %i.iw = load i32, ptr %i.di, align 4
  %.not133 = icmp eq i32 %i.iu, %i.iw
  %or.cond893 = select i1 %.not132, i1 %.not133, i1 false
  br i1 %or.cond893, label %bb.bf, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.at unwind label %bb.az

bb.at:                                            ; preds = %bb.as
  %i.ix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.8, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.at
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.9, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.10, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220
  %i.ja = load i32, ptr %i.d, align 4, !tbaa !38
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef %i.ja)
          to label %bb.au unwind label %bb.ba

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.11, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224: ; preds = %bb.au
  %i.jd = load i32, ptr %i.dh, align 4, !tbaa !38
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef %i.jd)
          to label %bb.av unwind label %bb.ba     ; 2 uses

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull @.str.11, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit226: ; preds = %bb.av
  %i.jg = load i32, ptr %i.di, align 4, !tbaa !38
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.je, i32 noundef %i.jg)
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
bb.by:                                            ; preds = %bb.bx
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.12)
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.lx = load ptr, ptr %21, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lw, ptr noundef %i.lx)
          to label %bb.ca unwind label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  invoke void @__cxa_throw(ptr nonnull %i.lw, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.gd unwind label %bb.cc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253.thread: ; preds = %bb.bw
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split894

bb.cb:                                            ; preds = %bb.by
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %.053 = phi i1 [ false, %bb.ca ], [ true, %bb.bz ] ; 2 uses
  %i.ma = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mb = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.cc
  %i.me = load i64, ptr %i.mc, align 8, !tbaa !21
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.mf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.cb
  %.pn127 = phi { ptr, i32 } [ %i.lz, %bb.cb ], [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %i.ma, %bb.cc ] ; 4 uses
  %.154 = phi i1 [ true, %bb.cb ], [ %.053, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.053, %bb.cc ] ; 2 uses
  %i.mg = load ptr, ptr %22, align 8, !tbaa !26   ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !21
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
  %i.ml = load ptr, ptr %23, align 8, !tbaa !26   ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread: ; preds = %bb.bx
  %i.mo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mp = load ptr, ptr %23, align 8, !tbaa !26   ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %.sink.split894, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread
  %i.ms = load i64, ptr %i.mq, align 8, !tbaa !21
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #24
  br label %.sink.split894

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.mu = load i64, ptr %i.mm, align 8, !tbaa !21
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mv) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.154, label %bb.cd, label %.loopexit489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.154, label %bb.cd, label %.loopexit489

.sink.split894:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251.thread
  %.pn127.pn.pn452.ph = phi { ptr, i32 } [ %i.mo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251.thread ], [ %i.ly, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253.thread ], [ %i.mo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split894, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %.pn127.pn.pn452 = phi { ptr, i32 } [ %.pn127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.pn127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.pn127.pn.pn452.ph, %.sink.split894 ]
  call void @__cxa_free_exception(ptr %i.lw) #23
  br label %.loopexit489

bb.ce:                                            ; preds = %bb.bv
  %i.mw = mul nuw nsw i32 %i.lu, 3
  %i.mx = zext nneg i32 %i.mw to i64              ; 3 uses
  %i.my = ptrtoint ptr %.sroa.34.0.ph to i64
  %i.mz = ptrtoint ptr %.sroa.0405.0.ph to i64    ; 2 uses
  %i.na = sub i64 %i.my, %i.mz                    ; 2 uses
  %i.nb = ashr exact i64 %i.na, 2
  %i.nc = icmp ult i64 %i.nb, %i.mx
  br i1 %i.nc, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i254, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i254: ; preds = %bb.ce
  %i.nd = ptrtoint ptr %.sroa.19.0.ph to i64
  %i.ne = sub i64 %i.nd, %i.mz                    ; 3 uses
  %i.nf = shl nuw nsw i64 %i.mx, 2
  %i.ng = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nf) #22
          to label %.noexc258 unwind label %.loopexit489.loopexit.split-lp ; 4 uses

.noexc258:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i254
  %i.nh = icmp sgt i64 %i.ne, 0
  br i1 %i.nh, label %bb.cf, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i255

bb.cf:                                            ; preds = %.noexc258
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ng, ptr align 4 %.sroa.0405.0.ph, i64 %i.ne, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i255

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i255: ; preds = %bb.cf, %.noexc258
  %.not.i8.i256 = icmp eq ptr %.sroa.0405.0.ph, null
  br i1 %.not.i8.i256, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i257, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i255
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0405.0.ph, i64 noundef %i.na) #24
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i257

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i257: ; preds = %bb.cg, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i255
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.ne
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.mx
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261: ; preds = %bb.ai
  %.pre697 = load ptr, ptr %i.hs, align 8, !tbaa !26
  %bcmp.i260 = call i32 @bcmp(ptr %.pre697, ptr nonnull @.str.17, i64 %i.hu)
  %i.nk = icmp eq i32 %bcmp.i260, 0
  br i1 %i.nk, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263: ; preds = %bb.ai
  %.pre698 = load ptr, ptr %i.hs, align 8, !tbaa !26
  %bcmp.i262 = call i32 @bcmp(ptr %.pre698, ptr nonnull @.str.18, i64 %i.hu)
  %i.nl = icmp eq i32 %bcmp.i262, 0
  br i1 %i.nl, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265: ; preds = %bb.ai
  %.pre699 = load ptr, ptr %i.hs, align 8, !tbaa !26
  %bcmp.i264 = call i32 @bcmp(ptr %.pre699, ptr nonnull @.str.19, i64 %i.hu)
  %i.nm = icmp eq i32 %bcmp.i264, 0
  br i1 %i.nm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265.thread, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread:       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263
  %.164.ph = phi i8 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261 ] ; 2 uses
  %.162.ph = phi i8 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261 ] ; 2 uses
  %i.nn = trunc nuw i8 %.164.ph to i1
  %i.no = trunc nuw i8 %.162.ph to i1
  br label %bb.ch

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %bb.ag, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.ai, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i257, %bb.ce, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, %bb.bo, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265
  %.sroa.0405.2 = phi ptr [ %i.ng, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i257 ], [ %.sroa.0405.0.ph, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %.sroa.0405.0.ph, %bb.ce ], [ %.sroa.0405.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263 ], [ %.sroa.0405.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265 ], [ %.sroa.0405.0.ph, %bb.ai ], [ %.sroa.0405.0.ph, %bb.bo ], [ %.sroa.0405.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261 ], [ %.sroa.0405.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244 ], [ %.sroa.0405.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.0405.0.ph, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit ], [ %.sroa.0405.0.ph, %bb.ag ] ; 2 uses
  %.sroa.19.1 = phi ptr [ %i.ni, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i257 ], [ %.sroa.19.0.ph, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %.sroa.19.0.ph, %bb.ce ], [ %.sroa.19.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263 ], [ %.sroa.19.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265 ], [ %.sroa.19.0.ph, %bb.ai ], [ %.sroa.19.0.ph, %bb.bo ], [ %.sroa.19.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261 ], [ %.sroa.19.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244 ], [ %.sroa.19.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.19.0.ph, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit ], [ %.sroa.19.0.ph, %bb.ag ] ; 2 uses
  %.sroa.34.2 = phi ptr [ %i.nj, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i257 ], [ %.sroa.34.0.ph, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %.sroa.34.0.ph, %bb.ce ], [ %.sroa.34.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit263 ], [ %.sroa.34.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265 ], [ %.sroa.34.0.ph, %bb.ai ], [ %.sroa.34.0.ph, %bb.bo ], [ %.sroa.34.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit261 ], [ %.sroa.34.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244 ], [ %.sroa.34.0.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.34.0.ph, %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit ], [ %.sroa.34.0.ph, %bb.ag ] ; 2 uses
  %i.np = trunc nuw i8 %.063.ph to i1             ; 2 uses
  %i.nq = trunc nuw i8 %.061.ph to i1             ; 2 uses
  %or.cond8 = select i1 %i.np, i1 true, i1 %i.nq
  br i1 %or.cond8, label %bb.ch, label %.outer.backedge

bb.ch:                                            ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.nr = phi i1 [ %i.no, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %i.nq, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ]
  %i.ns = phi i1 [ %i.nn, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %i.np, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ]
  %.162477 = phi i8 [ %.162.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %.061.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 7 uses
  %.164475 = phi i8 [ %.164.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %.063.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 7 uses
  %.sroa.34.2473 = phi ptr [ %.sroa.34.0.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %.sroa.34.2, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 17 uses
  %.sroa.19.1472 = phi ptr [ %.sroa.19.0.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %.sroa.19.1, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 9 uses
  %.sroa.0405.2471 = phi ptr [ %.sroa.0405.0.ph, %_ZNSt6vectorIfSaIfEE7reserveEm.exit.thread ], [ %.sroa.0405.2, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ] ; 19 uses
  %i.nt = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_519StringVecToFloatVecERSt6vectorIfSaIfEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.ci unwind label %.loopexit489.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.nt, label %bb.cj, label %.outer.backedge

bb.cj:                                            ; preds = %bb.ci
  %i.nu = load ptr, ptr %i.dl, align 8, !tbaa !110
  %i.nv = load ptr, ptr %11, align 8, !tbaa !109  ; 7 uses
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %i.nz = icmp eq i64 %i.ny, 12
  br i1 %i.nz, label %bb.ck, label %.outer.backedge

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.ns, label %bb.cl, label %bb.dc

bb.cl:                                            ; preds = %bb.ck
  %i.oa = ptrtoint ptr %.sroa.19.1472 to i64
  %i.ob = ptrtoint ptr %.sroa.0405.2471 to i64    ; 2 uses
  %i.oc = sub i64 %i.oa, %i.ob                    ; 5 uses
  %i.od = ashr exact i64 %i.oc, 2                 ; 3 uses
  %i.oe = icmp ugt i64 %i.od, 900000
  br i1 %i.oe, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.of = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.of, ptr noundef nonnull @.str.20)
          to label %.invoke1025 unwind label %bb.cn

.invoke1025:                                      ; preds = %bb.de, %bb.cm
  %i.og = phi ptr [ %i.of, %bb.cm ], [ %i.qn, %bb.de ]
  invoke void @__cxa_throw(ptr nonnull %i.og, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %.cont1026 unwind label %.loopexit.split-lp

.cont1026:                                        ; preds = %.invoke1025
  unreachable

bb.cn:                                            ; preds = %bb.cm
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.of) #23
  br label %.loopexit489

bb.co:                                            ; preds = %bb.cl
  %.not.i266 = icmp eq ptr %.sroa.19.1472, %.sroa.34.2473
  br i1 %.not.i266, label %28, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.oi = load float, ptr %i.nv, align 4, !tbaa !45
  store float %i.oi, ptr %.sroa.19.1472, align 4, !tbaa !45
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

28:                                               ; preds = %bb.co
  %29 = icmp eq i64 %i.oc, 9223372036854775804
  br i1 %29, label %.invoke1027, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

.invoke1027:                                      ; preds = %bb.dp, %bb.dl, %30, %28
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.cont1028 unwind label %.loopexit.split-lp

.cont1028:                                        ; preds = %.invoke1027
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %28
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.od, i64 1)
  %i.oj = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.od ; 2 uses
  %i.ok = shl nuw nsw i64 %i.oj, 2
  %i.ol = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ok) #22
          to label %.noexc269 unwind label %.loopexit489.loopexit.split-lp ; 4 uses

.noexc269:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.om = getelementptr inbounds i8, ptr %i.ol, i64 %i.oc ; 2 uses
  %i.on = load float, ptr %i.nv, align 4, !tbaa !45
  store float %i.on, ptr %i.om, align 4, !tbaa !45
  %i.oo = icmp sgt i64 %i.oc, 0
  br i1 %i.oo, label %bb.cq, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.cq:                                            ; preds = %.noexc269
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ol, ptr align 4 %.sroa.0405.2471, i64 %i.oc, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.cq, %.noexc269
  %.not.i17.i.i = icmp eq ptr %.sroa.0405.2471, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.op = ptrtoint ptr %.sroa.34.2473 to i64
  %i.oq = sub i64 %i.op, %i.ob
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0405.2471, i64 noundef %i.oq) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.cr, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.oj
  %.pre702 = load ptr, ptr %11, align 8, !tbaa !109
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.cp
  %i.os = phi ptr [ %.pre702, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.nv, %bb.cp ] ; 2 uses
  %.sroa.0405.7 = phi ptr [ %i.ol, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.0405.2471, %bb.cp ] ; 7 uses
  %.pn = phi ptr [ %i.om, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.19.1472, %bb.cp ] ; 2 uses
  %.sroa.34.7 = phi ptr [ %i.or, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.34.2473, %bb.cp ] ; 5 uses
  %.sroa.19.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 4 ; 2 uses
  %.not.i270 = icmp eq ptr %.sroa.19.4, %.sroa.34.7
  br i1 %.not.i270, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !45
  store float %i.ou, ptr %.sroa.19.4, align 4, !tbaa !45
  %i.ov = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit279

bb.ct:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.ow = ptrtoint ptr %.sroa.34.7 to i64
  %i.ox = ptrtoint ptr %.sroa.0405.7 to i64
  %i.oy = sub i64 %i.ow, %i.ox                    ; 6 uses
  %i.oz = icmp eq i64 %i.oy, 9223372036854775804
  br i1 %i.oz, label %bb.cu, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i271

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc277 unwind label %.loopexit.split-lp

.noexc277:                                        ; preds = %bb.cu
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i271: ; preds = %bb.ct
  %i.pa = ashr exact i64 %i.oy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i272 = call i64 @llvm.umax.i64(i64 %i.pa, i64 1)
  %i.pb = add nsw i64 %.sroa.speculated.i.i.i272, %i.pa ; 2 uses
  %i.pc = icmp ult i64 %i.pb, %i.pa
  %i.pd = call i64 @llvm.umin.i64(i64 %i.pb, i64 2305843009213693951)
  %i.pe = select i1 %i.pc, i64 2305843009213693951, i64 %i.pd ; 3 uses
  %.not.i.i.i273 = icmp ne i64 %i.pe, 0
  call void @llvm.assume(i1 %.not.i.i.i273)
  %i.pf = shl nuw nsw i64 %i.pe, 2
  %i.pg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pf) #22
          to label %.noexc278 unwind label %.loopexit489.loopexit.split-lp ; 4 uses

.noexc278:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i271
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 %i.oy ; 2 uses
  %i.pi = load float, ptr %i.ot, align 4, !tbaa !45
  store float %i.pi, ptr %i.ph, align 4, !tbaa !45
  %i.pj = icmp sgt i64 %i.oy, 0
  br i1 %i.pj, label %bb.cv, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i274

bb.cv:                                            ; preds = %.noexc278
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pg, ptr align 4 %.sroa.0405.7, i64 %i.oy, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i274

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i274: ; preds = %bb.cv, %.noexc278
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %.not.i17.i.i275 = icmp eq ptr %.sroa.0405.7, null
  br i1 %.not.i17.i.i275, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i276, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i274
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0405.7, i64 noundef %i.oy) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i276

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i276: ; preds = %bb.cw, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i274
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.pe
  %.pre703 = load ptr, ptr %11, align 8, !tbaa !109
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit279

_ZNSt6vectorIfSaIfEE9push_backERKf.exit279:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i276, %bb.cs
  %i.pm = phi ptr [ %.pre703, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i276 ], [ %i.os, %bb.cs ]
  %.sroa.0405.8 = phi ptr [ %i.pg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i276 ], [ %.sroa.0405.7, %bb.cs ] ; 7 uses
  %.sroa.19.5 = phi ptr [ %i.pk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i276 ], [ %i.ov, %bb.cs ] ; 6 uses
  %.sroa.34.8 = phi ptr [ %i.pl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i276 ], [ %.sroa.34.7, %bb.cs ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %.not.i280 = icmp eq ptr %.sroa.19.5, %.sroa.34.8
  br i1 %.not.i280, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit279
  %i.po = load float, ptr %i.pn, align 4, !tbaa !45
  store float %i.po, ptr %.sroa.19.5, align 4, !tbaa !45
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.19.5, i64 4
  br label %.outer.backedge

bb.cy:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit279
  %i.pq = ptrtoint ptr %.sroa.19.5 to i64
  %i.pr = ptrtoint ptr %.sroa.0405.8 to i64
  %i.ps = sub i64 %i.pq, %i.pr                    ; 6 uses
  %i.pt = icmp eq i64 %i.ps, 9223372036854775804
  br i1 %i.pt, label %bb.cz, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i281

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc287 unwind label %.loopexit.split-lp

.noexc287:                                        ; preds = %bb.cz
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i281: ; preds = %bb.cy
  %i.pu = ashr exact i64 %i.ps, 2                 ; 3 uses
  %.sroa.speculated.i.i.i282 = call i64 @llvm.umax.i64(i64 %i.pu, i64 1)
  %i.pv = add nsw i64 %.sroa.speculated.i.i.i282, %i.pu ; 2 uses
  %i.pw = icmp ult i64 %i.pv, %i.pu
  %i.px = call i64 @llvm.umin.i64(i64 %i.pv, i64 2305843009213693951)
  %i.py = select i1 %i.pw, i64 2305843009213693951, i64 %i.px ; 3 uses
  %.not.i.i.i283 = icmp ne i64 %i.py, 0
  call void @llvm.assume(i1 %.not.i.i.i283)
  %i.pz = shl nuw nsw i64 %i.py, 2
  %i.qa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pz) #22
          to label %.noexc288 unwind label %.loopexit489.loopexit.split-lp ; 4 uses

.noexc288:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i281
  %i.qb = getelementptr inbounds i8, ptr %i.qa, i64 %i.ps ; 2 uses
  %i.qc = load float, ptr %i.pn, align 4, !tbaa !45
  store float %i.qc, ptr %i.qb, align 4, !tbaa !45
  %i.qd = icmp sgt i64 %i.ps, 0
  br i1 %i.qd, label %bb.da, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i284

bb.da:                                            ; preds = %.noexc288
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qa, ptr align 4 %.sroa.0405.8, i64 %i.ps, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i284

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i284: ; preds = %bb.da, %.noexc288
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %.not.i17.i.i285 = icmp eq ptr %.sroa.0405.8, null
  br i1 %.not.i17.i.i285, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i286, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i284
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0405.8, i64 noundef %i.ps) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i286

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i286: ; preds = %bb.db, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i284
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.py
  br label %.outer.backedge

bb.dc:                                            ; preds = %bb.ck
  br i1 %i.nr, label %bb.dd, label %.outer.backedge

bb.dd:                                            ; preds = %bb.dc
  %i.qg = load ptr, ptr %i.dk, align 8, !tbaa !110 ; 4 uses
  %i.qh = load ptr, ptr %9, align 8, !tbaa !109   ; 5 uses
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = ptrtoint ptr %i.qh to i64
  %i.qk = sub i64 %i.qi, %i.qj                    ; 6 uses
  %i.ql = ashr exact i64 %i.qk, 2                 ; 3 uses
  %i.qm = icmp ugt i64 %i.ql, 6440067
  br i1 %i.qm, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.qn = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qn, ptr noundef nonnull @.str.21)
          to label %.invoke1025 unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.qn) #23
  br label %.loopexit489

bb.dg:                                            ; preds = %bb.dd
  %i.qp = load ptr, ptr %i.dj, align 8, !tbaa !108 ; 2 uses
  %.not.i290 = icmp eq ptr %i.qg, %i.qp
  br i1 %.not.i290, label %30, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qq = load float, ptr %i.nv, align 4, !tbaa !45
  store float %i.qq, ptr %i.qg, align 4, !tbaa !45
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qg, i64 4 ; 2 uses
  store ptr %i.qr, ptr %i.dk, align 8, !tbaa !110
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit299

30:                                               ; preds = %bb.dg
  %31 = icmp eq i64 %i.qk, 9223372036854775804
  br i1 %31, label %.invoke1027, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i291

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i291: ; preds = %30
  %.sroa.speculated.i.i.i292 = call i64 @llvm.umax.i64(i64 %i.ql, i64 1)
  %i.qs = add nuw nsw i64 %.sroa.speculated.i.i.i292, %i.ql ; 2 uses
  %i.qt = shl nuw nsw i64 %i.qs, 2
  %i.qu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qt) #22
          to label %.noexc298 unwind label %.loopexit489.loopexit.split-lp ; 5 uses

.noexc298:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i291
  %i.qv = getelementptr inbounds i8, ptr %i.qu, i64 %i.qk ; 2 uses
  %i.qw = load float, ptr %i.nv, align 4, !tbaa !45
  store float %i.qw, ptr %i.qv, align 4, !tbaa !45
  %i.qx = icmp sgt i64 %i.qk, 0
  br i1 %i.qx, label %bb.di, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i294

bb.di:                                            ; preds = %.noexc298
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qu, ptr align 4 %i.qh, i64 %i.qk, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i294

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i294: ; preds = %bb.di, %.noexc298
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 4 ; 2 uses
  %.not.i17.i.i295 = icmp eq ptr %i.qh, null
  br i1 %.not.i17.i.i295, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i296, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i294
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef %i.qk) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i296

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i296: ; preds = %bb.dj, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i294
  store ptr %i.qu, ptr %9, align 8, !tbaa !109
  store ptr %i.qy, ptr %i.dk, align 8, !tbaa !110
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %i.qs ; 2 uses
  store ptr %i.qz, ptr %i.dj, align 8, !tbaa !108
  %.pre700 = load ptr, ptr %11, align 8, !tbaa !109
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit299

_ZNSt6vectorIfSaIfEE9push_backERKf.exit299:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i296, %bb.dh
  %i.ra = phi ptr [ %i.qu, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i296 ], [ %i.qh, %bb.dh ] ; 5 uses
  %i.rb = phi ptr [ %i.qz, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i296 ], [ %i.qp, %bb.dh ] ; 3 uses
  %i.rc = phi ptr [ %i.qy, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i296 ], [ %i.qr, %bb.dh ] ; 3 uses
  %i.rd = phi ptr [ %.pre700, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i296 ], [ %i.nv, %bb.dh ] ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 4 ; 2 uses
  %.not.i300 = icmp eq ptr %i.rc, %i.rb
  br i1 %.not.i300, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit299
  %i.rf = load float, ptr %i.re, align 4, !tbaa !45
  store float %i.rf, ptr %i.rc, align 4, !tbaa !45
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 4 ; 2 uses
  store ptr %i.rg, ptr %i.dk, align 8, !tbaa !110
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit309

bb.dl:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit299
  %i.rh = ptrtoint ptr %i.rb to i64
  %i.ri = ptrtoint ptr %i.ra to i64
  %i.rj = sub i64 %i.rh, %i.ri                    ; 6 uses
  %i.rk = icmp eq i64 %i.rj, 9223372036854775804
  br i1 %i.rk, label %.invoke1027, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i301

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i301: ; preds = %bb.dl
  %i.rl = ashr exact i64 %i.rj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i302 = call i64 @llvm.umax.i64(i64 %i.rl, i64 1)
  %i.rm = add nsw i64 %.sroa.speculated.i.i.i302, %i.rl ; 2 uses
  %i.rn = icmp ult i64 %i.rm, %i.rl
  %i.ro = call i64 @llvm.umin.i64(i64 %i.rm, i64 2305843009213693951)
  %i.rp = select i1 %i.rn, i64 2305843009213693951, i64 %i.ro ; 3 uses
  %.not.i.i.i303 = icmp ne i64 %i.rp, 0
  call void @llvm.assume(i1 %.not.i.i.i303)
  %i.rq = shl nuw nsw i64 %i.rp, 2
  %i.rr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rq) #22
          to label %.noexc308 unwind label %.loopexit489.loopexit.split-lp ; 5 uses

.noexc308:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i301
  %i.rs = getelementptr inbounds i8, ptr %i.rr, i64 %i.rj ; 2 uses
  %i.rt = load float, ptr %i.re, align 4, !tbaa !45
  store float %i.rt, ptr %i.rs, align 4, !tbaa !45
  %i.ru = icmp sgt i64 %i.rj, 0
  br i1 %i.ru, label %bb.dm, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i304

bb.dm:                                            ; preds = %.noexc308
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rr, ptr align 4 %i.ra, i64 %i.rj, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i304

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i304: ; preds = %bb.dm, %.noexc308
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 4 ; 2 uses
  %.not.i17.i.i305 = icmp eq ptr %i.ra, null
  br i1 %.not.i17.i.i305, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i306, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i304
  call void @_ZdlPvm(ptr noundef nonnull %i.ra, i64 noundef %i.rj) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i306

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i306: ; preds = %bb.dn, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i304
  store ptr %i.rr, ptr %9, align 8, !tbaa !109
  store ptr %i.rv, ptr %i.dk, align 8, !tbaa !110
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %i.rp ; 2 uses
  store ptr %i.rw, ptr %i.dj, align 8, !tbaa !108
  %.pre701 = load ptr, ptr %11, align 8, !tbaa !109
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit309

_ZNSt6vectorIfSaIfEE9push_backERKf.exit309:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i306, %bb.dk
  %i.rx = phi ptr [ %i.rr, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i306 ], [ %i.ra, %bb.dk ] ; 4 uses
  %i.ry = phi ptr [ %i.rw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i306 ], [ %i.rb, %bb.dk ] ; 2 uses
  %i.rz = phi ptr [ %i.rv, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i306 ], [ %i.rg, %bb.dk ] ; 3 uses
  %i.sa = phi ptr [ %.pre701, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i306 ], [ %i.rd, %bb.dk ]
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8 ; 2 uses
  %.not.i310 = icmp eq ptr %i.rz, %i.ry
  br i1 %.not.i310, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit309
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !45
  store float %i.sc, ptr %i.rz, align 4, !tbaa !45
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  store ptr %i.sd, ptr %i.dk, align 8, !tbaa !110
  br label %.outer.backedge

bb.dp:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit309
  %i.se = ptrtoint ptr %i.ry to i64
  %i.sf = ptrtoint ptr %i.rx to i64
  %i.sg = sub i64 %i.se, %i.sf                    ; 6 uses
  %i.sh = icmp eq i64 %i.sg, 9223372036854775804
  br i1 %i.sh, label %.invoke1027, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i311

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i311: ; preds = %bb.dp
  %i.si = ashr exact i64 %i.sg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i312 = call i64 @llvm.umax.i64(i64 %i.si, i64 1)
  %i.sj = add nsw i64 %.sroa.speculated.i.i.i312, %i.si ; 2 uses
  %i.sk = icmp ult i64 %i.sj, %i.si
  %i.sl = call i64 @llvm.umin.i64(i64 %i.sj, i64 2305843009213693951)
  %i.sm = select i1 %i.sk, i64 2305843009213693951, i64 %i.sl ; 3 uses
  %.not.i.i.i313 = icmp ne i64 %i.sm, 0
  call void @llvm.assume(i1 %.not.i.i.i313)
  %i.sn = shl nuw nsw i64 %i.sm, 2
  %i.so = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sn) #22
          to label %.noexc318 unwind label %.loopexit489.loopexit.split-lp ; 4 uses

.noexc318:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i311
  %i.sp = getelementptr inbounds i8, ptr %i.so, i64 %i.sg ; 2 uses
  %i.sq = load float, ptr %i.sb, align 4, !tbaa !45
  store float %i.sq, ptr %i.sp, align 4, !tbaa !45
  %i.sr = icmp sgt i64 %i.sg, 0
  br i1 %i.sr, label %bb.dq, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i314

bb.dq:                                            ; preds = %.noexc318
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.so, ptr align 4 %i.rx, i64 %i.sg, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i314

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i314: ; preds = %bb.dq, %.noexc318
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %.not.i17.i.i315 = icmp eq ptr %i.rx, null
  br i1 %.not.i17.i.i315, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i316, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i314
  call void @_ZdlPvm(ptr noundef nonnull %i.rx, i64 noundef %i.sg) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i316

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i316: ; preds = %bb.dr, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i314
  store ptr %i.so, ptr %9, align 8, !tbaa !109
  store ptr %i.ss, ptr %i.dk, align 8, !tbaa !110
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.sm
  store ptr %i.st, ptr %i.dj, align 8, !tbaa !108
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i316, %bb.do, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i286, %bb.cx, %bb.ci, %bb.cj, %bb.dc, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %.sroa.0405.0.ph.be = phi ptr [ %.sroa.0405.2, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %i.qa, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i286 ], [ %.sroa.0405.2471, %bb.dc ], [ %.sroa.0405.2471, %bb.cj ], [ %.sroa.0405.2471, %bb.ci ], [ %.sroa.0405.8, %bb.cx ], [ %.sroa.0405.2471, %bb.do ], [ %.sroa.0405.2471, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i316 ]
  %.sroa.19.0.ph.be = phi ptr [ %.sroa.19.1, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %i.qe, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i286 ], [ %.sroa.19.1472, %bb.dc ], [ %.sroa.19.1472, %bb.cj ], [ %.sroa.19.1472, %bb.ci ], [ %i.pp, %bb.cx ], [ %.sroa.19.1472, %bb.do ], [ %.sroa.19.1472, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i316 ]
  %.sroa.34.0.ph.be = phi ptr [ %.sroa.34.2, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %i.qf, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i286 ], [ %.sroa.34.2473, %bb.dc ], [ %.sroa.34.2473, %bb.cj ], [ %.sroa.34.2473, %bb.ci ], [ %.sroa.34.8, %bb.cx ], [ %.sroa.34.2473, %bb.do ], [ %.sroa.34.2473, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i316 ]
  %.063.ph.be = phi i8 [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.164475, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i286 ], [ %.164475, %bb.dc ], [ %.164475, %bb.cj ], [ %.164475, %bb.ci ], [ %.164475, %bb.cx ], [ %.164475, %bb.do ], [ %.164475, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i316 ]
  %.061.ph.be = phi i8 [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.162477, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i286 ], [ %.162477, %bb.dc ], [ %.162477, %bb.cj ], [ %.162477, %bb.ci ], [ %.162477, %bb.cx ], [ %.162477, %bb.do ], [ %.162477, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i316 ]
  br label %.outer, !llvm.loop !89

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265, %bb.s
  %i.su = load ptr, ptr %11, align 8, !tbaa !109  ; 3 uses
  %.not.i.i.i320 = icmp eq ptr %i.su, null
  br i1 %.not.i.i.i320, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ds

bb.ds:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265.thread
  %i.sv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !108
  %i.sx = ptrtoint ptr %i.sw to i64
  %i.sy = ptrtoint ptr %i.su to i64
  %i.sz = sub i64 %i.sx, %i.sy
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef %i.sz) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265.thread, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ta = load ptr, ptr %10, align 16, !tbaa !41  ; 3 uses
  %i.tb = load ptr, ptr %i.dd, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i321 = icmp eq ptr %i.ta, %i.tb
  br i1 %.not4.i.i.i321, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i329, label %.lr.ph.i.i.i322

.lr.ph.i.i.i322:                                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i325
  %.05.i.i.i323 = phi ptr [ %i.th, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i325 ], [ %i.ta, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %i.tc = load ptr, ptr %.05.i.i.i323, align 8, !tbaa !26 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.05.i.i.i323, i64 16 ; 2 uses
  %i.te = icmp eq ptr %i.tc, %i.td
  br i1 %i.te, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i324: ; preds = %.lr.ph.i.i.i322
  %i.tf = load i64, ptr %i.td, align 8, !tbaa !21
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.tc, i64 noundef %i.tg) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i325

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i325: ; preds = %.lr.ph.i.i.i322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i324
  %i.th = getelementptr inbounds nuw i8, ptr %.05.i.i.i323, i64 32 ; 2 uses
  %.not.i.i.i326 = icmp eq ptr %i.th, %i.tb
  br i1 %.not.i.i.i326, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i327, label %.lr.ph.i.i.i322, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i327: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i325
  %.pr.i328 = load ptr, ptr %10, align 16, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i329

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i329: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i327, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ti = phi ptr [ %.pr.i328, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i327 ], [ %i.ta, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i330 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i1.i330, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit332, label %bb.dt

bb.dt:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i329
  %i.tj = load ptr, ptr %i.de, align 16, !tbaa !43
  %i.tk = ptrtoint ptr %i.tj to i64
  %i.tl = ptrtoint ptr %i.ti to i64
  %i.tm = sub i64 %i.tk, %i.tl
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef %i.tm) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit332

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit332: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i329, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.tn = load i32, ptr %i.e, align 4, !tbaa !38
  %i.to = ptrtoint ptr %.sroa.19.0.ph to i64
  %i.tp = ptrtoint ptr %.sroa.0405.0.ph to i64    ; 3 uses
  %i.tq = sub i64 %i.to, %i.tp
  %i.tr = ashr exact i64 %i.tq, 2
  %i.ts = udiv i64 %i.tr, 3                       ; 2 uses
  %i.tt = trunc i64 %i.ts to i32
  %.not = icmp eq i32 %i.tn, %i.tt
  br i1 %.not, label %bb.eg, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit332
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %24)
          to label %bb.dv unwind label %bb.ea

bb.dv:                                            ; preds = %bb.du
  %i.tu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.22, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334 unwind label %bb.eb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334: ; preds = %bb.dv
  %i.tv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.23, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit336 unwind label %bb.eb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit336: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334
  %i.tw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.24, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338 unwind label %bb.eb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit336
  %i.tx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %i.ts)
          to label %_ZNSolsEm.exit unwind label %bb.eb ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338
  %i.ty = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tx, ptr noundef nonnull @.str.25, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit341 unwind label %bb.eb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit341: ; preds = %_ZNSolsEm.exit
  %i.tz = load i32, ptr %i.e, align 4, !tbaa !38
  %i.ua = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.tx, i32 noundef %i.tz)
          to label %bb.dw unwind label %bb.eb

bb.dw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit341
  %i.ub = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ua, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit343 unwind label %bb.eb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit343: ; preds = %bb.dw
  %i.uc = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(112) %24)
          to label %bb.dx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348.thread

bb.dx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit343
  %i.ud = load ptr, ptr %25, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.uc, ptr noundef %i.ud)
          to label %bb.dy unwind label %bb.ec

bb.dy:                                            ; preds = %bb.dx
  invoke void @__cxa_throw(ptr nonnull %i.uc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.gd unwind label %bb.ec

.loopexit489:                                     ; preds = %.loopexit.split-lp, %.loopexit489.loopexit.split-lp, %.loopexit489.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %bb.bn, %bb.df, %bb.cn, %bb.bu, %bb.be, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %.sroa.0405.4 = phi ptr [ %.sroa.0405.0.ph, %bb.bn ], [ %.sroa.0405.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %.sroa.0405.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.sroa.0405.2471, %bb.cn ], [ %.sroa.0405.2471, %bb.df ], [ %.sroa.0405.0.ph, %bb.be ], [ %.sroa.0405.0.ph, %bb.aq ], [ %.sroa.0405.0.ph, %bb.cd ], [ %.sroa.0405.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.sroa.0405.0.ph, %bb.bu ], [ %.sroa.0405.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %.sroa.0405.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %.sroa.0405.1.ph490, %.loopexit.split-lp ], [ %.sroa.0405.0.ph, %.loopexit489.loopexit ], [ %.sroa.0405.1.ph.ph, %.loopexit489.loopexit.split-lp ]
  %.sroa.34.4 = phi ptr [ %.sroa.34.0.ph, %bb.bn ], [ %.sroa.34.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %.sroa.34.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.sroa.34.2473, %bb.cn ], [ %.sroa.34.2473, %bb.df ], [ %.sroa.34.0.ph, %bb.be ], [ %.sroa.34.0.ph, %bb.aq ], [ %.sroa.34.0.ph, %bb.cd ], [ %.sroa.34.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %.sroa.34.0.ph, %bb.bu ], [ %.sroa.34.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %.sroa.34.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %.sroa.34.1.ph491, %.loopexit.split-lp ], [ %.sroa.34.0.ph, %.loopexit489.loopexit ], [ %.sroa.34.1.ph.ph, %.loopexit489.loopexit.split-lp ]
  %.pn142 = phi { ptr, i32 } [ %.pn134.pn.pn439, %bb.bn ], [ %.pn134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %.pn127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %i.oh, %bb.cn ], [ %i.qo, %bb.df ], [ %.pn138.pn.pn, %bb.be ], [ %i.it, %bb.aq ], [ %.pn127.pn.pn452, %bb.cd ], [ %.pn127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %i.lt, %bb.bu ], [ %.pn110.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %.pn134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit492, %.loopexit489.loopexit ], [ %lpad.loopexit.split-lp493, %.loopexit489.loopexit.split-lp ]
  %i.ue = load ptr, ptr %11, align 8, !tbaa !109  ; 3 uses
  %.not.i.i.i344 = icmp eq ptr %i.ue, null
  br i1 %.not.i.i.i344, label %_ZNSt6vectorIfSaIfEED2Ev.exit345, label %bb.dz

bb.dz:                                            ; preds = %.loopexit489
  %i.uf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !108
  %i.uh = ptrtoint ptr %i.ug to i64
  %i.ui = ptrtoint ptr %i.ue to i64
  %i.uj = sub i64 %i.uh, %i.ui
  call void @_ZdlPvm(ptr noundef nonnull %i.ue, i64 noundef %i.uj) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit345

_ZNSt6vectorIfSaIfEED2Ev.exit345:                 ; preds = %.loopexit489, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.ea:                                            ; preds = %bb.du
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.eb:                                            ; preds = %bb.dw, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit338, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit336, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit334, %bb.dv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit341
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit343
end_hunk_1
