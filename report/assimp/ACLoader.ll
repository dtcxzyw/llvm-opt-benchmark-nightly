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
  br i1 %i.ci, label %.loopexit617, label %.new952

.loopexit617:                                     ; preds = %.prol.loopexit951, %.new952, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit
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
  %.not735 = icmp eq i32 %i.cu, 0
  br i1 %.not735, label %._crit_edge728, label %.lr.ph727

._crit_edge728:                                   ; preds = %.lr.ph727, %.loopexit616
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

.lr.ph727:                                        ; preds = %.loopexit616, %.lr.ph727
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %.lr.ph727 ], [ 0, %.loopexit616 ] ; 3 uses
  %.0257725 = phi ptr [ %i.dd, %.lr.ph727 ], [ %i.bi, %.loopexit616 ] ; 3 uses
  %.0260724 = phi ptr [ %i.de, %.lr.ph727 ], [ %i.cn, %.loopexit616 ] ; 2 uses
  %i.cy = load ptr, ptr %i.c, align 8
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %indvars.iv781
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.0260724, ptr noundef nonnull align 4 dereferenceable(12) %i.cz, i64 12, i1 false)
  store i32 1, ptr %.0257725, align 8
  %i.da = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #27 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0257725, i64 8
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = trunc nuw i64 %indvars.iv781 to i32
  store i32 %i.dc, ptr %i.da, align 4
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0257725, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.0260724, i64 12
  %i.df = load i32, ptr %i.bc, align 4
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv.next782, %i.dg
  br i1 %i.dh, label %.lr.ph727, label %._crit_edge728, !llvm.loop !53

bb.m:                                             ; preds = %._crit_edge728
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

bb.s:                                             ; preds = %._crit_edge728
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
  %.pre787 = load ptr, ptr %i.g, align 8
  %i.ew = ptrtoint ptr %i.ev to i64
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EEC2EmRKS1_RKS2_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EEC2EmRKS1_RKS2_.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ex = phi ptr [ %i.j, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.pre787, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %i.ey = phi ptr [ %i.i, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %.pre, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ] ; 4 uses
  %.sroa.24.0 = phi i64 [ 0, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ew, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.sroa.0557.0 = phi ptr [ null, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.eu, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ] ; 10 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIjjESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %scevgep, %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EEC2EmRKS2_.exit.i ] ; 3 uses
  %.not611673 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not611673, label %._crit_edge676, label %.lr.ph675

.lr.ph675:                                        ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EEC2EmRKS1_RKS2_.exit
  %i.ez = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i to i64
  %i.fa = ptrtoint ptr %.sroa.0557.0 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 1120 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph675, %bb.am
  %.sroa.0526.0674 = phi ptr [ %i.ex, %.lr.ph675 ], [ %i.jh, %bb.am ] ; 5 uses
  %i.fe = load i32, ptr %.sroa.0526.0674, align 8 ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  %.not325 = icmp ugt i64 %i.fc, %i.ff
  br i1 %.not325, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fg, ptr noundef nonnull @.str.41)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w, %bb.u
  %.0262 = phi i32 [ %i.fe, %bb.u ], [ 0, %bb.w ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0526.0674, i64 8 ; 9 uses
  %i.fi = load ptr, ptr %i.fh, align 8            ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0526.0674, i64 16 ; 9 uses
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = icmp eq ptr %i.fi, %i.fk
  br i1 %i.fl, label %6, label %bb.y

6:                                                ; preds = %bb.x
  %7 = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

8:                                                ; preds = %6
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull @.str.42)
          to label %._crit_edge788 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge788:                                   ; preds = %8
  %.pre789 = load ptr, ptr %i.fh, align 8
  %.pre790 = load ptr, ptr %i.fj, align 8
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge788, %bb.x
  %9 = phi ptr [ %.pre790, %._crit_edge788 ], [ %i.fk, %bb.x ] ; 2 uses
  %10 = phi ptr [ %.pre789, %._crit_edge788 ], [ %i.fi, %bb.x ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0526.0674, i64 4 ; 5 uses
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = and i32 %i.fn, 32                       ; 3 uses
  %.not326.not.not.not = icmp eq i32 %i.fo, 0
  %i.fp = select i1 %.not326.not.not.not, i32 1, i32 2
  %.not615671 = icmp eq ptr %10, %9
  br i1 %.not615671, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y, %bb.ac
  %.sroa.0512.0672 = phi ptr [ %i.fz, %bb.ac ], [ %10, %bb.y ] ; 3 uses
  %i.fq = load i32, ptr %.sroa.0512.0672, align 4
  %i.fr = zext i32 %i.fq to i64
  %i.fs = load ptr, ptr %i.d, align 8
  %i.ft = load ptr, ptr %i.c, align 8
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 12
  %.not331 = icmp ugt i64 %i.fx, %i.fr
  br i1 %.not331, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.fy = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fy, ptr noundef nonnull @.str.43)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %.sroa.0512.0672, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ab
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0512.0672, i64 12 ; 2 uses
  %.not615 = icmp eq ptr %i.fz, %9
  br i1 %.not615, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.ac, %bb.y
  %i.ga = zext i32 %.0262 to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0557.0, i64 %i.ga ; 10 uses
  %i.gc = load i32, ptr %i.gb, align 4            ; 5 uses
  %.not327 = icmp eq i32 %i.gc, 0
  br i1 %.not327, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge
  %i.gd = load i32, ptr %i.fd, align 8
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr %i.fd, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge
  %i.gf = load i32, ptr %i.fm, align 4
  %i.gg = trunc i32 %i.gf to i8
  %i.gh = and i8 %i.gg, 15
  switch i8 %i.gh, label %bb.ai [
    i8 1, label %bb.af
    i8 2, label %bb.ag
    i8 4, label %bb.ah
    i8 0, label %bb.al
  ]

bb.af:                                            ; preds = %bb.ae
  %i.gi = load ptr, ptr %i.fj, align 8
  %i.gj = load ptr, ptr %i.fh, align 8
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = sdiv exact i64 %i.gm, 12
  %i.go = trunc i64 %i.gn to i32
  %i.gp = add i32 %i.gc, %i.go
  store i32 %i.gp, ptr %i.gb, align 4
  %i.gq = load ptr, ptr %i.fj, align 8
  %i.gr = load ptr, ptr %i.fh, align 8
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = sdiv exact i64 %i.gu, 12
  %.tr329 = trunc i64 %i.gv to i32
  %i.gw = shl i32 %.tr329, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = add i32 %i.gw, %i.gy
  store i32 %i.gz, ptr %i.gx, align 4
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  %i.ha = load ptr, ptr %i.fj, align 8
  %i.hb = load ptr, ptr %i.fh, align 8
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = sdiv exact i64 %i.he, 12
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = add i32 %i.gc, -1
  %i.hi = add i32 %i.hh, %i.hg
  store i32 %i.hi, ptr %i.gb, align 4
  %i.hj = load ptr, ptr %i.fj, align 8
  %i.hk = load ptr, ptr %i.fh, align 8
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = sdiv exact i64 %i.hn, 12
  %.tr = trunc i64 %i.ho to i32
  %i.hp = shl i32 %.tr, 1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = add i32 %i.hr, -2
  %i.ht = add i32 %i.hs, %i.hp
  store i32 %i.ht, ptr %i.hq, align 4
  br label %bb.am

bb.ah:                                            ; preds = %bb.ae
  %i.hu = load ptr, ptr %i.fj, align 8
  %i.hv = load ptr, ptr %i.fh, align 8
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = sdiv exact i64 %i.hy, 12
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = add i32 %i.ia, -2
  %.lobit = lshr exact i32 %i.fo, 5               ; 2 uses
  %i.ic = shl i32 %i.ib, %.lobit
  %i.id = add i32 %i.ic, %i.gc
  store i32 %i.id, ptr %i.gb, align 4
  %i.ie = load ptr, ptr %i.fj, align 8
  %i.if = load ptr, ptr %i.fh, align 8
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = sdiv exact i64 %i.ii, 12
  %i.ik = trunc i64 %i.ij to i32
  %i.il = mul i32 %i.ik, 3
  %i.im = add i32 %i.il, -6
  %i.in = shl i32 %i.im, %.lobit
  %i.io = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = add i32 %i.in, %i.ip
  store i32 %i.iq, ptr %i.io, align 4
  br label %bb.am

bb.ai:                                            ; preds = %bb.ae
  %i.ir = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN6Assimp6Logger4warnIJRA46_KcRjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ir, ptr noundef nonnull align 1 dereferenceable(46) @.str.44, ptr noundef nonnull align 4 dereferenceable(4) %i.fm)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.is = load i32, ptr %i.fm, align 4
  %i.it = and i32 %i.is, -16
  store i32 %i.it, ptr %i.fm, align 4
  %.pre791 = load i32, ptr %i.gb, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ae
  %i.iu = phi i32 [ %.pre791, %bb.ak ], [ %i.gc, %bb.ae ]
  %i.iv = add i32 %i.iu, %i.fp
  store i32 %i.iv, ptr %i.gb, align 4
  %i.iw = load ptr, ptr %i.fj, align 8
  %i.ix = load ptr, ptr %i.fh, align 8
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = sdiv exact i64 %i.ja, 12
  %i.jc = trunc i64 %i.jb to i32
  %.lobit330 = lshr exact i32 %i.fo, 5
  %i.jd = shl i32 %i.jc, %.lobit330
  %i.je = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4
  %i.jg = add i32 %i.jd, %i.jf
  store i32 %i.jg, ptr %i.je, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ah, %bb.ag, %bb.af
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0526.0674, i64 32 ; 2 uses
  %.not611 = icmp eq ptr %i.jh, %i.ey
  br i1 %.not611, label %._crit_edge676, label %bb.u, !llvm.loop !55

._crit_edge676:                                   ; preds = %bb.am, %_ZNSt6vectorISt4pairIjjESaIS1_EEC2EmRKS1_RKS2_.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %i.jj = load i32, ptr %i.ji, align 8
  %i.jk = zext i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 2
  %i.jm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jl) #27
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.an:                                            ; preds = %._crit_edge676
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  store ptr %i.jm, ptr %i.jn, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = load ptr, ptr %2, align 8
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js                    ; 3 uses
  %i.ju = ashr exact i64 %i.jt, 3                 ; 2 uses
  %.not612716 = icmp eq ptr %.sroa.0557.0, %.0.lcssa.i.i.i.i.i.i
  br i1 %.not612716, label %._crit_edge722, label %.lr.ph721

.lr.ph721:                                        ; preds = %bb.an
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 5 uses
  br label %bb.ao

._crit_edge722:                                   ; preds = %.loopexit624, %bb.an
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4
  %.not285 = icmp eq i32 %i.kd, 0
  br i1 %.not285, label %bb.eb, label %bb.dq

bb.ao:                                            ; preds = %.lr.ph721, %.loopexit624
  %.0263719 = phi ptr [ %i.jm, %.lr.ph721 ], [ %.1264, %.loopexit624 ] ; 3 uses
  %.0265718 = phi i32 [ 0, %.lr.ph721 ], [ %i.abs, %.loopexit624 ] ; 3 uses
  %.sroa.0506.0717 = phi ptr [ %.sroa.0557.0, %.lr.ph721 ], [ %i.abr, %.loopexit624 ] ; 4 uses
  %i.ke = load i32, ptr %.sroa.0506.0717, align 4
  %.not293 = icmp eq i32 %i.ke, 0
  br i1 %.not293, label %.loopexit624, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kf = load ptr, ptr %i.jo, align 8
  %i.kg = load ptr, ptr %2, align 8
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = lshr exact i64 %i.kj, 3
  %i.kl = trunc i64 %i.kk to i32
  %i.km = getelementptr inbounds nuw i8, ptr %.0263719, i64 4 ; 2 uses
  store i32 %i.kl, ptr %.0263719, align 4
  %i.kn = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #27
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 14 uses

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.kn, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4 ; 5 uses
  store i32 0, ptr %i.ko, align 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 2 uses
  store i32 0, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 6 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 224
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 1272
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 1312
  store ptr null, ptr %i.kt, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.kq, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.kr, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ks, i8 0, i64 36, i1 false)
  %i.ku = load ptr, ptr %i.jo, align 8            ; 3 uses
  %i.kv = load ptr, ptr %i.jv, align 8
  %.not.i = icmp eq ptr %i.ku, %i.kv
  br i1 %.not.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.kn, ptr %i.ku, align 8
  %i.kw = load ptr, ptr %i.jo, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store ptr %i.kx, ptr %i.jo, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.as:                                            ; preds = %bb.aq
  %i.ky = load ptr, ptr %2, align 8               ; 4 uses
  %i.kz = ptrtoint ptr %i.ku to i64
  %i.la = ptrtoint ptr %i.ky to i64               ; 2 uses
  %i.lb = sub i64 %i.kz, %i.la                    ; 5 uses
  %i.lc = icmp eq i64 %i.lb, 9223372036854775800
  br i1 %i.lc, label %.invoke, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ay, %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.ld = ashr exact i64 %i.lb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ld, i64 1)
  %i.le = add nsw i64 %.sroa.speculated.i.i.i, %i.ld ; 2 uses
  %i.lf = icmp ult i64 %i.le, %i.ld
  %i.lg = tail call i64 @llvm.umin.i64(i64 %i.le, i64 1152921504606846975)
  %i.lh = select i1 %i.lf, i64 1152921504606846975, i64 %i.lg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.lh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.li = shl nuw nsw i64 %i.lh, 3
  %i.lj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #27
          to label %.noexc345 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc345:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 %i.lb ; 2 uses
  store ptr %i.kn, ptr %i.lk, align 8
  %i.ll = icmp sgt i64 %i.lb, 0
  br i1 %i.ll, label %bb.at, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.at:                                            ; preds = %.noexc345
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lj, ptr align 8 %i.ky, i64 %i.lb, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.at, %.noexc345
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ln = load ptr, ptr %i.jv, align 8
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = sub i64 %i.lo, %i.la
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.lp) #29
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.au, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.lj, ptr %2, align 8
  store ptr %i.lm, ptr %i.jo, align 8
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.lh
  store ptr %i.lq, ptr %i.jv, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ar
  %i.lr = load ptr, ptr %i.jw, align 8
  %i.ls = load ptr, ptr %3, align 8
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = lshr exact i64 %i.lv, 3
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kn, i64 232
  store i32 %i.lx, ptr %i.ly, align 8
  %i.lz = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.av:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.lz)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.ma = load ptr, ptr %i.jw, align 8            ; 3 uses
  %i.mb = load ptr, ptr %i.jx, align 8
  %.not.i.i346 = icmp eq ptr %i.ma, %i.mb
  br i1 %.not.i.i346, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.lz, ptr %i.ma, align 8
  %i.mc = load ptr, ptr %i.jw, align 8            ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store ptr %i.md, ptr %i.jw, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backEOS1_.exit355

bb.ay:                                            ; preds = %bb.aw
  %i.me = load ptr, ptr %3, align 8               ; 4 uses
  %i.mf = ptrtoint ptr %i.ma to i64
  %i.mg = ptrtoint ptr %i.me to i64               ; 2 uses
  %i.mh = sub i64 %i.mf, %i.mg                    ; 5 uses
  %i.mi = icmp eq i64 %i.mh, 9223372036854775800
  br i1 %i.mi, label %.invoke, label %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i347

_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i347: ; preds = %bb.ay
  %i.mj = ashr exact i64 %i.mh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i348 = tail call i64 @llvm.umax.i64(i64 %i.mj, i64 1)
  %i.mk = add nsw i64 %.sroa.speculated.i.i.i.i348, %i.mj ; 2 uses
  %i.ml = icmp ult i64 %i.mk, %i.mj
  %i.mm = tail call i64 @llvm.umin.i64(i64 %i.mk, i64 1152921504606846975)
  %i.mn = select i1 %i.ml, i64 1152921504606846975, i64 %i.mm ; 3 uses
  %.not.i.i.i.i349 = icmp ne i64 %i.mn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i349)
end_hunk_0
begin_hunk_1_@_ZN6Assimp12AC3DImporter20ConvertObjectSectionERNS0_6ObjectERSt6vectorIP6aiMeshSaIS5_EERS3_IP10aiMaterialSaISA_EERKS3_INS0_8MaterialESaISE_EEP6aiNode:bb.a
  %i.aan = icmp eq ptr %.sroa.0512.1700, %i.aam
  br i1 %i.aan, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.aao = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aao, ptr noundef nonnull @.str.49)
          to label %.invoke870 unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aap = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aao) #25
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.di:                                            ; preds = %bb.df
  %i.aaq = load i32, ptr %.sroa.0512.1700, align 4
  %i.aar = zext i32 %i.aaq to i64
  %i.aas = load ptr, ptr %i.c, align 8
  %i.aat = getelementptr inbounds nuw [12 x i8], ptr %i.aas, i64 %i.aar
  %i.aau = getelementptr inbounds nuw i8, ptr %.5592697, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.5592697, ptr noundef nonnull align 4 dereferenceable(12) %i.aat, i64 12, i1 false)
  %.not297 = icmp eq ptr %.10699, null
  br i1 %.not297, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.0512.1700, i64 4
  %i.aaw = load float, ptr %i.aav, align 4
  store float %i.aaw, ptr %.10699, align 4
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0512.1700, i64 8
  %i.aay = load float, ptr %i.aax, align 4
  %i.aaz = getelementptr inbounds nuw i8, ptr %.10699, i64 4
  store float %i.aay, ptr %i.aaz, align 4
  %i.aba = getelementptr inbounds nuw i8, ptr %.10699, i64 12
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.11 = phi ptr [ null, %bb.di ], [ %i.aba, %bb.dj ] ; 4 uses
  %i.abb = icmp eq i32 %i.aae, %.0258701
  %or.cond = and i1 %i.aad, %i.abb
  br i1 %or.cond, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.abc = load ptr, ptr %i.zs, align 8
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.abd = getelementptr inbounds nuw i8, ptr %.sroa.0512.1700, i64 12
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.sroa.0512.2 = phi ptr [ %i.abc, %bb.dl ], [ %i.abd, %bb.dm ] ; 4 uses
  %i.abe = load i32, ptr %.sroa.0512.2, align 4
  %i.abf = zext i32 %i.abe to i64
  %i.abg = load ptr, ptr %i.c, align 8
  %i.abh = getelementptr inbounds nuw [12 x i8], ptr %i.abg, i64 %i.abf
  %i.abi = getelementptr inbounds nuw i8, ptr %.5592697, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aau, ptr noundef nonnull align 4 dereferenceable(12) %i.abh, i64 12, i1 false)
  %.not298 = icmp eq ptr %.11, null
  br i1 %.not298, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.abj = getelementptr inbounds nuw i8, ptr %.sroa.0512.2, i64 4
  %i.abk = load float, ptr %i.abj, align 4
  store float %i.abk, ptr %.11, align 4
  %i.abl = getelementptr inbounds nuw i8, ptr %.sroa.0512.2, i64 8
  %i.abm = load float, ptr %i.abl, align 4
  %i.abn = getelementptr inbounds nuw i8, ptr %.11, i64 4
  store float %i.abm, ptr %i.abn, align 4
  %i.abo = getelementptr inbounds nuw i8, ptr %.11, i64 12
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.12 = phi ptr [ null, %bb.dn ], [ %i.abo, %bb.do ] ; 2 uses
  %i.abp = add nuw i32 %.0258701, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.abp, %spec.select
  br i1 %exitcond.not, label %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, label %bb.de, !llvm.loop !61

_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit: ; preds = %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402, %bb.cj, %bb.dp, %.preheader, %bb.dd, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.i, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i, %._crit_edge692, %bb.bw, %bb.bu
  %.4602 = phi ptr [ %i.sl, %bb.cj ], [ %i.qk, %bb.bw ], [ %i.qk, %._crit_edge692 ], [ %.0598709, %bb.bu ], [ %i.aaf, %bb.dp ], [ %i.sl, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %i.sl, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.i ], [ %.0598709, %bb.dd ], [ %.0598709, %.preheader ], [ %.2600, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ]
  %.6593 = phi ptr [ %i.tj, %bb.cj ], [ %.0587710, %bb.bw ], [ %.1588.lcssa, %._crit_edge692 ], [ %.0587710, %bb.bu ], [ %i.abi, %bb.dp ], [ %.1588.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.1588.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.i ], [ %.0587710, %bb.dd ], [ %.0587710, %.preheader ], [ %.4591, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ]
  %.5582 = phi i32 [ %i.tq, %bb.cj ], [ %.0577711, %bb.bw ], [ %.1578.lcssa, %._crit_edge692 ], [ %.0577711, %bb.bu ], [ %i.aaj, %bb.dp ], [ %.1578.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.1578.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.i ], [ %.0577711, %bb.dd ], [ %.0577711, %.preheader ], [ %.3580, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ]
  %.13 = phi ptr [ %.15, %bb.cj ], [ %.1712, %bb.bw ], [ %.2.lcssa, %._crit_edge692 ], [ %.1712, %bb.bu ], [ %.12, %bb.dp ], [ %.2.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.thread.i ], [ %.2.lcssa, %_ZN6AssimpL16flipWindingOrderER6aiFace.exit.i ], [ %.1712, %bb.dd ], [ %.1712, %.preheader ], [ %.9, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit402 ]
  %i.abq = getelementptr inbounds nuw i8, ptr %.sroa.0526.1713, i64 32 ; 2 uses
  %.not614 = icmp eq ptr %i.abq, %i.ey
  br i1 %.not614, label %.loopexit624, label %bb.bu, !llvm.loop !62

.loopexit624:                                     ; preds = %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit, %bb.bt, %bb.ao
  %.1264 = phi ptr [ %.0263719, %bb.ao ], [ %i.km, %bb.bt ], [ %i.km, %_ZN6AssimpL19buildBacksideOfFaceERK6aiFaceRPS0_RP10aiVector3tIfEPKS6_S8_SA_Rj.exit ]
  %i.abr = getelementptr inbounds nuw i8, ptr %.sroa.0506.0717, i64 8 ; 2 uses
  %i.abs = add i32 %.0265718, 1
  %.not612 = icmp eq ptr %i.abr, %.0.lcssa.i.i.i.i.i.i
  br i1 %.not612, label %._crit_edge722, label %bb.ao, !llvm.loop !63

bb.dq:                                            ; preds = %._crit_edge722
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.abu = load i8, ptr %i.abt, align 1, !range !67, !noundef !68
  %i.abv = trunc nuw i8 %i.abu to i1
  br i1 %i.abv, label %bb.dr, label %bb.dz

bb.dr:                                            ; preds = %bb.dq
  %i.abw = invoke noundef ptr @_ZN6Assimp10Subdivider6CreateENS0_9AlgorithmE(i32 noundef 1)
          to label %bb.ds unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.ds:                                            ; preds = %bb.dr
  %i.abx = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dt unwind label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409

bb.dt:                                            ; preds = %bb.ds
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6Assimp6Logger4infoIJRA39_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.abx, ptr noundef nonnull align 1 dereferenceable(39) @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %i.aby)
          to label %bb.du unwind label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409

bb.du:                                            ; preds = %bb.dt
  %i.abz = load ptr, ptr %i.jo, align 8
  %i.aca = load ptr, ptr %2, align 8
  %i.acb = ptrtoint ptr %i.abz to i64
  %i.acc = ptrtoint ptr %i.aca to i64
  %i.acd = sub i64 %i.acb, %i.acc
  %i.ace = ashr exact i64 %i.acd, 3               ; 2 uses
  %i.acf = sub nsw i64 %i.ace, %i.ju              ; 4 uses
  %i.acg = icmp ugt i64 %i.acf, 1152921504606846975
  br i1 %i.acg, label %bb.dv, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #28
          to label %.noexc404 unwind label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409

.noexc404:                                        ; preds = %bb.dv
  unreachable

_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.du
  %.not.i.i.i.i403 = icmp ne i64 %i.ace, %i.ju
  tail call void @llvm.assume(i1 %.not.i.i.i.i403)
  %i.ach = shl nuw nsw i64 %i.acf, 3              ; 5 uses
  %i.aci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ach) #27
          to label %.noexc405 unwind label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409 ; 6 uses

.noexc405:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aci, i8 0, i64 %i.ach, i1 false)
  %i.acj = load ptr, ptr %2, align 8
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 %i.jt
  %i.acl = load i32, ptr %i.kc, align 4
  %i.acm = load ptr, ptr %i.abw, align 8
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 24
  %i.aco = load ptr, ptr %i.acn, align 8
  invoke void %i.aco(ptr noundef nonnull align 8 dereferenceable(8) %i.abw, ptr noundef nonnull %i.ack, i64 noundef %i.acf, ptr noundef nonnull %i.aci, i32 noundef %i.acl, i1 noundef zeroext true)
          to label %bb.dw unwind label %.thread

bb.dw:                                            ; preds = %.noexc405
  %i.acp = load ptr, ptr %2, align 8
  %i.acq = getelementptr inbounds i8, ptr %i.acp, i64 %i.jt ; 2 uses
  %i.acr = icmp samesign ugt i64 %i.acf, 1
  br i1 %i.acr, label %bb.dx, label %bb.dy, !prof !69

bb.dx:                                            ; preds = %bb.dw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.acq, ptr nonnull align 8 %i.aci, i64 %i.ach, i1 false)
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit

bb.dy:                                            ; preds = %bb.dw
  %i.acs = load ptr, ptr %i.aci, align 8
  store ptr %i.acs, ptr %i.acq, align 8
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.dy, %bb.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aci, i64 noundef %i.ach) #29
  %i.act = load ptr, ptr %i.abw, align 8
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8
  tail call void %i.acv(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.abw) #25, !inline_history !64
  br label %bb.eb

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409:        ; preds = %bb.ds, %bb.dt, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %bb.dv
  %i.acw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i410 = icmp eq ptr %i.abw, null
  br i1 %.not.i410, label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412, label %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i411

.thread:                                          ; preds = %.noexc405
  %i.acx = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aci, i64 noundef %i.ach) #29
  br label %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i411

_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i411: ; preds = %.thread, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409
  %.pn.pn.pn609 = phi { ptr, i32 } [ %i.acx, %.thread ], [ %i.acw, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409 ]
  %i.acy = load ptr, ptr %i.abw, align 8
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.ada = load ptr, ptr %i.acz, align 8
  tail call void %i.ada(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.abw) #25, !inline_history !64
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.dz:                                            ; preds = %bb.dq
  %i.adb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dz
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6Assimp6Logger4infoIJRA74_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.adb, ptr noundef nonnull align 1 dereferenceable(74) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %i.adc)
          to label %bb.eb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %bb.z, %bb.da, %.lr.ph682, %bb.de, %bb.ch, %bb.bx, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backEOS1_.exit355, %bb.ap, %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i347, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %bb.bi, %bb.bp, %bb.br, %bb.v, %bb.w, %6, %8, %bb.aj, %bb.ai, %.invoke870, %.invoke, %bb.dr, %._crit_edge676, %bb.ea, %bb.dz
  %lpad.loopexit.split-lp948 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412

bb.eb:                                            ; preds = %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit, %bb.ea, %._crit_edge722
  %.not.i.i.i413 = icmp eq ptr %.sroa.0557.0, null
  br i1 %.not.i.i.i413, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.add = ptrtoint ptr %.sroa.0557.0 to i64
  %i.ade = sub i64 %.sroa.24.0, %i.add
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0557.0, i64 noundef %i.ade) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409, %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i411, %bb.be, %bb.bh, %bb.bd, %bb.ca, %bb.ct, %bb.dh, %bb.bo, %bb.bl
  %.pn332.pn = phi { ptr, i32 } [ %i.rn, %bb.ca ], [ %i.xd, %bb.ct ], [ %.pn.pn.pn609, %_ZNKSt14default_deleteIN6Assimp10SubdividerEEclEPS1_.exit.i411 ], [ %i.ng, %bb.be ], [ %i.nk, %bb.bh ], [ %i.nf, %bb.bd ], [ %i.acw, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit409 ], [ %i.aap, %bb.dh ], [ %i.ou, %bb.bl ], [ %i.ox, %bb.bo ], [ %lpad.loopexit.split-lp948, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i414 = icmp eq ptr %.sroa.0557.0, null
  br i1 %.not.i.i.i414, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit415, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412
  %i.adf = ptrtoint ptr %.sroa.0557.0 to i64
  %i.adg = sub i64 %.sroa.24.0, %i.adf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0557.0, i64 noundef %i.adg) #29
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit415

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %bb.ec, %bb.eb, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backEOS1_.exit, %bb.b
  %i.adh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adj = load i64, ptr %i.adi, align 8          ; 5 uses
  %.not290 = icmp eq i64 %i.adj, 0
  br i1 %.not290, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.adk = icmp ugt i64 %i.adj, 1023
  br i1 %i.adk, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.adl = trunc nuw nsw i64 %i.adj to i32
  store i32 %i.adl, ptr %i.a, align 8
  %i.adm = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.adn = load ptr, ptr %i.adh, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.adm, ptr align 1 %i.adn, i64 %i.adj, i1 false)
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.adj
  store i8 0, ptr %i.ado, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.eg:                                            ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.adp = load i32, ptr %1, align 8
  switch i32 %i.adp, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit [
    i32 2, label %bb.eh
    i32 1, label %bb.ei
    i32 4, label %bb.ej
    i32 0, label %bb.ek
  ]

bb.eh:                                            ; preds = %bb.eg
  %i.adq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ads = load i32, ptr %i.adr, align 4          ; 2 uses
  %i.adt = add i32 %i.ads, 1
  store i32 %i.adt, ptr %i.adr, align 4
  %i.adu = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.adq, i64 noundef 1024, ptr noundef nonnull @.str.52, i32 noundef %i.ads) #25
  store i32 %i.adu, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ei:                                            ; preds = %bb.eg
  %i.adv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.adx = load i32, ptr %i.adw, align 8          ; 2 uses
  %i.ady = add i32 %i.adx, 1
  store i32 %i.ady, ptr %i.adw, align 8
  %i.adz = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.adv, i64 noundef 1024, ptr noundef nonnull @.str.53, i32 noundef %i.adx) #25
  store i32 %i.adz, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ej:                                            ; preds = %bb.eg
  %i.aea = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aec = load i32, ptr %i.aeb, align 8          ; 2 uses
  %i.aed = add i32 %i.aec, 1
  store i32 %i.aed, ptr %i.aeb, align 8
  %i.aee = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aea, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %i.aec) #25
  store i32 %i.aee, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ek:                                            ; preds = %bb.eg
  %i.aef = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.aeh = load i32, ptr %i.aeg, align 4          ; 2 uses
  %i.aei = add i32 %i.aeh, 1
  store i32 %i.aei, ptr %i.aeg, align 4
  %i.aej = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aef, i64 noundef 1024, ptr noundef nonnull @.str.54, i32 noundef %i.aeh) #25
  store i32 %i.aej, ptr %i.a, align 8
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ef, %bb.ee, %bb.eg, %bb.eh, %bb.ei, %bb.ej, %bb.ek
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aem = load float, ptr %i.ael, align 8
  %i.aen = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.aep = load float, ptr %i.aeo, align 4
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aes = load float, ptr %i.aer, align 8
  %i.aet = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  %i.aeu = load <2 x float>, ptr %i.aek, align 8
  store <2 x float> %i.aeu, ptr %i.aet, align 4
  %.sroa.5.0..sroa_idx416 = getelementptr inbounds nuw i8, ptr %i.a, i64 1036
  store float %i.aem, ptr %.sroa.5.0..sroa_idx416, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1040 ; 2 uses
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1044
  %i.aev = load <2 x float>, ptr %i.aen, align 4
  store <2 x float> %i.aev, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1052
  store float %i.aep, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1056 ; 2 uses
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1060
  %i.aew = load <2 x float>, ptr %i.aeq, align 8
  store <2 x float> %i.aew, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1068
  store float %i.aes, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1072 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  store float 1.000000e+00, ptr %.sroa.15.0..sroa_idx, align 8
  %i.aex = load i32, ptr %1, align 8
  %i.aey = icmp eq i32 %i.aex, 2
  br i1 %i.aey, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.afa = load i32, ptr %i.aez, align 8
  %.not291 = icmp eq i32 %i.afa, 0
  br i1 %.not291, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.afb = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.afc = load float, ptr %i.afb, align 4
  store float %i.afc, ptr %.sroa.6.0..sroa_idx, align 8
  %i.afd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.afe = load float, ptr %i.afd, align 8
  store float %i.afe, ptr %.sroa.10.0..sroa_idx, align 8
  %i.aff = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.afg = load float, ptr %i.aff, align 4
  store float %i.afg, ptr %.sroa.14.0..sroa_idx, align 8
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.afj = load ptr, ptr %i.afi, align 8          ; 2 uses
  %i.afk = load ptr, ptr %i.afh, align 8          ; 2 uses
  %.not292 = icmp eq ptr %i.afj, %i.afk
  br i1 %.not292, label %.loopexit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.afl = ptrtoint ptr %i.afj to i64
  %i.afm = ptrtoint ptr %i.afk to i64
  %i.afn = sub i64 %i.afl, %i.afm
  %i.afo = sdiv exact i64 %i.afn, 216             ; 2 uses
  %i.afp = trunc i64 %i.afo to i32
  %i.afq = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 3 uses
  store i32 %i.afp, ptr %i.afq, align 8
  %i.afr = shl nsw i64 %i.afo, 3
  %i.afs = and i64 %i.afr, 34359738360
  %i.aft = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.afs) #27
  %i.afu = getelementptr inbounds nuw i8, ptr %i.a, i64 1112 ; 2 uses
  store ptr %i.aft, ptr %i.afu, align 8
  %i.afv = load i32, ptr %i.afq, align 8
  %.not736 = icmp eq i32 %i.afv, 0
  br i1 %.not736, label %.loopexit, label %.lr.ph731

.lr.ph731:                                        ; preds = %bb.eo, %.lr.ph731
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %.lr.ph731 ], [ 0, %bb.eo ] ; 3 uses
  %i.afw = load ptr, ptr %i.afh, align 8
  %i.afx = getelementptr inbounds nuw [216 x i8], ptr %i.afw, i64 %indvars.iv784
  %i.afy = tail call noundef ptr @_ZN6Assimp12AC3DImporter20ConvertObjectSectionERNS0_6ObjectERSt6vectorIP6aiMeshSaIS5_EERS3_IP10aiMaterialSaISA_EERKS3_INS0_8MaterialESaISE_EEP6aiNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(212) %i.afx, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.a)
  %i.afz = load ptr, ptr %i.afu, align 8
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.afz, i64 %indvars.iv784
  store ptr %i.afy, ptr %i.aga, align 8
  %indvars.iv.next785 = add nuw nsw i64 %indvars.iv784, 1 ; 2 uses
  %i.agb = load i32, ptr %i.afq, align 8
  %i.agc = zext i32 %i.agb to i64
  %i.agd = icmp samesign ult i64 %indvars.iv.next785, %i.agc
  br i1 %i.agd, label %.lr.ph731, label %.loopexit, !llvm.loop !65

.loopexit:                                        ; preds = %.lr.ph731, %bb.eo, %bb.en
  ret ptr %i.a

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit415:     ; preds = %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412, %bb.ed, %bb.s, %bb.l
  %.pn332.pn.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.l ], [ %i.ek, %bb.s ], [ %.pn332.pn, %bb.ed ], [ %.pn332.pn, %_ZNSt10unique_ptrIN6Assimp10SubdividerESt14default_deleteIS1_EED2Ev.exit412 ]
  resume { ptr, i32 } %.pn332.pn.pn.pn
}

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
end_hunk_1
