Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ACLoader?download=true
inline.NumInlined: 1444
inline.NumDeleted: 683
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6Assimp12AC3DImporter20ConvertObjectSectionERNS0_6ObjectERSt6vectorIP6aiMeshSaIS5_EERS3_IP10aiMaterialSaISA_EERKS3_INS0_8MaterialESaISE_EEP6aiNode:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  store ptr null, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store i32 0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  store ptr null, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  store i32 0, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 120
  store ptr null, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 128 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bk
  br i1 %i.ci, label %.loopexit617, label %.new945

.loopexit617:                                     ; preds = %.prol.loopexit944, %.new945, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  store ptr %i.bi, ptr %i.cj, align 8
  %i.ck = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = mul nuw nsw i64 %i.cl, 12               ; 2 uses
  %i.cn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #27 ; 3 uses
  %i.co = icmp eq i32 %i.ck, 0
  br i1 %i.co, label %.loopexit616, label %.loopexit616.loopexit

.loopexit616.loopexit:                            ; preds = %.loopexit617
  %i.cp = add nsw i64 %i.cm, -12                  ; 2 uses
  %i.cq = urem i64 %i.cp, 12
  %i.cr = sub nuw nsw i64 %i.cp, %i.cq
  %i.cs = add nsw i64 %i.cr, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cn, i8 0, i64 %i.cs, i1 false)
  br label %.loopexit616

.loopexit616:                                     ; preds = %.loopexit616.loopexit, %.loopexit617
  %i.ct = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.cn, ptr %i.ct, align 8
  %i.cu = load i32, ptr %i.bc, align 4
  %.not750 = icmp eq i32 %i.cu, 0
  br i1 %.not750, label %._crit_edge743, label %.lr.ph742

._crit_edge743:                                   ; preds = %.lr.ph742, %.loopexit616
  %i.cv = getelementptr inbounds nuw i8, ptr %i.au, i64 232
  store i32 0, ptr %i.cv, align 8
  %i.cw = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27 ; 4 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.cw)
          to label %bb.m unwind label %bb.s

bb.l:                                             ; preds = %bb.a
  %i.cx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1144) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit415

.lr.ph742:                                        ; preds = %.loopexit616, %.lr.ph742
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %.lr.ph742 ], [ 0, %.loopexit616 ] ; 3 uses
  %.0257740 = phi ptr [ %i.dd, %.lr.ph742 ], [ %i.bi, %.loopexit616 ] ; 3 uses
  %.0260739 = phi ptr [ %i.de, %.lr.ph742 ], [ %i.cn, %.loopexit616 ] ; 2 uses
  %i.cy = load ptr, ptr %i.c, align 8
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %indvars.iv786
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0260739, ptr noundef nonnull align 4 dereferenceable(12) %i.cz, i64 12, i1 false)
  store i32 1, ptr %.0257740, align 8
  %i.da = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #27 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0257740, i64 8
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = trunc nuw i64 %indvars.iv786 to i32
  store i32 %i.dc, ptr %i.da, align 4
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0257740, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.0260739, i64 12
  %i.df = load i32, ptr %i.bc, align 4
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv.next787, %i.dg
  br i1 %i.dh, label %.lr.ph742, label %._crit_edge743, !llvm.loop !53

bb.m:                                             ; preds = %._crit_edge743
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dj = load ptr, ptr %i.di, align 8            ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %.not.i.i338 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not.i.i338, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.cw, ptr %i.dj, align 8
  %i.dm = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dn, ptr %i.di, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backEOS1_.exit

bb.o:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %3, align 8               ; 4 uses
  %i.dp = ptrtoint ptr %i.dj to i64
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq                    ; 5 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775800
  br i1 %i.ds, label %bb.p, label %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #28
  unreachable

_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.dt = ashr exact i64 %i.dr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i339 = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i.i339, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.du, i64 1152921504606846975)
  %i.dx = select i1 %i.dv, i64 1152921504606846975, i64 %i.dw ; 3 uses
  %.not.i.i.i.i340 = icmp ne i64 %i.dx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i340)
  %i.dy = shl nuw nsw i64 %i.dx, 3
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #27 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dr ; 3 uses
  store ptr %i.cw, ptr %i.ea, align 8
  %i.eb = icmp sgt i64 %i.dr, 0
  br i1 %i.eb, label %bb.q, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr align 8 %i.do, i64 %i.dr, i1 false)
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.not.i17.i.i.i341 = icmp eq ptr %i.do, null
  br i1 %.not.i17.i.i.i341, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ed = load ptr, ptr %i.dk, align 8
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ef) #29
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.dz, ptr %3, align 8
  store ptr %i.ec, ptr %i.di, align 8
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.eg, ptr %i.dk, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.n, %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.eh = phi ptr [ %i.dm, %bb.n ], [ %i.ea, %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ei = load ptr, ptr %4, align 8
  %i.ej = load ptr, ptr %i.eh, align 8
  tail call void @_ZN6Assimp12AC3DImporter15ConvertMaterialERKNS0_6ObjectERKNS0_8MaterialER10aiMaterial(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(212) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.ej)
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

bb.s:                                             ; preds = %._crit_edge743
  %i.ek = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 16) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit415

bb.t:                                             ; preds = %bb.d
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.en = load ptr, ptr %4, align 8               ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = sdiv exact i64 %i.eq, 88                ; 3 uses
  %i.es = icmp ugt i64 %i.er, 1152921504606846975
  br i1 %i.es, label %.noexc, label %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #28
  unreachable

_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.t
  %.not.i.i.i.i342 = icmp eq ptr %i.em, %i.en
  br i1 %.not.i.i.i.i342, label %_ZNSt6vectorISt4pairIjjESaIS1_EEC2EmRKS1_RKS2_.exit, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.et = shl nuw nsw i64 %i.er, 3                ; 3 uses
  %i.eu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #27 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.eu, i8 0, i64 %i.et, i1 false)
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.er
  %scevgep = getelementptr i8, ptr %i.eu, i64 %i.et
  %.pre = load ptr, ptr %i.h, align 8
  %.pre792 = load ptr, ptr %i.g, align 8
  %i.ew = ptrtoint ptr %i.ev to i64
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EEC2EmRKS1_RKS2_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EEC2EmRKS1_RKS2_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ex = phi ptr [ %i.j, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.pre792, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %i.ey = phi ptr [ %i.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.pre, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ] ; 4 uses
  %.sroa.24.0 = phi i64 [ 0, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ew, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.sroa.0557.0 = phi ptr [ null, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.eu, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %scevgep, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ] ; 3 uses
  %.not611688 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not611688, label %._crit_edge691, label %.lr.ph690

.lr.ph690:                                        ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEC2EmRKS1_RKS2_.exit
  %i.ez = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i to i64
  %i.fa = ptrtoint ptr %.sroa.0557.0 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 1120 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph690, %bb.an
  %.sroa.0526.0689 = phi ptr [ %i.ex, %.lr.ph690 ], [ %i.ji, %bb.an ] ; 5 uses
  %i.fe = load i32, ptr %.sroa.0526.0689, align 8 ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  %.not325 = icmp ugt i64 %i.fc, %i.ff
  br i1 %.not325, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fg, ptr noundef nonnull @.str.41)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %8, %6, %bb.w, %bb.v
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.y:                                             ; preds = %bb.w, %bb.u
  %.0262 = phi i32 [ %i.fe, %bb.u ], [ 0, %bb.w ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0526.0689, i64 8 ; 9 uses
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0526.0689, i64 16 ; 9 uses
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %i.fm = icmp eq ptr %i.fj, %i.fl
  br i1 %i.fm, label %6, label %bb.z

6:                                                ; preds = %bb.y
  %7 = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %8 unwind label %bb.x

8:                                                ; preds = %6
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull @.str.42)
          to label %._crit_edge793 unwind label %bb.x

._crit_edge793:                                   ; preds = %8
  %.pre794 = load ptr, ptr %i.fi, align 8
  %.pre795 = load ptr, ptr %i.fk, align 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge793, %bb.y
  %9 = phi ptr [ %.pre795, %._crit_edge793 ], [ %i.fl, %bb.y ] ; 2 uses
  %10 = phi ptr [ %.pre794, %._crit_edge793 ], [ %i.fj, %bb.y ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0526.0689, i64 4 ; 5 uses
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = and i32 %i.fo, 32                       ; 3 uses
  %.not326.not.not.not = icmp eq i32 %i.fp, 0
  %i.fq = select i1 %.not326.not.not.not, i32 1, i32 2
  %.not615686 = icmp eq ptr %10, %9
  br i1 %.not615686, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.ad
  %.sroa.0512.0687 = phi ptr [ %i.ga, %bb.ad ], [ %10, %bb.z ] ; 3 uses
  %i.fr = load i32, ptr %.sroa.0512.0687, align 4
  %i.fs = zext i32 %i.fr to i64
  %i.ft = load ptr, ptr %i.d, align 8
  %i.fu = load ptr, ptr %i.c, align 8
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = sdiv exact i64 %i.fx, 12
  %.not331 = icmp ugt i64 %i.fy, %i.fs
  br i1 %.not331, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %i.fz = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ab unwind label %.loopexit643

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fz, ptr noundef nonnull @.str.43)
          to label %bb.ac unwind label %.loopexit643

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %.sroa.0512.0687, align 4
  br label %bb.ad

.loopexit643:                                     ; preds = %bb.aa, %bb.ab
  %lpad.loopexit645 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412.thread: ; preds = %bb.ak, %bb.aj
  %lpad.loopexit.split-lp646 = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ad:                                            ; preds = %.lr.ph, %bb.ac
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0512.0687, i64 12 ; 2 uses
  %.not615 = icmp eq ptr %i.ga, %9
  br i1 %.not615, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.ad, %bb.z
  %i.gb = zext i32 %.0262 to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0557.0, i64 %i.gb ; 10 uses
  %i.gd = load i32, ptr %i.gc, align 4            ; 5 uses
  %.not327 = icmp eq i32 %i.gd, 0
  br i1 %.not327, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge
  %i.ge = load i32, ptr %i.fd, align 8
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.fd, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge
  %i.gg = load i32, ptr %i.fn, align 4
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = and i8 %i.gh, 15
  switch i8 %i.gi, label %bb.aj [
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 4, label %bb.ai
    i8 0, label %bb.am
  ]

bb.ag:                                            ; preds = %bb.af
  %i.gj = load ptr, ptr %i.fk, align 8
  %i.gk = load ptr, ptr %i.fi, align 8
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = sdiv exact i64 %i.gn, 12
  %i.gp = trunc i64 %i.go to i32
  %i.gq = add i32 %i.gd, %i.gp
  store i32 %i.gq, ptr %i.gc, align 4
  %i.gr = load ptr, ptr %i.fk, align 8
  %i.gs = load ptr, ptr %i.fi, align 8
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = sdiv exact i64 %i.gv, 12
  %.tr329 = trunc i64 %i.gw to i32
  %i.gx = shl i32 %.tr329, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = add i32 %i.gx, %i.gz
  store i32 %i.ha, ptr %i.gy, align 4
  br label %bb.an

bb.ah:                                            ; preds = %bb.af
  %i.hb = load ptr, ptr %i.fk, align 8
  %i.hc = load ptr, ptr %i.fi, align 8
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = sdiv exact i64 %i.hf, 12
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = add i32 %i.gd, -1
  %i.hj = add i32 %i.hi, %i.hh
  store i32 %i.hj, ptr %i.gc, align 4
  %i.hk = load ptr, ptr %i.fk, align 8
  %i.hl = load ptr, ptr %i.fi, align 8
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = sdiv exact i64 %i.ho, 12
  %.tr = trunc i64 %i.hp to i32
  %i.hq = shl i32 %.tr, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = add i32 %i.hs, -2
  %i.hu = add i32 %i.ht, %i.hq
  store i32 %i.hu, ptr %i.hr, align 4
  br label %bb.an

bb.ai:                                            ; preds = %bb.af
  %i.hv = load ptr, ptr %i.fk, align 8
  %i.hw = load ptr, ptr %i.fi, align 8
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = sdiv exact i64 %i.hz, 12
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = add i32 %i.ib, -2
  %.lobit = lshr exact i32 %i.fp, 5               ; 2 uses
  %i.id = shl i32 %i.ic, %.lobit
  %i.ie = add i32 %i.id, %i.gd
  store i32 %i.ie, ptr %i.gc, align 4
  %i.if = load ptr, ptr %i.fk, align 8
  %i.ig = load ptr, ptr %i.fi, align 8
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = sdiv exact i64 %i.ij, 12
  %i.il = trunc i64 %i.ik to i32
  %i.im = mul i32 %i.il, 3
  %i.in = add i32 %i.im, -6
  %i.io = shl i32 %i.in, %.lobit
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = add i32 %i.io, %i.iq
  store i32 %i.ir, ptr %i.ip, align 4
  br label %bb.an

bb.aj:                                            ; preds = %bb.af
  %i.is = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ak unwind label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412.thread

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN6Assimp6Logger4warnIJRA46_KcRjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.is, ptr noundef nonnull align 1 dereferenceable(46) @.str.44, ptr noundef nonnull align 4 dereferenceable(4) %i.fn)
          to label %bb.al unwind label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412.thread

bb.al:                                            ; preds = %bb.ak
  %i.it = load i32, ptr %i.fn, align 4
  %i.iu = and i32 %i.it, -16
  store i32 %i.iu, ptr %i.fn, align 4
  %.pre796 = load i32, ptr %i.gc, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.af
  %i.iv = phi i32 [ %.pre796, %bb.al ], [ %i.gd, %bb.af ]
  %i.iw = add i32 %i.iv, %i.fq
  store i32 %i.iw, ptr %i.gc, align 4
  %i.ix = load ptr, ptr %i.fk, align 8
  %i.iy = load ptr, ptr %i.fi, align 8
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = sdiv exact i64 %i.jb, 12
  %i.jd = trunc i64 %i.jc to i32
  %.lobit330 = lshr exact i32 %i.fp, 5
  %i.je = shl i32 %i.jd, %.lobit330
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = add i32 %i.je, %i.jg
  store i32 %i.jh, ptr %i.jf, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai, %bb.ah, %bb.ag
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0526.0689, i64 32 ; 2 uses
  %.not611 = icmp eq ptr %i.ji, %i.ey
  br i1 %.not611, label %._crit_edge691, label %bb.u, !llvm.loop !55

._crit_edge691:                                   ; preds = %bb.an, %_ZNSt6vectorISt4pairIjjESaIS1_EEC2EmRKS1_RKS2_.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %i.jk = load i32, ptr %i.jj, align 8
  %i.jl = zext i32 %i.jk to i64
  %i.jm = shl nuw nsw i64 %i.jl, 2
  %i.jn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jm) #27
          to label %bb.ao unwind label %bb.ap     ; 2 uses

bb.ao:                                            ; preds = %._crit_edge691
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  store ptr %i.jn, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = load ptr, ptr %2, align 8
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.js, %i.jt                    ; 3 uses
  %i.jv = ashr exact i64 %i.ju, 3                 ; 2 uses
  %.not612731 = icmp eq ptr %.sroa.0557.0, %.0.lcssa.i.i.i.i.i.i
  br i1 %.not612731, label %._crit_edge737, label %.lr.ph736

.lr.ph736:                                        ; preds = %bb.ao
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 5 uses
  br label %bb.aq

._crit_edge737:                                   ; preds = %.loopexit626, %bb.ao
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4
  %.not285 = icmp eq i32 %i.ke, 0
  br i1 %.not285, label %bb.eq, label %bb.eb

bb.ap:                                            ; preds = %._crit_edge691
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.aq:                                            ; preds = %.lr.ph736, %.loopexit626
  %.0263734 = phi ptr [ %i.jn, %.lr.ph736 ], [ %.1264, %.loopexit626 ] ; 3 uses
  %.0265733 = phi i32 [ 0, %.lr.ph736 ], [ %i.abz, %.loopexit626 ] ; 3 uses
  %.sroa.0506.0732 = phi ptr [ %.sroa.0557.0, %.lr.ph736 ], [ %i.aby, %.loopexit626 ] ; 4 uses
  %i.kg = load i32, ptr %.sroa.0506.0732, align 4
  %.not293 = icmp eq i32 %i.kg, 0
  br i1 %.not293, label %.loopexit626, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kh = load ptr, ptr %i.jp, align 8
  %i.ki = load ptr, ptr %2, align 8
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = lshr exact i64 %i.kl, 3
  %i.kn = trunc i64 %i.km to i32
  %i.ko = getelementptr inbounds nuw i8, ptr %.0263734, i64 4 ; 2 uses
  store i32 %i.kn, ptr %.0263734, align 4
  %i.kp = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #27
          to label %bb.as unwind label %.loopexit628 ; 14 uses

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4 ; 5 uses
  store i32 0, ptr %i.kq, align 4
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  store i32 0, ptr %i.kr, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 6 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 224
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 1272
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 1312
  store ptr null, ptr %i.kv, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.ks, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.kt, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ku, i8 0, i64 36, i1 false)
  %i.kw = load ptr, ptr %i.jp, align 8            ; 3 uses
  %i.kx = load ptr, ptr %i.jw, align 8
  %.not.i = icmp eq ptr %i.kw, %i.kx
  br i1 %.not.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.kp, ptr %i.kw, align 8
  %i.ky = load ptr, ptr %i.jp, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store ptr %i.kz, ptr %i.jp, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.au:                                            ; preds = %bb.as
  %i.la = load ptr, ptr %2, align 8               ; 4 uses
  %i.lb = ptrtoint ptr %i.kw to i64
  %i.lc = ptrtoint ptr %i.la to i64               ; 2 uses
  %i.ld = sub i64 %i.lb, %i.lc                    ; 5 uses
  %i.le = icmp eq i64 %i.ld, 9223372036854775800
  br i1 %i.le, label %bb.av, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #28
          to label %.noexc344 unwind label %.loopexit.split-lp629

.noexc344:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.au
  %i.lf = ashr exact i64 %i.ld, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.lf, i64 1)
  %i.lg = add nsw i64 %.sroa.speculated.i.i.i, %i.lf ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %i.lf
  %i.li = tail call i64 @llvm.umin.i64(i64 %i.lg, i64 1152921504606846975)
  %i.lj = select i1 %i.lh, i64 1152921504606846975, i64 %i.li ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.lj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.lk = shl nuw nsw i64 %i.lj, 3
  %i.ll = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #27
          to label %.noexc345 unwind label %.loopexit628 ; 4 uses

.noexc345:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 %i.ld ; 2 uses
  store ptr %i.kp, ptr %i.lm, align 8
  %i.ln = icmp sgt i64 %i.ld, 0
  br i1 %i.ln, label %bb.aw, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.aw:                                            ; preds = %.noexc345
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ll, ptr align 8 %i.la, i64 %i.ld, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.aw, %.noexc345
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.not.i17.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.lp = load ptr, ptr %i.jw, align 8
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = sub i64 %i.lq, %i.lc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.lr) #29
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ax, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ll, ptr %2, align 8
  store ptr %i.lo, ptr %i.jp, align 8
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.lj
  store ptr %i.ls, ptr %i.jw, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.at
  %i.lt = load ptr, ptr %i.jx, align 8
  %i.lu = load ptr, ptr %3, align 8
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = sub i64 %i.lv, %i.lw
  %i.ly = lshr exact i64 %i.lx, 3
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kp, i64 232
  store i32 %i.lz, ptr %i.ma, align 8
  %i.mb = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %bb.ay unwind label %.loopexit633 ; 4 uses

bb.ay:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.mb)
          to label %bb.az unwind label %bb.bh

bb.az:                                            ; preds = %bb.ay
  %i.mc = load ptr, ptr %i.jx, align 8            ; 3 uses
  %i.md = load ptr, ptr %i.jy, align 8
  %.not.i.i346 = icmp eq ptr %i.mc, %i.md
  br i1 %.not.i.i346, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %i.mb, ptr %i.mc, align 8
  %i.me = load ptr, ptr %i.jx, align 8            ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store ptr %i.mf, ptr %i.jx, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backEOS1_.exit355

bb.bb:                                            ; preds = %bb.az
  %i.mg = load ptr, ptr %3, align 8               ; 4 uses
  %i.mh = ptrtoint ptr %i.mc to i64
  %i.mi = ptrtoint ptr %i.mg to i64               ; 2 uses
  %i.mj = sub i64 %i.mh, %i.mi                    ; 5 uses
  %i.mk = icmp eq i64 %i.mj, 9223372036854775800
  br i1 %i.mk, label %bb.bc, label %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i347

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #28
          to label %.noexc353 unwind label %.loopexit.split-lp634

end_hunk_0
