inline.NumInlined: 7358
inline.NumDeleted: 3045
begin_hunk_0_@_ZN4LIEF5MachO6Binary3addERKNS0_11LoadCommandEm:bb.a
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.263") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %1) #22, !inline_history !137
  %i.l = call noundef ptr @_ZN4LIEF5MachO6Binary3addESt10unique_ptrINS0_11LoadCommandESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull %3)
  %i.m = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN4LIEF5MachO6Binary3addERKNS0_11LoadCommandE.exit, label %_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #22, !inline_history !138
  br label %_ZN4LIEF5MachO6Binary3addERKNS0_11LoadCommandE.exit

_ZN4LIEF5MachO6Binary3addERKNS0_11LoadCommandE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i8, ptr %i.t, align 8, !range !102, !noundef !23
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = select i1 %i.v, i64 8, i64 4             ; 2 uses
  %.rhs.trunc = trunc nuw nsw i64 %i.w to i32
  %i.x = add nsw i32 %.rhs.trunc, -1
  %i.y = and i32 %i.x, %i.r                       ; 2 uses
  %.zext = zext nneg i32 %i.y to i64
  %.not.i = icmp eq i32 %i.y, 0
  %i.z = sub nsw i64 %i.w, %.zext
  %i.aa = select i1 %.not.i, i64 0, i64 %i.z
  %.0.i = add nsw i64 %i.aa, %i.s                 ; 5 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %.0.i
  br i1 %i.ae, label %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit, label %.critedge

_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit: ; preds = %bb.c
  %i.af = tail call i64 @_ZN4LIEF5MachO6Binary5shiftEm(ptr noundef nonnull align 8 dereferenceable(488) %0, i64 noundef %.0.i) ; 2 uses
  %.not49 = icmp samesign ult i64 %i.af, 4294967296
  br i1 %.not49, label %bb.d, label %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge

_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge: ; preds = %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit
  %.pre = load i64, ptr %i.ac, align 8
  br label %.critedge

bb.d:                                             ; preds = %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  %.sroa.039.0.extract.trunc = trunc nuw i64 %i.af to i32
  %i.ah = tail call noundef ptr @_Z9to_string11lief_errors(i32 noundef %.sroa.039.0.extract.trunc) #22 ; 0 uses
  br label %bb.s

.critedge:                                        ; preds = %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge, %bb.c
  %i.ai = phi i64 [ %.pre, %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge ], [ %i.ad, %bb.c ]
  %i.aj = sub i64 %i.ai, %.0.i
  store i64 %i.aj, ptr %i.ac, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = trunc i64 %.0.i to i32
  %i.an = add i32 %i.al, %i.am
  store i32 %i.an, ptr %i.ak, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 8
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %2
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.aw = load ptr, ptr %1, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.263") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %1) #22
  %i.az = load ptr, ptr %4, align 8               ; 4 uses
  %i.ba = load i64, ptr %i.au, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bd = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not5057 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not5057, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %.critedge
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bf = load i64, ptr %i.be, align 8
  switch i64 %i.bf, label %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE9push_backERKS3_.exit [
    i64 2147483683, label %_ZN4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPT_v.exit
    i64 2147483679, label %_ZN4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPT_v.exit
    i64 2147483672, label %_ZN4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPT_v.exit
    i64 13, label %_ZN4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPT_v.exit
    i64 12, label %_ZN4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPT_v.exit
    i64 32, label %_ZN4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPT_v.exit
  ]

.lr.ph:                                           ; preds = %.critedge, %bb.f
  %.sroa.036.058 = phi ptr [ %i.bk, %bb.f ], [ %i.bc, %.critedge ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.036.058, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %.not27 = icmp ult i64 %i.bi, %i.av
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.bj = add i64 %i.bi, %.0.i
  store i64 %i.bj, ptr %i.bh, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.036.058, i64 8 ; 2 uses
  %.not50 = icmp eq ptr %i.bk, %i.bd
  br i1 %.not50, label %._crit_edge, label %.lr.ph

_ZN4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPT_v.exit: ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %.not.i28 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not.i28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPT_v.exit
  store ptr %i.az, ptr %i.bn, align 8
  %i.bq = load ptr, ptr %i.bm, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.br, ptr %i.bm, align 8
  br label %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE9push_backERKS3_.exit

bb.h:                                             ; preds = %_ZN4LIEF5MachO11LoadCommand4castINS0_12DylibCommandEEEPT_v.exit
  %i.bs = load ptr, ptr %i.bl, align 8            ; 4 uses
  %i.bt = ptrtoint ptr %i.bn to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.i, label %_ZNKSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #24 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  store ptr %i.az, ptr %i.ce, align 8
  %i.cf = icmp sgt i64 %i.bv, 0
  br i1 %i.cf, label %bb.j, label %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #25
  br label %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.cd, ptr %i.bl, align 8
  store ptr %i.cg, ptr %i.bm, align 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ch, ptr %i.bo, align 8
  br label %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE9push_backERKS3_.exit: ; preds = %._crit_edge, %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.g
  %i.ci = load ptr, ptr %4, align 8               ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = icmp ne i64 %i.ck, 1
  %i.cm = icmp ne i64 %i.ck, 25
  %.not54 = and i1 %i.cl, %i.cm
  %.not2651 = icmp eq ptr %i.ci, null
  %.not26 = or i1 %.not2651, %.not54
  br i1 %.not26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE9push_backERKS3_.exit
  %i.cn = call noundef i64 @_ZN4LIEF5MachO6Binary18add_cached_segmentERNS0_14SegmentCommandE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(216) %i.ci) ; 0 uses
  %.pre60 = load ptr, ptr %4, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE9push_backERKS3_.exit
  %i.co = phi ptr [ %.pre60, %bb.l ], [ %i.ci, %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = load ptr, ptr %i.a, align 8             ; 10 uses
  %.idx55 = shl i64 %2, 3                         ; 7 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 %.idx55 ; 12 uses
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64               ; 4 uses
  %i.cu = load ptr, ptr %i.b, align 8             ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8
  %.not.i.i29 = icmp eq ptr %i.cu, %i.cw
  br i1 %.not.i.i29, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = icmp eq ptr %i.cr, %i.cu
  br i1 %i.cx, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit.thread, label %bb.o

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit.thread: ; preds = %bb.n
  store i64 %i.cp, ptr %i.cu, align 8
  %i.cy = load ptr, ptr %i.b, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cz, ptr %i.b, align 8
  br label %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  store i64 %i.db, ptr %i.cu, align 8
  store ptr null, ptr %i.da, align 8
  %i.dc = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.dd, ptr %i.b, align 8
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.cs
  %i.dh = ashr exact i64 %i.dg, 3                 ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.o, %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi i64 [ %i.dq, %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %bb.o ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i = phi ptr [ %i.dk, %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i ], [ %i.dc, %bb.o ]
  %.078.i.i.i.i.i.i.i.i = phi ptr [ %i.dj, %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i ], [ %i.de, %bb.o ]
  %i.dj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.dl = load ptr, ptr %i.dj, align 8
  store ptr null, ptr %i.dj, align 8
  %i.dm = load ptr, ptr %i.dk, align 8            ; 3 uses
  store ptr %i.dl, ptr %i.dk, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(56) %i.dm) #22, !inline_history !139
  br label %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dq = add nsw i64 %.010.i.i.i.i.i.i.i.i, -1
  %i.dr = icmp sgt i64 %.010.i.i.i.i.i.i.i.i, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i.i.i, !llvm.loop !140

_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i.i, %bb.o
  %i.ds = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
  %i.dt = load ptr, ptr %i.cr, align 8            ; 3 uses
  store ptr %i.ds, ptr %i.cr, align 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit, label %_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i.i.i
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(56) %i.dt) #22, !inline_history !141
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit

bb.p:                                             ; preds = %bb.m
  %i.dx = ptrtoint ptr %i.cu to i64               ; 3 uses
  %i.dy = sub i64 %i.dx, %i.ct                    ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775800
  br i1 %i.dz, label %bb.q, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.p
  %i.ea = ashr exact i64 %i.dy, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975)
  %i.ee = select i1 %i.ec, i64 1152921504606846975, i64 %i.ed ; 3 uses
  %.not.i.i31 = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i31)
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #24 ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx55
  store i64 %i.cp, ptr %i.eh, align 8
  store ptr null, ptr %4, align 8
  %.not10.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ei = add i64 %.idx55, -8                     ; 2 uses
  %i.ej = lshr exact i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ei, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader109, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.eg, i64 %.idx55
  %bound0 = icmp ult ptr %i.eg, %i.cr
  %bound1 = icmp ult ptr %i.cq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader109, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ek, 4611686018427387900     ; 3 uses
  %i.el = shl i64 %n.vec, 3                       ; 2 uses
  %i.em = getelementptr i8, ptr %i.eg, i64 %i.el  ; 2 uses
  %i.en = getelementptr i8, ptr %i.cq, i64 %i.el
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eg, i64 %i.eo ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.cq, i64 %i.eo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.ep = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep83, align 8, !alias.scope !147, !noalias !142
  %wide.load84 = load <2 x i64>, ptr %i.ep, align 8, !alias.scope !147, !noalias !142
  %i.eq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !150, !noalias !147
  store <2 x i64> %wide.load84, ptr %i.eq, align 8, !alias.scope !150, !noalias !147
  %i.er = getelementptr i8, ptr %next.gep83, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep83, align 8, !alias.scope !147, !noalias !142
  store <2 x ptr> splat (ptr null), ptr %i.er, align 8, !alias.scope !147, !noalias !142
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ek, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader109

.lr.ph.i.i.i.i.preheader109:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.eg, %vector.memcheck ], [ %i.eg, %.lr.ph.i.i.i.i.preheader ], [ %i.em, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cq, %vector.memcheck ], [ %i.cq, %.lr.ph.i.i.i.i.preheader ], [ %i.en, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader109, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader109 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader109 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.et = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !145, !noalias !142
  store i64 %i.et, ptr %.012.i.i.i.i, align 8, !alias.scope !142, !noalias !145
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !145, !noalias !142
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eu, %i.cr
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !155

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.eg, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.em, %middle.block ], [ %i.ev, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ew = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16.i = icmp eq ptr %i.cr, %i.cu
  br i1 %.not10.i.i.i16.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i17.i.preheader

.lr.ph.i.i.i17.i.preheader:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %5 = add i64 %i.dx, -8
  %i.ex = add i64 %.idx55, %i.ct
  %i.ey = sub i64 %5, %i.ex                       ; 2 uses
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = add nuw nsw i64 %i.ez, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.ey, 216
  br i1 %min.iters.check93, label %.lr.ph.i.i.i17.i.preheader108, label %vector.memcheck86

vector.memcheck86:                                ; preds = %.lr.ph.i.i.i17.i.preheader
  %i.fb = add i64 %i.dx, -8
  %i.fc = add i64 %.idx55, %i.ct
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = and i64 %i.fd, -8                       ; 2 uses
  %i.ff = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.fe
  %scevgep87 = getelementptr i8, ptr %i.ff, i64 16
  %i.fg = getelementptr i8, ptr %i.cq, i64 %.idx55
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fe
  %scevgep88 = getelementptr i8, ptr %i.fh, i64 8
  %bound089 = icmp ult ptr %i.ew, %scevgep88
  %bound190 = icmp ult ptr %i.cr, %scevgep87
  %found.conflict91 = and i1 %bound089, %bound190
  br i1 %found.conflict91, label %.lr.ph.i.i.i17.i.preheader108, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck86
  %n.vec96 = and i64 %i.fa, 4611686018427387900   ; 3 uses
  %i.fi = shl i64 %n.vec96, 3                     ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ew, i64 %i.fi  ; 2 uses
  %i.fk = getelementptr i8, ptr %i.cr, i64 %i.fi
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph94
  %index98 = phi i64 [ 0, %vector.ph94 ], [ %index.next103, %vector.body97 ] ; 2 uses
  %i.fl = shl i64 %index98, 3                     ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.ew, i64 %i.fl ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.cr, i64 %i.fl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.fm = getelementptr i8, ptr %next.gep100, i64 16
  %wide.load101 = load <2 x i64>, ptr %next.gep100, align 8, !alias.scope !161, !noalias !156
  %wide.load102 = load <2 x i64>, ptr %i.fm, align 8, !alias.scope !161, !noalias !156
  %i.fn = getelementptr i8, ptr %next.gep99, i64 16
  store <2 x i64> %wide.load101, ptr %next.gep99, align 8, !alias.scope !164, !noalias !161
  store <2 x i64> %wide.load102, ptr %i.fn, align 8, !alias.scope !164, !noalias !161
  %i.fo = getelementptr i8, ptr %next.gep100, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep100, align 8, !alias.scope !161, !noalias !156
  store <2 x ptr> splat (ptr null), ptr %i.fo, align 8, !alias.scope !161, !noalias !156
  %index.next103 = add nuw i64 %index98, 4        ; 2 uses
  %i.fp = icmp eq i64 %index.next103, %n.vec96
  br i1 %i.fp, label %middle.block104, label %vector.body97, !llvm.loop !166

middle.block104:                                  ; preds = %vector.body97
  %cmp.n105 = icmp eq i64 %i.fa, %n.vec96
  br i1 %cmp.n105, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i17.i.preheader108

.lr.ph.i.i.i17.i.preheader108:                    ; preds = %vector.memcheck86, %.lr.ph.i.i.i17.i.preheader, %middle.block104
  %.012.i.i.i18.i.ph = phi ptr [ %i.ew, %vector.memcheck86 ], [ %i.ew, %.lr.ph.i.i.i17.i.preheader ], [ %i.fj, %middle.block104 ]
  %.0911.i.i.i19.i.ph = phi ptr [ %i.cr, %vector.memcheck86 ], [ %i.cr, %.lr.ph.i.i.i17.i.preheader ], [ %i.fk, %middle.block104 ]
  br label %.lr.ph.i.i.i17.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i.i.i17.i.preheader108, %.lr.ph.i.i.i17.i
  %.012.i.i.i18.i = phi ptr [ %i.fs, %.lr.ph.i.i.i17.i ], [ %.012.i.i.i18.i.ph, %.lr.ph.i.i.i17.i.preheader108 ] ; 2 uses
  %.0911.i.i.i19.i = phi ptr [ %i.fr, %.lr.ph.i.i.i17.i ], [ %.0911.i.i.i19.i.ph, %.lr.ph.i.i.i17.i.preheader108 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.fq = load i64, ptr %.0911.i.i.i19.i, align 8, !alias.scope !159, !noalias !156
  store i64 %i.fq, ptr %.012.i.i.i18.i, align 8, !alias.scope !156, !noalias !159
  store ptr null, ptr %.0911.i.i.i19.i, align 8, !alias.scope !159, !noalias !156
  %i.fr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i20.i = icmp eq ptr %i.fr, %i.cu
  br i1 %.not.i.i.i20.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i17.i, !llvm.loop !167

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i17.i, %middle.block104, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %.0.lcssa.i.i.i21.i = phi ptr [ %i.ew, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i ], [ %i.fj, %middle.block104 ], [ %i.fs, %.lr.ph.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.cq, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ft = load ptr, ptr %i.cv, align 8
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.fv) #25
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.r
  store ptr %i.eg, ptr %i.a, align 8
  store ptr %.0.lcssa.i.i.i21.i, ptr %i.b, align 8
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.fw, ptr %i.cv, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit.i.i.i, %_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i.i.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %.pr = load ptr, ptr %4, align 8                ; 3 uses
  %.not.i30 = icmp eq ptr %.pr, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit
  %i.fx = load ptr, ptr %.pr, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #22, !inline_history !168
  br label %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_.exit, %_ZNKSt14default_deleteIN4LIEF5MachO11LoadCommandEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EED2Ev.exit, %bb.d, %_ZN4LIEF5MachO6Binary3addERKNS0_11LoadCommandE.exit
  %.2 = phi ptr [ %i.l, %_ZN4LIEF5MachO6Binary3addERKNS0_11LoadCommandE.exit ], [ %i.co, %_ZNSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS2_EED2Ev.exit ], [ null, %bb.d ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO6Binary6removeERKNS0_11LoadCommandE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr i64 %i.h, 5                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %.058.i.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.i, %bb.a ] ; 2 uses
  %.sroa.038.057.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.c, %bb.a ] ; 9 uses
  %.val1.i.i.i.i = load ptr, ptr %.sroa.038.057.i.i.i, align 8 ; 2 uses
  %i.k = load ptr, ptr %.val1.i.i.i.i, align 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #22, !inline_history !169
  br i1 %i.m, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_E3$_0ET_SI_SI_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  %.val1.i22.i.i.i = load ptr, ptr %i.n, align 8  ; 2 uses
  %i.o = load ptr, ptr %.val1.i22.i.i.i, align 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i22.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #22, !inline_history !169
  br i1 %i.q, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_E3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  %.val1.i23.i.i.i = load ptr, ptr %i.r, align 8  ; 2 uses
  %i.s = load ptr, ptr %.val1.i23.i.i.i, align 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i23.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #22, !inline_history !169
  br i1 %i.u, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_E3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit169", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  %.val1.i24.i.i.i = load ptr, ptr %i.v, align 8  ; 2 uses
  %i.w = load ptr, ptr %.val1.i24.i.i.i, align 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i24.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #22, !inline_history !169
  br i1 %i.y, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_E3$_0ET_SI_SI_T0_.exit.loopexit.split.loop.exit171", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 32 ; 3 uses
  %i.aa = add nsw i64 %.058.i.i.i, -1
  %i.ab = icmp sgt i64 %.058.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !170

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %i.z to i64
  %.pre63.i.i.i = sub i64 %i.f, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi64.i.i.i = phi i64 [ %.pre63.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.h, %bb.a ]
  %.sroa.038.0.lcssa.i.i.i = phi ptr [ %i.z, %._crit_edge.loopexit.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %i.ac = ashr exact i64 %.pre-phi64.i.i.i, 3
  switch i64 %i.ac, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_E3$_0ET_SI_SI_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.038.0.lcssa.i.i.i, align 8 ; 2 uses
  %i.ad = load ptr, ptr %.val1.i25.i.i.i, align 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i25.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #22, !inline_history !169
  br i1 %i.af, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_E3$_0ET_SI_SI_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.sroa.038.1.i.i.i = phi ptr [ %i.ag, %bb.g ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.038.1.i.i.i, align 8 ; 2 uses
  %i.ah = load ptr, ptr %.val1.i26.i.i.i, align 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i26.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %1) #22, !inline_history !169
  br i1 %i.aj, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_6Binary6removeERKS5_E3$_0ET_SI_SI_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO6Binary11add_sectionERKNS0_14SegmentCommandERKNS0_7SectionE:bb.a
  %i.ct = load i64, ptr %i.ce, align 8
  %i.cu = sub i64 %i.ct, %i.cb
  %i.cv = add i64 %i.cu, %i.cs                    ; 2 uses
  %i.cw = urem i64 %i.cv, %i.by
  %i.cx = sub nuw i64 %i.cv, %i.cw                ; 2 uses
  %i.cy = load ptr, ptr %i.bl, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 120
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i64 noundef %i.cx) #22
  %i.db = sub i64 %i.cx, %i.cs
  store i64 %i.db, ptr %i.ce, align 8
  br label %bb.s

bb.s:                                             ; preds = %.critedge41, %_ZNSt6vectorIhSaIhEEC2IPKhvEET_S5_RKS0_.exit
  %i.dc = load ptr, ptr %2, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call noundef i64 %i.de(ptr noundef nonnull align 8 dereferenceable(64) %2) #22
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dh = ptrtoint ptr %.sroa.14.0 to i64
  %i.di = ptrtoint ptr %.sroa.059.0 to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = load ptr, ptr %i.bl, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i64 noundef %i.dj) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dn = load ptr, ptr %2, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call noundef i64 %i.dp(ptr noundef nonnull align 8 dereferenceable(64) %2) #22
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = load ptr, ptr %i.bl, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call noundef i64 %i.dw(ptr noundef nonnull align 8 dereferenceable(64) %i.bl) #22
  %i.dy = add i64 %i.dx, %i.dt
  %i.dz = load ptr, ptr %i.bl, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i64 noundef %i.dy) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bl, i64 160
  store ptr %i.ba, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ba, i64 128 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.ei = load ptr, ptr %i.eh, align 8            ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  %.not.i.i = icmp eq ptr %i.ei, %i.ek
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.bl, ptr %i.ei, align 8
  %i.el = load ptr, ptr %i.eh, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.em, ptr %i.eh, align 8
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit

bb.y:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %i.eg, align 8            ; 4 uses
  %i.eo = ptrtoint ptr %i.ei to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 6 uses
  %i.er = icmp eq i64 %i.eq, 9223372036854775800
  br i1 %i.er, label %bb.z, label %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.es = ashr exact i64 %i.eq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = add nsw i64 %.sroa.speculated.i.i.i.i, %i.es ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.es
  %i.ev = tail call i64 @llvm.umin.i64(i64 %i.et, i64 1152921504606846975)
  %i.ew = select i1 %i.eu, i64 1152921504606846975, i64 %i.ev ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ew, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ex = shl nuw nsw i64 %i.ew, 3
  %i.ey = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #24 ; 4 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %i.eq ; 2 uses
  store ptr %i.bl, ptr %i.ez, align 8
  %i.fa = icmp sgt i64 %i.eq, 0
  br i1 %i.fa, label %bb.aa, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.aa:                                            ; preds = %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr align 8 %i.en, i64 %i.eq, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.aa, %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.eq) #25
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ab, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ey, ptr %i.eg, align 8
  store ptr %i.fb, ptr %i.eh, align 8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.fc, ptr %i.ej, align 8
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.x, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.fd = load ptr, ptr %i.bl, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 80
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = tail call noundef i64 %i.ff(ptr noundef nonnull align 8 dereferenceable(64) %i.bl) #22
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = sub i64 %i.fg, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.fj ; 2 uses
  %i.fn = ptrtoint ptr %.sroa.14.0 to i64
  %i.fo = ptrtoint ptr %.sroa.059.0 to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp sgt i64 %i.fp, 1
  br i1 %i.fq, label %bb.ac, label %bb.ad, !prof !12

bb.ac:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fm, ptr align 1 %.sroa.059.0, i64 %i.fp, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.ad:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit
  %i.fr = icmp eq i64 %i.fp, 1
  br i1 %i.fr, label %bb.ae, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fs = load i8, ptr %.sroa.059.0, align 1
  store i8 %i.fs, ptr %i.fm, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ba, i64 168 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ba, i64 176 ; 4 uses
  %i.fv = load ptr, ptr %i.fu, align 8            ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ba, i64 184 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8
  %.not.i.i42 = icmp eq ptr %i.fv, %i.fx
  br i1 %.not.i.i42, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit
  %i.fy = ptrtoint ptr %i.bl to i64
  store i64 %i.fy, ptr %i.fv, align 8
  %i.fz = load ptr, ptr %i.fu, align 8            ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.ga, ptr %i.fu, align 8
  br label %bb.aj

bb.ag:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit
  %i.gb = load ptr, ptr %i.ft, align 8            ; 10 uses
  %i.gc = ptrtoint ptr %i.fv to i64               ; 3 uses
  %i.gd = ptrtoint ptr %i.gb to i64               ; 4 uses
  %i.ge = sub i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775800
  br i1 %i.gf, label %bb.ah, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ag
  %i.gg = ashr exact i64 %i.ge, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.gg, i64 1)
  %i.gh = add nsw i64 %.sroa.speculated.i.i, %i.gg ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.gg
  %i.gj = tail call i64 @llvm.umin.i64(i64 %i.gh, i64 1152921504606846975)
  %i.gk = select i1 %i.gi, i64 1152921504606846975, i64 %i.gj ; 3 uses
  %.not.i.i44 = icmp ne i64 %i.gk, 0
  tail call void @llvm.assume(i1 %.not.i.i44)
  %i.gl = shl nuw nsw i64 %i.gk, 3
  %i.gm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gl) #24 ; 10 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ge
  %i.go = ptrtoint ptr %i.bl to i64
  store i64 %i.go, ptr %i.gn, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.gb, %i.fv
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %3 = add i64 %i.gc, -8
  %4 = sub i64 %3, %i.gd                          ; 2 uses
  %i.gp = lshr i64 %4, 3
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader127, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.gr = add i64 %i.gc, -8
  %i.gs = sub i64 %i.gr, %i.gd
  %i.gt = and i64 %i.gs, -8
  %i.gu = add i64 %i.gt, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.gm, i64 %i.gu
  %scevgep123 = getelementptr i8, ptr %i.gb, i64 %i.gu
  %bound0 = icmp ult ptr %i.gm, %scevgep123
  %bound1 = icmp ult ptr %i.gb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader127, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gq, 4611686018427387900     ; 3 uses
  %i.gv = shl i64 %n.vec, 3                       ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gm, i64 %i.gv  ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gb, i64 %i.gv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gm, i64 %i.gy ; 2 uses
  %next.gep124 = getelementptr i8, ptr %i.gb, i64 %i.gy ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.gz = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep124, align 8, !alias.scope !219, !noalias !214
  %wide.load125 = load <2 x i64>, ptr %i.gz, align 8, !alias.scope !219, !noalias !214
  %i.ha = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !222, !noalias !219
  store <2 x i64> %wide.load125, ptr %i.ha, align 8, !alias.scope !222, !noalias !219
  %i.hb = getelementptr i8, ptr %next.gep124, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep124, align 8, !alias.scope !219, !noalias !214
  store <2 x ptr> splat (ptr null), ptr %i.hb, align 8, !alias.scope !219, !noalias !214
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader127

.lr.ph.i.i.i.i.preheader127:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.gm, %vector.memcheck ], [ %i.gm, %.lr.ph.i.i.i.i.preheader ], [ %i.gw, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.gb, %vector.memcheck ], [ %i.gb, %.lr.ph.i.i.i.i.preheader ], [ %i.gx, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader127, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.hf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader127 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.he, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader127 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.hd = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !217, !noalias !214
  store i64 %i.hd, ptr %.012.i.i.i.i, align 8, !alias.scope !214, !noalias !217
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !217, !noalias !214
  %i.he = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.he, %i.fv
  br i1 %.not.i.i.i.i45, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !225

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gm, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.gw, %middle.block ], [ %i.hf, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.gb, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.hh = load ptr, ptr %i.fw, align 8
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = sub i64 %i.hi, %i.gd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.hj) #25
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.ai
  store ptr %i.gm, ptr %i.ft, align 8
  store ptr %i.hg, ptr %i.fu, align 8
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gk
  store ptr %i.hk, ptr %i.fw, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.af
  %i.hl = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ], [ %i.fz, %bb.af ]
  %i.hm = load ptr, ptr %i.hl, align 8
  br label %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i: ; preds = %bb.q, %bb.r
  %i.hn = load ptr, ptr %i.bl, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8
  tail call void %i.hp(ptr noundef nonnull align 8 dereferenceable(192) %i.bl) #22, !inline_history !226
  br label %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.aj, %_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i
  %.280 = phi ptr [ %i.hm, %bb.aj ], [ null, %_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i ] ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %.sroa.059.0, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EED2Ev.exit
  %i.hq = ptrtoint ptr %.sroa.14.0 to i64
  %i.hr = ptrtoint ptr %.sroa.059.0 to i64
  %i.hs = sub i64 %i.hq, %i.hr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.059.0, i64 noundef %i.hs) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.ak, %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EED2Ev.exit, %bb.k
  %.3 = phi ptr [ null, %bb.k ], [ %.280, %_ZNSt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS2_EED2Ev.exit ], [ %.280, %bb.ak ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4LIEF5MachO6Binary3addERKNS0_14SegmentCommandE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(216) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.LIEF::MachO::SegmentCommand", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"struct.LIEF::MachO::DyldChainedFixups::chained_starts_in_segment", align 8 ; 11 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(88) %0) #22
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = and i64 %i.i, 4294967295                 ; 9 uses
  %i.p = icmp eq i64 %i.o, 0                      ; 4 uses
  br i1 %i.p, label %_ZN4LIEF5alignEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = urem i64 %i.n, %i.o                      ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = sub nsw i64 %i.o, %i.q
  %i.s = select i1 %.not.i, i64 0, i64 %i.r
  %.0.i = add i64 %i.s, %i.n
  br label %_ZN4LIEF5alignEmm.exit

_ZN4LIEF5alignEmm.exit:                           ; preds = %bb.a, %bb.b
  %.1.i = phi i64 [ %.0.i, %bb.b ], [ %i.n, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4LIEF5MachO14SegmentCommandC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(216) %1) #22
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4LIEF5alignEmm.exit
  store i64 %.1.i, ptr %i.t, align 8
  call void @_ZN4LIEF5MachO14SegmentCommand14content_resizeEm(ptr noundef nonnull align 8 dereferenceable(216) %2, i64 noundef %.1.i) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4LIEF5alignEmm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.t, align 8              ; 3 uses
  br i1 %i.p, label %_ZN4LIEF5alignEmm.exit96, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = urem i64 %i.z, %i.o                     ; 2 uses
  %.not.i93 = icmp eq i64 %i.aa, 0
  %i.ab = sub nsw i64 %i.o, %i.aa
  %i.ac = select i1 %.not.i93, i64 0, i64 %i.ab
  %.0.i94 = add i64 %i.ac, %i.z
  br label %_ZN4LIEF5alignEmm.exit96

_ZN4LIEF5alignEmm.exit96:                         ; preds = %bb.e, %bb.f
  %.1.i95 = phi i64 [ %.0.i94, %bb.f ], [ %i.z, %bb.e ]
  store i64 %.1.i95, ptr %i.w, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN4LIEF5alignEmm.exit96, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = lshr exact i64 %i.aj, 3
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 %i.al, ptr %i.am, align 8
end_hunk_1
begin_hunk_2_@_ZNK4LIEF5MachO6Binary20get_function_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.b = load ptr, ptr %1, align 8, !noalias !340
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !340 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !alias.scope !343
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !alias.scope !343
  store i8 0, ptr %i.e, align 8, !alias.scope !343
  %i.g = add i64 %i.d, 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g) #22
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !343
  %i.i = icmp eq i64 %i.h, 4611686018427387903
  br i1 %i.i, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.a, i64 noundef 1) #22 ; 0 uses
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !343
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.d
  br i1 %i.m, label %bb.c, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #23
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.b, i64 noundef %i.d) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !noalias !346 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load ptr, ptr %i.q, align 8, !noalias !349 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %.not27 = icmp eq ptr %i.r, %i.p
  br i1 %.not27, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12.thread21
  %.sroa.9.029 = phi i64 [ %i.bb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12.thread21 ], [ 0, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_.exit ]
  %.sroa.514.028 = phi ptr [ %i.ba, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12.thread21 ], [ %i.p, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_.exit ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.514.028, align 8    ; 8 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(56) %i.w) #22
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12.thread21, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ac = load ptr, ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef nonnull align 8 dereferenceable(32) ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(56) %i.w) #22 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ai = load i64, ptr %i.c, align 8
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.e
  %i.al = load ptr, ptr %1, align 8
  %i.am = load ptr, ptr %i.af, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.am, ptr %i.al, i64 %i.ah)
  %i.an = icmp eq i32 %bcmp.i, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ao = load ptr, ptr %i.w, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef nonnull align 8 dereferenceable(32) ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(56) %i.w) #22 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = load i64, ptr %i.f, align 8
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12.thread21

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12: ; preds = %bb.f
  %i.ax = load ptr, ptr %2, align 8
  %i.ay = load ptr, ptr %i.ar, align 8
  %bcmp.i11 = call i32 @bcmp(ptr %i.ay, ptr %i.ax, i64 %i.at)
  %i.az = icmp eq i32 %bcmp.i11, 0
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12.thread21: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20, %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.514.028, i64 8
  %i.bb = add nuw nsw i64 %.sroa.9.029, 1         ; 2 uses
  %.not = icmp eq i64 %i.bb, %i.v
  br i1 %.not, label %.critedge, label %.lr.ph

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.f, %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bc = load ptr, ptr %i.w, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(56) %i.w) #22
  br label %bb.g

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit12.thread21, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_.exit
  %i.bg = call { i64, i8 } @_ZNK4LIEF6Binary20get_function_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #22 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.bg, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.bg, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %.critedge
  %.sroa.019.2 = phi i64 [ %i.bf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %.fca.0.extract, %.critedge ]
  %.sroa.3.2 = phi i8 [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %.fca.1.extract, %.critedge ]
  %i.bh = load ptr, ptr %2, align 8               ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.e
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.bj = load i64, ptr %i.e, align 8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.019.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { i64, i8 } %.fca.1.insert
}

declare { i64, i8 } @_ZNK4LIEF6Binary20get_function_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF5MachO6Binary6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 776
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(488) %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(96) ptr @_ZN4LIEF5MachO6Binary3addERKNS0_6SymbolE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24, !noalias !352 ; 3 uses
  tail call void @_ZN4LIEF5MachO6SymbolC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %1) #22, !noalias !352
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.b to i64
  store i64 %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.c, align 8
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i2 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i2)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = ptrtoint ptr %i.b to i64
  store i64 %i.w, ptr %i.v, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %2 = add i64 %i.k, -8
  %3 = sub i64 %2, %i.l                           ; 2 uses
  %i.x = lshr i64 %3, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.z = add i64 %i.k, -8
  %i.aa = sub i64 %i.z, %i.l
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ac
  %scevgep6 = getelementptr i8, ptr %i.j, i64 %i.ac
  %bound0 = icmp ult ptr %i.u, %scevgep6
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.j, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.ah = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep7, align 8, !alias.scope !360, !noalias !355
  %wide.load8 = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !360, !noalias !355
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !363, !noalias !360
  store <2 x i64> %wide.load8, ptr %i.ai, align 8, !alias.scope !363, !noalias !360
  %i.aj = getelementptr i8, ptr %next.gep7, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7, align 8, !alias.scope !360, !noalias !355
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !alias.scope !360, !noalias !355
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader10

.lr.ph.i.i.i.i.preheader10:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader10, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader10 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader10 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.al = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !358, !noalias !355
  store i64 %i.al, ptr %.012.i.i.i.i, align 8, !alias.scope !355, !noalias !358
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !358, !noalias !355
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !366

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ap = load ptr, ptr %i.e, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ar) #25
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.u, ptr %i.a, align 8
  store ptr %i.ao, ptr %i.c, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.as, ptr %i.e, align 8
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.at = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ], [ %i.h, %bb.b ]
  %i.au = load ptr, ptr %i.at, align 8
  ret ptr %i.au
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN4LIEF5MachO6Binary16add_local_symbolEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(488) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24, !noalias !367 ; 19 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, i8 0, i64 96, i1 false), !noalias !367
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.b) #22, !noalias !367
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !noalias !367
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.e, align 8, !noalias !367
  store i8 0, ptr %i.d, align 8, !noalias !367
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !367
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4LIEF5MachO6SymbolE, i64 16), ptr %i.b, align 8, !noalias !367
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %i.g, align 8, !noalias !367
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 24, i1 false), !noalias !367
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 3, ptr %i.l, align 8
  store i8 0, ptr %i.h, align 1
  store i16 32, ptr %i.i, align 2
  %i.m = load ptr, ptr getelementptr inbounds nuw inrange(-88, 24) (i8, ptr @_ZTVN4LIEF5MachO6SymbolE, i64 88), align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 noundef %1) #22
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.n, ptr %3, align 8
  %i.o = load ptr, ptr %2, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.q, ptr %i.a, align 8
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.s, ptr %3, align 8
  %i.t = load i64, ptr %i.a, align 8
  store i64 %i.t, ptr %i.n, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.u = phi ptr [ %i.s, %bb.b ], [ %i.n, %bb.a ] ; 2 uses
  switch i64 %i.q, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.o, align 1
  store i8 %i.v, ptr %i.u, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.w = load i64, ptr %i.a, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.w, ptr %i.x, align 8
  %i.y = load ptr, ptr %3, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.aa = load ptr, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull %3) #22
  %i.ad = load ptr, ptr %3, align 8               ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.n
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.af = load i64, ptr %i.n, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = ptrtoint ptr %i.b to i64
  store i64 %i.am, ptr %i.aj, align 8
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.ai, align 8
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load ptr, ptr %i.ah, align 8            ; 10 uses
  %i.aq = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.ar = ptrtoint ptr %i.ap to i64               ; 4 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i3)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #24 ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as
  %i.bc = ptrtoint ptr %i.b to i64
  store i64 %i.bc, ptr %i.bb, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.ap, %i.aj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %4 = add i64 %i.aq, -8
  %5 = sub i64 %4, %i.ar                          ; 2 uses
  %i.bd = lshr i64 %5, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bf = add i64 %i.aq, -8
  %i.bg = sub i64 %i.bf, %i.ar
  %i.bh = and i64 %i.bg, -8
  %i.bi = add i64 %i.bh, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ba, i64 %i.bi
  %scevgep16 = getelementptr i8, ptr %i.ap, i64 %i.bi
  %bound0 = icmp ult ptr %i.ba, %scevgep16
  %bound1 = icmp ult ptr %i.ap, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ba, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ap, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ba, i64 %i.bm ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.ap, i64 %i.bm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.bn = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !alias.scope !375, !noalias !370
  %wide.load18 = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !375, !noalias !370
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !378, !noalias !375
  store <2 x i64> %wide.load18, ptr %i.bo, align 8, !alias.scope !378, !noalias !375
  %i.bp = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !alias.scope !375, !noalias !370
  store <2 x ptr> splat (ptr null), ptr %i.bp, align 8, !alias.scope !375, !noalias !370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader20

.lr.ph.i.i.i.i.preheader20:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader20, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader20 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.br = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !373, !noalias !370
  store i64 %i.br, ptr %.012.i.i.i.i, align 8, !alias.scope !370, !noalias !373
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !373, !noalias !370
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.aj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !381

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ba, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bk, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ap, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.bv = load ptr, ptr %i.ak, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.bx) #25
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.h
  store ptr %i.ba, ptr %i.ah, align 8
  store ptr %i.bu, ptr %i.ai, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.by, ptr %i.ak, align 8
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.e
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4LIEF5MachO6Binary21add_exported_functionEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(488) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.535", align 8 ; 3 uses
  %4 = alloca %"class.std::unique_ptr.535", align 8 ; 3 uses
  %i.a = tail call noundef ptr @_ZN4LIEF5MachO6Binary16add_local_symbolEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(488) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = ashr i64 %i.h, 5                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.k = and i64 %i.h, -32
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.c, i64 %i.k ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i.i
  %.045.i.i.i.i.i.i = phi i64 [ %i.af, %bb.e ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.l = load ptr, ptr %.sroa.025.044.i.i.i.i.i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, 2147483699
  br i1 %i.o, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_15DyldExportsTrieEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, 2147483699
  br i1 %i.t, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_15DyldExportsTrieEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.x, 2147483699
  br i1 %i.y, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_15DyldExportsTrieEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit76, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.ac, 2147483699
  br i1 %i.ad, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_15DyldExportsTrieEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit78, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 32
  %i.af = add nsw i64 %.045.i.i.i.i.i.i, -1
  %i.ag = icmp sgt i64 %.045.i.i.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !82

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.e
  %.pre.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %.pre50.i.i.i.i.i.i = sub i64 %i.f, %.pre.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.a
  %.pre-phi51.i.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.h, %bb.a ]
  %.sroa.025.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %i.ah = ashr exact i64 %.pre-phi51.i.i.i.i.i.i, 3
  switch i64 %i.ah, label %_ZN4LIEF5MachO6Binary17dyld_exports_trieEv.exit.thread [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ai = load ptr, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.ak, 2147483699
  br i1 %i.al, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_15DyldExportsTrieEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i
  %.sroa.025.1.i.i.i.i.i.i = phi ptr [ %i.am, %bb.g ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.an = load ptr, ptr %.sroa.025.1.i.i.i.i.i.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = icmp eq i64 %i.ap, 2147483699
  br i1 %i.aq, label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_15DyldExportsTrieEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.025.2.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.i ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.as = load ptr, ptr %.sroa.025.2.i.i.i.i.i.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp eq i64 %i.au, 2147483699
  %spec.select.i.i.i.i.i.i = select i1 %i.av, ptr %.sroa.025.2.i.i.i.i.i.i, ptr %i.e
  br label %_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_15DyldExportsTrieEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i

_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_6Binary7commandINS4_15DyldExportsTrieEEEPKT_vEUlRS9_E_ESI_SI_SI_T0_.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i, i64 8
end_hunk_2
begin_hunk_3_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEEvT_SH_SH_T0_SI_T1_T2_":bb.a

bb.x:                                             ; preds = %bb.v
  %i.bk = icmp eq i64 %i.bf, 8
  br i1 %i.bk, label %bb.y, label %"_ZSt21__move_merge_adaptiveIPPN4LIEF5MachO7SectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZNS1_6Binary14extend_sectionERS2_mE3$_1EEEvT_SH_T0_SI_T1_T2_.exit"

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16
  %i.bm = load ptr, ptr %5, align 8
  store ptr %i.bm, ptr %i.bl, align 8
  br label %"_ZSt21__move_merge_adaptiveIPPN4LIEF5MachO7SectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZNS1_6Binary14extend_sectionERS2_mE3$_1EEEvT_SH_T0_SI_T1_T2_.exit"

bb.z:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %.0.i, align 8
  store ptr %i.bn, ptr %i.az, align 8
  %i.bo = icmp eq ptr %5, %.0.i
  br i1 %i.bo, label %"_ZSt21__move_merge_adaptiveIPPN4LIEF5MachO7SectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZNS1_6Binary14extend_sectionERS2_mE3$_1EEEvT_SH_T0_SI_T1_T2_.exit", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds i8, ptr %.0.i, i64 -8
  br label %bb.t, !llvm.loop !550

"_ZSt21__move_merge_adaptiveIPPN4LIEF5MachO7SectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEESA_NS5_5__ops15_Iter_comp_iterIZNS1_6Binary14extend_sectionERS2_mE3$_1EEEvT_SH_T0_SI_T1_T2_.exit": ; preds = %bb.f, %bb.z, %bb.y, %bb.x, %bb.w, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEEvT_SH_SH_T0_SI_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond82 = or i1 %i.a, %i.b
  br i1 %or.cond82, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr7988 = phi i64 [ %4, %.lr.ph ], [ %i.br, %tailrecurse ] ; 4 uses
  %.tr7887 = phi i64 [ %3, %.lr.ph ], [ %i.bq, %tailrecurse ] ; 4 uses
  %.tr7685 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr83 = phi ptr [ %0, %.lr.ph ], [ %i.bp, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr7988, %.tr7887
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.tr7685, align 8          ; 2 uses
  %i.g = load ptr, ptr %.tr83, align 8            ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.f) #22, !inline_history !551
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #22, !inline_history !551
  %i.p = icmp ult i64 %i.k, %i.o
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %.tr83, align 8
  %i.r = load ptr, ptr %.tr7685, align 8
  store ptr %i.r, ptr %.tr83, align 8
  store ptr %i.q, ptr %.tr7685, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp sgt i64 %.tr7887, %.tr7988
  %i.t = ptrtoint ptr %.tr7685 to i64             ; 4 uses
  br i1 %i.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.u = sdiv i64 %.tr7887, 2                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.tr83, i64 %i.u ; 2 uses
  %i.w = sub i64 %i.c, %i.t
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.x, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7685, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.z = lshr i64 %.016.i, 1                      ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.z ; 2 uses
  %.val.i = load ptr, ptr %i.v, align 8           ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #22, !inline_history !552
  %i.ag = load ptr, ptr %.val.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %.val.i) #22, !inline_history !552
  %i.ak = icmp ult i64 %i.af, %i.aj               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.am = xor i64 %i.z, -1
  %i.an = add nsw i64 %.016.i, %i.am
  %.sroa.011.1.i = select i1 %i.ak, ptr %i.al, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.ak, i64 %i.an, i64 %i.z    ; 2 uses
  %i.ao = icmp sgt i64 %.1.i, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit", !llvm.loop !553

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit" ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit" ], [ %.tr7685, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ap = sub i64 %.pre-phi, %i.t
  %i.aq = ashr exact i64 %i.ap, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit53: ; preds = %bb.e
  %i.ar = sdiv i64 %.tr7988, 2                    ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.tr7685, i64 %i.ar ; 2 uses
  %i.at = ptrtoint ptr %.tr83 to i64              ; 3 uses
  %i.au = sub i64 %i.t, %i.at
  %i.av = ashr exact i64 %i.au, 3                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit53, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.016.i56 = phi i64 [ %.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55 ], [ %i.av, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ] ; 2 uses
  %.sroa.011.015.i57 = phi ptr [ %.sroa.011.1.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55 ], [ %.tr83, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ] ; 2 uses
  %i.ax = lshr i64 %.016.i56, 1                   ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i57, i64 %i.ax ; 2 uses
  %.val.i60 = load ptr, ptr %i.as, align 8        ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = load ptr, ptr %.val.i60, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(64) %.val.i60) #22, !inline_history !554
  %i.be = load ptr, ptr %i.az, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.az) #22, !inline_history !554
  %i.bi = icmp ult i64 %i.bd, %i.bh               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = xor i64 %i.ax, -1
  %i.bl = add nsw i64 %.016.i56, %i.bk
  %.sroa.011.1.i61 = select i1 %i.bi, ptr %.sroa.011.015.i57, ptr %i.bj ; 3 uses
  %.1.i62 = select i1 %i.bi, i64 %i.ax, i64 %i.bl ; 2 uses
  %i.bm = icmp sgt i64 %.1.i62, 0
  br i1 %i.bm, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit", !llvm.loop !555

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i55
  %.pre91 = ptrtoint ptr %.sroa.011.1.i61 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
  %.pre-phi92 = phi i64 [ %.pre91, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit" ], [ %i.at, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %.sroa.011.0.lcssa.i54 = phi ptr [ %.sroa.011.1.i61, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit.loopexit" ], [ %.tr83, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %i.bn = sub i64 %.pre-phi92, %i.at
  %i.bo = ashr exact i64 %i.bn, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit"
  %.sroa.065.0 = phi ptr [ %i.v, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit" ], [ %.sroa.011.0.lcssa.i54, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit" ], [ %i.as, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit" ] ; 2 uses
  %.047 = phi i64 [ %i.aq, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit" ], [ %i.ar, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit" ] ; 2 uses
  %.0 = phi i64 [ %i.u, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit" ], [ %i.bo, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEET_SH_SH_RKT0_T1_.exit" ] ; 2 uses
  %i.bp = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_St26random_access_iterator_tag(ptr %.sroa.065.0, ptr %.tr7685, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEEvT_SH_SH_T0_SI_T1_"(ptr %.tr83, ptr %.sroa.065.0, ptr %i.bp, i64 noundef %.0, i64 noundef %.047)
  %i.bq = sub nsw i64 %.tr7887, %.0               ; 2 uses
  %i.br = sub nsw i64 %.tr7988, %.047             ; 2 uses
  %i.bs = icmp eq i64 %i.bq, 0
  %i.bt = icmp eq i64 %i.br, 0
  %or.cond = or i1 %i.bs, %i.bt
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %3 = add i64 %i.g, -8
  %4 = sub i64 %3, %i.d                           ; 2 uses
  %i.l = lshr i64 %4, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check165 = icmp ult i64 %4, 120
  br i1 %min.iters.check165, label %.lr.ph.i.preheader182, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.i.preheader
  %i.n = add i64 %i.g, -8
  %i.o = sub i64 %i.n, %i.d
  %i.p = and i64 %i.o, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %scevgep159 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.q
  %bound0161 = icmp ult ptr %0, %scevgep160
  %bound1162 = icmp ult ptr %1, %scevgep159
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i.preheader182, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck158
  %n.vec168 = and i64 %i.m, 4611686018427387900   ; 3 uses
  %i.r = shl i64 %n.vec168, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.r
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next177, %vector.body169 ] ; 2 uses
  %i.u = shl i64 %index170, 3                     ; 2 uses
  %next.gep171 = getelementptr i8, ptr %1, i64 %i.u ; 3 uses
  %next.gep172 = getelementptr i8, ptr %0, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %next.gep172, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep172, align 8, !alias.scope !556, !noalias !559
  %wide.load174 = load <2 x ptr>, ptr %i.v, align 8, !alias.scope !556, !noalias !559
  %i.w = getelementptr i8, ptr %next.gep171, i64 16 ; 2 uses
  %wide.load175 = load <2 x ptr>, ptr %next.gep171, align 8, !alias.scope !559
  %wide.load176 = load <2 x ptr>, ptr %i.w, align 8, !alias.scope !559
  store <2 x ptr> %wide.load175, ptr %next.gep172, align 8, !alias.scope !556, !noalias !559
  store <2 x ptr> %wide.load176, ptr %i.v, align 8, !alias.scope !556, !noalias !559
  store <2 x ptr> %wide.load173, ptr %next.gep171, align 8, !alias.scope !559
  store <2 x ptr> %wide.load174, ptr %i.w, align 8, !alias.scope !559
  %index.next177 = add nuw i64 %index170, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next177, %n.vec168
  br i1 %i.x, label %middle.block178, label %vector.body169, !llvm.loop !561

middle.block178:                                  ; preds = %vector.body169
  %cmp.n179 = icmp eq i64 %i.m, %n.vec168
  br i1 %cmp.n179, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.preheader182

.lr.ph.i.preheader182:                            ; preds = %vector.memcheck158, %.lr.ph.i.preheader, %middle.block178
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck158 ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block178 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck158 ], [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block178 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader182, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader182 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader182 ] ; 3 uses
  %i.y = load ptr, ptr %.sroa.04.07.i, align 8
  %i.z = load ptr, ptr %.sroa.0.08.i, align 8
  store ptr %i.z, ptr %.sroa.04.07.i, align 8
  store ptr %i.y, ptr %.sroa.0.08.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i, !llvm.loop !562

bb.d:                                             ; preds = %bb.c
  %i.ac = sub i64 %i.c, %i.g
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 22 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ae = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.af = icmp slt i64 %.084, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %.084, 1
  br i1 %i.ag, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.f
  %i.ah = load ptr, ptr %.sroa.041.0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.ai, i64 %gepdiff, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store ptr %i.ah, ptr %i.ak, align 8
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %bb.g
  %i.am = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 6
  br i1 %min.iters.check, label %.lr.ph99.preheader183, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.an = shl i64 %.0, 3
  %i.ao = sub i64 %.0, %.084
  %i.ap = shl i64 %i.ao, 3
  %scevgep = getelementptr i8, ptr %.sroa.041.0, i64 %i.ap
  %scevgep127 = getelementptr i8, ptr %.sroa.041.0, i64 %i.an
  %bound0 = icmp ult ptr %.sroa.041.0, %scevgep127
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader183, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 9223372036854775804     ; 4 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.041.0, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.am, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.041.0, i64 %i.at ; 3 uses
  %next.gep128 = getelementptr i8, ptr %i.am, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !563, !noalias !566
  %wide.load129 = load <2 x ptr>, ptr %i.au, align 8, !alias.scope !563, !noalias !566
  %i.av = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep128, align 8, !alias.scope !566
  %wide.load131 = load <2 x ptr>, ptr %i.av, align 8, !alias.scope !566
  store <2 x ptr> %wide.load130, ptr %next.gep, align 8, !alias.scope !563, !noalias !566
  store <2 x ptr> %wide.load131, ptr %i.au, align 8, !alias.scope !563, !noalias !566
  store <2 x ptr> %wide.load, ptr %next.gep128, align 8, !alias.scope !566
  store <2 x ptr> %wide.load129, ptr %i.av, align 8, !alias.scope !566
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !568

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader183

.lr.ph99.preheader183:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.041.196.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.ar, %middle.block ] ; 2 uses
  %.sroa.038.095.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph99.preheader ], [ %i.as, %middle.block ] ; 2 uses
  %i.ax = sub i64 %.0, %.084
  %xtraiter191 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader183, %.lr.ph99.prol
  %.02897.prol = phi i64 [ %i.bc, %.lr.ph99.prol ], [ %.02897.ph, %.lr.ph99.preheader183 ]
  %.sroa.041.196.prol = phi ptr [ %i.ba, %.lr.ph99.prol ], [ %.sroa.041.196.ph, %.lr.ph99.preheader183 ] ; 3 uses
  %.sroa.038.095.prol = phi ptr [ %i.bb, %.lr.ph99.prol ], [ %.sroa.038.095.ph, %.lr.ph99.preheader183 ] ; 3 uses
  %prol.iter193 = phi i64 [ %prol.iter193.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader183 ]
  %i.ay = load ptr, ptr %.sroa.041.196.prol, align 8
  %i.az = load ptr, ptr %.sroa.038.095.prol, align 8
  store ptr %i.az, ptr %.sroa.041.196.prol, align 8
  store ptr %i.ay, ptr %.sroa.038.095.prol, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.041.196.prol, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.038.095.prol, i64 8 ; 2 uses
  %i.bc = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter193.next = add i64 %prol.iter193, 1   ; 2 uses
  %prol.iter193.cmp.not = icmp eq i64 %prol.iter193.next, %xtraiter191
  br i1 %prol.iter193.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !569

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader183
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.preheader183 ], [ %i.ba, %.lr.ph99.prol ]
  %.02897.unr = phi i64 [ %.02897.ph, %.lr.ph99.preheader183 ], [ %i.bc, %.lr.ph99.prol ]
  %.sroa.041.196.unr = phi ptr [ %.sroa.041.196.ph, %.lr.ph99.preheader183 ], [ %i.ba, %.lr.ph99.prol ]
  %.sroa.038.095.unr = phi ptr [ %.sroa.038.095.ph, %.lr.ph99.preheader183 ], [ %i.bb, %.lr.ph99.prol ]
  %i.bd = sub i64 %.02897.ph, %.0
  %i.be = add i64 %i.bd, %.084
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.ar, %middle.block ], [ %.lcssa.unr, %.lr.ph99.prol.loopexit ], [ %i.bv, %.lr.ph99 ]
  %i.bg = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.bg, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.bx, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.041.196 = phi ptr [ %i.bv, %.lr.ph99 ], [ %.sroa.041.196.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.038.095 = phi ptr [ %i.bw, %.lr.ph99 ], [ %.sroa.038.095.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bh = load ptr, ptr %.sroa.041.196, align 8
  %i.bi = load ptr, ptr %.sroa.038.095, align 8
  store ptr %i.bi, ptr %.sroa.041.196, align 8
  store ptr %i.bh, ptr %.sroa.038.095, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %i.bk, align 8
  store ptr %i.bm, ptr %i.bj, align 8
  store ptr %i.bl, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8
end_hunk_3
