inline.NumInlined: 888
inline.NumDeleted: 460
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp15IRRMeshImporter19ParseBufferVerticesEPKcS2_NS0_12VertexFormatERSt6vectorI10aiVector3tIfESaIS6_EES9_S9_S9_S9_S9_RS4_I9aiColor4tIfESaISB_EERb:bb.a
  %.not.i23.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.az, ptr %4, align 8
  store ptr %i.bd, ptr %i.d, align 8
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.be, ptr %i.e, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.o, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.bf = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i44, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext true) ; 3 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = sub i64 %i.a, %i.bg
  %scevgep.i.i46 = getelementptr i8, ptr %i.bf, i64 %i.bh
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %.0.i.i47 = phi ptr [ %i.bf, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.bj, %bb.u ] ; 4 uses
  %i.bi = load i8, ptr %.0.i.i47, align 1
  switch i8 %i.bi, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51 [
    i8 32, label %bb.t
    i8 9, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %.not.i.i48 = icmp eq ptr %.0.i.i47, %2
  br i1 %.not.i.i48, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 1
  br label %bb.s, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51:       ; preds = %bb.s, %bb.t
  %.0.lcssa.i.i50 = phi ptr [ %.0.i.i47, %bb.s ], [ %scevgep.i.i46, %bb.t ]
  %i.bk = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i50, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 3 uses
  %i.bl = ptrtoaddr ptr %i.bk to i64
  %i.bm = sub i64 %i.a, %i.bl
  %scevgep.i.i52 = getelementptr i8, ptr %i.bk, i64 %i.bm
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51
  %.0.i.i53 = phi ptr [ %i.bk, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51 ], [ %i.bo, %bb.x ] ; 4 uses
  %i.bn = load i8, ptr %.0.i.i53, align 1
  switch i8 %i.bn, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57 [
    i8 32, label %bb.w
    i8 9, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %.not.i.i54 = icmp eq ptr %.0.i.i53, %2
  br i1 %.not.i.i54, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i53, i64 1
  br label %bb.v, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57:       ; preds = %bb.v, %bb.w
  %.0.lcssa.i.i56 = phi ptr [ %.0.i.i53, %bb.v ], [ %scevgep.i.i52, %bb.w ]
  %i.bp = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i56, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true) ; 3 uses
  %i.bq = ptrtoaddr ptr %i.bp to i64
  %i.br = sub i64 %i.a, %i.bq
  %scevgep.i.i58 = getelementptr i8, ptr %i.bp, i64 %i.br
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57
  %.0.i.i59 = phi ptr [ %i.bp, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57 ], [ %i.bt, %bb.aa ] ; 4 uses
  %i.bs = load i8, ptr %.0.i.i59, align 1
  switch i8 %i.bs, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63 [
    i8 32, label %bb.z
    i8 9, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %.not.i.i60 = icmp eq ptr %.0.i.i59, %2
  br i1 %.not.i.i60, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i59, i64 1
  br label %bb.y, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63:       ; preds = %bb.y, %bb.z
  %.0.lcssa.i.i62 = phi ptr [ %.0.i.i59, %bb.y ], [ %scevgep.i.i58, %bb.z ]
  %i.bu = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.bv = load ptr, ptr %i.g, align 8
  %.not.i64 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i64, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bu, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %i.bw = load ptr, ptr %i.f, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store ptr %i.bx, ptr %i.f, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader

bb.ac:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63
  %i.by = load ptr, ptr %5, align 8               ; 5 uses
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.ad, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65: ; preds = %bb.ac
  %i.cd = sdiv exact i64 %i.cb, 12                ; 3 uses
  %.sroa.speculated.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i66, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 768614336404564650)
  %i.ch = select i1 %i.cf, i64 768614336404564650, i64 %i.cg ; 3 uses
  %.not.i.i.i67 = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i67)
  %i.ci = mul nuw nsw i64 %i.ch, 12
  %i.cj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #26 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ck, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %.not10.i.i.i.i.i68 = icmp eq ptr %i.by, %i.bu
  br i1 %.not10.i.i.i.i.i68, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73, label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65, %.lr.ph.i.i.i.i.i69
  %.012.i.i.i.i.i70 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i69 ], [ %i.cj, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65 ] ; 2 uses
  %.0911.i.i.i.i.i71 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i69 ], [ %i.by, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i70, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i71, i64 12, i1 false), !alias.scope !22
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i71, i64 12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i70, i64 12 ; 2 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.cl, %i.bu
  br i1 %.not.i.i.i.i.i72, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73, label %.lr.ph.i.i.i.i.i69, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73: ; preds = %.lr.ph.i.i.i.i.i69, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65
  %.0.lcssa.i.i.i.i.i74 = phi ptr [ %i.cj, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65 ], [ %i.cm, %.lr.ph.i.i.i.i.i69 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i74, i64 12
  %.not.i23.i.i75 = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i75, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76: ; preds = %bb.ae, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73
  store ptr %i.cj, ptr %5, align 8
  store ptr %i.cn, ptr %i.f, align 8
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.co, ptr %i.g, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader: ; preds = %bb.ab, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader, %bb.ak
  %.016.i = phi ptr [ %i.de, %bb.ak ], [ %.0.lcssa.i.i62, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader ] ; 5 uses
  %.0.i = phi i32 [ %.1.i, %bb.ak ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader ] ; 7 uses
  %i.cp = load i8, ptr %.016.i, align 1           ; 3 uses
  %i.cq = add i8 %i.cp, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.cq, 10
  br i1 %or.cond.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77
  %i.cr = shl i32 %.0.i, 4
  %i.cs = zext nneg i8 %i.cq to i32
  %i.ct = or disjoint i32 %i.cr, %i.cs
  br label %bb.ak

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77
  %i.cu = add i8 %i.cp, -65                       ; 2 uses
  %or.cond23.i = icmp ult i8 %i.cu, 6
  br i1 %or.cond23.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cv = shl i32 %.0.i, 4
  %i.cw = zext nneg i8 %i.cu to i32
  %i.cx = or disjoint i32 %i.cv, 10
  %i.cy = add nuw i32 %i.cx, %i.cw
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.cz = add i8 %i.cp, -97                       ; 2 uses
  %or.cond24.i = icmp ult i8 %i.cz, 6
  br i1 %or.cond24.i, label %bb.aj, label %_ZN6Assimp9strtoul16EPKcPS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.da = shl i32 %.0.i, 4
  %i.db = zext nneg i8 %i.cz to i32
  %i.dc = or disjoint i32 %i.da, 10
  %i.dd = add nuw i32 %i.dc, %i.db
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.af
  %.1.i = phi i32 [ %i.ct, %bb.af ], [ %i.cy, %bb.ah ], [ %i.dd, %bb.aj ]
  %i.de = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77, !llvm.loop !26

_ZN6Assimp9strtoul16EPKcPS1_.exit:                ; preds = %bb.ai
  %i.df = lshr i32 %.0.i, 24
  %i.dg = lshr i32 %.0.i, 8
  %i.dh = lshr i32 %.0.i, 16
  %i.di = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %i.dj = insertelement <4 x i32> %i.di, i32 %i.dg, i64 1
  %i.dk = insertelement <4 x i32> %i.dj, i32 %.0.i, i64 2
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.df, i64 3
  %i.dm = and <4 x i32> %i.dl, <i32 255, i32 255, i32 255, i32 -1>
  %i.dn = uitofp <4 x i32> %i.dm to <4 x float>
  %i.do = fdiv <4 x float> %i.dn, splat (float 2.550000e+02) ; 6 uses
  %i.dp = load ptr, ptr %10, align 8
  %i.dq = load ptr, ptr %i.h, align 8             ; 7 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %.critedge, label %bb.al

bb.al:                                            ; preds = %_ZN6Assimp9strtoul16EPKcPS1_.exit
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 -16
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = extractelement <4 x float> %i.do, i64 0
  %i.dv = fcmp une float %i.du, %i.dt
  br i1 %i.dv, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dw = getelementptr inbounds i8, ptr %i.dq, i64 -12
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = extractelement <4 x float> %i.do, i64 1
  %i.dz = fcmp une float %i.dy, %i.dx
  br i1 %i.dz, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.eb = load float, ptr %i.ea, align 4
  %i.ec = extractelement <4 x float> %i.do, i64 2
  %i.ed = fcmp une float %i.ec, %i.eb
  br i1 %i.ed, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %_ZNK9aiColor4tIfEneERKS0_.exit

_ZNK9aiColor4tIfEneERKS0_.exit:                   ; preds = %bb.an
  %i.ee = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = extractelement <4 x float> %i.do, i64 3
  %i.eh = fcmp une float %i.eg, %i.ef
  br i1 %i.eh, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %.critedge

_ZNK9aiColor4tIfEneERKS0_.exit.thread:            ; preds = %bb.al, %bb.am, %bb.an, %_ZNK9aiColor4tIfEneERKS0_.exit
  store i8 1, ptr %11, align 1
  %.pre = load ptr, ptr %i.h, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN6Assimp9strtoul16EPKcPS1_.exit, %_ZNK9aiColor4tIfEneERKS0_.exit.thread, %_ZNK9aiColor4tIfEneERKS0_.exit
  %i.ei = phi ptr [ %i.dq, %_ZN6Assimp9strtoul16EPKcPS1_.exit ], [ %.pre, %_ZNK9aiColor4tIfEneERKS0_.exit.thread ], [ %i.dq, %_ZNK9aiColor4tIfEneERKS0_.exit ] ; 5 uses
  %i.ej = load ptr, ptr %i.i, align 8
  %.not.i79 = icmp eq ptr %i.ei, %i.ej
  br i1 %.not.i79, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge
  store <4 x float> %i.do, ptr %i.ei, align 4
  %i.ek = load ptr, ptr %i.h, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store ptr %i.el, ptr %i.h, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

bb.ap:                                            ; preds = %.critedge
  %i.em = load ptr, ptr %10, align 8              ; 5 uses
  %i.en = ptrtoint ptr %i.ei to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 4 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775792
  br i1 %i.eq, label %bb.aq, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ap
  %i.er = ashr exact i64 %i.ep, 4                 ; 3 uses
  %.sroa.speculated.i.i.i80 = call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i.i80, %i.er ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %i.eu = call i64 @llvm.umin.i64(i64 %i.es, i64 576460752303423487)
  %i.ev = select i1 %i.et, i64 576460752303423487, i64 %i.eu ; 3 uses
  %.not.i.i.i81 = icmp ne i64 %i.ev, 0
  call void @llvm.assume(i1 %.not.i.i.i81)
  %i.ew = shl nuw nsw i64 %i.ev, 4
  %i.ex = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #26 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ep
  store <4 x float> %i.do, ptr %i.ey, align 4
  %.not10.i.i.i.i.i82 = icmp eq ptr %i.em, %i.ei
  br i1 %.not10.i.i.i.i.i82, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i83
  %.012.i.i.i.i.i84 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i83 ], [ %i.ex, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i85 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i83 ], [ %i.em, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i84, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i85, i64 16, i1 false), !alias.scope !27
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i85, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i84, i64 16 ; 2 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %i.ez, %i.ei
  br i1 %.not.i.i.i.i.i86, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i83, !llvm.loop !31

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i83, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i87 = phi ptr [ %i.ex, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fa, %.lr.ph.i.i.i.i.i83 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i87, i64 16
  %.not.i23.i.i88 = icmp eq ptr %i.em, null
  br i1 %.not.i23.i.i88, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.ep) #24
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ar, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ex, ptr %10, align 8
  store ptr %i.fb, ptr %i.h, align 8
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.ev
  store ptr %i.fc, ptr %i.i, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.ao, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.fd = ptrtoaddr ptr %.016.i to i64
  %i.fe = sub i64 %i.a, %i.fd
  %scevgep.i.i89 = getelementptr i8, ptr %.016.i, i64 %i.fe
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  %.0.i.i90 = phi ptr [ %.016.i, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.fg, %bb.au ] ; 4 uses
  %i.ff = load i8, ptr %.0.i.i90, align 1
  switch i8 %i.ff, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94 [
    i8 32, label %bb.at
    i8 9, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as
  %.not.i.i91 = icmp eq ptr %.0.i.i90, %2
  br i1 %.not.i.i91, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i90, i64 1
  br label %bb.as, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94:       ; preds = %bb.as, %bb.at
  %.0.lcssa.i.i93 = phi ptr [ %.0.i.i90, %bb.as ], [ %scevgep.i.i89, %bb.at ]
  %i.fh = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i93, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext true) ; 3 uses
  %i.fi = ptrtoaddr ptr %i.fh to i64
  %i.fj = sub i64 %i.a, %i.fi
  %scevgep.i.i95 = getelementptr i8, ptr %i.fh, i64 %i.fj
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94
  %.0.i.i96 = phi ptr [ %i.fh, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94 ], [ %i.fl, %bb.ax ] ; 4 uses
  %i.fk = load i8, ptr %.0.i.i96, align 1
  switch i8 %i.fk, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100 [
    i8 32, label %bb.aw
    i8 9, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %.not.i.i97 = icmp eq ptr %.0.i.i96, %2
  br i1 %.not.i.i97, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i96, i64 1
  br label %bb.av, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100:      ; preds = %bb.av, %bb.aw
  %.0.lcssa.i.i99 = phi ptr [ %.0.i.i96, %bb.av ], [ %scevgep.i.i95, %bb.aw ]
  %i.fm = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i99, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 3 uses
  %i.fn = ptrtoaddr ptr %i.fm to i64
  %i.fo = sub i64 %i.a, %i.fn
  %scevgep.i.i101 = getelementptr i8, ptr %i.fm, i64 %i.fo
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100
  %.0.i.i102 = phi ptr [ %i.fm, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100 ], [ %i.fq, %bb.ba ] ; 4 uses
  %i.fp = load i8, ptr %.0.i.i102, align 1
  switch i8 %i.fp, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106 [
    i8 32, label %bb.az
    i8 9, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  %.not.i.i103 = icmp eq ptr %.0.i.i102, %2
  br i1 %.not.i.i103, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 1
  br label %bb.ay, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106:      ; preds = %bb.ay, %bb.az
  %.0.lcssa.i.i105 = phi ptr [ %.0.i.i102, %bb.ay ], [ %scevgep.i.i101, %bb.az ] ; 3 uses
  store float 0.000000e+00, ptr %i.c, align 8
  %i.fr = load float, ptr %i.b, align 4
  %i.fs = fsub float 1.000000e+00, %i.fr
  store float %i.fs, ptr %i.b, align 4
  %i.ft = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.fu = load ptr, ptr %i.k, align 8
  %.not.i107 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i107, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ft, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %i.fv = load ptr, ptr %i.j, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store ptr %i.fw, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit120

bb.bc:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106
  %i.fx = load ptr, ptr %8, align 8               ; 5 uses
  %i.fy = ptrtoint ptr %i.ft to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 4 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775800
  br i1 %i.gb, label %bb.bd, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108: ; preds = %bb.bc
  %i.gc = sdiv exact i64 %i.ga, 12                ; 3 uses
  %.sroa.speculated.i.i.i109 = call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %i.gd = add nsw i64 %.sroa.speculated.i.i.i109, %i.gc ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.gc
  %i.gf = call i64 @llvm.umin.i64(i64 %i.gd, i64 768614336404564650)
  %i.gg = select i1 %i.ge, i64 768614336404564650, i64 %i.gf ; 3 uses
  %.not.i.i.i110 = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %.not.i.i.i110)
  %i.gh = mul nuw nsw i64 %i.gg, 12
  %i.gi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #26 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gj, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %.not10.i.i.i.i.i111 = icmp eq ptr %i.fx, %i.ft
  br i1 %.not10.i.i.i.i.i111, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i116, label %.lr.ph.i.i.i.i.i112

.lr.ph.i.i.i.i.i112:                              ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108, %.lr.ph.i.i.i.i.i112
  %.012.i.i.i.i.i113 = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i112 ], [ %i.gi, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108 ] ; 2 uses
  %.0911.i.i.i.i.i114 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i112 ], [ %i.fx, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i113, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i114, i64 12, i1 false), !alias.scope !32
  %i.gk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i114, i64 12 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 12 ; 2 uses
  %.not.i.i.i.i.i115 = icmp eq ptr %i.gk, %i.ft
  br i1 %.not.i.i.i.i.i115, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i116, label %.lr.ph.i.i.i.i.i112, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i116: ; preds = %.lr.ph.i.i.i.i.i112, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108
  %.0.lcssa.i.i.i.i.i117 = phi ptr [ %i.gi, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i108 ], [ %i.gl, %.lr.ph.i.i.i.i.i112 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i117, i64 12
  %.not.i23.i.i118 = icmp eq ptr %i.fx, null
  br i1 %.not.i23.i.i118, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i116
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.ga) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119: ; preds = %bb.be, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i116
  store ptr %i.gi, ptr %8, align 8
  store ptr %i.gm, ptr %i.j, align 8
  %i.gn = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %i.gg
  store ptr %i.gn, ptr %i.k, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit120

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit120: ; preds = %bb.bb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i119
  switch i32 %3, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit140 [
    i32 1, label %bb.bf
    i32 2, label %bb.bn
  ]

bb.bf:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit120
  %i.go = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i105, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext true) ; 3 uses
  %i.gp = ptrtoaddr ptr %i.go to i64
  %i.gq = sub i64 %i.a, %i.gp
  %scevgep.i.i121 = getelementptr i8, ptr %i.go, i64 %i.gq
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %.0.i.i122 = phi ptr [ %i.go, %bb.bf ], [ %i.gs, %bb.bi ] ; 4 uses
  %i.gr = load i8, ptr %.0.i.i122, align 1
  switch i8 %i.gr, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit126 [
    i8 32, label %bb.bh
    i8 9, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  %.not.i.i123 = icmp eq ptr %.0.i.i122, %2
  br i1 %.not.i.i123, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit126, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i.i122, i64 1
  br label %bb.bg, !llvm.loop !16

end_hunk_0
