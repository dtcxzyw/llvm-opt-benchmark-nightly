Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/selectivesearchsegmentation?download=true
inline.NumInlined: 2286
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv8ximgproc12segmentation46SelectiveSearchSegmentationStrategyTextureImpl8setImageERKNS_11_InputArrayES5_S5_i:bb.a
bb.dz:                                            ; preds = %bb.bu
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %71) #26
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.pn229 = phi { ptr, i32 } [ %i.nc, %bb.dz ], [ %i.nb, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #26
  br label %bb.et

bb.eb:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backEOS1_.exit317
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ec:                                            ; preds = %bb.bx
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %72) #26
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.pn231 = phi { ptr, i32 } [ %i.ne, %bb.ec ], [ %i.nd, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #26
  br label %bb.et

bb.ee:                                            ; preds = %bb.by
  %i.nf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #26
  br label %bb.et

bb.ef:                                            ; preds = %.noexc324, %.noexc323, %bb.bz
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %.body326

bb.eg:                                            ; preds = %bb.cb
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %75) #26
  br label %.body326

.body326:                                         ; preds = %bb.ef, %bb.ca, %bb.eg
  %.pn236 = phi { ptr, i32 } [ %i.nh, %bb.eg ], [ %i.ng, %bb.ef ], [ %i.kk, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #26
  br label %bb.et

.loopexit459:                                     ; preds = %bb.cj
  %lpad.loopexit461 = landingpad { ptr, i32 }
          cleanup
  br label %.body339

.loopexit.split-lp460:                            ; preds = %bb.cd
  %lpad.loopexit.split-lp462 = landingpad { ptr, i32 }
          cleanup
  br label %.body339

.body339:                                         ; preds = %.loopexit459, %.loopexit.split-lp460, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i330
  %eh.lpad-body340 = phi { ptr, i32 } [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i330 ], [ %lpad.loopexit461, %.loopexit459 ], [ %lpad.loopexit.split-lp462, %.loopexit.split-lp460 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #26
  br label %bb.et

bb.eh:                                            ; preds = %bb.ck
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #26
  br label %bb.et

bb.ei:                                            ; preds = %bb.cl
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ej:                                            ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit347
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %81) #26
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.pn243 = phi { ptr, i32 } [ %i.nk, %bb.ej ], [ %i.nj, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #26
  br label %bb.et

bb.el:                                            ; preds = %bb.cm
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #26
  br label %bb.et

bb.em:                                            ; preds = %bb.cn
  %i.nm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #26
  br label %bb.et

bb.en:                                            ; preds = %bb.co
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.eo:                                            ; preds = %bb.cr
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %87) #26
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.pn251 = phi { ptr, i32 } [ %i.no, %bb.eo ], [ %i.nn, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #26
  br label %bb.et

bb.eq:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backEOS1_.exit350
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.er:                                            ; preds = %bb.cu
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %88) #26
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.pn253 = phi { ptr, i32 } [ %i.nq, %bb.er ], [ %i.np, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #26
  br label %bb.et

bb.et:                                            ; preds = %.body308, %bb.ds, %bb.es, %bb.ep, %bb.em, %bb.el, %bb.ek, %bb.eh, %.body339, %.body326, %bb.ee, %bb.ed, %bb.ea, %bb.dx, %bb.dw, %bb.dv, %.body295, %bb.dp, %bb.do, %.body288
  %.pn253.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body289, %.body288 ], [ %.pn214, %.body295 ], [ %i.mz, %bb.dw ], [ %i.mt, %bb.dp ], [ %i.ms, %bb.do ], [ %.pn221, %bb.dv ], [ %eh.lpad-body309, %.body308 ], [ %i.mw, %bb.ds ], [ %.pn253, %bb.es ], [ %.pn251, %bb.ep ], [ %i.nm, %bb.em ], [ %i.nl, %bb.el ], [ %.pn243, %bb.ek ], [ %i.ni, %bb.eh ], [ %eh.lpad-body340, %.body339 ], [ %.pn236, %.body326 ], [ %i.na, %bb.dx ], [ %i.nf, %bb.ee ], [ %.pn231, %bb.ed ], [ %.pn229, %bb.ea ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %51) #26
  br label %.body

.body:                                            ; preds = %bb.dn, %bb.ar, %bb.et
  %.pn253.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn253.pn.pn.pn, %bb.et ], [ %i.mr, %bb.dn ], [ %i.gs, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  br label %bb.eu

bb.eu:                                            ; preds = %.body, %bb.dm, %bb.dj, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.da, %bb.cx, %bb.cw, %bb.cv
  %.pn253.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn253.pn.pn.pn.pn, %.body ], [ %.pn204, %bb.dm ], [ %.pn202, %bb.dj ], [ %i.mm, %bb.dg ], [ %i.ml, %bb.df ], [ %i.mk, %bb.de ], [ %.pn191, %bb.dd ], [ %.pn189, %bb.da ], [ %i.mf, %bb.cx ], [ %i.me, %bb.cw ], [ %i.md, %bb.cv ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %34) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit370

bb.ev:                                            ; preds = %bb.fc
  %i.nr = sext i32 %i.ag to i64                   ; 3 uses
  %.not448 = icmp eq i32 %i.ag, 0
  br i1 %.not448, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ns = icmp slt i32 %i.af, -1
  br i1 %i.ns, label %bb.ex, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #29
          to label %.noexc372 unwind label %.thread

.noexc372:                                        ; preds = %bb.ex
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ew
  %i.nt = shl nuw nsw i64 %i.nr, 2
  %i.nu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nt) #28
          to label %.noexc373 unwind label %.thread ; 4 uses

.noexc373:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.nu, align 4, !tbaa !52
  %i.nv = add nsw i64 %i.nr, -1                   ; 2 uses
  %i.nw = icmp eq i64 %i.nv, 0
  br i1 %i.nw, label %.noexc355, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc373
  %i.nx = getelementptr i8, ptr %i.nu, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.nv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.nx, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !52
  br label %.noexc355

.noexc355:                                        ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc373
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.nr
  %i.nz = ptrtoint ptr %i.ny to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.ey:                                            ; preds = %.preheader453, %bb.fc
  %indvars.iv474 = phi i64 [ 0, %.preheader453 ], [ %indvars.iv.next475, %bb.fc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #26
  %i.oa = load ptr, ptr %29, align 8, !tbaa !75
  %i.ob = getelementptr inbounds nuw [208 x i8], ptr %i.oa, i64 %indvars.iv474
  store i32 0, ptr %i.fe, align 8, !tbaa !49
  store i32 0, ptr %i.ff, align 4, !tbaa !50
  store i32 16842752, ptr %89, align 8, !tbaa !51
  store ptr %i.ob, ptr %i.fg, align 8, !tbaa !33
  %i.oc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.ez unwind label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %i.oc)
          to label %bb.fa unwind label %bb.fd

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #26
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %90) #26
  %i.od = load ptr, ptr %29, align 8, !tbaa !75
  %i.oe = getelementptr inbounds nuw [208 x i8], ptr %i.od, i64 %indvars.iv474
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #26
  store i64 0, ptr %i.fi, align 8
  store i32 33619968, ptr %91, align 8, !tbaa !51
  store ptr %90, ptr %i.fh, align 8, !tbaa !33
  %i.of = load double, ptr %i.d, align 8, !tbaa !55
  %i.og = load double, ptr %i.c, align 8, !tbaa !55 ; 2 uses
  %i.oh = fsub double %i.of, %i.og                ; 2 uses
  %i.oi = fdiv double 2.550000e+02, %i.oh
  %i.oj = fmul double %i.og, -2.550000e+02
  %i.ok = fdiv double %i.oj, %i.oh
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.oe, ptr noundef nonnull align 8 dereferenceable(24) %91, i32 noundef 0, double noundef %i.oi, double noundef %i.ok)
          to label %bb.fb unwind label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #26
  %i.ol = load ptr, ptr %29, align 8, !tbaa !75
  %i.om = getelementptr inbounds nuw [208 x i8], ptr %i.ol, i64 %indvars.iv474
  %i.on = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.om, ptr noundef nonnull align 8 dereferenceable(208) %90)
          to label %bb.fc unwind label %bb.ff     ; 0 uses

bb.fc:                                            ; preds = %bb.fb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %90) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %i.oo = load i32, ptr %21, align 8, !tbaa !56
  %i.op = lshr i32 %i.oo, 2
  %i.oq = and i32 %i.op, 1016
  %96 = add nuw nsw i32 %i.oq, 8
  %i.or = zext nneg i32 %96 to i64
  %i.os = icmp samesign ult i64 %indvars.iv.next475, %i.or
  br i1 %i.os, label %bb.ey, label %bb.ev, !llvm.loop !308

bb.fd:                                            ; preds = %bb.ez, %bb.ey
  %i.ot = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #26
  br label %bb.fh

bb.fe:                                            ; preds = %bb.fa
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #26
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fb
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn177 = phi { ptr, i32 } [ %i.ov, %bb.ff ], [ %i.ou, %bb.fe ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %90) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #26
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fd
  %.pn177.pn = phi { ptr, i32 } [ %.pn177, %bb.fg ], [ %i.ot, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit370

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %.noexc355, %bb.ev
  %.sroa.0.1 = phi ptr [ %i.nu, %.noexc355 ], [ null, %bb.ev ] ; 8 uses
  %.sroa.16.1 = phi i64 [ %i.nz, %.noexc355 ], [ 0, %bb.ev ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #26
  %i.ow = load i32, ptr %i.am, align 8, !tbaa !153
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %93, i32 noundef %i.ag, i32 noundef %i.ow, i32 noundef 4)
          to label %_ZN2cv4Mat_IiE5zerosEii.exit unwind label %bb.fn

_ZN2cv4Mat_IiE5zerosEii.exit:                     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %92) #26
  %i.ox = load i32, ptr %92, align 8, !tbaa !56
  %i.oy = and i32 %i.ox, -4096
  %i.oz = or disjoint i32 %i.oy, 4
  store i32 %i.oz, ptr %92, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #26
  %i.pa = load ptr, ptr %93, align 8, !tbaa !63, !noalias !328 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !65
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8
  invoke void %i.pd(ptr noundef nonnull align 8 dereferenceable(8) %i.pa, ptr noundef nonnull align 8 dereferenceable(688) %93, ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %bb.fi

bb.fi:                                            ; preds = %_ZN2cv4Mat_IiE5zerosEii.exit
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %_ZN2cv4Mat_IiE5zerosEii.exit
  %i.pf = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IiEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %92, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.fk unwind label %bb.fj     ; 0 uses

bb.fj:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.fj, %bb.fi
  %.pn.i = phi { ptr, i32 } [ %i.pg, %bb.fj ], [ %i.pe, %bb.fi ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %92) #26
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %93) #26
  br label %bb.fo

bb.fk:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ph = getelementptr inbounds nuw i8, ptr %93, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ph) #26
  %i.pi = getelementptr inbounds nuw i8, ptr %93, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.pi) #26
  %i.pj = getelementptr inbounds nuw i8, ptr %93, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.pj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #26
  %i.pk = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !66
  %i.pm = getelementptr inbounds nuw i8, ptr %92, i64 24 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %92, i64 128 ; 2 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fr, %bb.fk
  %.0148 = phi i32 [ 0, %bb.fk ], [ %i.wd, %bb.fr ] ; 2 uses
  %i.po = zext i32 %.0148 to i64                  ; 10 uses
  %i.pp = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %22)
          to label %bb.fm unwind label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  %i.pq = icmp ugt i64 %i.pp, %i.po
  br i1 %i.pq, label %bb.fq, label %.preheader

.preheader:                                       ; preds = %bb.fm
  %.not166469 = icmp slt i32 %i.af, 0
  br i1 %.not166469, label %._crit_edge472.split, label %.lr.ph471

.lr.ph471:                                        ; preds = %.preheader
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !66
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !67
  %i.pv = load ptr, ptr %i.pm, align 8, !tbaa !66
  %i.pw = load i64, ptr %i.pn, align 8, !tbaa !67
  %i.px = load i32, ptr %i.am, align 8, !tbaa !153 ; 3 uses
  %i.py = icmp sgt i32 %i.px, 0
  br i1 %i.py, label %.lr.ph.preheader, label %._crit_edge472.split

.lr.ph.preheader:                                 ; preds = %.lr.ph471
  %wide.trip.count489 = zext nneg i32 %i.ag to i64
  %wide.trip.count = zext nneg i32 %i.px to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.px, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.thread:                                          ; preds = %bb.ex, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit370

bb.fn:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fo:                                            ; preds = %.body.i, %bb.fn
  %.pn164 = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.qa, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #26
  br label %bb.gd

bb.fp:                                            ; preds = %bb.fl
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.fq:                                            ; preds = %bb.fm
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.po
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !52
  %i.qe = load ptr, ptr %i.pm, align 8, !tbaa !66
  %i.qf = load i64, ptr %i.pn, align 8, !tbaa !67
  %i.qg = sext i32 %i.qd to i64                   ; 2 uses
  %i.qh = mul i64 %i.qf, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qh ; 8 uses
  %i.qj = load ptr, ptr %29, align 8, !tbaa !75   ; 8 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1, i64 %i.qg ; 16 uses
  br label %.preheader452

.preheader452:                                    ; preds = %bb.fq, %.preheader452
  %indvars.iv480 = phi i64 [ 0, %bb.fq ], [ %indvars.iv.next481, %.preheader452 ] ; 4 uses
  %i.ql = shl nuw nsw i64 %indvars.iv480, 3       ; 8 uses
  %i.qm = getelementptr inbounds nuw [208 x i8], ptr %i.qj, i64 %i.ql
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !66
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.po
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !89
  %i.qr = uitofp i8 %i.qq to float
  %i.qs = fdiv float %i.qr, 2.560000e+01
  %i.qt = fptosi float %i.qs to i32
  %i.qu = trunc nuw nsw i64 %indvars.iv480 to i32
  %i.qv = mul nuw nsw i32 %i.qu, 80
  %i.qw = add nuw i32 %i.qv, %i.qt
  %i.qx = zext i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.qx ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !52
  %i.ra = add nsw i32 %i.qz, 1
  store i32 %i.ra, ptr %i.qy, align 4, !tbaa !52
  %i.rb = load i32, ptr %i.qk, align 4, !tbaa !52
  %i.rc = add nsw i32 %i.rb, 1
  store i32 %i.rc, ptr %i.qk, align 4, !tbaa !52
  %i.rd = or disjoint i64 %i.ql, 1                ; 2 uses
  %i.re = getelementptr inbounds nuw [208 x i8], ptr %i.qj, i64 %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !66
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.po
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !89
  %i.rj = uitofp i8 %i.ri to float
  %i.rk = fdiv float %i.rj, 2.560000e+01
  %i.rl = fptosi float %i.rk to i32
  %i.rm = trunc nuw nsw i64 %i.rd to i32
  %i.rn = mul nuw nsw i32 %i.rm, 10
  %i.ro = add nuw i32 %i.rn, %i.rl
  %i.rp = zext i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.rp ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !52
  %i.rs = add nsw i32 %i.rr, 1
  store i32 %i.rs, ptr %i.rq, align 4, !tbaa !52
  %i.rt = load i32, ptr %i.qk, align 4, !tbaa !52
  %i.ru = add nsw i32 %i.rt, 1
  store i32 %i.ru, ptr %i.qk, align 4, !tbaa !52
end_hunk_0
