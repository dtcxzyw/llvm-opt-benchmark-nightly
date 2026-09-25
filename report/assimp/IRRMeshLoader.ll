Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IRRMeshLoader?download=true
inline.NumInlined: 888
inline.NumDeleted: 460
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp15IRRMeshImporter19ParseBufferVerticesEPKcS2_NS0_12VertexFormatERSt6vectorI10aiVector3tIfESaIS6_EES9_S9_S9_S9_S9_RS4_I9aiColor4tIfESaISB_EERb:bb.a
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.q, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.at = sdiv exact i64 %i.ar, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 768614336404564650)
  %i.ax = select i1 %i.av, i64 768614336404564650, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = mul nuw nsw i64 %i.ax, 12
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #26 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ba, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.az, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.ao, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !44
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, %i.ak
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i23.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.be = load ptr, ptr %i.e, align 8
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bg) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.az, ptr %4, align 8
  store ptr %i.bd, ptr %i.d, align 8
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bh, ptr %i.e, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.o, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.bi = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i44, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext true) ; 3 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = sub i64 %i.a, %i.bj
  %scevgep.i.i46 = getelementptr i8, ptr %i.bi, i64 %i.bk
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %.0.i.i47 = phi ptr [ %i.bi, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.bm, %bb.u ] ; 4 uses
  %i.bl = load i8, ptr %.0.i.i47, align 1
  switch i8 %i.bl, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51 [
    i8 32, label %bb.t
    i8 9, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %.not.i.i48 = icmp eq ptr %.0.i.i47, %2
  br i1 %.not.i.i48, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 1
  br label %bb.s, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51:       ; preds = %bb.s, %bb.t
  %.0.lcssa.i.i50 = phi ptr [ %.0.i.i47, %bb.s ], [ %scevgep.i.i46, %bb.t ]
  %i.bn = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i50, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 3 uses
  %i.bo = ptrtoaddr ptr %i.bn to i64
  %i.bp = sub i64 %i.a, %i.bo
  %scevgep.i.i52 = getelementptr i8, ptr %i.bn, i64 %i.bp
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51
  %.0.i.i53 = phi ptr [ %i.bn, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit51 ], [ %i.br, %bb.x ] ; 4 uses
  %i.bq = load i8, ptr %.0.i.i53, align 1
  switch i8 %i.bq, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57 [
    i8 32, label %bb.w
    i8 9, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %.not.i.i54 = icmp eq ptr %.0.i.i53, %2
  br i1 %.not.i.i54, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i53, i64 1
  br label %bb.v, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57:       ; preds = %bb.v, %bb.w
  %.0.lcssa.i.i56 = phi ptr [ %.0.i.i53, %bb.v ], [ %scevgep.i.i52, %bb.w ]
  %i.bs = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i56, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true) ; 3 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = sub i64 %i.a, %i.bt
  %scevgep.i.i58 = getelementptr i8, ptr %i.bs, i64 %i.bu
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57
  %.0.i.i59 = phi ptr [ %i.bs, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit57 ], [ %i.bw, %bb.aa ] ; 4 uses
  %i.bv = load i8, ptr %.0.i.i59, align 1
  switch i8 %i.bv, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63 [
    i8 32, label %bb.z
    i8 9, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %.not.i.i60 = icmp eq ptr %.0.i.i59, %2
  br i1 %.not.i.i60, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i59, i64 1
  br label %bb.y, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63:       ; preds = %bb.y, %bb.z
  %.0.lcssa.i.i62 = phi ptr [ %.0.i.i59, %bb.y ], [ %scevgep.i.i58, %bb.z ]
  %i.bx = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.by = load ptr, ptr %i.g, align 8
  %.not.i64 = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i64, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bx, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %i.bz = load ptr, ptr %i.f, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store ptr %i.ca, ptr %i.f, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader

bb.ac:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit63
  %i.cb = load ptr, ptr %5, align 8               ; 5 uses
  %i.cc = ptrtoint ptr %i.bx to i64
  %i.cd = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.ad, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65: ; preds = %bb.ac
  %i.cg = sdiv exact i64 %i.ce, 12                ; 3 uses
  %.sroa.speculated.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i66, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 768614336404564650)
  %i.ck = select i1 %i.ci, i64 768614336404564650, i64 %i.cj ; 3 uses
  %.not.i.i.i67 = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i67)
  %i.cl = mul nuw nsw i64 %i.ck, 12
  %i.cm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #26 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cn, ptr noundef nonnull align 8 dereferenceable(12) %12, i64 12, i1 false)
  %.not10.i.i.i.i.i68 = icmp eq ptr %i.cb, %i.bx
  br i1 %.not10.i.i.i.i.i68, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73, label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65, %.lr.ph.i.i.i.i.i69
  %.012.i.i.i.i.i70 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i69 ], [ %i.cm, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65 ] ; 2 uses
  %.0911.i.i.i.i.i71 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i69 ], [ %i.cb, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i70, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i71, i64 12, i1 false), !alias.scope !45
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i71, i64 12 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i70, i64 12 ; 2 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.co, %i.bx
  br i1 %.not.i.i.i.i.i72, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73, label %.lr.ph.i.i.i.i.i69, !llvm.loop !20

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73: ; preds = %.lr.ph.i.i.i.i.i69, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65
  %.0.lcssa.i.i.i.i.i74 = phi ptr [ %i.cm, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i65 ], [ %i.cp, %.lr.ph.i.i.i.i.i69 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i74, i64 12
  %.not.i23.i.i75 = icmp eq ptr %i.cb, null
  br i1 %.not.i23.i.i75, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73
  %i.cr = load ptr, ptr %i.g, align 8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ct) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76: ; preds = %bb.ae, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i73
  store ptr %i.cm, ptr %5, align 8
  store ptr %i.cq, ptr %i.f, align 8
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.cu, ptr %i.g, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader: ; preds = %bb.ab, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i76
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader, %bb.ak
  %.016.i = phi ptr [ %i.dk, %bb.ak ], [ %.0.lcssa.i.i62, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader ] ; 5 uses
  %.0.i = phi i32 [ %.1.i, %bb.ak ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77.preheader ] ; 4 uses
  %i.cv = load i8, ptr %.016.i, align 1           ; 3 uses
  %i.cw = add i8 %i.cv, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.cw, 10
  br i1 %or.cond.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77
  %i.cx = shl i32 %.0.i, 4
  %i.cy = zext nneg i8 %i.cw to i32
  %i.cz = or disjoint i32 %i.cx, %i.cy
  br label %bb.ak

bb.ag:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77
  %i.da = add i8 %i.cv, -65                       ; 2 uses
  %or.cond23.i = icmp ult i8 %i.da, 6
  br i1 %or.cond23.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.db = shl i32 %.0.i, 4
  %i.dc = zext nneg i8 %i.da to i32
  %i.dd = or disjoint i32 %i.db, 10
  %i.de = add nuw i32 %i.dd, %i.dc
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.df = add i8 %i.cv, -97                       ; 2 uses
  %or.cond24.i = icmp ult i8 %i.df, 6
  br i1 %or.cond24.i, label %bb.aj, label %_ZN6Assimp9strtoul16EPKcPS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.dg = shl i32 %.0.i, 4
  %i.dh = zext nneg i8 %i.df to i32
  %i.di = or disjoint i32 %i.dg, 10
  %i.dj = add nuw i32 %i.di, %i.dh
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.af
  %.1.i = phi i32 [ %i.cz, %bb.af ], [ %i.de, %bb.ah ], [ %i.dj, %bb.aj ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.016.i, i64 1
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit77, !llvm.loop !24

_ZN6Assimp9strtoul16EPKcPS1_.exit:                ; preds = %bb.ai
  %13 = bitcast i32 %.0.i to <4 x i8>
  %14 = shufflevector <4 x i8> %13, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  %i.dl = uitofp <4 x i8> %14 to <4 x float>
  %i.dm = fdiv <4 x float> %i.dl, splat (float 2.550000e+02) ; 12 uses
  %i.dn = load ptr, ptr %10, align 8
  %i.do = load ptr, ptr %i.h, align 8             ; 7 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %.critedge, label %bb.al

bb.al:                                            ; preds = %_ZN6Assimp9strtoul16EPKcPS1_.exit
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -16
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = extractelement <4 x float> %i.dm, i64 2
  %i.dt = fcmp une float %i.ds, %i.dr
  br i1 %i.dt, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = getelementptr inbounds i8, ptr %i.do, i64 -12
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = extractelement <4 x float> %i.dm, i64 3
  %i.dx = fcmp une float %i.dw, %i.dv
  br i1 %i.dx, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dy = getelementptr inbounds i8, ptr %i.do, i64 -8
  %i.dz = load float, ptr %i.dy, align 4
  %i.ea = extractelement <4 x float> %i.dm, i64 0
  %i.eb = fcmp une float %i.ea, %i.dz
  br i1 %i.eb, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %_ZNK9aiColor4tIfEneERKS0_.exit

_ZNK9aiColor4tIfEneERKS0_.exit:                   ; preds = %bb.an
  %i.ec = getelementptr inbounds i8, ptr %i.do, i64 -4
  %i.ed = load float, ptr %i.ec, align 4
  %i.ee = extractelement <4 x float> %i.dm, i64 1
  %i.ef = fcmp une float %i.ee, %i.ed
  br i1 %i.ef, label %_ZNK9aiColor4tIfEneERKS0_.exit.thread, label %.critedge

_ZNK9aiColor4tIfEneERKS0_.exit.thread:            ; preds = %bb.al, %bb.am, %bb.an, %_ZNK9aiColor4tIfEneERKS0_.exit
  store i8 1, ptr %11, align 1
  %.pre = load ptr, ptr %i.h, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN6Assimp9strtoul16EPKcPS1_.exit, %_ZNK9aiColor4tIfEneERKS0_.exit.thread, %_ZNK9aiColor4tIfEneERKS0_.exit
  %i.eg = phi ptr [ %i.do, %_ZN6Assimp9strtoul16EPKcPS1_.exit ], [ %.pre, %_ZNK9aiColor4tIfEneERKS0_.exit.thread ], [ %i.do, %_ZNK9aiColor4tIfEneERKS0_.exit ] ; 8 uses
  %i.eh = load ptr, ptr %i.i, align 8
  %.not.i79 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i79, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge
  %i.ei = extractelement <4 x float> %i.dm, i64 2
  store float %i.ei, ptr %i.eg, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ej = extractelement <4 x float> %i.dm, i64 3
  store float %i.ej, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ek = extractelement <4 x float> %i.dm, i64 0
  store float %i.ek, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.el = extractelement <4 x float> %i.dm, i64 1
  store float %i.el, ptr %.sroa.11.0..sroa_idx, align 4
  %i.em = load ptr, ptr %i.h, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr %i.en, ptr %i.h, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

bb.ap:                                            ; preds = %.critedge
  %i.eo = load ptr, ptr %10, align 8              ; 5 uses
  %i.ep = ptrtoint ptr %i.eg to i64
  %i.eq = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775792
  br i1 %i.es, label %bb.aq, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ap
  %i.et = ashr exact i64 %i.er, 4                 ; 3 uses
  %.sroa.speculated.i.i.i80 = call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i.i80, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = call i64 @llvm.umin.i64(i64 %i.eu, i64 576460752303423487)
  %i.ex = select i1 %i.ev, i64 576460752303423487, i64 %i.ew ; 3 uses
  %.not.i.i.i81 = icmp ne i64 %i.ex, 0
  call void @llvm.assume(i1 %.not.i.i.i81)
  %i.ey = shl nuw nsw i64 %i.ex, 4
  %i.ez = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #26 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er ; 4 uses
  %i.fb = extractelement <4 x float> %i.dm, i64 2
  store float %i.fb, ptr %i.fa, align 4
  %.sroa.7.0..sroa_idx212 = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = extractelement <4 x float> %i.dm, i64 3
  store float %i.fc, ptr %.sroa.7.0..sroa_idx212, align 4
  %.sroa.9.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fd = extractelement <4 x float> %i.dm, i64 0
  store float %i.fd, ptr %.sroa.9.0..sroa_idx214, align 4
  %.sroa.11.0..sroa_idx216 = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fe = extractelement <4 x float> %i.dm, i64 1
  store float %i.fe, ptr %.sroa.11.0..sroa_idx216, align 4
  %.not10.i.i.i.i.i82 = icmp eq ptr %i.eo, %i.eg
  br i1 %.not10.i.i.i.i.i82, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i83
  %.012.i.i.i.i.i84 = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i83 ], [ %i.ez, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i85 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i83 ], [ %i.eo, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i84, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i85, i64 16, i1 false), !alias.scope !46
  %i.ff = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i85, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i84, i64 16 ; 2 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %i.ff, %i.eg
  br i1 %.not.i.i.i.i.i86, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i83, !llvm.loop !28

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i83, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i87 = phi ptr [ %i.ez, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fg, %.lr.ph.i.i.i.i.i83 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i87, i64 16
  %.not.i23.i.i88 = icmp eq ptr %i.eo, null
  br i1 %.not.i23.i.i88, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.fi = load ptr, ptr %i.i, align 8
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = sub i64 %i.fj, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.fk) #24
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ar, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ez, ptr %10, align 8
  store ptr %i.fh, ptr %i.h, align 8
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.ex
  store ptr %i.fl, ptr %i.i, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.ao, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.fm = ptrtoaddr ptr %.016.i to i64
  %i.fn = sub i64 %i.a, %i.fm
  %scevgep.i.i89 = getelementptr i8, ptr %.016.i, i64 %i.fn
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  %.0.i.i90 = phi ptr [ %.016.i, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.fp, %bb.au ] ; 4 uses
  %i.fo = load i8, ptr %.0.i.i90, align 1
  switch i8 %i.fo, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94 [
    i8 32, label %bb.at
    i8 9, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as
  %.not.i.i91 = icmp eq ptr %.0.i.i90, %2
  br i1 %.not.i.i91, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i90, i64 1
  br label %bb.as, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94:       ; preds = %bb.as, %bb.at
  %.0.lcssa.i.i93 = phi ptr [ %.0.i.i90, %bb.as ], [ %scevgep.i.i89, %bb.at ]
  %i.fq = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i93, ptr noundef nonnull align 4 dereferenceable(4) %12, i1 noundef zeroext true) ; 3 uses
  %i.fr = ptrtoaddr ptr %i.fq to i64
  %i.fs = sub i64 %i.a, %i.fr
  %scevgep.i.i95 = getelementptr i8, ptr %i.fq, i64 %i.fs
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94
  %.0.i.i96 = phi ptr [ %i.fq, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit94 ], [ %i.fu, %bb.ax ] ; 4 uses
  %i.ft = load i8, ptr %.0.i.i96, align 1
  switch i8 %i.ft, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100 [
    i8 32, label %bb.aw
    i8 9, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %.not.i.i97 = icmp eq ptr %.0.i.i96, %2
  br i1 %.not.i.i97, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i.i96, i64 1
  br label %bb.av, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100:      ; preds = %bb.av, %bb.aw
  %.0.lcssa.i.i99 = phi ptr [ %.0.i.i96, %bb.av ], [ %scevgep.i.i95, %bb.aw ]
  %i.fv = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i99, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 3 uses
  %i.fw = ptrtoaddr ptr %i.fv to i64
  %i.fx = sub i64 %i.a, %i.fw
  %scevgep.i.i101 = getelementptr i8, ptr %i.fv, i64 %i.fx
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100
  %.0.i.i102 = phi ptr [ %i.fv, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit100 ], [ %i.fz, %bb.ba ] ; 4 uses
  %i.fy = load i8, ptr %.0.i.i102, align 1
  switch i8 %i.fy, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106 [
    i8 32, label %bb.az
    i8 9, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  %.not.i.i103 = icmp eq ptr %.0.i.i102, %2
  br i1 %.not.i.i103, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 1
  br label %bb.ay, !llvm.loop !16

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit106:      ; preds = %bb.ay, %bb.az
end_hunk_0
