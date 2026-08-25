Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bagofwords_classification?download=true
inline.NumInlined: 4875
inline.NumDeleted: 1409
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI8ObdImageSaIS9_EERKS8_IfSaIfEE11VocConfCondfRS8_IS5_SaIS5_EERSF_:bb.a
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp eq i32 %4, 0                       ; 3 uses
  br i1 %i.cd, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZN7VocData24getClassifierGroundTruthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI8ObdImageSaIS9_EERS8_IcS4_E(ptr noundef nonnull align 8 dereferenceable(365) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ce = load ptr, ptr %15, align 8, !tbaa !118  ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !118 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not4.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES4_EERKS3_I8ObdImageSaISF_EERKS3_IfSaIfEE11VocConfCondfRS3_ISC_SaISC_EERSL_E3$_0ENSt15iterator_traitsIT_E15difference_typeESV_SV_T0_.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.aa
  %i.ch = ptrtoaddr ptr %i.cg to i64
  %i.ci = ptrtoaddr ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader345, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.cj, -8                      ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ce, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %vec.phi324 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cr, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.ce, i64 %index ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load325 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !17
  %i.cm = icmp eq <4 x i8> %wide.load, splat (i8 1)
  %i.cn = icmp eq <4 x i8> %wide.load325, splat (i8 1)
  %i.co = zext <4 x i1> %i.cm to <4 x i32>
  %i.cp = zext <4 x i1> %i.cn to <4 x i32>
  %i.cq = add <4 x i32> %vec.phi, %i.co           ; 2 uses
  %i.cr = add <4 x i32> %vec.phi324, %i.cp        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cr, %i.cq
  %i.ct = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES4_EERKS3_I8ObdImageSaISF_EERKS3_IfSaIfEE11VocConfCondfRS3_ISC_SaISC_EERSL_E3$_0ENSt15iterator_traitsIT_E15difference_typeESV_SV_T0_.exit.loopexit", label %.lr.ph.i.i.preheader345

.lr.ph.i.i.preheader345:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.06.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ct, %middle.block ]
  %.sroa.02.05.i.i.ph = phi ptr [ %i.ce, %.lr.ph.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader345, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader345 ]
  %.sroa.02.05.i.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.ph, %.lr.ph.i.i.preheader345 ] ; 2 uses
  %i.cu = load i8, ptr %.sroa.02.05.i.i, align 1, !tbaa !17
  %i.cv = icmp eq i8 %i.cu, 1
  %i.cw = zext i1 %i.cv to i32
  %spec.select.i.i = add i32 %.06.i.i, %i.cw      ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cx, %i.cg
  br i1 %.not.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES4_EERKS3_I8ObdImageSaISF_EERKS3_IfSaIfEE11VocConfCondfRS3_ISC_SaISC_EERSL_E3$_0ENSt15iterator_traitsIT_E15difference_typeESV_SV_T0_.exit.loopexit", label %.lr.ph.i.i, !llvm.loop !323

"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES4_EERKS3_I8ObdImageSaISF_EERKS3_IfSaIfEE11VocConfCondfRS3_ISC_SaISC_EERSL_E3$_0ENSt15iterator_traitsIT_E15difference_typeESV_SV_T0_.exit.loopexit": ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.ct, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.cy = sitofp i32 %spec.select.i.i.lcssa to float
  br label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES4_EERKS3_I8ObdImageSaISF_EERKS3_IfSaIfEE11VocConfCondfRS3_ISC_SaISC_EERSL_E3$_0ENSt15iterator_traitsIT_E15difference_typeESV_SV_T0_.exit"

"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES4_EERKS3_I8ObdImageSaISF_EERKS3_IfSaIfEE11VocConfCondfRS3_ISC_SaISC_EERSL_E3$_0ENSt15iterator_traitsIT_E15difference_typeESV_SV_T0_.exit": ; preds = %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES4_EERKS3_I8ObdImageSaISF_EERKS3_IfSaIfEE11VocConfCondfRS3_ISC_SaISC_EERSL_E3$_0ENSt15iterator_traitsIT_E15difference_typeESV_SV_T0_.exit.loopexit", %bb.aa
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.aa ], [ %i.cy, %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES4_EERKS3_I8ObdImageSaISF_EERKS3_IfSaIfEE11VocConfCondfRS3_ISC_SaISC_EERSL_E3$_0ENSt15iterator_traitsIT_E15difference_typeESV_SV_T0_.exit.loopexit" ]
  %.not.i.i.i133 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES4_EERKS3_I8ObdImageSaISF_EERKS3_IfSaIfEE11VocConfCondfRS3_ISC_SaISC_EERSL_E3$_0ENSt15iterator_traitsIT_E15difference_typeESV_SV_T0_.exit"
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !61
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.ce to i64
  %i.dd = sub i64 %i.db, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.dd) #33
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES4_EERKS3_I8ObdImageSaISF_EERKS3_IfSaIfEE11VocConfCondfRS3_ISC_SaISC_EERSL_E3$_0ENSt15iterator_traitsIT_E15difference_typeESV_SV_T0_.exit", %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %15, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i134 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIcSaIcEED2Ev.exit135, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !61
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #33
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit135

_ZNSt6vectorIcSaIcEED2Ev.exit135:                 ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.bt

bb.ae:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.y
  %.090 = phi float [ %.0.lcssa.i.i, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ 0.000000e+00, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.dm = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %.not = icmp eq ptr %i.dl, %i.dm
  br i1 %.not, label %._crit_edge, label %.lr.ph212

.lr.ph212:                                        ; preds = %bb.ae
  %i.dn = icmp eq i32 %4, 1
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %sext109 = shl i64 %i.cc, 27
  %i.dt = ashr exact i64 %sext109, 30
  %i.du = zext i1 %i.cd to i32
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph212, %bb.bn
  %i.dv = phi ptr [ %i.dm, %.lr.ph212 ], [ %i.lf, %bb.bn ]
  %.087211 = phi i32 [ 0, %.lr.ph212 ], [ %.188, %bb.bn ] ; 4 uses
  %.095208 = phi i64 [ 0, %.lr.ph212 ], [ %i.ec, %bb.bn ] ; 5 uses
  %.pre = load ptr, ptr %10, align 8, !tbaa !268  ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.095208
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !13 ; 2 uses
  br i1 %i.dn, label %bb.ag, label %._crit_edge229

bb.ag:                                            ; preds = %bb.af
  %i.dy = load ptr, ptr %3, align 8, !tbaa !134
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !142
  %i.eb = fcmp ugt float %i.ea, %5
  br i1 %i.eb, label %._crit_edge229, label %._crit_edge.loopexit

._crit_edge229:                                   ; preds = %bb.af, %bb.ag
  %i.ec = add nuw i64 %.095208, 1                 ; 4 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.095208
  %i.ee = getelementptr inbounds nuw [64 x i8], ptr %i.dv, i64 %i.dx
  invoke void @_ZN7VocData10getObjectsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorI9ObdObjectSaIS9_EERS8_I13VocObjectDataSaISD_EE(ptr dead_on_unwind nonnull writable sret(%class.ObdImage) align 8 %18, ptr noundef nonnull align 8 dereferenceable(365) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %._crit_edge229
  %i.ef = load ptr, ptr %i.do, align 8, !tbaa !15 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dp
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ah
  %i.eh = load i64, ptr %i.dp, align 8, !tbaa !17
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ej = load ptr, ptr %18, align 8, !tbaa !15   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dq
  br i1 %i.ek, label %_ZN8ObdImageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.el = load i64, ptr %i.dq, align 8, !tbaa !17
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #33
  br label %_ZN8ObdImageD2Ev.exit

_ZN8ObdImageD2Ev.exit:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.en = load i64, ptr %i.ed, align 8, !tbaa !13
  %i.eo = load ptr, ptr %2, align 8, !tbaa !19
  %i.ep = getelementptr inbounds nuw [64 x i8], ptr %i.eo, i64 %i.en
  %i.eq = invoke noundef zeroext i1 @_ZN7VocData29getClassifierGroundTruthImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(365) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ep)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %_ZN8ObdImageD2Ev.exit
  br i1 %i.eq, label %bb.aj, label %.preheader199

.preheader199:                                    ; preds = %bb.ai
  %i.er = load ptr, ptr %i.dr, align 8, !tbaa !87 ; 3 uses
  %i.es = load ptr, ptr %16, align 8, !tbaa !84   ; 3 uses
  %.not221 = icmp eq ptr %i.er, %i.es
  br i1 %.not221, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader199
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.er to i64
  %.pre231 = load ptr, ptr %17, align 8, !tbaa !74
  %i.ev = load ptr, ptr %17, align 8              ; 2 uses
  %.promoted = load ptr, ptr %i.ds, align 8
  br label %.lr.ph

bb.aj:                                            ; preds = %bb.ai
  %i.ew = load ptr, ptr %7, align 8, !tbaa !134
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.dt ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !142
  %i.ez = fadd float %i.ey, 1.000000e+00
  store float %i.ez, ptr %i.ex, align 4, !tbaa !142
  %spec.select = add nsw i32 %.087211, %i.du
  br label %.loopexit

bb.ak:                                            ; preds = %_ZN8ObdImageD2Ev.exit, %._crit_edge229
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.preheader:                                       ; preds = %bb.aw
  %i.fb = icmp eq ptr %i.hq, %i.hp
  br i1 %i.fb, label %.loopexit, label %.lr.ph207

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aw
  %25 = phi ptr [ %26, %bb.aw ], [ %.promoted, %.lr.ph.preheader ] ; 4 uses
  %i.fc = phi ptr [ %i.hp, %bb.aw ], [ %i.es, %.lr.ph.preheader ] ; 3 uses
  %i.fd = phi ptr [ %i.hq, %bb.aw ], [ %i.er, %.lr.ph.preheader ] ; 4 uses
  %i.fe = phi ptr [ %i.hr, %bb.aw ], [ %.pre231, %.lr.ph.preheader ] ; 2 uses
  %i.ff = phi i64 [ %i.hu, %bb.aw ], [ %i.et, %.lr.ph.preheader ]
  %i.fg = phi i64 [ %i.ht, %bb.aw ], [ %i.eu, %.lr.ph.preheader ]
  %.093205 = phi i64 [ %i.hs, %bb.aw ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.093205
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !95, !range !98, !noundef !99
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.aw

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %.lr.ph
  %i.fk = getelementptr inbounds [48 x i8], ptr %i.fc, i64 %.093205
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %i.ff
  %i.fn = getelementptr inbounds i8, ptr %i.fc, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 48 ; 3 uses
  %.not.i = icmp eq ptr %i.fo, %i.fd
  br i1 %.not.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = sub i64 %i.fg, %i.fp                    ; 2 uses
  %i.fr = icmp sgt i64 %i.fq, 0
  br i1 %i.fr, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.al
  %i.fs = udiv exact i64 %i.fq, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN9ObdObjectaSEOS_.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi i64 [ %i.gw, %_ZN9ObdObjectaSEOS_.exit.i.i.i.i.i.i ], [ %i.fs, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.gv, %_ZN9ObdObjectaSEOS_.exit.i.i.i.i.i.i ], [ %i.fn, %.lr.ph.preheader.i.i.i.i.i.i ] ; 10 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.gu, %_ZN9ObdObjectaSEOS_.exit.i.i.i.i.i.i ], [ %i.fo, %.lr.ph.preheader.i.i.i.i.i.i ] ; 11 uses
  %i.ft = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !15 ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16 ; 4 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  %i.fw = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !15 ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16 ; 6 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx                ; 2 uses
  br i1 %i.fv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.fy, label %bb.am, label %.thread.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.fy, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !18 ; 3 uses
  %i.gb = icmp ult i64 %i.ga, 16
  call void @llvm.assume(i1 %i.gb)
  switch i64 %i.ga, label %bb.ao [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i
    i64 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.gc = load i8, ptr %i.fw, align 1, !tbaa !17
  store i8 %i.gc, ptr %i.ft, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ft, ptr align 1 %i.fw, i64 %i.ga, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  %i.gd = load i64, ptr %i.fz, align 8, !tbaa !18 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !18
  %i.gf = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !15
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gd
  store i8 0, ptr %i.gg, align 1, !tbaa !17
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !15
  br label %_ZN9ObdObjectaSEOS_.exit.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store ptr %i.fw, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !15
  %i.gi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !18
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !18
  %i.gk = load i64, ptr %i.fx, align 8, !tbaa !17
  store i64 %i.gk, ptr %i.fu, align 8, !tbaa !17
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.gl = load i64, ptr %i.fu, align 8, !tbaa !17
  store ptr %i.fw, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !15
  %i.gm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !18
  %i.gp = load i64, ptr %i.fx, align 8, !tbaa !17
  store i64 %i.gp, ptr %i.fu, align 8, !tbaa !17
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i
  store ptr %i.ft, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !15
  store i64 %i.gl, ptr %i.fx, align 8, !tbaa !17
  br label %_ZN9ObdObjectaSEOS_.exit.i.i.i.i.i.i

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i
  store ptr %i.fx, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !15
  br label %_ZN9ObdObjectaSEOS_.exit.i.i.i.i.i.i

_ZN9ObdObjectaSEOS_.exit.i.i.i.i.i.i:             ; preds = %bb.aq, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i
  %i.gq = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i ], [ %i.ft, %bb.ap ], [ %i.fx, %bb.aq ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  store i64 0, ptr %i.gr, align 8, !tbaa !18
  store i8 0, ptr %i.gq, align 1, !tbaa !17
  %i.gs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.gt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i64 16, i1 false), !tbaa.struct !116
  %i.gu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.gv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.gw = add nsw i64 %.013.i.i.i.i.i.i, -1
  %i.gx = icmp sgt i64 %.013.i.i.i.i.i.i, 1
  br i1 %i.gx, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i, !llvm.loop !324

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i: ; preds = %_ZN9ObdObjectaSEOS_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.dr, align 8, !tbaa !87
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i, %bb.al, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.gy = phi ptr [ %.pre.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.loopexit.i ], [ %i.fd, %bb.al ], [ %i.fd, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -48 ; 2 uses
  store ptr %i.gz, ptr %i.dr, align 8, !tbaa !87
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !15 ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.gy, i64 -32 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt6vectorI9ObdObjectSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !17
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #33
  br label %_ZNSt6vectorI9ObdObjectSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit

_ZNSt6vectorI9ObdObjectSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP9ObdObjectSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.idx = shl nsw i64 %.093205, 3
  %i.hf = getelementptr inbounds i8, ptr %i.ev, i64 %.idx ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 4 uses
  %.not.i.i140 = icmp eq ptr %i.hg, %25
  br i1 %.not.i.i140, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorI9ObdObjectSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit
  %i.hh = ptrtoint ptr %25 to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 3 uses
  %i.hk = icmp sgt i64 %i.hj, 8
  br i1 %i.hk, label %bb.as, label %bb.at, !prof !104

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hf, ptr nonnull align 4 %i.hg, i64 %i.hj, i1 false)
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.hl = icmp eq i64 %i.hj, 8
  br i1 %i.hl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hm = load i64, ptr %i.hg, align 4
  store i64 %i.hm, ptr %i.hf, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %_ZNSt6vectorI9ObdObjectSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit
  %i.hn = getelementptr inbounds i8, ptr %25, i64 -8 ; 2 uses
  store ptr %i.hn, ptr %i.ds, align 8, !tbaa !101
  %i.ho = add i64 %.093205, -1
  %.pre232 = load ptr, ptr %i.dr, align 8, !tbaa !87
  %.pre233 = load ptr, ptr %16, align 8, !tbaa !84
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.av
  %26 = phi ptr [ %i.hn, %bb.av ], [ %25, %.lr.ph ]
  %i.hp = phi ptr [ %.pre233, %bb.av ], [ %i.fc, %.lr.ph ] ; 4 uses
  %i.hq = phi ptr [ %.pre232, %bb.av ], [ %i.fd, %.lr.ph ] ; 3 uses
  %i.hr = phi ptr [ %i.ev, %bb.av ], [ %i.fe, %.lr.ph ]
  %.194 = phi i64 [ %i.ho, %bb.av ], [ %.093205, %.lr.ph ]
  %i.hs = add i64 %.194, 1                        ; 2 uses
  %i.ht = ptrtoint ptr %i.hq to i64               ; 2 uses
  %i.hu = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = sdiv exact i64 %i.hv, 48
  %i.hx = icmp ult i64 %i.hs, %i.hw
  br i1 %i.hx, label %.lr.ph, label %.preheader, !llvm.loop !325

.lr.ph207:                                        ; preds = %.preheader, %bb.bl
  %i.hy = phi ptr [ %i.kn, %bb.bl ], [ %i.hp, %.preheader ]
  %.089206 = phi i64 [ %i.kz, %bb.bl ], [ 0, %.preheader ] ; 3 uses
  %i.hz = load ptr, ptr %6, align 8, !tbaa !121
  %i.ia = load ptr, ptr %i.y, align 8, !tbaa !121
  %i.ib = getelementptr inbounds nuw [48 x i8], ptr %i.hy, i64 %.089206
  %i.ic = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.hz, ptr %i.ia, ptr nonnull align 8 dereferenceable(32) %i.ib)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit142 unwind label %bb.be ; 2 uses

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit142: ; preds = %.lr.ph207
  %i.id = load ptr, ptr %i.y, align 8, !tbaa !121
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %bb.ax, label %bb.bl

bb.ax:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.if = load ptr, ptr %16, align 8, !tbaa !84
  %i.ig = getelementptr inbounds nuw [48 x i8], ptr %i.if, i64 %.089206
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %i.ig)
          to label %bb.ay unwind label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.36)
          to label %bb.az unwind label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.ih = load ptr, ptr %10, align 8, !tbaa !268
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.095208
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !13
  %i.ik = load ptr, ptr %2, align 8, !tbaa !19
  %i.il = getelementptr inbounds nuw [64 x i8], ptr %i.ik, i64 %i.ij
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.il)
          to label %bb.ba unwind label %bb.bh

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.37)
          to label %bb.bb unwind label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.im = load ptr, ptr %20, align 8, !tbaa !15   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.bb
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !17
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  %i.ir = load ptr, ptr %21, align 8, !tbaa !15   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !17
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  %i.iw = load ptr, ptr %22, align 8, !tbaa !15   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !17
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.jb = load ptr, ptr %19, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.jb, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.bc unwind label %bb.bj

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZN7VocData24calcClassifierConfMatRowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI8ObdImageSaIS9_EERKS8_IfSaIfEE11VocConfCondfRS8_IS5_SaIS5_EERSF_, ptr noundef nonnull @.str.11, i32 noundef 1055) #31
          to label %bb.bd unwind label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %.lr.ph207
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bf:                                            ; preds = %bb.ax
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

bb.bg:                                            ; preds = %bb.ay
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

bb.bh:                                            ; preds = %bb.az
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

bb.bi:                                            ; preds = %bb.ba
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = load ptr, ptr %20, align 8, !tbaa !15   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.bi
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !17
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152, %bb.bh
  %.pn97 = phi { ptr, i32 } [ %i.jf, %bb.bh ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %i.jg, %bb.bi ] ; 2 uses
  %i.jm = load ptr, ptr %21, align 8, !tbaa !15   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !17
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %bb.bg
  %.pn97.pn = phi { ptr, i32 } [ %i.je, %bb.bg ], [ %.pn97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.pn97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ] ; 2 uses
  %i.jr = load ptr, ptr %22, align 8, !tbaa !15   ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !17
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.jv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.bf
  %.pn97.pn.pn = phi { ptr, i32 } [ %i.jd, %bb.bf ], [ %.pn97.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %.pn97.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

bb.bk:                                            ; preds = %bb.bc
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = load ptr, ptr %23, align 8, !tbaa !15   ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.bk
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !17
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, %bb.bj
  %.pn101 = phi { ptr, i32 } [ %i.jw, %bb.bj ], [ %i.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ %i.jx, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  %i.kd = load ptr, ptr %19, align 8, !tbaa !15   ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !17
end_hunk_0
