Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/condition?download=true
inline.NumInlined: 671
inline.NumDeleted: 233
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7CaDiCaL8Internal15condition_roundEl:bb.a
select.unfold.backedge:                           ; preds = %.split, %.lr.ph2440
  %.2268.be = phi i32 [ %spec.select2061, %.split ], [ 0, %.lr.ph2440 ] ; 2 uses
  %.not391 = icmp eq i32 %.2268.be, 0
  br i1 %.not391, label %bb.dh, label %.critedge20

.critedge20:                                      ; preds = %select.unfold.backedge, %bb.cz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit500, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit490
  %.sroa.0609.10 = phi ptr [ %.sroa.0609.91284, %bb.cz ], [ %.sroa.0609.24, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit500 ], [ %.sroa.0609.91284, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit490 ], [ %.sroa.0609.24, %select.unfold.backedge ] ; 2 uses
  %.sroa.17.9 = phi ptr [ %.sroa.17.81285, %bb.cz ], [ %.sroa.17.18, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit500 ], [ %.sroa.17.81285, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit490 ], [ %.sroa.17.18, %select.unfold.backedge ] ; 2 uses
  %.sroa.30.9 = phi ptr [ %.sroa.30.81286, %bb.cz ], [ %.sroa.30.16, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit500 ], [ %.sroa.30.81286, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit490 ], [ %.sroa.30.16, %select.unfold.backedge ] ; 2 uses
  %.7 = phi i32 [ %.52771289, %bb.cz ], [ %.52771289, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit500 ], [ %.52771289, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit490 ], [ %.2268.be, %select.unfold.backedge ] ; 2 uses
  %i.yo = phi <2 x i64> [ %i.wp, %bb.cz ], [ %i.xv, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit500 ], [ %i.wp, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit490 ], [ %i.xv, %select.unfold.backedge ] ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.02611290, i64 4
  %.not387 = icmp eq i32 %.7, 0
  br i1 %.not387, label %.critedge18.thread, label %.preheader765, !llvm.loop !189

.critedge18.thread:                               ; preds = %.critedge20, %bb.dg, %bb.dh
  %.sroa.0609.11.ph = phi ptr [ %.sroa.0609.24, %bb.dh ], [ %.sroa.0609.10, %.critedge20 ], [ %.sroa.0609.24, %bb.dg ]
  %.sroa.17.10.ph = phi ptr [ %.sroa.17.18, %bb.dh ], [ %.sroa.17.9, %.critedge20 ], [ %.sroa.17.18, %bb.dg ]
  %.sroa.30.10.ph = phi ptr [ %.sroa.30.16, %bb.dh ], [ %.sroa.30.9, %.critedge20 ], [ %.sroa.30.16, %bb.dg ]
  %i.yq = phi <2 x i64> [ %i.xv, %bb.dh ], [ %i.yo, %.critedge20 ], [ %i.xv, %bb.dg ]
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.0542.01295, i64 8
  br label %.critedge16

.critedge18:                                      ; preds = %.preheader765, %bb.cp, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i485, %bb.ct, %bb.cy
  %.sroa.0609.11 = phi ptr [ %.sroa.0609.81291, %bb.cy ], [ %.sroa.0609.81291, %bb.ct ], [ %.sroa.0609.81291, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i485 ], [ %.sroa.0609.81291, %bb.cp ], [ %.sroa.0609.91284, %.preheader765 ] ; 2 uses
  %.sroa.17.10 = phi ptr [ %.sroa.17.71292, %bb.cy ], [ %.sroa.17.71292, %bb.ct ], [ %.sroa.17.71292, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i485 ], [ %.sroa.17.71292, %bb.cp ], [ %.sroa.17.81285, %.preheader765 ] ; 2 uses
  %.sroa.30.10 = phi ptr [ %.sroa.30.71293, %bb.cy ], [ %.sroa.30.71293, %bb.ct ], [ %.sroa.30.71293, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i485 ], [ %.sroa.30.71293, %bb.cp ], [ %.sroa.30.81286, %.preheader765 ] ; 2 uses
  %.sroa.0548.1 = phi ptr [ %i.un, %bb.cy ], [ %.sroa.0548.01294, %bb.ct ], [ %.sroa.0548.01294, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i485 ], [ %i.un, %bb.cp ], [ %i.un, %.preheader765 ] ; 2 uses
  %.8 = phi i32 [ %.42761298, %bb.cy ], [ %.42761298, %bb.ct ], [ %.42761298, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i485 ], [ %.42761298, %bb.cp ], [ %.52771289, %.preheader765 ] ; 2 uses
  %i.ys = phi <2 x i64> [ %i.uk, %bb.cy ], [ %i.uk, %bb.ct ], [ %i.uk, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i485 ], [ %i.uk, %bb.cp ], [ %i.wp, %.preheader765 ] ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.0542.01295, i64 8 ; 2 uses
  %.not383 = icmp eq i32 %.8, 0
  br i1 %.not383, label %.critedge16, label %.preheader767, !llvm.loop !190

.critedge16:                                      ; preds = %.critedge18, %.preheader767, %.critedge18.thread
  %.sroa.0609.8.lcssa = phi ptr [ %.sroa.0609.11.ph, %.critedge18.thread ], [ %.sroa.0609.81291, %.preheader767 ], [ %.sroa.0609.11, %.critedge18 ] ; 5 uses
  %.sroa.17.7.lcssa = phi ptr [ %.sroa.17.10.ph, %.critedge18.thread ], [ %.sroa.17.71292, %.preheader767 ], [ %.sroa.17.10, %.critedge18 ] ; 4 uses
  %.sroa.30.7.lcssa = phi ptr [ %.sroa.30.10.ph, %.critedge18.thread ], [ %.sroa.30.71293, %.preheader767 ], [ %.sroa.30.10, %.critedge18 ] ; 4 uses
  %.sroa.0548.0.lcssa = phi ptr [ %i.un, %.critedge18.thread ], [ %.sroa.0548.01294, %.preheader767 ], [ %.sroa.0548.1, %.critedge18 ] ; 3 uses
  %.sroa.0542.0.lcssa = phi ptr [ %i.yr, %.critedge18.thread ], [ %.sroa.0542.01295, %.preheader767 ], [ %i.yt, %.critedge18 ] ; 3 uses
  %.4276.lcssa = phi i32 [ 0, %.critedge18.thread ], [ %.42761298, %.preheader767 ], [ 0, %.critedge18 ] ; 4 uses
  %i.yu = phi <2 x i64> [ %i.yq, %.critedge18.thread ], [ %i.uk, %.preheader767 ], [ %i.ys, %.critedge18 ] ; 4 uses
  %i.yv = icmp ult ptr %.sroa.0548.0.lcssa, %.sroa.0542.0.lcssa
  br i1 %i.yv, label %.preheader766, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

.preheader766:                                    ; preds = %.critedge16
  %i.yw = load ptr, ptr %i.uh, align 8, !tbaa !207 ; 4 uses
  %.not7571299 = icmp eq ptr %.sroa.0542.0.lcssa, %i.yw
  br i1 %.not7571299, label %._crit_edge1303, label %.lr.ph1302

.lr.ph1302:                                       ; preds = %.preheader766, %.lr.ph1302
  %.sroa.0542.11301 = phi ptr [ %i.yx, %.lr.ph1302 ], [ %.sroa.0542.0.lcssa, %.preheader766 ] ; 2 uses
  %.sroa.0548.21300 = phi ptr [ %i.yz, %.lr.ph1302 ], [ %.sroa.0548.0.lcssa, %.preheader766 ] ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.0542.11301, i64 8 ; 2 uses
  %i.yy = load ptr, ptr %.sroa.0542.11301, align 8, !tbaa !173
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.0548.21300, i64 8 ; 2 uses
  store ptr %i.yy, ptr %.sroa.0548.21300, align 8, !tbaa !173
  %.not757 = icmp eq ptr %i.yx, %i.yw
  br i1 %.not757, label %._crit_edge1303, label %.lr.ph1302, !llvm.loop !191

._crit_edge1303:                                  ; preds = %.lr.ph1302, %.preheader766
  %.sroa.0548.2.lcssa = phi ptr [ %.sroa.0548.0.lcssa, %.preheader766 ], [ %i.yz, %.lr.ph1302 ] ; 2 uses
  %i.za = load ptr, ptr %i.uf, align 8, !tbaa !207 ; 2 uses
  %i.zb = ptrtoint ptr %.sroa.0548.2.lcssa to i64
  %i.zc = ptrtoint ptr %i.za to i64               ; 2 uses
  %i.zd = sub i64 %i.zb, %i.zc                    ; 2 uses
  %i.ze = ashr exact i64 %i.zd, 3                 ; 3 uses
  %i.zf = ptrtoint ptr %i.yw to i64
  %i.zg = sub i64 %i.zf, %i.zc
  %i.zh = ashr exact i64 %i.zg, 3                 ; 3 uses
  %i.zi = icmp ugt i64 %i.ze, %i.zh
  br i1 %i.zi, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %._crit_edge1303
  %i.zj = sub nuw nsw i64 %i.ze, %i.zh
  invoke void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.uf, i64 noundef %i.zj)
          to label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit unwind label %bb.dk

bb.dj:                                            ; preds = %._crit_edge1303
  %i.zk = icmp uge i64 %i.ze, %i.zh
  %.not.i.i503 = icmp eq ptr %i.yw, %.sroa.0548.2.lcssa
  %or.cond = or i1 %i.zk, %.not.i.i503
  br i1 %or.cond, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.dj
  %i.zl = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.zd
  store ptr %i.zl, ptr %i.uh, align 8, !tbaa !171
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

bb.dk:                                            ; preds = %bb.di
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit: ; preds = %.critedge16, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.dj, %bb.di, %bb.co
  %.sroa.0609.13 = phi ptr [ %.sroa.0609.71306, %bb.co ], [ %.sroa.0609.8.lcssa, %bb.di ], [ %.sroa.0609.8.lcssa, %bb.dj ], [ %.sroa.0609.8.lcssa, %.critedge16 ], [ %.sroa.0609.8.lcssa, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %.sroa.17.11 = phi ptr [ %.sroa.17.61307, %bb.co ], [ %.sroa.17.7.lcssa, %bb.di ], [ %.sroa.17.7.lcssa, %bb.dj ], [ %.sroa.17.7.lcssa, %.critedge16 ], [ %.sroa.17.7.lcssa, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %.sroa.30.11 = phi ptr [ %.sroa.30.61308, %bb.co ], [ %.sroa.30.7.lcssa, %bb.di ], [ %.sroa.30.7.lcssa, %bb.dj ], [ %.sroa.30.7.lcssa, %.critedge16 ], [ %.sroa.30.7.lcssa, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %.9 = phi i32 [ %.32751311, %bb.co ], [ %.4276.lcssa, %bb.di ], [ %.4276.lcssa, %bb.dj ], [ %.4276.lcssa, %.critedge16 ], [ %.4276.lcssa, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.zn = phi <2 x i64> [ %i.ts, %bb.co ], [ %i.yu, %bb.di ], [ %i.yu, %bb.dj ], [ %i.yu, %.critedge16 ], [ %i.yu, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %.not382 = icmp eq i32 %.9, 0
  br i1 %.not382, label %.critedge440, label %bb.cn

.critedge14:                                      ; preds = %bb.cn, %bb.cg
  %.sroa.0609.15 = phi ptr [ %.sroa.0609.613142468, %bb.cg ], [ %.sroa.0609.71306, %bb.cn ] ; 2 uses
  %.sroa.17.12 = phi ptr [ %.sroa.17.513152467, %bb.cg ], [ %.sroa.17.61307, %bb.cn ] ; 2 uses
  %.sroa.30.12 = phi ptr [ %.sroa.30.513162466, %bb.cg ], [ %.sroa.30.61308, %bb.cn ] ; 2 uses
  %.sroa.0564.2 = phi ptr [ %.sroa.0564.113172465, %bb.cg ], [ %.sroa.0564.9, %bb.cn ] ; 2 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.113182464, %bb.cg ], [ %.sroa.14.6, %bb.cn ] ; 2 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.113192463, %bb.cg ], [ %.sroa.23.5, %bb.cn ] ; 2 uses
  %.sroa.0202.1 = phi i64 [ %.sroa.0202.013222460, %bb.cg ], [ %i.tm, %bb.cn ]
  %.10 = phi i32 [ %.227413232459, %bb.cg ], [ %.32751311, %bb.cn ]
  %.sroa.7.2 = phi i64 [ %.sroa.7.013252457, %bb.cg ], [ %.sroa.7.11312, %bb.cn ]
  %.3 = phi i64 [ %.113262456, %bb.cg ], [ %.21313, %bb.cn ] ; 2 uses
  %i.zo = phi <2 x i64> [ %i.ry, %bb.cg ], [ %i.ts, %bb.cn ]
  %i.zp = load i64, ptr %i.a, align 8, !tbaa !194
  %i.zq = icmp slt i64 %i.zp, %.0259
  br i1 %i.zq, label %.lr.ph2470, label %.critedge440

bb.dl:                                            ; preds = %.lr.ph2470
  %i.zr = add nsw i64 %.02831351, 1
  %i.zs = load i64, ptr %i.oc, align 8, !tbaa !243
  %i.zt = add nsw i64 %i.zs, 1
  store i64 %i.zt, ptr %i.oc, align 8, !tbaa !243
  %i.zu = load ptr, ptr %i.nw, align 8, !tbaa !218
  invoke void @_ZN7CaDiCaL8External28push_zero_on_extension_stackEv(ptr noundef nonnull align 8 dereferenceable(568) %i.zu)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.zv = load ptr, ptr %i.c, align 8, !tbaa !214 ; 2 uses
  %i.zw = load ptr, ptr %i.d, align 8, !tbaa !214 ; 2 uses
  %.not7531327 = icmp eq ptr %i.zv, %i.zw
  br i1 %.not7531327, label %._crit_edge1331, label %.lr.ph1330

._crit_edge1331:                                  ; preds = %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit506.thread, %bb.dm
  %i.zx = load ptr, ptr %i.od, align 8, !tbaa !244 ; 2 uses
  %.not380 = icmp eq ptr %i.zx, null
  br i1 %.not380, label %bb.dr, label %bb.dq

bb.dn:                                            ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dl
  %i.zy = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph1330:                                       ; preds = %bb.dm, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit506.thread
  %.sroa.0528.01328 = phi ptr [ %i.aan, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit506.thread ], [ %i.zv, %bb.dm ] ; 2 uses
  %i.zz = load i32, ptr %.sroa.0528.01328, align 4, !tbaa !199 ; 3 uses
  %i.aaa = load ptr, ptr %i.nz, align 8, !tbaa !167
  %i.aab = sext i32 %i.zz to i64
  %i.aac = getelementptr inbounds i8, ptr %i.aaa, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !168
  %i.aae = icmp sgt i8 %i.aad, 0
  br i1 %i.aae, label %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit506, label %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit506.thread

_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit506: ; preds = %.lr.ph1330
  %i.aaf = tail call noundef i32 @llvm.abs.i32(i32 %i.zz, i1 true)
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = load ptr, ptr %i.ny, align 8, !tbaa !209
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.aag
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !168
  %i.aak = and i8 %i.aaj, 1
  %.not.i505 = icmp eq i8 %i.aak, 0
  br i1 %.not.i505, label %bb.do, label %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit506.thread

bb.do:                                            ; preds = %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit506
  %i.aal = load ptr, ptr %i.nw, align 8, !tbaa !218
  invoke void @_ZN7CaDiCaL8External39push_witness_literal_on_extension_stackEi(ptr noundef nonnull align 8 dereferenceable(568) %i.aal, i32 noundef %i.zz)
          to label %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit506.thread unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aam = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit506.thread: ; preds = %.lr.ph1330, %bb.do, %_ZNK7CaDiCaL8Internal18is_autarky_literalEi.exit506
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.0528.01328, i64 4 ; 2 uses
  %.not753 = icmp eq ptr %i.aan, %i.zw
  br i1 %.not753, label %._crit_edge1331, label %.lr.ph1330

bb.dq:                                            ; preds = %._crit_edge1331
  %i.aao = load ptr, ptr %.sroa.0557.01350, align 8, !tbaa !173
  invoke void @_ZN7CaDiCaL5Proof12weaken_minusEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128) %i.zx, ptr noundef %i.aao)
          to label %bb.dr unwind label %bb.dn

bb.dr:                                            ; preds = %bb.dq, %._crit_edge1331
  %i.aap = load ptr, ptr %i.nw, align 8, !tbaa !218
  %i.aaq = load ptr, ptr %.sroa.0557.01350, align 8, !tbaa !173
  invoke void @_ZN7CaDiCaL8External30push_clause_on_extension_stackEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(568) %i.aap, ptr noundef %i.aaq)
          to label %bb.ds unwind label %bb.dn

bb.ds:                                            ; preds = %bb.dr
  %i.aar = load ptr, ptr %.sroa.0557.01350, align 8, !tbaa !173
  invoke void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %i.aar)
          to label %bb.dt unwind label %bb.dn

bb.dt:                                            ; preds = %bb.ds
  %i.aas = load i64, ptr %i.oe, align 8, !tbaa !245
  %i.aat = add i64 %i.aas, %.sroa.0202.013222460
  store i64 %i.aat, ptr %i.oe, align 8, !tbaa !245
  %i.aau = load i64, ptr %i.of, align 8, !tbaa !246
  %2 = load <2 x i64>, ptr %i.og, align 8
  %i.aav = insertelement <2 x i64> %2, i64 %i.aau, i64 1
  %i.aaw = add <2 x i64> %i.aav, %i.ry            ; 2 uses
  %i.aax = extractelement <2 x i64> %i.aaw, i64 1
  store i64 %i.aax, ptr %i.of, align 8, !tbaa !246
  %i.aay = extractelement <2 x i64> %i.aaw, i64 0
  store i64 %i.aay, ptr %i.og, align 8, !tbaa !247
  %i.aaz = load i64, ptr %i.oh, align 8, !tbaa !248
  %i.aba = add i64 %i.aaz, %.sroa.0208.0.lcssa
  store i64 %i.aba, ptr %i.oh, align 8, !tbaa !248
  br label %.critedge440

.critedge440:                                     ; preds = %.critedge14, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, %bb.cf, %bb.dt
  %.sroa.0609.6975 = phi ptr [ %.sroa.0609.613142468, %bb.dt ], [ %.sroa.0609.13, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.0609.51344, %bb.cf ], [ %.sroa.0609.15, %.critedge14 ] ; 3 uses
  %.sroa.17.5966 = phi ptr [ %.sroa.17.513152467, %bb.dt ], [ %.sroa.17.11, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.17.41345, %bb.cf ], [ %.sroa.17.12, %.critedge14 ] ; 3 uses
  %.sroa.30.5957 = phi ptr [ %.sroa.30.513162466, %bb.dt ], [ %.sroa.30.11, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.30.41346, %bb.cf ], [ %.sroa.30.12, %.critedge14 ] ; 2 uses
  %.sroa.0564.1946 = phi ptr [ %.sroa.0564.113172465, %bb.dt ], [ %.sroa.0564.9, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.0564.01347, %bb.cf ], [ %.sroa.0564.2, %.critedge14 ] ; 4 uses
  %.sroa.14.1937 = phi ptr [ %.sroa.14.113182464, %bb.dt ], [ %.sroa.14.6, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.14.01348, %bb.cf ], [ %.sroa.14.2, %.critedge14 ] ; 3 uses
  %.sroa.23.1928 = phi ptr [ %.sroa.23.113192463, %bb.dt ], [ %.sroa.23.5, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.sroa.23.01349, %bb.cf ], [ %.sroa.23.2, %.critedge14 ] ; 2 uses
  %.1895 = phi i64 [ %.113262456, %bb.dt ], [ %i.tz, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.02621353, %bb.cf ], [ %.3, %.critedge14 ] ; 2 uses
  %.1284 = phi i64 [ %i.zr, %bb.dt ], [ %.02831351, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ %.02831351, %bb.cf ], [ %.02831351, %.critedge14 ] ; 2 uses
  %i.abb = icmp eq ptr %.sroa.0564.1946, %.sroa.14.1937
  br i1 %i.abb, label %.loopexit779, label %.preheader778

.preheader778:                                    ; preds = %.critedge440, %.preheader778
  %.sroa.14.31332 = phi ptr [ %i.abc, %.preheader778 ], [ %.sroa.14.1937, %.critedge440 ]
  %i.abc = getelementptr inbounds i8, ptr %.sroa.14.31332, i64 -4 ; 4 uses
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !199 ; 2 uses
  %i.abe = load ptr, ptr %i.nz, align 8, !tbaa !167
  %i.abf = sext i32 %i.abd to i64
  %i.abg = getelementptr inbounds i8, ptr %i.abe, i64 %i.abf
  store i8 1, ptr %i.abg, align 1, !tbaa !168
  %i.abh = load ptr, ptr %i.nz, align 8, !tbaa !167
  %i.abi = sub nsw i32 0, %i.abd
  %i.abj = sext i32 %i.abi to i64
  %i.abk = getelementptr inbounds i8, ptr %i.abh, i64 %i.abj
  store i8 -1, ptr %i.abk, align 1, !tbaa !168
  %i.abl = icmp eq ptr %.sroa.0564.1946, %i.abc
  br i1 %i.abl, label %.loopexit779, label %.preheader778

.loopexit779:                                     ; preds = %.preheader778, %.critedge440
  %.sroa.14.4 = phi ptr [ %.sroa.14.1937, %.critedge440 ], [ %i.abc, %.preheader778 ] ; 2 uses
  %i.abm = ptrtoint ptr %.sroa.17.5966 to i64
  %i.abn = ptrtoint ptr %.sroa.0609.6975 to i64   ; 2 uses
  %i.abo = sub i64 %i.abm, %i.abn
  %i.abp = ashr exact i64 %i.abo, 2
  %i.abq = icmp ult i64 %.sroa.13.0.lcssa, %i.abp
  br i1 %i.abq, label %.lr.ph1334, label %.loopexit777

.lr.ph1334:                                       ; preds = %.loopexit779, %.lr.ph1334
  %.sroa.17.131333 = phi ptr [ %i.abr, %.lr.ph1334 ], [ %.sroa.17.5966, %.loopexit779 ]
  %i.abr = getelementptr inbounds i8, ptr %.sroa.17.131333, i64 -4 ; 4 uses
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !199
  %i.abt = tail call noundef i32 @llvm.abs.i32(i32 %i.abs, i1 true)
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = load ptr, ptr %i.ny, align 8, !tbaa !209
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 %i.abu ; 2 uses
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !168
  %i.aby = and i8 %i.abx, -2
  store i8 %i.aby, ptr %i.abw, align 1, !tbaa !168
  %i.abz = ptrtoint ptr %i.abr to i64
  %i.aca = sub i64 %i.abz, %i.abn
  %i.acb = ashr exact i64 %i.aca, 2
  %i.acc = icmp ult i64 %.sroa.13.0.lcssa, %i.acb
  br i1 %i.acc, label %.lr.ph1334, label %.loopexit777

.loopexit777:                                     ; preds = %.lr.ph1334, %.loopexit779
  %.sroa.17.14 = phi ptr [ %.sroa.17.5966, %.loopexit779 ], [ %i.abr, %.lr.ph1334 ] ; 2 uses
  %i.acd = load ptr, ptr %.sroa.0557.01350, align 8, !tbaa !173 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !199
  %.not3811336 = icmp eq i32 %i.acf, 0
  br i1 %.not3811336, label %.loopexit774, label %.lr.ph1339.preheader

.lr.ph1339.preheader:                             ; preds = %.loopexit777
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acd, i64 24
  br label %.lr.ph1339

.lr.ph1339:                                       ; preds = %.lr.ph1339.preheader, %.lr.ph1339
  %.02581337 = phi ptr [ %i.aco, %.lr.ph1339 ], [ %i.acg, %.lr.ph1339.preheader ] ; 2 uses
  %i.ach = load i32, ptr %.02581337, align 4, !tbaa !199
  %i.aci = tail call noundef i32 @llvm.abs.i32(i32 %i.ach, i1 true)
  %i.acj = zext nneg i32 %i.aci to i64
  %i.ack = load ptr, ptr %i.ny, align 8, !tbaa !209
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.acj ; 2 uses
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !168
  %i.acn = and i8 %i.acm, 63
  store i8 %i.acn, ptr %i.acl, align 1, !tbaa !168
  %i.aco = getelementptr inbounds nuw i8, ptr %.02581337, i64 4 ; 2 uses
  %i.acp = load ptr, ptr %.sroa.0557.01350, align 8, !tbaa !173 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 24
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  %i.acs = load i32, ptr %i.acr, align 8, !tbaa !199
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds [4 x i8], ptr %i.acq, i64 %i.act
  %.not381 = icmp eq ptr %i.aco, %i.acu
  br i1 %.not381, label %.loopexit774, label %.lr.ph1339, !llvm.loop !192

.loopexit774:                                     ; preds = %.lr.ph1339, %.lr.ph1342, %.loopexit777, %.preheader773, %bb.bu
  %.sroa.0609.17 = phi ptr [ %.sroa.0609.51344, %bb.bu ], [ %.sroa.0609.51344, %.preheader773 ], [ %.sroa.0609.6975, %.loopexit777 ], [ %.sroa.0609.51344, %.lr.ph1342 ], [ %.sroa.0609.6975, %.lr.ph1339 ] ; 2 uses
  %.sroa.17.15 = phi ptr [ %.sroa.17.41345, %bb.bu ], [ %.sroa.17.41345, %.preheader773 ], [ %.sroa.17.14, %.loopexit777 ], [ %.sroa.17.41345, %.lr.ph1342 ], [ %.sroa.17.14, %.lr.ph1339 ] ; 2 uses
  %.sroa.30.13 = phi ptr [ %.sroa.30.41346, %bb.bu ], [ %.sroa.30.41346, %.preheader773 ], [ %.sroa.30.5957, %.loopexit777 ], [ %.sroa.30.41346, %.lr.ph1342 ], [ %.sroa.30.5957, %.lr.ph1339 ] ; 2 uses
  %.sroa.0564.4 = phi ptr [ %.sroa.0564.01347, %bb.bu ], [ %.sroa.0564.01347, %.preheader773 ], [ %.sroa.0564.1946, %.loopexit777 ], [ %.sroa.0564.01347, %.lr.ph1342 ], [ %.sroa.0564.1946, %.lr.ph1339 ] ; 2 uses
  %.sroa.14.5 = phi ptr [ %.sroa.14.01348, %bb.bu ], [ %.sroa.14.01348, %.preheader773 ], [ %.sroa.14.4, %.loopexit777 ], [ %.sroa.14.01348, %.lr.ph1342 ], [ %.sroa.14.4, %.lr.ph1339 ]
  %.sroa.23.3 = phi ptr [ %.sroa.23.01349, %bb.bu ], [ %.sroa.23.01349, %.preheader773 ], [ %.sroa.23.1928, %.loopexit777 ], [ %.sroa.23.01349, %.lr.ph1342 ], [ %.sroa.23.1928, %.lr.ph1339 ] ; 2 uses
  %.4287 = phi i64 [ %.02831351, %bb.bu ], [ %.02831351, %.preheader773 ], [ %.1284, %.loopexit777 ], [ %.02831351, %.lr.ph1342 ], [ %.1284, %.lr.ph1339 ] ; 2 uses
  %.2282 = phi i64 [ %.02801352, %bb.bu ], [ %i.pl, %.preheader773 ], [ %i.pl, %.loopexit777 ], [ %i.pl, %.lr.ph1342 ], [ %i.pl, %.lr.ph1339 ]
  %.6 = phi i64 [ %.02621353, %bb.bu ], [ %.02621353, %.preheader773 ], [ %.1895, %.loopexit777 ], [ %.02621353, %.lr.ph1342 ], [ %.1895, %.lr.ph1339 ]
  %i.acv = getelementptr inbounds nuw i8, ptr %.sroa.0557.01350, i64 8 ; 2 uses
  %i.acw = icmp eq ptr %i.acv, %.sroa.18.0.lcssa
  br i1 %i.acw, label %.thread675, label %bb.bu

.thread675:                                       ; preds = %.loopexit774, %bb.bt, %bb.cc
  %.sroa.0609.51099 = phi ptr [ %.sroa.0609.51344, %bb.cc ], [ %.sroa.0609.0.lcssa, %bb.bt ], [ %.sroa.0609.17, %.loopexit774 ] ; 3 uses
  %.sroa.17.41084 = phi ptr [ %.sroa.17.41345, %bb.cc ], [ %.sroa.17.0.lcssa, %bb.bt ], [ %.sroa.17.15, %.loopexit774 ] ; 2 uses
  %.sroa.30.41069 = phi ptr [ %.sroa.30.41346, %bb.cc ], [ %.sroa.30.0.lcssa, %bb.bt ], [ %.sroa.30.13, %.loopexit774 ] ; 2 uses
  %.sroa.0564.01053 = phi ptr [ %.sroa.0564.01347, %bb.cc ], [ null, %bb.bt ], [ %.sroa.0564.4, %.loopexit774 ] ; 3 uses
  %.sroa.23.01038 = phi ptr [ %.sroa.23.01349, %bb.cc ], [ null, %bb.bt ], [ %.sroa.23.3, %.loopexit774 ] ; 2 uses
  %.02831023 = phi i64 [ %.02831351, %bb.cc ], [ 0, %bb.bt ], [ %.4287, %.loopexit774 ] ; 4 uses
  %.pr726 = load ptr, ptr %i.df, align 8, !tbaa !169 ; 2 uses
  %.not405 = icmp eq ptr %.pr726, null
  br i1 %.not405, label %.thread675.thread, label %bb.du

bb.du:                                            ; preds = %.thread675
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !170
  %i.acz = sitofp i64 %.02831023 to double
  %i.ada = uitofp i64 %i.nq to double
  %i.adb = fmul nnan double %i.acz, 1.000000e+02
  %i.adc = fdiv double %i.adb, %i.ada
  %i.add = select i1 %i.ns, double 0.000000e+00, double %i.adc
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %.pr726, ptr noundef nonnull @.str, i64 noundef %i.acy, ptr noundef nonnull @.str.10, i64 noundef %.02831023, double noundef %i.add)
          to label %.thread675.thread unwind label %bb.dv

bb.dv:                                            ; preds = %._crit_edge1370, %bb.eg, %bb.ef, %bb.du
  %.sroa.0609.20 = phi ptr [ %.sroa.0609.25, %._crit_edge1370 ], [ %.sroa.0609.25, %bb.eg ], [ %.sroa.0609.25, %bb.ef ], [ %.sroa.0609.51099, %bb.du ]
  %.sroa.0588.4 = phi ptr [ %.sroa.0588.8, %._crit_edge1370 ], [ %.sroa.0588.8, %bb.eg ], [ %.sroa.0588.8, %bb.ef ], [ %.sroa.0588.0.lcssa, %bb.du ]
  %.sroa.0564.7 = phi ptr [ %.sroa.0564.10, %._crit_edge1370 ], [ %.sroa.0564.10, %bb.eg ], [ %.sroa.0564.10, %bb.ef ], [ %.sroa.0564.01053, %bb.du ]
  %i.ade = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread675.thread:                                ; preds = %.critedge436, %bb.du, %.thread675
  %.sroa.0609.51098 = phi ptr [ %.sroa.0609.51344, %.critedge436 ], [ %.sroa.0609.51099, %bb.du ], [ %.sroa.0609.51099, %.thread675 ] ; 6 uses
  %.sroa.17.41083 = phi ptr [ %.sroa.17.41345, %.critedge436 ], [ %.sroa.17.41084, %bb.du ], [ %.sroa.17.41084, %.thread675 ] ; 2 uses
  %.sroa.30.41068 = phi ptr [ %.sroa.30.41346, %.critedge436 ], [ %.sroa.30.41069, %bb.du ], [ %.sroa.30.41069, %.thread675 ]
  %.sroa.0564.01052 = phi ptr [ %.sroa.0564.01347, %.critedge436 ], [ %.sroa.0564.01053, %bb.du ], [ %.sroa.0564.01053, %.thread675 ] ; 4 uses
  %.sroa.23.01037 = phi ptr [ %.sroa.23.01349, %.critedge436 ], [ %.sroa.23.01038, %bb.du ], [ %.sroa.23.01038, %.thread675 ]
  %.02831022 = phi i64 [ %.02831351, %.critedge436 ], [ %.02831023, %bb.du ], [ %.02831023, %.thread675 ]
  %.not7601362 = icmp eq ptr %.sroa.0609.51098, %.sroa.17.41083
  br i1 %.not7601362, label %._crit_edge1365, label %.lr.ph1364

.lr.ph1364:                                       ; preds = %.thread675.thread
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.ec

._crit_edge1365:                                  ; preds = %bb.ec, %.thread675.thread
  %.not.i507 = icmp eq ptr %.sroa.23.01037, %.sroa.0564.01052
  br i1 %.not.i507, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge1365
  %.not.i.i.i.i508 = icmp eq ptr %.sroa.0564.01052, null
  br i1 %.not.i.i.i.i508, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0564.01052) #15
  br label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit

_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit: ; preds = %._crit_edge1365, %bb.dw, %bb.dx
  %.sroa.0564.10 = phi ptr [ %.sroa.0564.01052, %._crit_edge1365 ], [ null, %bb.dw ], [ null, %bb.dx ] ; 5 uses
  %.not.i509 = icmp eq ptr %.sroa.30.41068, %.sroa.0609.51098
  br i1 %.not.i509, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit511, label %bb.dy

bb.dy:                                            ; preds = %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit
  %.not.i.i.i.i510 = icmp eq ptr %.sroa.0609.51098, null
  br i1 %.not.i.i.i.i510, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit511, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0609.51098) #15
  br label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit511

_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit511: ; preds = %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit, %bb.dy, %bb.dz
  %.sroa.0609.25 = phi ptr [ %.sroa.0609.51098, %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit ], [ null, %bb.dy ], [ null, %bb.dz ] ; 5 uses
  br i1 %.sroa.29.0.lcssa, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.ea

bb.ea:                                            ; preds = %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit511
  %.not.i.i.i.i513 = icmp eq ptr %.sroa.0588.0.lcssa, null
  br i1 %.not.i.i.i.i513, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0588.0.lcssa) #15
  br label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit: ; preds = %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit511, %bb.ea, %bb.eb
  %.sroa.0588.8 = phi ptr [ %.sroa.0588.0.lcssa, %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit511 ], [ null, %bb.ea ], [ null, %bb.eb ] ; 5 uses
  %i.adg = load ptr, ptr %i.d, align 8, !tbaa !195 ; 2 uses
  %i.adh = load ptr, ptr %i.c, align 8, !tbaa !196
  %i.adi = ptrtoint ptr %i.adg to i64
  %i.adj = ptrtoint ptr %i.adh to i64
  %i.adk = sub i64 %i.adi, %i.adj
  %i.adl = icmp ugt i64 %i.adk, %i.i
  br i1 %i.adl, label %.lr.ph1366, label %._crit_edge1367
end_hunk_0
