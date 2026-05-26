inline.NumInlined: 640
inline.NumDeleted: 317
begin_hunk_0_@_ZN6Assimp11STLImporter14LoadBinaryFileEv:bb.a
  store ptr %i.en, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.en, i64 1104
  store i32 1, ptr %i.gq, align 8
  %i.gr = call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #22 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.en, i64 1112
  store ptr %i.gr, ptr %i.gs, align 8
  store ptr %i.eo, ptr %i.gr, align 8
  %i.gt = load ptr, ptr %i.a, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8            ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eo, i64 1120
  store i32 %i.gv, ptr %i.gw, align 8
  %i.gx = zext i32 %i.gv to i64
  %i.gy = shl nuw nsw i64 %i.gx, 2
  %i.gz = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gy) #22
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eo, i64 1128 ; 2 uses
  store ptr %i.gz, ptr %i.ha, align 8
  %i.hb = load i32, ptr %i.gu, align 8
  %.not183 = icmp eq i32 %i.hb, 0
  br i1 %.not183, label %._crit_edge180, label %.lr.ph179

._crit_edge180:                                   ; preds = %.lr.ph179, %bb.aa
  br i1 %i.bf, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %_ZN6Assimp14addFacesToMeshEP6aiMesh.exit
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 1144) #21
  br label %bb.af

.lr.ph179:                                        ; preds = %bb.aa, %.lr.ph179
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %.lr.ph179 ], [ 0, %bb.aa ] ; 3 uses
  %i.hd = load ptr, ptr %i.ha, align 8
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv187
  %i.hf = trunc nuw i64 %indvars.iv187 to i32
  store i32 %i.hf, ptr %i.he, align 4
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.hg = load ptr, ptr %i.a, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load i32, ptr %i.hh, align 8
  %i.hj = zext i32 %i.hi to i64
  %i.hk = icmp samesign ult i64 %indvars.iv.next188, %i.hj
  br i1 %i.hk, label %.lr.ph179, label %._crit_edge180, !llvm.loop !14

bb.ac:                                            ; preds = %._crit_edge180
  %i.hl = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8
  %.not135 = icmp eq ptr %i.hm, null
  br i1 %.not135, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge180
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.0110 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ]
  ret i1 %.0110

bb.af:                                            ; preds = %bb.p, %bb.t, %bb.ab, %bb.d
  %.pn139 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.cb, %bb.p ], [ %i.hc, %bb.ab ], [ %i.cd, %bb.t ]
  resume { ptr, i32 } %.pn139
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11STLImporter13LoadASCIIFileEP6aiNode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %class.aiVector3t, align 8          ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 12 uses
  %i.i = udiv i64 %i.g, 160
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 2 uses
  %i.j = mul nuw nsw i64 %.sroa.speculated, 3     ; 2 uses
  %i.k = mul nuw nsw i64 %.sroa.speculated, 36    ; 2 uses
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 unwind label %bb.aa ; 4 uses

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.j ; 2 uses
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 unwind label %bb.aa ; 3 uses

_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.j
  %i.p = ptrtoint ptr %i.h to i64                 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 27
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103, %.noexc264
  %.sroa.35.0 = phi ptr [ %i.m, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.35.2, %.noexc264 ] ; 14 uses
  %.sroa.0328.0 = phi ptr [ %i.n, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0328.2, %.noexc264 ] ; 15 uses
  %.sroa.20.0 = phi ptr [ %i.n, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.20.3, %.noexc264 ]
  %.sroa.38.0 = phi ptr [ %i.o, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.38.2, %.noexc264 ] ; 14 uses
  %.sroa.20368.0 = phi ptr [ %i.l, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.20368.3, %.noexc264 ]
  %.sroa.0354.0 = phi ptr [ %i.l, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0354.2, %.noexc264 ] ; 15 uses
  %.0441 = phi ptr [ %i.e, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.6, %.noexc264 ] ; 6 uses
  %.sroa.17.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.17.5, %.noexc264 ] ; 13 uses
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.11.1, %.noexc264 ] ; 5 uses
  %.sroa.0416.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0416.5, %.noexc264 ] ; 23 uses
  %.sroa.19.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.19.4, %.noexc264 ] ; 9 uses
  %.sroa.12434.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.12434.1, %.noexc264 ] ; 6 uses
  %.sroa.0427.0 = phi ptr [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE7reserveEm.exit103 ], [ %.sroa.0427.4, %.noexc264 ] ; 20 uses
  %i.ac = ptrtoint ptr %.0441 to i64
  %i.ad = sub i64 %i.p, %i.ac                     ; 3 uses
  %i.ae = and i64 %i.ad, 4294967295               ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, 84
  br i1 %i.af, label %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i, label %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.i

_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.i: ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %.0441, i64 80
  %.0.copyload.i.i = load i32, ptr %i.ag, align 1
  %i.ah = mul i32 %.0.copyload.i.i, 50
  %i.ai = add i32 %i.ah, 84
  %i.aj = trunc i64 %i.ad to i32
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread, label %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i

_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i: ; preds = %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.i, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %.0441, i64 %i.ae ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i
  %.0.i.i.i = phi ptr [ %.0441, %_ZN6Assimp12_GLOBAL__N_111IsBinarySTLEPKcm.exit.thread.i ], [ %i.an, %bb.d ] ; 4 uses
  %i.am = load i8, ptr %.0.i.i.i, align 1         ; 2 uses
  switch i8 %i.am, label %.critedge.i.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.al
  br i1 %.not.i.i.i, label %.critedge.i.ithread-pre-split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.b, !llvm.loop !8

.critedge.i.ithread-pre-split.i:                  ; preds = %bb.c
  %.pr.i = load i8, ptr %i.al, align 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.b, %.critedge.i.ithread-pre-split.i
  %i.ao = phi i8 [ %.pr.i, %.critedge.i.ithread-pre-split.i ], [ %i.am, %bb.b ]
  %.0.lcssa.i.i.i = phi ptr [ %i.al, %.critedge.i.ithread-pre-split.i ], [ %.0.i.i.i, %bb.b ] ; 2 uses
  switch i8 %i.ao, label %bb.e [
    i8 13, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
    i8 10, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
    i8 0, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
    i8 12, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
  ]

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 5
  %.not.i = icmp ult ptr %i.ap, %i.al
  br i1 %.not.i, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread

_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit:   ; preds = %bb.e
  %i.aq = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i.i, ptr noundef nonnull dereferenceable(6) @.str.1, i64 noundef 5) #24
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread

bb.f:                                             ; preds = %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit
  %i.as = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #22
          to label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.ek ; 15 uses

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  store i32 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 5 uses
  store i32 0, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 7 uses
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1272
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 1312
  store ptr null, ptr %i.ay, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.av, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ax, i8 0, i64 36, i1 false)
  %i.az = ptrtoint ptr %.sroa.12434.0 to i64
  %i.ba = ptrtoint ptr %.sroa.0427.0 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = ashr exact i64 %i.bb, 3                 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.aw, i8 0, i64 1044, i1 false)
  %i.bd = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #22
          to label %bb.g unwind label %.thread484 ; 4 uses

bb.g:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = trunc i64 %i.bc to i32
  store i32 %i.be, ptr %i.bd, align 4
  %.not.i107 = icmp eq ptr %.sroa.12434.0, %.sroa.19.0
  br i1 %.not.i107, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.as, ptr %.sroa.12434.0, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.bf = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bf, label %bb.j, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc109 unwind label %.thread498.loopexit.split-lp

.noexc109:                                        ; preds = %bb.j
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bc ; 2 uses
  %7 = icmp ult i64 %i.bg, %i.bc
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %8 = select i1 %7, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i108 = icmp ne i64 %8, 0
  call void @llvm.assume(i1 %.not.i.i.i108)
  %i.bi = shl nuw nsw i64 %8, 3
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #22
          to label %.noexc110 unwind label %.thread498.loopexit ; 4 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store ptr %i.as, ptr %i.bk, align 8
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.k, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.k:                                             ; preds = %.noexc110
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 8 %.sroa.0427.0, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.k, %.noexc110
  %.not.i17.i.i = icmp eq ptr %.sroa.0427.0, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0427.0, i64 noundef %i.bb) #21
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.h
  %.sroa.19.4 = phi ptr [ %i.bm, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19.0, %bb.h ] ; 17 uses
  %.pn503 = phi ptr [ %i.bk, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.12434.0, %bb.h ]
  %.sroa.0427.4 = phi ptr [ %i.bj, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0427.0, %bb.h ] ; 17 uses
  %.sroa.12434.1 = getelementptr inbounds nuw i8, ptr %.pn503, i64 8
  %i.bn = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #22
          to label %bb.m unwind label %.loopexit521 ; 9 uses

bb.m:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.bn)
          to label %bb.n unwind label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1096
  store ptr %1, ptr %i.bo, align 8
  %.not.i111 = icmp eq ptr %.sroa.11.0, %.sroa.17.0
  br i1 %.not.i111, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bn, ptr %.sroa.11.0, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = ptrtoint ptr %.sroa.17.0 to i64
  %i.bq = ptrtoint ptr %.sroa.0416.0 to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 6 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %bb.q, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc115 unwind label %.loopexit.split-lp522

.noexc115:                                        ; preds = %bb.q
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.bt = ashr exact i64 %i.br, 3                 ; 3 uses
  %.sroa.speculated.i.i.i112 = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i112, %i.bt ; 2 uses
  %9 = icmp ult i64 %i.bu, %i.bt
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %10 = select i1 %9, i64 1152921504606846975, i64 %i.bv ; 3 uses
  %.not.i.i.i113 = icmp ne i64 %10, 0
  call void @llvm.assume(i1 %.not.i.i.i113)
  %i.bw = shl nuw nsw i64 %10, 3
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #22
          to label %.noexc116 unwind label %.loopexit521 ; 4 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.br ; 2 uses
  store ptr %i.bn, ptr %i.by, align 8
  %i.bz = icmp sgt i64 %i.br, 0
  br i1 %i.bz, label %bb.r, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.r:                                             ; preds = %.noexc116
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %.sroa.0416.0, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.r, %.noexc116
  %.not.i17.i.i114 = icmp eq ptr %.sroa.0416.0, null
  br i1 %.not.i17.i.i114, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0416.0, i64 noundef %i.br) #21
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %10
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.o
  %.sroa.17.5 = phi ptr [ %i.ca, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.17.0, %bb.o ] ; 14 uses
  %.pn504 = phi ptr [ %i.by, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.11.0, %bb.o ]
  %.sroa.0416.5 = phi ptr [ %i.bx, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0416.0, %bb.o ] ; 14 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn504, i64 8
  %scevgep.i.i = getelementptr i8, ptr %.0441, i64 %i.ad
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %.0.i.i = phi ptr [ %.0441, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %i.cc, %bb.v ] ; 4 uses
  %i.cb = load i8, ptr %.0.i.i, align 1
  switch i8 %i.cb, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit [
    i8 32, label %bb.u
    i8 9, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %.not.i.i117 = icmp eq ptr %.0.i.i, %i.h
  br i1 %.not.i.i117, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.t, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %bb.t, %bb.u
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.t ], [ %scevgep.i.i, %bb.u ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 5 ; 3 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.p, %i.ce
  %scevgep.i.i118 = getelementptr i8, ptr %i.cd, i64 %i.cf
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %.0.i.i119 = phi ptr [ %i.cd, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit ], [ %i.ch, %bb.y ] ; 4 uses
  %i.cg = load i8, ptr %.0.i.i119, align 1
  switch i8 %i.cg, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123 [
    i8 32, label %bb.x
    i8 9, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %.not.i.i120 = icmp eq ptr %.0.i.i119, %i.h
  br i1 %.not.i.i120, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i119, i64 1
  br label %bb.w, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123:      ; preds = %bb.w, %bb.x
  %.0.lcssa.i.i122 = phi ptr [ %.0.i.i119, %bb.w ], [ %scevgep.i.i118, %bb.x ] ; 5 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123
  %.1 = phi ptr [ %.0.lcssa.i.i122, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit123 ], [ %i.cj, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 5 uses
  %i.ci = load i8, ptr %.1, align 1
  switch i8 %i.ci, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.ac
    i8 9, label %bb.ac
    i8 13, label %bb.ac
    i8 10, label %bb.ac
    i8 0, label %bb.ac
    i8 12, label %bb.ac
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.z, !llvm.loop !15

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i, %._crit_edge, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread
  %.sroa.35.1 = phi ptr [ %i.m, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.35.0, %._crit_edge ], [ %.sroa.35.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0328.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0328.0, %._crit_edge ], [ %.sroa.0328.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.38.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.38.0, %._crit_edge ], [ %.sroa.38.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0354.1 = phi ptr [ %i.l, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0354.0, %._crit_edge ], [ %.sroa.0354.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.17.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.17.0, %._crit_edge ], [ %.sroa.17.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0416.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0416.0, %._crit_edge ], [ %.sroa.0416.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.19.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.19.0, %._crit_edge ], [ %.sroa.19.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %.sroa.0427.1 = phi ptr [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i92 ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0427.0, %._crit_edge ], [ %.sroa.0427.0, %_ZN6Assimp12_GLOBAL__N_110IsAsciiSTLEPKcm.exit.thread ]
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit267

.thread484:                                       ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit267

.loopexit521:                                     ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit523 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp522:                            ; preds = %bb.q
  %lpad.loopexit.split-lp524 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.m
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 1144) #21
  br label %.thread

bb.ac:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  %i.cn = ptrtoint ptr %.1 to i64
  %i.co = ptrtoint ptr %.0.lcssa.i.i122 to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 5 uses
  %.not = icmp eq ptr %.1, %.0.lcssa.i.i122
  br i1 %.not, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit149, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = icmp ugt i64 %i.cp, 1023
  br i1 %i.cq, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.cr = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull @.str.11)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.et unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cr) #20
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.q, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.cp, ptr %i.c, align 8
  %i.cu = icmp samesign ugt i64 %i.cp, 15
  br i1 %i.cu, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ai
  %i.cv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.ay ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.cv, ptr %2, align 8
  %i.cw = load i64, ptr %i.c, align 8
  store i64 %i.cw, ptr %i.q, align 8
  br label %bb.ak

._crit_edge.i.i:                                  ; preds = %bb.ai
  %cond = icmp eq i64 %i.cp, 1
  br i1 %cond, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.cx = load i8, ptr %.0.lcssa.i.i122, align 1
  store i8 %i.cx, ptr %i.q, align 8
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.cy = phi ptr [ %i.cv, %._crit_edge.i.i.thread ], [ %i.q, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr align 1 %.0.lcssa.i.i122, i64 %i.cp, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cz = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.cz, ptr %i.r, align 8
  %i.da = load ptr, ptr %2, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  store i8 0, ptr %i.db, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.dc = load ptr, ptr %2, align 8               ; 4 uses
  store ptr %i.s, ptr %3, align 8
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #23
          to label %.noexc128 unwind label %.loopexit.split-lp527

.noexc128:                                        ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.de = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dc) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.de, ptr %i.b, align 8
  %i.df = icmp ugt i64 %i.de, 15
  br i1 %i.df, label %.noexc.i127, label %._crit_edge.i.i126

.noexc.i127:                                      ; preds = %bb.an
  %i.dg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc129 unwind label %.loopexit526 ; 2 uses

.noexc129:                                        ; preds = %.noexc.i127
  store ptr %i.dg, ptr %3, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11STLImporter13LoadASCIIFileEP6aiNode:_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE11_M_allocateEm.exit.i
  br label %.thread

bb.bi:                                            ; preds = %.loopexit
  %i.fp = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(6) @.str.14, i64 noundef 5) #24
  %.not75 = icmp eq i32 %i.fp, 0
  br i1 %.not75, label %bb.bj, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157

bb.bj:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 5
  %i.fr = load i8, ptr %i.fq, align 1
  switch i8 %i.fr, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157 [
    i8 32, label %bb.bk
    i8 9, label %bb.bk
    i8 10, label %bb.bk
    i8 12, label %bb.bk
    i8 13, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bj
  %.not77 = icmp eq i32 %.060, 3
  br i1 %.not77, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fs = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fs, ptr noundef nonnull @.str.15)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 6 ; 3 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.p, %i.fu
  %scevgep.i.i158 = getelementptr i8, ptr %i.ft, i64 %i.fv
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bq, %bb.bn
  %.0.i.i159 = phi ptr [ %i.ft, %bb.bn ], [ %i.fx, %bb.bq ] ; 4 uses
  %i.fw = load i8, ptr %.0.i.i159, align 1
  switch i8 %i.fw, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163 [
    i8 32, label %bb.bp
    i8 9, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bo
  %.not.i.i160 = icmp eq ptr %.0.i.i159, %i.h
  br i1 %.not.i.i160, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 1
  br label %bb.bo, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163:      ; preds = %bb.bo, %bb.bp
  %.0.lcssa.i.i162 = phi ptr [ %.0.i.i159, %bb.bo ], [ %scevgep.i.i158, %bb.bp ] ; 4 uses
  %i.fy = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i162, ptr noundef nonnull dereferenceable(7) @.str.16, i64 noundef 6) #24
  %.not78 = icmp eq i32 %i.fy, 0
  br i1 %.not78, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163
  %i.fz = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fz, ptr noundef nonnull @.str.17)
          to label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread unwind label %.loopexit.split-lp.loopexit

bb.bt:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit163
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i162, i64 6
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.gd = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull @.str.18)
          to label %.invoke unwind label %bb.bv

.invoke:                                          ; preds = %bb.ec, %bb.dz, %bb.cz, %bb.bu
  %i.ge = phi ptr [ %i.lg, %bb.dz ], [ %i.gd, %bb.bu ], [ %i.je, %bb.cz ], [ %i.ll, %bb.ec ]
  invoke void @__cxa_throw(ptr nonnull %i.ge, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gd) #20
  br label %.thread

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store <2 x float> zeroinitializer, ptr %6, align 8
  store float 0.000000e+00, ptr %i.aa, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i162, i64 7 ; 3 uses
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.p, %i.gh
  %scevgep.i.i164 = getelementptr i8, ptr %i.gg, i64 %i.gi
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.bw
  %.0.i.i165 = phi ptr [ %i.gg, %bb.bw ], [ %i.gk, %bb.bz ] ; 4 uses
  %i.gj = load i8, ptr %.0.i.i165, align 1
  switch i8 %i.gj, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169 [
    i8 32, label %bb.by
    i8 9, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %.not.i.i166 = icmp eq ptr %.0.i.i165, %i.h
  br i1 %.not.i.i166, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i.i165, i64 1
  br label %bb.bx, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169:      ; preds = %bb.bx, %bb.by
  %.0.lcssa.i.i168 = phi ptr [ %.0.i.i165, %bb.bx ], [ %scevgep.i.i164, %bb.by ]
  %i.gl = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i168, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext true)
          to label %bb.ca unwind label %.loopexit512 ; 3 uses

bb.ca:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = sub i64 %i.p, %i.gm
  %scevgep.i.i170 = getelementptr i8, ptr %i.gl, i64 %i.gn
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cd, %bb.ca
  %.0.i.i171 = phi ptr [ %i.gl, %bb.ca ], [ %i.gp, %bb.cd ] ; 4 uses
  %i.go = load i8, ptr %.0.i.i171, align 1
  switch i8 %i.go, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175 [
    i8 32, label %bb.cc
    i8 9, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %.not.i.i172 = icmp eq ptr %.0.i.i171, %i.h
  br i1 %.not.i.i172, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i.i171, i64 1
  br label %bb.cb, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175:      ; preds = %bb.cb, %bb.cc
  %.0.lcssa.i.i174 = phi ptr [ %.0.i.i171, %bb.cb ], [ %scevgep.i.i170, %bb.cc ]
  %i.gq = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i174, ptr noundef nonnull align 4 dereferenceable(4) %i.z, i1 noundef zeroext true)
          to label %bb.ce unwind label %.loopexit512 ; 3 uses

bb.ce:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %i.p, %i.gr
  %scevgep.i.i176 = getelementptr i8, ptr %i.gq, i64 %i.gs
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.0.i.i177 = phi ptr [ %i.gq, %bb.ce ], [ %i.gu, %bb.ch ] ; 4 uses
  %i.gt = load i8, ptr %.0.i.i177, align 1
  switch i8 %i.gt, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181 [
    i8 32, label %bb.cg
    i8 9, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %.not.i.i178 = icmp eq ptr %.0.i.i177, %i.h
  br i1 %.not.i.i178, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i.i177, i64 1
  br label %bb.cf, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181:      ; preds = %bb.cf, %bb.cg
  %.0.lcssa.i.i180 = phi ptr [ %.0.i.i177, %bb.cf ], [ %scevgep.i.i176, %bb.cg ]
  %i.gv = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i180, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, i1 noundef zeroext true)
          to label %bb.ci unwind label %.loopexit512

bb.ci:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181
  %.not.i182 = icmp eq ptr %.sroa.20.1, %.sroa.38.2
  br i1 %.not.i182, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.20.1, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.ck:                                            ; preds = %bb.ci
  %i.gw = ptrtoint ptr %.sroa.20.1 to i64
  %i.gx = ptrtoint ptr %.sroa.0328.2 to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 4 uses
  %i.gz = icmp eq i64 %i.gy, 9223372036854775800
  br i1 %i.gz, label %bb.cl, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc185 unwind label %.loopexit.split-lp513

.noexc185:                                        ; preds = %bb.cl
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ck
  %i.ha = sdiv exact i64 %i.gy, 12                ; 3 uses
  %.sroa.speculated.i.i.i183 = call i64 @llvm.umax.i64(i64 %i.ha, i64 1)
  %i.hb = add nsw i64 %.sroa.speculated.i.i.i183, %i.ha ; 2 uses
  %11 = icmp ult i64 %i.hb, %i.ha
  %i.hc = call i64 @llvm.umin.i64(i64 %i.hb, i64 768614336404564650)
  %12 = select i1 %11, i64 768614336404564650, i64 %i.hc ; 3 uses
  %.not.i.i.i184 = icmp ne i64 %12, 0
  call void @llvm.assume(i1 %.not.i.i.i184)
  %i.hd = mul nuw nsw i64 %12, 12
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #22
          to label %.noexc186 unwind label %.loopexit512 ; 5 uses

.noexc186:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hf, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0328.2, %.sroa.20.1
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc186, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i ], [ %i.he, %.noexc186 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i ], [ %.sroa.0328.2, %.noexc186 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !17
  %i.hg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hg, %.sroa.20.1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc186
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.he, %.noexc186 ], [ %i.hh, %.lr.ph.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.2, i64 noundef %i.gy) #21
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.cj
  %.sroa.0328.9 = phi ptr [ %i.he, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0328.2, %bb.cj ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.20.1, %bb.cj ] ; 4 uses
  %.sroa.38.9 = phi ptr [ %i.hi, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.38.2, %bb.cj ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.pn3442 = ptrtoint ptr %.0.lcssa.i.i.i.i.i.pn to i64
  %.sroa.20.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12 ; 2 uses
  %.not.i187 = icmp eq ptr %.sroa.20.5, %.sroa.38.9
  br i1 %.not.i187, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.20.5, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202

bb.cn:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit
  %i.hk = ptrtoint ptr %.sroa.38.9 to i64
  %i.hl = ptrtoint ptr %.sroa.0328.9 to i64       ; 2 uses
  %i.hm = sub i64 %i.hk, %i.hl                    ; 4 uses
  %i.hn = icmp eq i64 %i.hm, 9223372036854775800
  br i1 %i.hn, label %bb.co, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc200 unwind label %.loopexit.split-lp513

.noexc200:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188: ; preds = %bb.cn
  %i.ho = sdiv exact i64 %i.hm, 12                ; 3 uses
  %.sroa.speculated.i.i.i189 = call i64 @llvm.umax.i64(i64 %i.ho, i64 1)
  %i.hp = add nsw i64 %.sroa.speculated.i.i.i189, %i.ho ; 2 uses
  %13 = icmp ult i64 %i.hp, %i.ho
  %i.hq = call i64 @llvm.umin.i64(i64 %i.hp, i64 768614336404564650)
  %14 = select i1 %13, i64 768614336404564650, i64 %i.hq ; 3 uses
  %.not.i.i.i190 = icmp ne i64 %14, 0
  call void @llvm.assume(i1 %.not.i.i.i190)
  %i.hr = mul nuw nsw i64 %14, 12
  %i.hs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #22
          to label %.noexc201 unwind label %.loopexit512 ; 6 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ht, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i191 = icmp eq ptr %.sroa.0328.9, %.sroa.38.9
  br i1 %.not10.i.i.i.i.i191, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, label %.lr.ph.i.i.i.i.i192.preheader

.lr.ph.i.i.i.i.i192.preheader:                    ; preds = %.noexc201
  %i.hu = sub i64 %.0.lcssa.i.i.i.i.i.pn3442, %i.hl ; 2 uses
  %i.hv = udiv i64 %i.hu, 12
  %i.hw = add nuw nsw i64 %i.hv, 1
  %xtraiter = and i64 %i.hw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i192.prol.loopexit, label %.lr.ph.i.i.i.i.i192.prol

.lr.ph.i.i.i.i.i192.prol:                         ; preds = %.lr.ph.i.i.i.i.i192.preheader, %.lr.ph.i.i.i.i.i192.prol
  %.012.i.i.i.i.i193.prol = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i192.prol ], [ %i.hs, %.lr.ph.i.i.i.i.i192.preheader ] ; 2 uses
  %.0911.i.i.i.i.i194.prol = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i192.prol ], [ %.sroa.0328.9, %.lr.ph.i.i.i.i.i192.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i192.prol ], [ 0, %.lr.ph.i.i.i.i.i192.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i193.prol, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i194.prol, i64 12, i1 false), !alias.scope !22
  %i.hx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194.prol, i64 12 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i192.prol.loopexit, label %.lr.ph.i.i.i.i.i192.prol, !llvm.loop !26

.lr.ph.i.i.i.i.i192.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i192.prol, %.lr.ph.i.i.i.i.i192.preheader
  %.lcssa2878.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i192.preheader ], [ %i.hy, %.lr.ph.i.i.i.i.i192.prol ]
  %.012.i.i.i.i.i193.unr = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i192.preheader ], [ %i.hy, %.lr.ph.i.i.i.i.i192.prol ]
  %.0911.i.i.i.i.i194.unr = phi ptr [ %.sroa.0328.9, %.lr.ph.i.i.i.i.i192.preheader ], [ %i.hx, %.lr.ph.i.i.i.i.i192.prol ]
  %i.hz = icmp ult i64 %i.hu, 36
  br i1 %i.hz, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, label %.lr.ph.i.i.i.i.i192

.lr.ph.i.i.i.i.i192:                              ; preds = %.lr.ph.i.i.i.i.i192.prol.loopexit, %.lr.ph.i.i.i.i.i192
  %.012.i.i.i.i.i193 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i192 ], [ %.012.i.i.i.i.i193.unr, %.lr.ph.i.i.i.i.i192.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i194 = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i192 ], [ %.0911.i.i.i.i.i194.unr, %.lr.ph.i.i.i.i.i192.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i193, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i194, i64 12, i1 false), !alias.scope !22
  %i.ia = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 12
  %i.ib = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ib, ptr noundef nonnull align 4 dereferenceable(12) %i.ia, i64 12, i1 false), !alias.scope !22
  %i.ic = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 24
  %i.id = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.id, ptr noundef nonnull align 4 dereferenceable(12) %i.ic, i64 12, i1 false), !alias.scope !22
  %i.ie = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 36 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.if, ptr noundef nonnull align 4 dereferenceable(12) %i.ie, i64 12, i1 false), !alias.scope !22
  %i.ig = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i194, i64 48
  %i.ih = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i193, i64 48 ; 2 uses
  %.not.i.i.i.i.i195.3 = icmp eq ptr %i.ie, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i195.3, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, label %.lr.ph.i.i.i.i.i192, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199: ; preds = %.lr.ph.i.i.i.i.i192.prol.loopexit, %.lr.ph.i.i.i.i.i192, %.noexc201
  %.0.lcssa.i.i.i.i.i197 = phi ptr [ %i.hs, %.noexc201 ], [ %.lcssa2878.unr, %.lr.ph.i.i.i.i.i192.prol.loopexit ], [ %i.ih, %.lr.ph.i.i.i.i.i192 ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i197, i64 12
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.9, i64 noundef %i.hm) #21
  %i.ij = getelementptr inbounds nuw [12 x i8], ptr %i.hs, i64 %14
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199, %bb.cm
  %.sroa.0328.10 = phi ptr [ %i.hs, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %.sroa.0328.9, %bb.cm ] ; 7 uses
  %.sroa.20.6 = phi ptr [ %i.ii, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %i.hj, %bb.cm ] ; 8 uses
  %.sroa.38.10 = phi ptr [ %i.ij, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i199 ], [ %.sroa.38.9, %bb.cm ] ; 2 uses
  %.not.i203 = icmp eq ptr %.sroa.20.6, %.sroa.38.10
  br i1 %.not.i203, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.20.6, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218

bb.cq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit202
  %i.ik = ptrtoint ptr %.sroa.20.6 to i64
  %i.il = ptrtoint ptr %.sroa.0328.10 to i64
  %i.im = sub i64 %i.ik, %i.il                    ; 4 uses
  %i.in = icmp eq i64 %i.im, 9223372036854775800
  br i1 %i.in, label %bb.cr, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc216 unwind label %.loopexit.split-lp513

.noexc216:                                        ; preds = %bb.cr
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204: ; preds = %bb.cq
  %i.io = sdiv exact i64 %i.im, 12                ; 3 uses
  %.sroa.speculated.i.i.i205 = call i64 @llvm.umax.i64(i64 %i.io, i64 1)
  %i.ip = add nsw i64 %.sroa.speculated.i.i.i205, %i.io ; 2 uses
  %15 = icmp ult i64 %i.ip, %i.io
  %i.iq = call i64 @llvm.umin.i64(i64 %i.ip, i64 768614336404564650)
  %16 = select i1 %15, i64 768614336404564650, i64 %i.iq ; 3 uses
  %.not.i.i.i206 = icmp ne i64 %16, 0
  call void @llvm.assume(i1 %.not.i.i.i206)
  %i.ir = mul nuw nsw i64 %16, 12
  %i.is = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ir) #22
          to label %.noexc217 unwind label %.loopexit512 ; 5 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.im
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.it, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %.not10.i.i.i.i.i207 = icmp eq ptr %.sroa.0328.10, %.sroa.20.6
  br i1 %.not10.i.i.i.i.i207, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, label %.lr.ph.i.i.i.i.i208

.lr.ph.i.i.i.i.i208:                              ; preds = %.noexc217, %.lr.ph.i.i.i.i.i208
  %.012.i.i.i.i.i209 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i208 ], [ %i.is, %.noexc217 ] ; 2 uses
  %.0911.i.i.i.i.i210 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i208 ], [ %.sroa.0328.10, %.noexc217 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i209, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i210, i64 12, i1 false), !alias.scope !27
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i210, i64 12 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i209, i64 12 ; 2 uses
  %.not.i.i.i.i.i211 = icmp eq ptr %i.iu, %.sroa.20.6
  br i1 %.not.i.i.i.i.i211, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, label %.lr.ph.i.i.i.i.i208, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215: ; preds = %.lr.ph.i.i.i.i.i208, %.noexc217
  %.0.lcssa.i.i.i.i.i213 = phi ptr [ %i.is, %.noexc217 ], [ %i.iv, %.lr.ph.i.i.i.i.i208 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.10, i64 noundef %i.im) #21
  %i.iw = getelementptr inbounds nuw [12 x i8], ptr %i.is, i64 %16
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, %bb.cp
  %.sroa.0328.11 = phi ptr [ %i.is, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.0328.10, %bb.cp ]
  %.0.lcssa.i.i.i.i.i213.pn = phi ptr [ %.0.lcssa.i.i.i.i.i213, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.20.6, %bb.cp ]
  %.sroa.38.11 = phi ptr [ %i.iw, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ], [ %.sroa.38.10, %bb.cp ]
  %.sroa.20.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i213.pn, i64 12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread

.loopexit512:                                     ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204
  %.sroa.0328.3.ph = phi ptr [ %.sroa.0328.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169 ], [ %.sroa.0328.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175 ], [ %.sroa.0328.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181 ], [ %.sroa.0328.2, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0328.9, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188 ], [ %.sroa.0328.10, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204 ]
  %.sroa.38.3.ph = phi ptr [ %.sroa.38.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit169 ], [ %.sroa.38.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit175 ], [ %.sroa.38.2, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit181 ], [ %.sroa.20.1, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.38.9, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i188 ], [ %.sroa.20.6, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i204 ]
  %lpad.loopexit516 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp513:                            ; preds = %bb.cl, %bb.co, %bb.cr
  %.sroa.0328.3.ph514 = phi ptr [ %.sroa.0328.10, %bb.cr ], [ %.sroa.0328.9, %bb.co ], [ %.sroa.0328.2, %bb.cl ]
  %.sroa.38.3.ph515 = phi ptr [ %.sroa.20.6, %bb.cr ], [ %.sroa.38.9, %bb.co ], [ %.sroa.20.1, %bb.cl ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit.split-lp513, %.loopexit512
  %.sroa.0328.3 = phi ptr [ %.sroa.0328.3.ph, %.loopexit512 ], [ %.sroa.0328.3.ph514, %.loopexit.split-lp513 ]
  %.sroa.38.3 = phi ptr [ %.sroa.38.3.ph, %.loopexit512 ], [ %.sroa.38.3.ph515, %.loopexit.split-lp513 ]
  %lpad.phi517 = phi { ptr, i32 } [ %lpad.loopexit516, %.loopexit512 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp513 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.thread

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157:      ; preds = %bb.bj, %bb.bi
  %i.ix = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(7) @.str.19, i64 noundef 6) #24
  %.not79 = icmp eq i32 %i.ix, 0
  br i1 %.not79, label %bb.ct, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219

bb.ct:                                            ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 6
  %i.iz = load i8, ptr %i.iy, align 1             ; 2 uses
  switch i8 %i.iz, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219 [
    i8 32, label %bb.cu
    i8 9, label %bb.cu
    i8 13, label %bb.cu
    i8 10, label %bb.cu
    i8 0, label %bb.cu
    i8 12, label %bb.cu
  ]

bb.cu:                                            ; preds = %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct
  %i.ja = icmp ugt i32 %.060, 2
  br i1 %i.ja, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.jb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.jb, ptr noundef nonnull @.str.20)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit

bb.cx:                                            ; preds = %bb.cw
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 1
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread

bb.cy:                                            ; preds = %bb.cu
  %i.jd = icmp eq i8 %i.iz, 0
  br i1 %i.jd, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.je = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.je, ptr noundef nonnull @.str.18)
          to label %.invoke unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.je) #20
  br label %.thread

bb.db:                                            ; preds = %bb.cy
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i156, i64 7 ; 3 uses
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = sub i64 %i.p, %i.jh
  %scevgep.i.i220 = getelementptr i8, ptr %i.jg, i64 %i.ji
  br label %bb.dc

bb.dc:                                            ; preds = %bb.de, %bb.db
  %.0.i.i221 = phi ptr [ %i.jg, %bb.db ], [ %i.jk, %bb.de ] ; 4 uses
  %i.jj = load i8, ptr %.0.i.i221, align 1
  switch i8 %i.jj, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225 [
    i8 32, label %bb.dd
    i8 9, label %bb.dd
  ]

bb.dd:                                            ; preds = %bb.dc, %bb.dc
  %.not.i.i222 = icmp eq ptr %.0.i.i221, %i.h
  br i1 %.not.i.i222, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i.i221, i64 1
  br label %bb.dc, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225:      ; preds = %bb.dc, %bb.dd
  %.0.lcssa.i.i224 = phi ptr [ %.0.i.i221, %bb.dc ], [ %scevgep.i.i220, %bb.dd ]
  %.not.i226 = icmp eq ptr %.sroa.20368.1, %.sroa.35.2
  br i1 %.not.i226, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225
  store <2 x float> zeroinitializer, ptr %.sroa.20368.1, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.20368.1, i64 8
  store float 0.000000e+00, ptr %i.jl, align 4
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.dg:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit225
  %i.jm = ptrtoint ptr %.sroa.35.2 to i64
  %i.jn = ptrtoint ptr %.sroa.0354.2 to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 4 uses
  %i.jp = icmp eq i64 %i.jo, 9223372036854775800
  br i1 %i.jp, label %bb.dh, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %bb.dh
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227: ; preds = %bb.dg
  %i.jq = sdiv exact i64 %i.jo, 12                ; 3 uses
  %.sroa.speculated.i.i.i228 = call i64 @llvm.umax.i64(i64 %i.jq, i64 1)
  %i.jr = add nsw i64 %.sroa.speculated.i.i.i228, %i.jq ; 2 uses
  %17 = icmp ult i64 %i.jr, %i.jq
  %i.js = call i64 @llvm.umin.i64(i64 %i.jr, i64 768614336404564650)
  %18 = select i1 %17, i64 768614336404564650, i64 %i.js ; 3 uses
  %.not.i.i.i229 = icmp ne i64 %18, 0
  call void @llvm.assume(i1 %.not.i.i.i229)
  %i.jt = mul nuw nsw i64 %18, 12
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #22
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc237:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i227
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jo ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.jv, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store float 0.000000e+00, ptr %i.jw, align 4
  %.not10.i.i.i.i.i230 = icmp eq ptr %.sroa.0354.2, %.sroa.35.2
  br i1 %.not10.i.i.i.i.i230, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i231

.lr.ph.i.i.i.i.i231:                              ; preds = %.noexc237, %.lr.ph.i.i.i.i.i231
  %.012.i.i.i.i.i232 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i231 ], [ %i.ju, %.noexc237 ] ; 2 uses
  %.0911.i.i.i.i.i233 = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i231 ], [ %.sroa.0354.2, %.noexc237 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i232, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i233, i64 12, i1 false), !alias.scope !31
  %i.jx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i233, i64 12 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i232, i64 12 ; 2 uses
  %.not.i.i.i.i.i234 = icmp eq ptr %i.jx, %.sroa.35.2
  br i1 %.not.i.i.i.i.i234, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i231, !llvm.loop !21

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i231, %.noexc237
  %.0.lcssa.i.i.i.i.i235 = phi ptr [ %i.ju, %.noexc237 ], [ %i.jy, %.lr.ph.i.i.i.i.i231 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0354.2, i64 noundef %i.jo) #21
  %i.jz = getelementptr inbounds nuw [12 x i8], ptr %i.ju, i64 %18
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.df
  %.sroa.35.8 = phi ptr [ %i.jz, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.35.2, %bb.df ] ; 2 uses
  %.0.lcssa.i.i.i.i.i235.pn = phi ptr [ %.0.lcssa.i.i.i.i.i235, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.20368.1, %bb.df ] ; 4 uses
  %.sroa.0354.8 = phi ptr [ %i.ju, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0354.2, %bb.df ] ; 2 uses
  %.sroa.20368.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 12
  %i.ka = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i224, ptr noundef nonnull align 4 dereferenceable(4) %.0.lcssa.i.i.i.i.i235.pn, i1 noundef zeroext true)
          to label %bb.di unwind label %bb.dr     ; 3 uses

bb.di:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = sub i64 %i.p, %i.kb
  %scevgep.i.i238 = getelementptr i8, ptr %i.ka, i64 %i.kc
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dl, %bb.di
  %.0.i.i239 = phi ptr [ %i.ka, %bb.di ], [ %i.ke, %bb.dl ] ; 4 uses
  %i.kd = load i8, ptr %.0.i.i239, align 1
  switch i8 %i.kd, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243 [
    i8 32, label %bb.dk
    i8 9, label %bb.dk
  ]

bb.dk:                                            ; preds = %bb.dj, %bb.dj
  %.not.i.i240 = icmp eq ptr %.0.i.i239, %i.h
  br i1 %.not.i.i240, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i.i239, i64 1
  br label %bb.dj, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243:      ; preds = %bb.dj, %bb.dk
  %.0.lcssa.i.i242 = phi ptr [ %.0.i.i239, %bb.dj ], [ %scevgep.i.i238, %bb.dk ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 4
  %i.kg = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i242, ptr noundef nonnull align 4 dereferenceable(4) %i.kf, i1 noundef zeroext true)
          to label %bb.dm unwind label %bb.dr     ; 3 uses

bb.dm:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = sub i64 %i.p, %i.kh
  %scevgep.i.i244 = getelementptr i8, ptr %i.kg, i64 %i.ki
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %bb.dm
  %.0.i.i245 = phi ptr [ %i.kg, %bb.dm ], [ %i.kk, %bb.dp ] ; 4 uses
  %i.kj = load i8, ptr %.0.i.i245, align 1
  switch i8 %i.kj, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249 [
    i8 32, label %bb.do
    i8 9, label %bb.do
  ]

bb.do:                                            ; preds = %bb.dn, %bb.dn
  %.not.i.i246 = icmp eq ptr %.0.i.i245, %i.h
  br i1 %.not.i.i246, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i.i245, i64 1
  br label %bb.dn, !llvm.loop !8

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249:      ; preds = %bb.dn, %bb.do
  %.0.lcssa.i.i248 = phi ptr [ %.0.i.i245, %bb.dn ], [ %scevgep.i.i244, %bb.do ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235.pn, i64 8
  %i.km = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i248, ptr noundef nonnull align 4 dereferenceable(4) %i.kl, i1 noundef zeroext true)
          to label %bb.dq unwind label %bb.dr

bb.dq:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249
  %i.kn = add nuw nsw i32 %.060, 1
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread

bb.dr:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit249, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit243, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219:      ; preds = %bb.ct, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit157
  %i.kp = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.i156, ptr noundef nonnull dereferenceable(9) @.str.21, i64 noundef 8) #24
  %.not80 = icmp eq i32 %i.kp, 0
  br i1 %.not80, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.3 = phi ptr [ %i.kq, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.0.lcssa.i.i156, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219 ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 5 uses
  %i.kr = load i8, ptr %i.kq, align 1             ; 2 uses
  switch i8 %i.kr, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %bb.ds
    i8 10, label %bb.ds
    i8 0, label %bb.ds
    i8 12, label %bb.ds
  ], !llvm.loop !35

bb.ds:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.p, %i.ks
  %scevgep.i.i250 = getelementptr i8, ptr %i.kq, i64 %i.kt
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dv, %bb.ds
  %i.ku = phi i8 [ %i.kr, %bb.ds ], [ %.pre1727, %bb.dv ]
  %.0.i.i251 = phi ptr [ %i.kq, %bb.ds ], [ %i.kv, %bb.dv ] ; 3 uses
  switch i8 %i.ku, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254 [
    i8 32, label %bb.du
    i8 9, label %bb.du
    i8 13, label %bb.du
    i8 10, label %bb.du
  ]

bb.du:                                            ; preds = %bb.dt, %bb.dt, %bb.dt, %bb.dt
  %.not.i.i252 = icmp eq ptr %.0.i.i251, %i.h
  br i1 %.not.i.i252, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.i.i251, i64 1 ; 2 uses
  %.pre1727 = load i8, ptr %i.kv, align 1
  br label %bb.dt, !llvm.loop !16

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255:      ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255
  %.4 = phi ptr [ %i.kw, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.0.lcssa.i.i156, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit219 ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 8 uses
  %i.kx = load i8, ptr %i.kw, align 1
  switch i8 %i.kx, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 [
    i8 32, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
    i8 9, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
    i8 13, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
    i8 10, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
    i8 0, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
    i8 12, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread
  ], !llvm.loop !36

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255.thread: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255, %bb.dq, %bb.cx, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218, %bb.bs
  %.sroa.35.3 = phi ptr [ %.sroa.35.2, %bb.cx ], [ %.sroa.35.8, %bb.dq ], [ %.sroa.35.2, %bb.bs ], [ %.sroa.35.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.35.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.0328.4 = phi ptr [ %.sroa.0328.2, %bb.cx ], [ %.sroa.0328.2, %bb.dq ], [ %.sroa.0328.2, %bb.bs ], [ %.sroa.0328.11, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0328.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.20.2 = phi ptr [ %.sroa.20.1, %bb.cx ], [ %.sroa.20.1, %bb.dq ], [ %.sroa.20.1, %bb.bs ], [ %.sroa.20.7, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.38.4 = phi ptr [ %.sroa.38.2, %bb.cx ], [ %.sroa.38.2, %bb.dq ], [ %.sroa.38.2, %bb.bs ], [ %.sroa.38.11, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.38.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.20368.2 = phi ptr [ %.sroa.20368.1, %bb.cx ], [ %.sroa.20368.5, %bb.dq ], [ %.sroa.20368.1, %bb.bs ], [ %.sroa.20368.1, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.20368.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.sroa.0354.3 = phi ptr [ %.sroa.0354.2, %bb.cx ], [ %.sroa.0354.8, %bb.dq ], [ %.sroa.0354.2, %bb.bs ], [ %.sroa.0354.2, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.sroa.0354.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.5 = phi ptr [ %i.jc, %bb.cx ], [ %i.km, %bb.dq ], [ %.0.lcssa.i.i162, %bb.bs ], [ %i.gv, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %i.kw, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.kw, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.kw, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.kw, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.kw, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %i.kw, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  %.161 = phi i32 [ 3, %bb.cx ], [ %i.kn, %bb.dq ], [ 0, %bb.bs ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit218 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ], [ %.060, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit255 ]
  br label %bb.bc, !llvm.loop !37

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254: ; preds = %bb.du, %bb.dt, %bb.bh
  %.6 = phi ptr [ %.0.lcssa.i.i156, %bb.bh ], [ %scevgep.i.i250, %bb.du ], [ %.0.i.i251, %bb.dt ]
  %i.ky = icmp eq ptr %.sroa.0354.2, %.sroa.20368.1 ; 2 uses
  br i1 %i.ky, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254
  store i32 0, ptr %i.au, align 8
  %i.kz = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.kz, ptr noundef nonnull @.str.22)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dy:                                            ; preds = %bb.dx, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit254
  %i.la = ptrtoint ptr %.sroa.20368.1 to i64
  %i.lb = ptrtoint ptr %.sroa.0354.2 to i64
  %i.lc = sub i64 %i.la, %i.lb                    ; 2 uses
  %i.ld = sdiv exact i64 %i.lc, 12                ; 4 uses
  %i.le = urem i64 %i.ld, 3
  %i.lf = udiv i64 %i.ld, 3
  %.not81 = icmp eq i64 %i.le, 0
  br i1 %.not81, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store i32 0, ptr %i.au, align 8
  %i.lg = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull @.str.23)
          to label %.invoke unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lg) #20
  br label %.thread

bb.eb:                                            ; preds = %bb.dy
  %i.li = ptrtoint ptr %.sroa.20.1 to i64
  %i.lj = ptrtoint ptr %.sroa.0328.2 to i64
  %i.lk = sub i64 %i.li, %i.lj
  %.not82 = icmp eq i64 %i.lk, %i.lc
  br i1 %.not82, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i32 0, ptr %i.au, align 8
  %i.ll = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull @.str.24)
          to label %.invoke unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ll) #20
  br label %.thread

bb.ee:                                            ; preds = %bb.eb
  br i1 %i.ky, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE5clearEv.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ln = trunc i64 %i.lf to i32
end_hunk_1
