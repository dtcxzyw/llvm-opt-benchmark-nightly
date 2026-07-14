inline.NumInlined: 678
inline.NumDeleted: 216
begin_hunk_0_@_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  store ptr %i.by, ptr %2, align 8, !tbaa !53
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store ptr %i.ca, ptr %i.bt, align 8, !tbaa !54
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bj
  store ptr %i.cb, ptr %i.bl, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !50
  %i.ce = load ptr, ptr %3, align 8, !tbaa !53    ; 4 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = ashr exact i64 %i.ch, 2
  %i.cj = icmp ult i64 %i.ci, %i.bj
  br i1 %i.cj, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit158

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !54
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.cg                    ; 3 uses
  %i.co = shl nuw nsw i64 %i.bj, 2
  %i.cp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #19 ; 4 uses
  %i.cq = icmp sgt i64 %i.cn, 0
  br i1 %i.cq, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cp, ptr align 4 %i.ce, i64 %i.cn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155: ; preds = %bb.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154
  %.not.i8.i156 = icmp eq ptr %i.ce, null
  br i1 %.not.i8.i156, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ch) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155
  store ptr %i.cp, ptr %3, align 8, !tbaa !53
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  store ptr %i.cr, ptr %i.ck, align 8, !tbaa !54
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.bj
  store ptr %i.cs, ptr %i.cc, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit158

_ZNSt6vectorIiSaIiEE7reserveEm.exit158:           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157
  %i.ct = shl nsw i32 %i.e, 2
  %i.cu = zext nneg i32 %i.ct to i64              ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !50
  %i.cx = load ptr, ptr %4, align 8, !tbaa !53    ; 4 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = ashr exact i64 %i.da, 2
  %i.dc = icmp ult i64 %i.db, %i.cu
  br i1 %i.dc, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i159, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit163

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i159: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit158
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !54
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.cz                    ; 3 uses
  %i.dh = shl nuw nsw i64 %i.cu, 2
  %i.di = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #19 ; 4 uses
  %i.dj = icmp sgt i64 %i.dg, 0
  br i1 %i.dj, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i160

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i159
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.di, ptr align 4 %i.cx, i64 %i.dg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i160

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i160: ; preds = %bb.k, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i159
  %.not.i8.i161 = icmp eq ptr %i.cx, null
  br i1 %.not.i8.i161, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i162, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i160
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.da) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i162

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i162: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i160
  store ptr %i.di, ptr %4, align 8, !tbaa !53
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dg
  store ptr %i.dk, ptr %i.dd, align 8, !tbaa !54
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.cu
  store ptr %i.dl, ptr %i.cv, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit163

_ZNSt6vectorIiSaIiEE7reserveEm.exit163:           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit158, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i162
  %i.dm = load i32, ptr %i.c, align 4, !tbaa !40  ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.preheader529.lr.ph, label %._crit_edge539

.preheader529.lr.ph:                              ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit163
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ds = load i32, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.preheader529, label %._crit_edge539

bb.m:                                             ; preds = %.lr.ph534, %.loopexit
  %.0120533 = phi i32 [ 0, %.lr.ph534 ], [ %i.fx, %.loopexit ] ; 3 uses
  %i.du = load i32, ptr %i.be, align 4, !tbaa !39
  %i.dv = add nsw i32 %i.du, %.0120533            ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.dx = load ptr, ptr %i.bg, align 8, !tbaa !45 ; 4 uses
  %i.dy = load ptr, ptr %i.q, align 8, !tbaa !41
  %.not.i.i164 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not.i.i164, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  store ptr %i.dz, ptr %i.bg, align 8, !tbaa !45
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit

bb.p:                                             ; preds = %bb.n
  call void @_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %11)
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  %i.ea = sitofp i32 %i.dv to double
  %i.eb = fmul double %i.bh, %i.ea                ; 2 uses
  br i1 %.not152530, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %.pre = load ptr, ptr %i.bg, align 8, !tbaa !45
  %.pre575 = load ptr, ptr %i.q, align 8, !tbaa !41
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167
  %i.ec = phi ptr [ %i.fu, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167 ], [ %.pre575, %.lr.ph.preheader ] ; 5 uses
  %i.ed = phi ptr [ %i.fv, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167 ], [ %.pre, %.lr.ph.preheader ] ; 4 uses
  %.0129531 = phi i32 [ %i.fw, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !25
  %i.ef = load i32, ptr %i.bf, align 8, !tbaa !37
  %i.eg = add i32 %.0129531, %i.ef
  %i.eh = sub i32 %i.ee, %i.eg
  %i.ei = sitofp i32 %i.eh to double
  %i.ej = fmul double %i.bi, %i.ei                ; 2 uses
  %i.ek = call double @cos(double noundef %i.ej) #15, !tbaa !4
  %i.el = fmul double %i.eb, %i.ek                ; 2 uses
  %i.em = call double @sin(double noundef %i.ej) #15, !tbaa !4
  %i.en = fmul double %i.eb, %i.em                ; 2 uses
  %.not.i.i165 = icmp eq ptr %i.ed, %i.ec
  br i1 %.not.i.i165, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  store double %i.el, ptr %i.ed, align 8, !tbaa !55
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store double %i.en, ptr %i.eo, align 8, !tbaa !57
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  store ptr %i.ep, ptr %i.bg, align 8, !tbaa !45
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167

bb.s:                                             ; preds = %.lr.ph
  %i.eq = load ptr, ptr %1, align 8, !tbaa !44    ; 12 uses
  %i.er = ptrtoint ptr %i.ec to i64               ; 3 uses
  %i.es = ptrtoint ptr %i.eq to i64               ; 3 uses
  %i.et = sub i64 %i.er, %i.es                    ; 4 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775792
  br i1 %i.eu, label %.noexc434, label %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i

.noexc434:                                        ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %i.ev = ashr exact i64 %i.et, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = call i64 @llvm.umin.i64(i64 %i.ew, i64 576460752303423487)
  %i.ez = select i1 %i.ex, i64 576460752303423487, i64 %i.ey ; 3 uses
  %.not.i.i427 = icmp ne i64 %i.ez, 0
  call void @llvm.assume(i1 %.not.i.i427)
  %i.fa = shl nuw nsw i64 %i.ez, 4
  %i.fb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #19 ; 13 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.et ; 2 uses
  store double %i.el, ptr %i.fc, align 8, !tbaa !55
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store double %i.en, ptr %i.fd, align 8, !tbaa !57
  %.not13.i.i.i.i.i.i428 = icmp eq ptr %i.eq, %i.ec
  br i1 %.not13.i.i.i.i.i.i428, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i429.preheader

.lr.ph.i.i.i.i.i.i429.preheader:                  ; preds = %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i
  %12 = sub i64 %i.er, %i.es
  %13 = add i64 %12, -16                          ; 2 uses
  %i.fe = lshr i64 %13, 4
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check822 = icmp ult i64 %13, 144
  br i1 %min.iters.check822, label %.lr.ph.i.i.i.i.i.i429.preheader842, label %vector.memcheck804

vector.memcheck804:                               ; preds = %.lr.ph.i.i.i.i.i.i429.preheader
  %scevgep805 = getelementptr i8, ptr %i.fb, i64 8
  %i.fg = add i64 %i.er, -16
  %i.fh = sub i64 %i.fg, %i.es
  %i.fi = and i64 %i.fh, -16                      ; 4 uses
  %scevgep806 = getelementptr i8, ptr %scevgep805, i64 %i.fi
  %scevgep807 = getelementptr i8, ptr %i.eq, i64 8 ; 2 uses
  %scevgep808 = getelementptr i8, ptr %scevgep807, i64 %i.fi
  %scevgep809 = getelementptr i8, ptr %i.fb, i64 8
  %scevgep810 = getelementptr i8, ptr %i.fb, i64 16
  %scevgep811 = getelementptr i8, ptr %scevgep810, i64 %i.fi
  %scevgep812 = getelementptr i8, ptr %i.eq, i64 16
  %scevgep813 = getelementptr i8, ptr %scevgep812, i64 %i.fi
  %bound0814 = icmp ult ptr %i.fb, %scevgep808
  %bound1815 = icmp ult ptr %i.eq, %scevgep806
  %found.conflict816 = and i1 %bound0814, %bound1815
  %bound0817 = icmp ult ptr %scevgep809, %scevgep813
  %bound1818 = icmp ult ptr %scevgep807, %scevgep811
  %found.conflict819 = and i1 %bound0817, %bound1818
  %conflict.rdx820 = or i1 %found.conflict816, %found.conflict819
  br i1 %conflict.rdx820, label %.lr.ph.i.i.i.i.i.i429.preheader842, label %vector.ph823

vector.ph823:                                     ; preds = %vector.memcheck804
  %n.vec825 = and i64 %i.ff, 2305843009213693950  ; 3 uses
  %i.fj = shl i64 %n.vec825, 4                    ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fb, i64 %i.fj  ; 2 uses
  %i.fl = getelementptr i8, ptr %i.eq, i64 %i.fj
  br label %vector.body826

vector.body826:                                   ; preds = %vector.body826, %vector.ph823
  %index827 = phi i64 [ 0, %vector.ph823 ], [ %index.next834, %vector.body826 ] ; 2 uses
  %i.fm = shl i64 %index827, 4                    ; 3 uses
  %i.fn = or disjoint i64 %i.fm, 16               ; 2 uses
  %next.gep828 = getelementptr i8, ptr %i.fb, i64 %i.fm
  %next.gep829 = getelementptr i8, ptr %i.fb, i64 %i.fn
  %next.gep830 = getelementptr i8, ptr %i.eq, i64 %i.fm
  %next.gep831 = getelementptr i8, ptr %i.eq, i64 %i.fn
  %wide.load832 = load <2 x double>, ptr %next.gep830, align 8
  %wide.load833 = load <2 x double>, ptr %next.gep831, align 8
  store <2 x double> %wide.load832, ptr %next.gep828, align 8
  store <2 x double> %wide.load833, ptr %next.gep829, align 8
  %index.next834 = add nuw i64 %index827, 2       ; 2 uses
  %i.fo = icmp eq i64 %index.next834, %n.vec825
  br i1 %i.fo, label %middle.block835, label %vector.body826, !llvm.loop !58

middle.block835:                                  ; preds = %vector.body826
  %cmp.n836 = icmp eq i64 %i.ff, %n.vec825
  br i1 %cmp.n836, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i429.preheader842

.lr.ph.i.i.i.i.i.i429.preheader842:               ; preds = %vector.memcheck804, %.lr.ph.i.i.i.i.i.i429.preheader, %middle.block835
  %.015.i.i.i.i.i.i430.ph = phi ptr [ %i.fb, %vector.memcheck804 ], [ %i.fb, %.lr.ph.i.i.i.i.i.i429.preheader ], [ %i.fk, %middle.block835 ]
  %.01214.i.i.i.i.i.i431.ph = phi ptr [ %i.eq, %vector.memcheck804 ], [ %i.eq, %.lr.ph.i.i.i.i.i.i429.preheader ], [ %i.fl, %middle.block835 ]
  br label %.lr.ph.i.i.i.i.i.i429

.lr.ph.i.i.i.i.i.i429:                            ; preds = %.lr.ph.i.i.i.i.i.i429.preheader842, %.lr.ph.i.i.i.i.i.i429
  %.015.i.i.i.i.i.i430 = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i429 ], [ %.015.i.i.i.i.i.i430.ph, %.lr.ph.i.i.i.i.i.i429.preheader842 ] ; 2 uses
  %.01214.i.i.i.i.i.i431 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i429 ], [ %.01214.i.i.i.i.i.i431.ph, %.lr.ph.i.i.i.i.i.i429.preheader842 ] ; 2 uses
  %i.fp = load <2 x double>, ptr %.01214.i.i.i.i.i.i431, align 8, !tbaa !23
  store <2 x double> %i.fp, ptr %.015.i.i.i.i.i.i430, align 8, !tbaa !23
  %i.fq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i431, i64 16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i430, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i432 = icmp eq ptr %i.fq, %i.ec
  br i1 %.not.i.i.i.i.i.i432, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i429, !llvm.loop !59

_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i429, %middle.block835, %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fb, %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i ], [ %i.fk, %middle.block835 ], [ %i.fr, %.lr.ph.i.i.i.i.i.i429 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.eq, null
  br i1 %.not.i35.i, label %.noexc166, label %bb.t

bb.t:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.et) #16
  br label %.noexc166

.noexc166:                                        ; preds = %bb.t, %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i
  store ptr %i.fb, ptr %1, align 8, !tbaa !44
  store ptr %i.fs, ptr %i.bg, align 8, !tbaa !45
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.ez ; 2 uses
  store ptr %i.ft, ptr %i.q, align 8, !tbaa !41
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167

_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167: ; preds = %.noexc166, %bb.r
  %i.fu = phi ptr [ %i.ft, %.noexc166 ], [ %i.ec, %bb.r ]
  %i.fv = phi ptr [ %i.fs, %.noexc166 ], [ %i.ep, %bb.r ]
  %i.fw = add nuw i32 %.0129531, 1
  %exitcond.not = icmp eq i32 %.0129531, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !60

.loopexit:                                        ; preds = %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167, %bb.q, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
  %i.fx = add nuw i32 %.0120533, 1
  %exitcond566.not = icmp eq i32 %.0120533, %i.d
  br i1 %exitcond566.not, label %._crit_edge, label %bb.m, !llvm.loop !61

.preheader529:                                    ; preds = %.preheader529.lr.ph, %._crit_edge537
  %i.fy = phi i32 [ %i.ge, %._crit_edge537 ], [ %i.dm, %.preheader529.lr.ph ]
  %i.fz = phi i32 [ %i.gf, %._crit_edge537 ], [ %i.ds, %.preheader529.lr.ph ] ; 2 uses
  %.0127538 = phi i32 [ %i.gg, %._crit_edge537 ], [ 0, %.preheader529.lr.ph ] ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph536, label %._crit_edge537

.lr.ph536:                                        ; preds = %.preheader529
  %i.gb = mul nsw i32 %.0127538, %i.f
  %.pre576 = load ptr, ptr %i.do, align 8, !tbaa !54
  br label %bb.u

._crit_edge539:                                   ; preds = %._crit_edge537, %.preheader529.lr.ph, %_ZNSt6vectorIiSaIiEE7reserveEm.exit163
  %i.gc = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4
  %i.gd = icmp eq i32 %i.gc, 1
  br i1 %i.gd, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit426, label %bb.bl

._crit_edge537.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit216
  %.pre577 = load i32, ptr %i.c, align 4, !tbaa !40
  br label %._crit_edge537

._crit_edge537:                                   ; preds = %._crit_edge537.loopexit, %.preheader529
  %i.ge = phi i32 [ %.pre577, %._crit_edge537.loopexit ], [ %i.fy, %.preheader529 ] ; 2 uses
  %i.gf = phi i32 [ %i.mv, %._crit_edge537.loopexit ], [ %i.fz, %.preheader529 ]
  %i.gg = add nuw nsw i32 %.0127538, 1            ; 2 uses
  %i.gh = icmp slt i32 %i.gg, %i.ge
  br i1 %i.gh, label %.preheader529, label %._crit_edge539, !llvm.loop !62

bb.u:                                             ; preds = %.lr.ph536, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit216
  %i.gi = phi ptr [ %.pre576, %.lr.ph536 ], [ %i.mt, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit216 ]
  %.0126535 = phi i32 [ 0, %.lr.ph536 ], [ %i.mu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit216 ] ; 2 uses
  %i.gj = load ptr, ptr %4, align 8, !tbaa !53
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = lshr exact i64 %i.gm, 2
  %i.go = trunc i64 %i.gn to i32                  ; 2 uses
  %i.gp = load ptr, ptr %i.dp, align 8, !tbaa !54 ; 4 uses
  %i.gq = load ptr, ptr %i.bl, align 8, !tbaa !50
  %.not.i.i168 = icmp eq ptr %i.gp, %i.gq
  br i1 %.not.i.i168, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store ptr %i.gr, ptr %i.dp, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.w:                                             ; preds = %bb.u
  %i.gs = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 6 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775804
  br i1 %i.gw, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.gx = ashr exact i64 %i.gv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 2305843009213693951)
  %i.hb = select i1 %i.gz, i64 2305843009213693951, i64 %i.ha ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.hc = shl nuw nsw i64 %i.hb, 2
  %i.hd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #19 ; 4 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %i.gv ; 2 uses
  store i32 %i.go, ptr %i.he, align 4, !tbaa !4
  %i.hf = icmp sgt i64 %i.gv, 0
  br i1 %i.hf, label %bb.y, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.y:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.gs, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.y, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gv) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.z, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.hd, ptr %2, align 8, !tbaa !53
  store ptr %i.hg, ptr %i.dp, align 8, !tbaa !54
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hb
  store ptr %i.hh, ptr %i.bl, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.hi = add nsw i32 %.0126535, %i.gb
  %i.hj = load i32, ptr %i.h, align 4, !tbaa !36
  %i.hk = icmp eq i32 %i.hj, 0
  %i.hl = select i1 %i.hk, i32 %i.b, i32 0
  %spec.select = sub i32 %i.hi, %i.hl             ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = ashr exact i64 %i.bm, 2
  %i.bo = icmp ult i64 %i.bn, %i.bf
  br i1 %i.bo, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !54
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bl                    ; 3 uses
  %i.bt = shl nuw nsw i64 %i.bf, 2
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #19 ; 4 uses
  %i.bv = icmp sgt i64 %i.bs, 0
  br i1 %i.bv, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %i.bj, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bj, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.bu, ptr %2, align 8, !tbaa !53
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  store ptr %i.bw, ptr %i.bp, align 8, !tbaa !54
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bf
  store ptr %i.bx, ptr %i.bh, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !50
  %i.ca = load ptr, ptr %3, align 8, !tbaa !53    ; 4 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 2 uses
  %i.ce = ashr exact i64 %i.cd, 2
  %i.cf = icmp ult i64 %i.ce, %i.bf
  br i1 %i.cf, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit137

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !54
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.cc                    ; 3 uses
  %i.ck = shl nuw nsw i64 %i.bf, 2
  %i.cl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #19 ; 4 uses
  %i.cm = icmp sgt i64 %i.cj, 0
  br i1 %i.cm, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %i.ca, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134: ; preds = %bb.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133
  %.not.i8.i135 = icmp eq ptr %i.ca, null
  br i1 %.not.i8.i135, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cd) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134
  store ptr %i.cl, ptr %3, align 8, !tbaa !53
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store ptr %i.cn, ptr %i.cg, align 8, !tbaa !54
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.bf
  store ptr %i.co, ptr %i.by, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit137

_ZNSt6vectorIiSaIiEE7reserveEm.exit137:           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136
  %i.cp = shl nsw i32 %i.e, 2
  %i.cq = zext nneg i32 %i.cp to i64              ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !50
  %i.ct = load ptr, ptr %4, align 8, !tbaa !53    ; 4 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 2 uses
  %i.cx = ashr exact i64 %i.cw, 2
  %i.cy = icmp ult i64 %i.cx, %i.cq
  br i1 %i.cy, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i138, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit142

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i138: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit137
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !54
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cv                    ; 3 uses
  %i.dd = shl nuw nsw i64 %i.cq, 2
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #19 ; 4 uses
  %i.df = icmp sgt i64 %i.dc, 0
  br i1 %i.df, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i139

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i138
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.de, ptr align 4 %i.ct, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i139

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i139: ; preds = %bb.k, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i138
  %.not.i8.i140 = icmp eq ptr %i.ct, null
  br i1 %.not.i8.i140, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i141, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i139
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cw) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i141

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i141: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i139
  store ptr %i.de, ptr %4, align 8, !tbaa !53
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store ptr %i.dg, ptr %i.cz, align 8, !tbaa !54
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.cq
  store ptr %i.dh, ptr %i.cr, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit142

_ZNSt6vectorIiSaIiEE7reserveEm.exit142:           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit137, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i141
  %i.di = load i32, ptr %i.c, align 4, !tbaa !40  ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.preheader.lr.ph, label %._crit_edge414

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit142
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.dn = load i32, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.preheader, label %._crit_edge414

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.pre = phi ptr [ %i.fk, %._crit_edge ], [ %.pre.pre, %.lr.ph.preheader ]
  %i.dp = phi ptr [ %i.fi, %._crit_edge ], [ %i.as, %.lr.ph.preheader ]
  %i.dq = phi ptr [ %i.fj, %._crit_edge ], [ %i.at, %.lr.ph.preheader ]
  %.0100407 = phi i32 [ %i.dv, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.dr = load i32, ptr %i.ba, align 4, !tbaa !39
  %i.ds = add nsw i32 %i.dr, %.0100407
  %i.dt = sitofp i32 %i.ds to double
  %i.du = fmul double %i.bd, %i.dt                ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
  %i.dv = add nuw i32 %.0100407, 1
  %exitcond440.not = icmp eq i32 %.0100407, %i.d
  br i1 %exitcond440.not, label %._crit_edge409, label %.lr.ph, !llvm.loop !73

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
  %i.dw = phi ptr [ %i.dp, %.lr.ph ], [ %i.fi, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit ] ; 13 uses
  %i.dx = phi ptr [ %i.dq, %.lr.ph ], [ %i.fj, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit ] ; 5 uses
  %i.dy = phi ptr [ %.pre, %.lr.ph ], [ %i.fk, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit ] ; 4 uses
  %.0103405 = phi i32 [ 0, %.lr.ph ], [ %i.fl, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit ] ; 3 uses
  %i.dz = load i32, ptr %i.bb, align 8, !tbaa !37
  %i.ea = add nsw i32 %i.dz, %.0103405
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = fmul double %i.be, %i.eb                ; 2 uses
  %.not.i.i143 = icmp eq ptr %i.dy, %i.dx
  br i1 %.not.i.i143, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double %i.ec, ptr %i.dy, align 8, !tbaa !55
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store double %i.du, ptr %i.ed, align 8, !tbaa !57
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  store ptr %i.ee, ptr %i.bc, align 8, !tbaa !45
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit

bb.o:                                             ; preds = %bb.m
  %i.ef = ptrtoint ptr %i.dx to i64               ; 3 uses
  %i.eg = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.eh = sub i64 %i.ef, %i.eg                    ; 4 uses
  %i.ei = icmp eq i64 %i.eh, 9223372036854775792
  br i1 %i.ei, label %.noexc338, label %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i

.noexc338:                                        ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.ej = ashr exact i64 %i.eh, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ej, i64 1)
  %i.ek = add nsw i64 %.sroa.speculated.i.i, %i.ej ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.ej
  %i.em = tail call i64 @llvm.umin.i64(i64 %i.ek, i64 576460752303423487)
  %i.en = select i1 %i.el, i64 576460752303423487, i64 %i.em ; 3 uses
  %.not.i.i331 = icmp ne i64 %i.en, 0
  tail call void @llvm.assume(i1 %.not.i.i331)
  %i.eo = shl nuw nsw i64 %i.en, 4
  %i.ep = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #19 ; 14 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eh ; 2 uses
  store double %i.ec, ptr %i.eq, align 8, !tbaa !55
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store double %i.du, ptr %i.er, align 8, !tbaa !57
  %.not13.i.i.i.i.i.i332 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not13.i.i.i.i.i.i332, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i333.preheader

.lr.ph.i.i.i.i.i.i333.preheader:                  ; preds = %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i
  %11 = sub i64 %i.ef, %i.eg
  %12 = add i64 %11, -16                          ; 2 uses
  %i.es = lshr i64 %12, 4
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check670 = icmp ult i64 %12, 144
  br i1 %min.iters.check670, label %.lr.ph.i.i.i.i.i.i333.preheader691, label %vector.memcheck652

vector.memcheck652:                               ; preds = %.lr.ph.i.i.i.i.i.i333.preheader
  %scevgep653 = getelementptr i8, ptr %i.ep, i64 8
  %i.eu = add i64 %i.ef, -16
  %i.ev = sub i64 %i.eu, %i.eg
  %i.ew = and i64 %i.ev, -16                      ; 4 uses
  %scevgep654 = getelementptr i8, ptr %scevgep653, i64 %i.ew
  %scevgep655 = getelementptr i8, ptr %i.dw, i64 8 ; 2 uses
  %scevgep656 = getelementptr i8, ptr %scevgep655, i64 %i.ew
  %scevgep657 = getelementptr i8, ptr %i.ep, i64 8
  %scevgep658 = getelementptr i8, ptr %i.ep, i64 16
  %scevgep659 = getelementptr i8, ptr %scevgep658, i64 %i.ew
  %scevgep660 = getelementptr i8, ptr %i.dw, i64 16
  %scevgep661 = getelementptr i8, ptr %scevgep660, i64 %i.ew
  %bound0662 = icmp ult ptr %i.ep, %scevgep656
  %bound1663 = icmp ult ptr %i.dw, %scevgep654
  %found.conflict664 = and i1 %bound0662, %bound1663
  %bound0665 = icmp ult ptr %scevgep657, %scevgep661
  %bound1666 = icmp ult ptr %scevgep655, %scevgep659
  %found.conflict667 = and i1 %bound0665, %bound1666
  %conflict.rdx668 = or i1 %found.conflict664, %found.conflict667
  br i1 %conflict.rdx668, label %.lr.ph.i.i.i.i.i.i333.preheader691, label %vector.ph671

vector.ph671:                                     ; preds = %vector.memcheck652
  %n.vec673 = and i64 %i.et, 2305843009213693950  ; 3 uses
  %i.ex = shl i64 %n.vec673, 4                    ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ep, i64 %i.ex  ; 2 uses
  %i.ez = getelementptr i8, ptr %i.dw, i64 %i.ex
  br label %vector.body674

vector.body674:                                   ; preds = %vector.body674, %vector.ph671
  %index675 = phi i64 [ 0, %vector.ph671 ], [ %index.next682, %vector.body674 ] ; 2 uses
  %i.fa = shl i64 %index675, 4                    ; 3 uses
  %i.fb = or disjoint i64 %i.fa, 16               ; 2 uses
  %next.gep676 = getelementptr i8, ptr %i.ep, i64 %i.fa
  %next.gep677 = getelementptr i8, ptr %i.ep, i64 %i.fb
  %next.gep678 = getelementptr i8, ptr %i.dw, i64 %i.fa
  %next.gep679 = getelementptr i8, ptr %i.dw, i64 %i.fb
  %wide.load680 = load <2 x double>, ptr %next.gep678, align 8
  %wide.load681 = load <2 x double>, ptr %next.gep679, align 8
  store <2 x double> %wide.load680, ptr %next.gep676, align 8
  store <2 x double> %wide.load681, ptr %next.gep677, align 8
  %index.next682 = add nuw i64 %index675, 2       ; 2 uses
  %i.fc = icmp eq i64 %index.next682, %n.vec673
  br i1 %i.fc, label %middle.block683, label %vector.body674, !llvm.loop !74

middle.block683:                                  ; preds = %vector.body674
  %cmp.n684 = icmp eq i64 %i.et, %n.vec673
  br i1 %cmp.n684, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i333.preheader691

.lr.ph.i.i.i.i.i.i333.preheader691:               ; preds = %vector.memcheck652, %.lr.ph.i.i.i.i.i.i333.preheader, %middle.block683
  %.015.i.i.i.i.i.i334.ph = phi ptr [ %i.ep, %vector.memcheck652 ], [ %i.ep, %.lr.ph.i.i.i.i.i.i333.preheader ], [ %i.ey, %middle.block683 ]
  %.01214.i.i.i.i.i.i335.ph = phi ptr [ %i.dw, %vector.memcheck652 ], [ %i.dw, %.lr.ph.i.i.i.i.i.i333.preheader ], [ %i.ez, %middle.block683 ]
  br label %.lr.ph.i.i.i.i.i.i333

.lr.ph.i.i.i.i.i.i333:                            ; preds = %.lr.ph.i.i.i.i.i.i333.preheader691, %.lr.ph.i.i.i.i.i.i333
  %.015.i.i.i.i.i.i334 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i333 ], [ %.015.i.i.i.i.i.i334.ph, %.lr.ph.i.i.i.i.i.i333.preheader691 ] ; 2 uses
  %.01214.i.i.i.i.i.i335 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i333 ], [ %.01214.i.i.i.i.i.i335.ph, %.lr.ph.i.i.i.i.i.i333.preheader691 ] ; 2 uses
  %i.fd = load <2 x double>, ptr %.01214.i.i.i.i.i.i335, align 8, !tbaa !23
  store <2 x double> %i.fd, ptr %.015.i.i.i.i.i.i334, align 8, !tbaa !23
  %i.fe = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i335, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i334, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i336 = icmp eq ptr %i.fe, %i.dx
  br i1 %.not.i.i.i.i.i.i336, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i333, !llvm.loop !75

_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i333, %middle.block683, %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ep, %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i ], [ %i.ey, %middle.block683 ], [ %i.ff, %.lr.ph.i.i.i.i.i.i333 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.dw, null
  br i1 %.not.i35.i, label %.noexc, label %bb.p

bb.p:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eh) #16
  br label %.noexc

.noexc:                                           ; preds = %bb.p, %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i
  store ptr %i.ep, ptr %1, align 8, !tbaa !44
  store ptr %i.fg, ptr %i.bc, align 8, !tbaa !45
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.en ; 2 uses
  store ptr %i.fh, ptr %i.k, align 8, !tbaa !41
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit: ; preds = %.noexc, %bb.n
  %i.fi = phi ptr [ %i.ep, %.noexc ], [ %i.dw, %bb.n ] ; 2 uses
  %i.fj = phi ptr [ %i.fh, %.noexc ], [ %i.dx, %bb.n ] ; 2 uses
  %i.fk = phi ptr [ %i.fg, %.noexc ], [ %i.ee, %bb.n ] ; 2 uses
  %i.fl = add nuw i32 %.0103405, 1
  %exitcond.not = icmp eq i32 %.0103405, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !76

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge412
  %i.fm = phi i32 [ %i.fs, %._crit_edge412 ], [ %i.di, %.preheader.lr.ph ]
  %i.fn = phi i32 [ %i.ft, %._crit_edge412 ], [ %i.dn, %.preheader.lr.ph ] ; 2 uses
  %.0105413 = phi i32 [ %i.fu, %._crit_edge412 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.lr.ph411, label %._crit_edge412

.lr.ph411:                                        ; preds = %.preheader
  %i.fp = mul nsw i32 %.0105413, %i.f
  %.pre452 = load ptr, ptr %i.dk, align 8, !tbaa !54
  br label %bb.q

._crit_edge414:                                   ; preds = %._crit_edge412, %.preheader.lr.ph, %_ZNSt6vectorIiSaIiEE7reserveEm.exit142
  %i.fq = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330, label %bb.av

._crit_edge412.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit176
  %.pre453 = load i32, ptr %i.c, align 4, !tbaa !40
  br label %._crit_edge412

._crit_edge412:                                   ; preds = %._crit_edge412.loopexit, %.preheader
  %i.fs = phi i32 [ %.pre453, %._crit_edge412.loopexit ], [ %i.fm, %.preheader ] ; 2 uses
  %i.ft = phi i32 [ %i.kt, %._crit_edge412.loopexit ], [ %i.fn, %.preheader ]
  %i.fu = add nuw nsw i32 %.0105413, 1            ; 2 uses
  %i.fv = icmp slt i32 %i.fu, %i.fs
  br i1 %i.fv, label %.preheader, label %._crit_edge414, !llvm.loop !77

bb.q:                                             ; preds = %.lr.ph411, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit176
  %i.fw = phi ptr [ %.pre452, %.lr.ph411 ], [ %i.kr, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit176 ]
  %.0106410 = phi i32 [ 0, %.lr.ph411 ], [ %i.ks, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit176 ] ; 2 uses
  %i.fx = load ptr, ptr %4, align 8, !tbaa !53
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = lshr exact i64 %i.ga, 2
  %i.gc = trunc i64 %i.gb to i32                  ; 2 uses
  %i.gd = load ptr, ptr %i.dl, align 8, !tbaa !54 ; 4 uses
  %i.ge = load ptr, ptr %i.bh, align 8, !tbaa !50
  %.not.i.i144 = icmp eq ptr %i.gd, %i.ge
  br i1 %.not.i.i144, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store ptr %i.gf, ptr %i.dl, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.s:                                             ; preds = %bb.q
  %i.gg = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi                    ; 6 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775804
  br i1 %i.gk, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.gl = ashr exact i64 %i.gj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gl ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  %i.go = tail call i64 @llvm.umin.i64(i64 %i.gm, i64 2305843009213693951)
  %i.gp = select i1 %i.gn, i64 2305843009213693951, i64 %i.go ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gq = shl nuw nsw i64 %i.gp, 2
  %i.gr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #19 ; 4 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.gj ; 2 uses
  store i32 %i.gc, ptr %i.gs, align 4, !tbaa !4
  %i.gt = icmp sgt i64 %i.gj, 0
  br i1 %i.gt, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.u:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gr, ptr align 4 %i.gg, i64 %i.gj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gj) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.gr, ptr %2, align 8, !tbaa !53
  store ptr %i.gu, ptr %i.dl, align 8, !tbaa !54
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.gv, ptr %i.bh, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.gw = load ptr, ptr %i.dm, align 8, !tbaa !54 ; 4 uses
  %i.gx = load ptr, ptr %i.by, align 8, !tbaa !50
  %.not.i.i145 = icmp eq ptr %i.gw, %i.gx
  br i1 %.not.i.i145, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 4, ptr %i.gw, align 4, !tbaa !4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store ptr %i.gy, ptr %i.dm, align 8, !tbaa !54
end_hunk_1
begin_hunk_2_@_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc277
  %i.bk = getelementptr i8, ptr %i.bg, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bi, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !4
  br label %.lr.ph903

.lr.ph903:                                        ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc277
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.not260899 = icmp slt i32 %i.b, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = fdiv <2 x double> %i.bc, splat (double 6.000000e+00) ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8
  %wide.trip.count = zext nneg i32 %i.g to i64
  %i.bt = extractelement <2 x double> %i.bo, i64 1 ; 2 uses
  %i.bu = extractelement <2 x double> %i.bc, i64 1
  %i.bv = extractelement <2 x double> %i.bo, i64 0 ; 4 uses
  %i.bw = extractelement <2 x double> %i.bc, i64 0
  br label %bb.h

._crit_edge904.loopexit:                          ; preds = %._crit_edge
  %.pre1016 = load ptr, ptr %1, align 8, !tbaa !44
  br label %._crit_edge904

._crit_edge904:                                   ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %._crit_edge904.loopexit
  %.sroa.0802.01267 = phi ptr [ %i.bg, %._crit_edge904.loopexit ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 24 uses
  %.sroa.15.01263 = phi ptr [ %i.bh, %._crit_edge904.loopexit ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 14 uses
  %i.bx = phi ptr [ %.pre1016, %._crit_edge904.loopexit ], [ %i.at, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !45
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = lshr exact i64 %i.cc, 4
  %i.ce = trunc i64 %i.cd to i32                  ; 4 uses
  %i.cf = sext i32 %i.e to i64                    ; 6 uses
  %i.cg = icmp slt i32 %i.e, 0
  br i1 %i.cg, label %.invoke, label %bb.e

bb.e:                                             ; preds = %._crit_edge904
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !50
  %i.cj = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = ashr exact i64 %i.cm, 2
  %i.co = icmp ult i64 %i.cn, %i.cf
  br i1 %i.co, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !54
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.cl                    ; 3 uses
  %i.ct = shl nuw nsw i64 %i.cf, 2
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #19
          to label %.noexc279 unwind label %bb.an ; 4 uses

.noexc279:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.cv = icmp sgt i64 %i.cs, 0
  br i1 %i.cv, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.f:                                             ; preds = %.noexc279
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %i.cj, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.f, %.noexc279
  %.not.i8.i = icmp eq ptr %i.cj, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cm) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.cu, ptr %2, align 8, !tbaa !53
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store ptr %i.cw, ptr %i.cp, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cf
  store ptr %i.cx, ptr %i.ch, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

bb.h:                                             ; preds = %.lr.ph903, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph903 ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %i.cy = load ptr, ptr %i.bl, align 8, !tbaa !45
  %i.cz = load ptr, ptr %1, align 8, !tbaa !44
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = lshr exact i64 %i.dc, 4
  %i.de = trunc i64 %i.dd to i32
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  store i32 %i.de, ptr %i.df, align 4, !tbaa !4
  %i.dg = load i32, ptr %i.bm, align 4, !tbaa !39
  %i.dh = trunc nuw nsw i64 %indvars.iv to i32
  %i.di = add nsw i32 %i.dg, %i.dh                ; 3 uses
  %i.dj = sitofp i32 %i.di to double
  %i.dk = fadd nnan double %i.dj, -5.000000e-01
  %i.dl = fmul double %i.bu, %i.dk                ; 2 uses
  %i.dm = load double, ptr %i.aw, align 8, !tbaa !23 ; 2 uses
  %i.dn = fcmp olt double %i.dl, %i.dm
  %.sroa.speculated798 = select i1 %i.dn, double %i.dl, double %i.dm ; 2 uses
  %i.do = fcmp ogt double %.sroa.speculated798, 0.000000e+00
  %.sroa.speculated788 = select i1 %i.do, double %.sroa.speculated798, double 0.000000e+00 ; 4 uses
  br i1 %.not260899, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.dp = icmp eq i32 %i.di, 0
  %i.dq = icmp eq i64 %indvars.iv, 0
  %i.dr = fadd double %i.bt, %.sroa.speculated788 ; 4 uses
  %i.ds = fsub double %.sroa.speculated788, %i.bt ; 4 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond943.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond943.not, label %._crit_edge904.loopexit, label %bb.h, !llvm.loop !85

bb.i:                                             ; preds = %.lr.ph, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
  %.0208900 = phi i32 [ 0, %.lr.ph ], [ %i.gq, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit ] ; 5 uses
  %i.dt = load i32, ptr %i.bn, align 8, !tbaa !37
  %i.du = add nsw i32 %i.dt, %.0208900            ; 3 uses
  %i.dv = sitofp i32 %i.du to double
  %i.dw = fadd nnan double %i.dv, -5.000000e-01
  %i.dx = fmul double %i.bw, %i.dw                ; 2 uses
  %i.dy = load double, ptr %i.au, align 8, !tbaa !23 ; 2 uses
  %i.dz = fcmp olt double %i.dx, %i.dy
  %.sroa.speculated785 = select i1 %i.dz, double %i.dx, double %i.dy ; 2 uses
  %i.ea = fcmp ogt double %.sroa.speculated785, 0.000000e+00
  %.sroa.speculated = select i1 %i.ea, double %.sroa.speculated785, double 0.000000e+00 ; 6 uses
  %i.eb = icmp eq i32 %i.du, 0
  br i1 %i.eb, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ec = load i32, ptr %i.av, align 8, !tbaa !25
  %i.ed = icmp eq i32 %i.du, %i.ec
  %or.cond = select i1 %i.ed, i1 true, i1 %i.dp
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ee = load i32, ptr %i.ax, align 4, !tbaa !27
  %i.ef = icmp eq i32 %i.di, %i.ee
  br i1 %i.ef, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %i.eg = load ptr, ptr %i.bl, align 8, !tbaa !45 ; 7 uses
  %i.eh = load ptr, ptr %i.l, align 8, !tbaa !41
  %.not.i.i283 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i.i283, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store double %.sroa.speculated, ptr %i.eg, align 8, !tbaa !55
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store double %.sroa.speculated788, ptr %i.ei, align 8, !tbaa !57
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store ptr %i.ej, ptr %i.bl, align 8, !tbaa !45
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit

bb.n:                                             ; preds = %bb.l
  %i.ek = load ptr, ptr %1, align 8, !tbaa !44    ; 12 uses
  %i.el = ptrtoint ptr %i.eg to i64               ; 3 uses
  %i.em = ptrtoint ptr %i.ek to i64               ; 3 uses
  %i.en = sub i64 %i.el, %i.em                    ; 4 uses
  %i.eo = icmp eq i64 %i.en, 9223372036854775792
  br i1 %i.eo, label %bb.o, label %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
          to label %.noexc647 unwind label %.loopexit.split-lp890

.noexc647:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.n
  %i.ep = ashr exact i64 %i.en, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ep, i64 1)
  %i.eq = add nsw i64 %.sroa.speculated.i.i, %i.ep ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  %i.es = call i64 @llvm.umin.i64(i64 %i.eq, i64 576460752303423487)
  %i.et = select i1 %i.er, i64 576460752303423487, i64 %i.es ; 3 uses
  %.not.i.i640 = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i640)
  %i.eu = shl nuw nsw i64 %i.et, 4
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #19
          to label %.noexc648 unwind label %.loopexit889 ; 13 uses

.noexc648:                                        ; preds = %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.en ; 2 uses
  store double %.sroa.speculated, ptr %i.ew, align 8, !tbaa !55
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store double %.sroa.speculated788, ptr %i.ex, align 8, !tbaa !57
  %.not13.i.i.i.i.i.i641 = icmp eq ptr %i.ek, %i.eg
  br i1 %.not13.i.i.i.i.i.i641, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i642.preheader

.lr.ph.i.i.i.i.i.i642.preheader:                  ; preds = %.noexc648
  %15 = sub i64 %i.el, %i.em
  %16 = add i64 %15, -16                          ; 2 uses
  %i.ey = lshr i64 %16, 4
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %min.iters.check1326 = icmp ult i64 %16, 144
  br i1 %min.iters.check1326, label %.lr.ph.i.i.i.i.i.i642.preheader1352, label %vector.memcheck1308

vector.memcheck1308:                              ; preds = %.lr.ph.i.i.i.i.i.i642.preheader
  %scevgep1309 = getelementptr i8, ptr %i.ev, i64 8
  %i.fa = add i64 %i.el, -16
  %i.fb = sub i64 %i.fa, %i.em
  %i.fc = and i64 %i.fb, -16                      ; 4 uses
  %scevgep1310 = getelementptr i8, ptr %scevgep1309, i64 %i.fc
  %scevgep1311 = getelementptr i8, ptr %i.ek, i64 8 ; 2 uses
  %scevgep1312 = getelementptr i8, ptr %scevgep1311, i64 %i.fc
  %scevgep1313 = getelementptr i8, ptr %i.ev, i64 8
  %scevgep1314 = getelementptr i8, ptr %i.ev, i64 16
  %scevgep1315 = getelementptr i8, ptr %scevgep1314, i64 %i.fc
  %scevgep1316 = getelementptr i8, ptr %i.ek, i64 16
  %scevgep1317 = getelementptr i8, ptr %scevgep1316, i64 %i.fc
  %bound01318 = icmp ult ptr %i.ev, %scevgep1312
  %bound11319 = icmp ult ptr %i.ek, %scevgep1310
  %found.conflict1320 = and i1 %bound01318, %bound11319
  %bound01321 = icmp ult ptr %scevgep1313, %scevgep1317
  %bound11322 = icmp ult ptr %scevgep1311, %scevgep1315
  %found.conflict1323 = and i1 %bound01321, %bound11322
  %conflict.rdx1324 = or i1 %found.conflict1320, %found.conflict1323
  br i1 %conflict.rdx1324, label %.lr.ph.i.i.i.i.i.i642.preheader1352, label %vector.ph1327

vector.ph1327:                                    ; preds = %vector.memcheck1308
  %n.vec1329 = and i64 %i.ez, 2305843009213693950 ; 3 uses
  %i.fd = shl i64 %n.vec1329, 4                   ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ev, i64 %i.fd  ; 2 uses
  %i.ff = getelementptr i8, ptr %i.ek, i64 %i.fd
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1327
  %index1331 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1338, %vector.body1330 ] ; 2 uses
  %i.fg = shl i64 %index1331, 4                   ; 3 uses
  %i.fh = or disjoint i64 %i.fg, 16               ; 2 uses
  %next.gep1332 = getelementptr i8, ptr %i.ev, i64 %i.fg
  %next.gep1333 = getelementptr i8, ptr %i.ev, i64 %i.fh
  %next.gep1334 = getelementptr i8, ptr %i.ek, i64 %i.fg
  %next.gep1335 = getelementptr i8, ptr %i.ek, i64 %i.fh
  %wide.load1336 = load <2 x double>, ptr %next.gep1334, align 8
  %wide.load1337 = load <2 x double>, ptr %next.gep1335, align 8
  store <2 x double> %wide.load1336, ptr %next.gep1332, align 8
  store <2 x double> %wide.load1337, ptr %next.gep1333, align 8
  %index.next1338 = add nuw i64 %index1331, 2     ; 2 uses
  %i.fi = icmp eq i64 %index.next1338, %n.vec1329
  br i1 %i.fi, label %middle.block1339, label %vector.body1330, !llvm.loop !86

middle.block1339:                                 ; preds = %vector.body1330
  %cmp.n1340 = icmp eq i64 %i.ez, %n.vec1329
  br i1 %cmp.n1340, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i642.preheader1352

.lr.ph.i.i.i.i.i.i642.preheader1352:              ; preds = %vector.memcheck1308, %.lr.ph.i.i.i.i.i.i642.preheader, %middle.block1339
  %.015.i.i.i.i.i.i643.ph = phi ptr [ %i.ev, %vector.memcheck1308 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i642.preheader ], [ %i.fe, %middle.block1339 ]
  %.01214.i.i.i.i.i.i644.ph = phi ptr [ %i.ek, %vector.memcheck1308 ], [ %i.ek, %.lr.ph.i.i.i.i.i.i642.preheader ], [ %i.ff, %middle.block1339 ]
  br label %.lr.ph.i.i.i.i.i.i642

.lr.ph.i.i.i.i.i.i642:                            ; preds = %.lr.ph.i.i.i.i.i.i642.preheader1352, %.lr.ph.i.i.i.i.i.i642
  %.015.i.i.i.i.i.i643 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i642 ], [ %.015.i.i.i.i.i.i643.ph, %.lr.ph.i.i.i.i.i.i642.preheader1352 ] ; 2 uses
  %.01214.i.i.i.i.i.i644 = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.i642 ], [ %.01214.i.i.i.i.i.i644.ph, %.lr.ph.i.i.i.i.i.i642.preheader1352 ] ; 2 uses
  %i.fj = load <2 x double>, ptr %.01214.i.i.i.i.i.i644, align 8, !tbaa !23
  store <2 x double> %i.fj, ptr %.015.i.i.i.i.i.i643, align 8, !tbaa !23
  %i.fk = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i644, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i643, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i645 = icmp eq ptr %i.fk, %i.eg
  br i1 %.not.i.i.i.i.i.i645, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i642, !llvm.loop !87

_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i642, %middle.block1339, %.noexc648
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ev, %.noexc648 ], [ %i.fe, %middle.block1339 ], [ %i.fl, %.lr.ph.i.i.i.i.i.i642 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i35.i = icmp eq ptr %i.ek, null
  br i1 %.not.i35.i, label %.noexc284, label %bb.p

bb.p:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.en) #16
  br label %.noexc284

.noexc284:                                        ; preds = %bb.p, %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i
  store ptr %i.ev, ptr %1, align 8, !tbaa !44
  store ptr %i.fm, ptr %i.bl, align 8, !tbaa !45
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.et
  store ptr %i.fn, ptr %i.l, align 8, !tbaa !41
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit

.loopexit889:                                     ; preds = %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit891 = landingpad { ptr, i32 }
          cleanup
  br label %.thread814

.loopexit.split-lp890:                            ; preds = %bb.o
  %lpad.loopexit.split-lp892 = landingpad { ptr, i32 }
          cleanup
  br label %.thread814

bb.q:                                             ; preds = %bb.k
  %i.fo = load i32, ptr %i.a, align 8, !tbaa !38
  %i.fp = icmp eq i32 %.0208900, %i.fo
  %or.cond3 = and i1 %i.dq, %i.fp
  br i1 %or.cond3, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.fq = fsub double %.sroa.speculated, %i.bv    ; 2 uses
  store double %i.fq, ptr %11, align 8, !tbaa !55, !alias.scope !88
  store double %i.dr, ptr %i.bs, align 8, !tbaa !57, !alias.scope !88
  %i.fr = load ptr, ptr %i.bl, align 8, !tbaa !45 ; 5 uses
  %i.fs = load ptr, ptr %i.l, align 8, !tbaa !41
  %.not.i.i285 = icmp eq ptr %i.fr, %i.fs
  br i1 %.not.i.i285, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store double %i.fq, ptr %i.fr, align 8, !tbaa !55
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store double %i.dr, ptr %i.ft, align 8, !tbaa !57
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store ptr %i.fu, ptr %i.bl, align 8, !tbaa !45
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit287

bb.t:                                             ; preds = %bb.r
  invoke void @_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit287 unwind label %bb.u

_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit287: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit

bb.u:                                             ; preds = %bb.t
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.thread814

bb.v:                                             ; preds = %bb.q
  %i.fw = icmp eq i32 %.0208900, 0
  br i1 %i.fw, label %bb.w, label %._crit_edge1009

._crit_edge1009:                                  ; preds = %bb.v
  %.pre = load ptr, ptr %i.bl, align 8, !tbaa !45
  %.pre1011 = load ptr, ptr %i.l, align 8, !tbaa !41
  br label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.fx = load i32, ptr %i.c, align 4, !tbaa !40
  %i.fy = zext i32 %i.fx to i64
  %i.fz = icmp eq i64 %indvars.iv, %i.fy
  %.pre1010 = load ptr, ptr %i.bl, align 8, !tbaa !45 ; 6 uses
  %.pre1012 = load ptr, ptr %i.l, align 8, !tbaa !41 ; 2 uses
  br i1 %i.fz, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.ga = fadd double %i.bv, %.sroa.speculated    ; 2 uses
  store double %i.ga, ptr %12, align 8, !tbaa !55, !alias.scope !91
  store double %i.ds, ptr %i.br, align 8, !tbaa !57, !alias.scope !91
  %.not.i.i288 = icmp eq ptr %.pre1010, %.pre1012
  br i1 %.not.i.i288, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store double %i.ga, ptr %.pre1010, align 8, !tbaa !55
  %i.gb = getelementptr inbounds nuw i8, ptr %.pre1010, i64 8
  store double %i.ds, ptr %i.gb, align 8, !tbaa !57
  %i.gc = getelementptr inbounds nuw i8, ptr %.pre1010, i64 16
  store ptr %i.gc, ptr %i.bl, align 8, !tbaa !45
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit290

bb.z:                                             ; preds = %bb.x
  invoke void @_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.pre1010, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit290 unwind label %bb.aa

_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit290: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit

bb.aa:                                            ; preds = %bb.z
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %.thread814

bb.ab:                                            ; preds = %._crit_edge1009, %bb.w
  %i.ge = phi ptr [ %.pre1011, %._crit_edge1009 ], [ %.pre1012, %bb.w ] ; 2 uses
  %i.gf = phi ptr [ %.pre, %._crit_edge1009 ], [ %.pre1010, %bb.w ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.gg = fsub double %.sroa.speculated, %i.bv    ; 2 uses
  store double %i.gg, ptr %13, align 8, !tbaa !55, !alias.scope !94
  store double %i.dr, ptr %i.bp, align 8, !tbaa !57, !alias.scope !94
  %.not.i.i291 = icmp eq ptr %i.gf, %i.ge
  br i1 %.not.i.i291, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store double %i.gg, ptr %i.gf, align 8, !tbaa !55
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store double %i.dr, ptr %i.gh, align 8, !tbaa !57
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  store ptr %i.gi, ptr %i.bl, align 8, !tbaa !45
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
end_hunk_2
begin_hunk_3_@_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
bb.in:                                            ; preds = %bb.im
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
          to label %.noexc623 unwind label %bb.ix

.noexc623:                                        ; preds = %bb.in
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i617: ; preds = %bb.im
  %i.arr = ashr exact i64 %i.arp, 2               ; 3 uses
  %.sroa.speculated.i.i.i618 = call i64 @llvm.umax.i64(i64 %i.arr, i64 1)
  %i.ars = add nsw i64 %.sroa.speculated.i.i.i618, %i.arr ; 2 uses
  %i.art = icmp ult i64 %i.ars, %i.arr
  %i.aru = call i64 @llvm.umin.i64(i64 %i.ars, i64 2305843009213693951)
  %i.arv = select i1 %i.art, i64 2305843009213693951, i64 %i.aru ; 3 uses
  %.not.i.i.i619 = icmp ne i64 %i.arv, 0
  call void @llvm.assume(i1 %.not.i.i.i619)
  %i.arw = shl nuw nsw i64 %i.arv, 2
  %i.arx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.arw) #19
          to label %.noexc624 unwind label %bb.ix ; 4 uses

.noexc624:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i617
  %i.ary = getelementptr inbounds i8, ptr %i.arx, i64 %i.arp ; 2 uses
  store i32 %i.apr, ptr %i.ary, align 4, !tbaa !4
  %i.arz = icmp sgt i64 %i.arp, 0
  br i1 %i.arz, label %bb.io, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620

bb.io:                                            ; preds = %.noexc624
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.arx, ptr align 4 %i.arm, i64 %i.arp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620: ; preds = %bb.io, %.noexc624
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ary, i64 4
  %.not.i17.i.i621 = icmp eq ptr %i.arm, null
  br i1 %.not.i17.i.i621, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622, label %bb.ip

bb.ip:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620
  call void @_ZdlPvm(ptr noundef nonnull %i.arm, i64 noundef %i.arp) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622: ; preds = %bb.ip, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620
  store ptr %i.arx, ptr %8, align 8, !tbaa !53
  store ptr %i.asa, ptr %i.arh, align 8, !tbaa !54
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.arv
  store ptr %i.asb, ptr %i.arj, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit625

_ZNSt6vectorIiSaIiEE9push_backERKi.exit625:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622, %bb.il
  %i.asc = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !54 ; 4 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !50
  %.not.i.i626 = icmp eq ptr %i.asd, %i.asf
  br i1 %.not.i.i626, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit625
  store i32 2, ptr %i.asd, align 4, !tbaa !4
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asd, i64 4
  store ptr %i.asg, ptr %i.asc, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635

bb.ir:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit625
  %i.ash = load ptr, ptr %9, align 8, !tbaa !53   ; 4 uses
  %i.asi = ptrtoint ptr %i.asd to i64
  %i.asj = ptrtoint ptr %i.ash to i64
  %i.ask = sub i64 %i.asi, %i.asj                 ; 6 uses
  %i.asl = icmp eq i64 %i.ask, 9223372036854775804
  br i1 %i.asl, label %bb.is, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627

bb.is:                                            ; preds = %bb.ir
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
          to label %.noexc633 unwind label %bb.iy

.noexc633:                                        ; preds = %bb.is
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627: ; preds = %bb.ir
  %i.asm = ashr exact i64 %i.ask, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i628 = call i64 @llvm.umax.i64(i64 %i.asm, i64 1)
  %i.asn = add nsw i64 %.sroa.speculated.i.i.i.i628, %i.asm ; 2 uses
  %i.aso = icmp ult i64 %i.asn, %i.asm
  %i.asp = call i64 @llvm.umin.i64(i64 %i.asn, i64 2305843009213693951)
  %i.asq = select i1 %i.aso, i64 2305843009213693951, i64 %i.asp ; 3 uses
  %.not.i.i.i.i629 = icmp ne i64 %i.asq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i629)
  %i.asr = shl nuw nsw i64 %i.asq, 2
  %i.ass = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asr) #19
          to label %.noexc634 unwind label %bb.iy ; 4 uses

.noexc634:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627
  %i.ast = getelementptr inbounds i8, ptr %i.ass, i64 %i.ask ; 2 uses
  store i32 2, ptr %i.ast, align 4, !tbaa !4
  %i.asu = icmp sgt i64 %i.ask, 0
  br i1 %i.asu, label %bb.it, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630

bb.it:                                            ; preds = %.noexc634
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ass, ptr align 4 %i.ash, i64 %i.ask, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630: ; preds = %bb.it, %.noexc634
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ast, i64 4
  %.not.i17.i.i.i631 = icmp eq ptr %i.ash, null
  br i1 %.not.i17.i.i.i631, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632, label %bb.iu

bb.iu:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630
  call void @_ZdlPvm(ptr noundef nonnull %i.ash, i64 noundef %i.ask) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632: ; preds = %bb.iu, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630
  store ptr %i.ass, ptr %9, align 8, !tbaa !53
  store ptr %i.asv, ptr %i.asc, align 8, !tbaa !54
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.ass, i64 %i.asq
  store ptr %i.asw, ptr %i.ase, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635

bb.iv:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i597, %bb.id
  %i.asx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

bb.iw:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i607, %bb.ii
  %i.asy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

bb.ix:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i617, %bb.in
  %i.asz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

bb.iy:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627, %bb.is
  %i.ata = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

_ZNSt6vectorIiSaIiEE9push_backEOi.exit635:        ; preds = %bb.iq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit595, %bb.hz, %._crit_edge910
  %.not.i.i.i636 = icmp eq ptr %.sroa.0802.01267, null
  br i1 %.not.i.i.i636, label %_ZNSt6vectorIiSaIiEED2Ev.exit637, label %bb.iz

bb.iz:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635
  %i.atb = ptrtoint ptr %.sroa.15.01263 to i64
  %i.atc = ptrtoint ptr %.sroa.0802.01267 to i64
  %i.atd = sub i64 %i.atb, %i.atc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0802.01267, i64 noundef %i.atd) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit637

_ZNSt6vectorIiSaIiEED2Ev.exit637:                 ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635, %bb.iz
  ret void

.loopexit873:                                     ; preds = %.loopexit828.loopexit, %.loopexit843.loopexit, %.loopexit843.loopexit.split-lp, %.loopexit873.loopexit, %.loopexit873.loopexit.split-lp, %.loopexit823, %.loopexit.split-lp824, %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp829, %.loopexit.split-lp844, %.loopexit868, %.loopexit.split-lp869, %.loopexit863, %.loopexit.split-lp864, %.loopexit.split-lp874, %bb.iv, %bb.iw, %bb.ix, %bb.iy, %bb.hx, %bb.hy, %bb.gr, %bb.gs, %bb.fl, %bb.fm, %bb.ef, %bb.eg, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.av, %_ZNSt6vectorIiSaIiEED2Ev.exit348, %bb.an
  %.pn269.pn.pn = phi { ptr, i32 } [ %i.io, %bb.an ], [ %lpad.loopexit.split-lp846, %.loopexit.split-lp844 ], [ %i.sv, %bb.cx ], [ %lpad.loopexit.split-lp876, %.loopexit.split-lp874 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ata, %bb.iy ], [ %lpad.loopexit.split-lp831, %.loopexit.split-lp829 ], [ %i.ke, %bb.av ], [ %lpad.loopexit.split-lp994, %.loopexit843.loopexit.split-lp ], [ %lpad.loopexit999, %.loopexit ], [ %lpad.loopexit, %.loopexit823 ], [ %lpad.loopexit957, %.loopexit873.loopexit ], [ %i.api, %bb.hy ], [ %.pn256, %_ZNSt6vectorIiSaIiEED2Ev.exit348 ], [ %i.sy, %bb.da ], [ %i.sx, %bb.cz ], [ %i.sw, %bb.cy ], [ %i.yh, %bb.ef ], [ %i.yi, %bb.eg ], [ %lpad.loopexit993, %.loopexit843.loopexit ], [ %lpad.loopexit.split-lp866, %.loopexit.split-lp864 ], [ %i.ads, %bb.fl ], [ %i.adt, %bb.fm ], [ %i.asz, %bb.ix ], [ %i.asy, %bb.iw ], [ %i.ajq, %bb.gr ], [ %i.ajr, %bb.gs ], [ %lpad.loopexit.split-lp871, %.loopexit.split-lp869 ], [ %i.asx, %bb.iv ], [ %i.aph, %bb.hx ], [ %lpad.loopexit1006, %.loopexit828.loopexit ], [ %lpad.loopexit.split-lp826, %.loopexit.split-lp824 ], [ %lpad.loopexit950, %.loopexit863 ], [ %lpad.loopexit953, %.loopexit868 ], [ %lpad.loopexit.split-lp958, %.loopexit873.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i638 = icmp eq ptr %.sroa.0802.01267, null
  br i1 %.not.i.i.i638, label %_ZNSt6vectorIiSaIiEED2Ev.exit639, label %.thread814

.thread814:                                       ; preds = %.loopexit828.loopexit.split-lp, %.loopexit889, %.loopexit.split-lp890, %bb.ai, %bb.aa, %bb.u, %bb.ah, %.loopexit858.loopexit, %.loopexit858.loopexit.split-lp, %.loopexit838, %.loopexit.split-lp839, %.loopexit833, %.loopexit.split-lp834, %.loopexit853, %.loopexit.split-lp854, %.loopexit848, %.loopexit.split-lp849, %.loopexit.split-lp859, %.loopexit873
  %.sroa.0802.01264 = phi ptr [ %.sroa.0802.01267, %.loopexit873 ], [ %.sroa.0802.01267, %.loopexit.split-lp834 ], [ %.sroa.0802.01267, %.loopexit.split-lp849 ], [ %.sroa.0802.01267, %.loopexit.split-lp859 ], [ %.sroa.0802.01267, %.loopexit.split-lp854 ], [ %.sroa.0802.01267, %.loopexit.split-lp839 ], [ %.sroa.0802.01267, %.loopexit848 ], [ %.sroa.0802.01267, %.loopexit853 ], [ %.sroa.0802.01267, %.loopexit833 ], [ %.sroa.0802.01267, %.loopexit838 ], [ %.sroa.0802.01267, %.loopexit858.loopexit.split-lp ], [ %.sroa.0802.01267, %.loopexit858.loopexit ], [ %.sroa.0802.01267, %.loopexit828.loopexit.split-lp ], [ %i.bg, %.loopexit889 ], [ %i.bg, %.loopexit.split-lp890 ], [ %i.bg, %bb.ai ], [ %i.bg, %bb.aa ], [ %i.bg, %bb.u ], [ %i.bg, %bb.ah ] ; 2 uses
  %.sroa.15.01260 = phi ptr [ %.sroa.15.01263, %.loopexit873 ], [ %.sroa.15.01263, %.loopexit.split-lp834 ], [ %.sroa.15.01263, %.loopexit.split-lp849 ], [ %.sroa.15.01263, %.loopexit.split-lp859 ], [ %.sroa.15.01263, %.loopexit.split-lp854 ], [ %.sroa.15.01263, %.loopexit.split-lp839 ], [ %.sroa.15.01263, %.loopexit848 ], [ %.sroa.15.01263, %.loopexit853 ], [ %.sroa.15.01263, %.loopexit833 ], [ %.sroa.15.01263, %.loopexit838 ], [ %.sroa.15.01263, %.loopexit858.loopexit.split-lp ], [ %.sroa.15.01263, %.loopexit858.loopexit ], [ %.sroa.15.01263, %.loopexit828.loopexit.split-lp ], [ %i.bh, %.loopexit889 ], [ %i.bh, %.loopexit.split-lp890 ], [ %i.bh, %bb.ai ], [ %i.bh, %bb.aa ], [ %i.bh, %bb.u ], [ %i.bh, %bb.ah ]
  %.pn269.pn.pn817 = phi { ptr, i32 } [ %.pn269.pn.pn, %.loopexit873 ], [ %lpad.loopexit.split-lp836, %.loopexit.split-lp834 ], [ %lpad.loopexit.split-lp851, %.loopexit.split-lp849 ], [ %lpad.loopexit.split-lp861, %.loopexit.split-lp859 ], [ %lpad.loopexit.split-lp856, %.loopexit.split-lp854 ], [ %lpad.loopexit.split-lp841, %.loopexit.split-lp839 ], [ %lpad.loopexit967, %.loopexit848 ], [ %lpad.loopexit971, %.loopexit853 ], [ %lpad.loopexit985, %.loopexit833 ], [ %lpad.loopexit989, %.loopexit838 ], [ %lpad.loopexit.split-lp976, %.loopexit858.loopexit.split-lp ], [ %lpad.loopexit975, %.loopexit858.loopexit ], [ %lpad.loopexit.split-lp1007, %.loopexit828.loopexit.split-lp ], [ %lpad.loopexit891, %.loopexit889 ], [ %lpad.loopexit.split-lp892, %.loopexit.split-lp890 ], [ %i.gp, %bb.ai ], [ %i.gd, %bb.aa ], [ %i.fv, %bb.u ], [ %i.go, %bb.ah ]
  %i.ate = ptrtoint ptr %.sroa.15.01260 to i64
  %i.atf = ptrtoint ptr %.sroa.0802.01264 to i64
  %i.atg = sub i64 %i.ate, %i.atf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0802.01264, i64 noundef %i.atg) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit639

_ZNSt6vectorIiSaIiEED2Ev.exit639:                 ; preds = %.thread814, %.loopexit873
  %.pn269.pn.pn.pn = phi { ptr, i32 } [ %.pn269.pn.pn817, %.thread814 ], [ %.pn269.pn.pn, %.loopexit873 ]
  resume { ptr, i32 } %.pn269.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = ptrtoint ptr %1 to i64                     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 13 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 13 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <2 x double>, ptr %2, align 8, !tbaa !23
  store <2 x double> %i.r, ptr %i.q, align 8, !tbaa !23
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %3, -16
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 4
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 400
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader95, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %3, -16
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -16                        ; 2 uses
  %i.z = or disjoint i64 %i.y, 8                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep49 = getelementptr i8, ptr %i.c, i64 %i.z
  %scevgep50 = getelementptr i8, ptr %i.p, i64 8
  %i.aa = add i64 %i.y, 16                        ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.p, i64 %i.aa
  %scevgep52 = getelementptr i8, ptr %i.c, i64 8
  %scevgep53 = getelementptr i8, ptr %i.c, i64 %i.aa
  %bound0 = icmp ult ptr %i.p, %scevgep49
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound054 = icmp ult ptr %scevgep50, %scevgep53
  %bound155 = icmp ult ptr %scevgep52, %scevgep51
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx = or i1 %found.conflict, %found.conflict56
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader95, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 2305843009213693950      ; 3 uses
  %i.ab = shl i64 %n.vec, 4                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.p, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 4                       ; 3 uses
  %i.af = or disjoint i64 %i.ae, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ae
  %next.gep57 = getelementptr i8, ptr %i.p, i64 %i.af
  %next.gep58 = getelementptr i8, ptr %i.c, i64 %i.ae
  %next.gep59 = getelementptr i8, ptr %i.c, i64 %i.af
  %wide.load = load <2 x double>, ptr %next.gep58, align 8
  %wide.load60 = load <2 x double>, ptr %next.gep59, align 8
  store <2 x double> %wide.load, ptr %next.gep, align 8
  store <2 x double> %wide.load60, ptr %next.gep57, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader95

.lr.ph.i.i.i.i.i.preheader95:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader95, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader95 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader95 ] ; 2 uses
  %i.ah = load <2 x double>, ptr %.01214.i.i.i.i.i, align 8, !tbaa !23
  store <2 x double> %i.ah, ptr %.015.i.i.i.i.i, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !110

_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.ak = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 7 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i29.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.al = add i64 %i.d, -16
  %i.am = sub i64 %i.al, %3                       ; 2 uses
  %i.an = lshr i64 %i.am, 4
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.am, 464
  br i1 %min.iters.check77, label %.lr.ph.i.i.i.i.i29.preheader94, label %vector.memcheck62

vector.memcheck62:                                ; preds = %.lr.ph.i.i.i.i.i29.preheader
  %i.ap = add i64 %i.d, -16
  %i.aq = sub i64 %i.ap, %3
  %i.ar = and i64 %i.aq, -16                      ; 4 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.ar
  %scevgep63 = getelementptr i8, ptr %i.as, i64 24
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep64 = getelementptr i8, ptr %i.at, i64 8
  %scevgep65 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %i.au = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.ar
  %scevgep66 = getelementptr i8, ptr %i.au, i64 32
  %scevgep67 = getelementptr i8, ptr %1, i64 8
  %i.av = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep68 = getelementptr i8, ptr %i.av, i64 16
  %bound069 = icmp ult ptr %i.ak, %scevgep64
  %bound170 = icmp ult ptr %1, %scevgep63
  %found.conflict71 = and i1 %bound069, %bound170
  %bound072 = icmp ult ptr %scevgep65, %scevgep68
  %bound173 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx75 = or i1 %found.conflict71, %found.conflict74
  br i1 %conflict.rdx75, label %.lr.ph.i.i.i.i.i29.preheader94, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck62
  %n.vec80 = and i64 %i.ao, 2305843009213693950   ; 3 uses
  %i.aw = shl i64 %n.vec80, 4                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ak, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.aw
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph78
  %index82 = phi i64 [ 0, %vector.ph78 ], [ %index.next89, %vector.body81 ] ; 2 uses
  %i.az = shl i64 %index82, 4                     ; 3 uses
  %i.ba = or disjoint i64 %i.az, 16               ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.ak, i64 %i.az
  %next.gep84 = getelementptr i8, ptr %i.ak, i64 %i.ba
  %next.gep85 = getelementptr i8, ptr %1, i64 %i.az
  %next.gep86 = getelementptr i8, ptr %1, i64 %i.ba
  %wide.load87 = load <2 x double>, ptr %next.gep85, align 8
  %wide.load88 = load <2 x double>, ptr %next.gep86, align 8
  store <2 x double> %wide.load87, ptr %next.gep83, align 8
  store <2 x double> %wide.load88, ptr %next.gep84, align 8
  %index.next89 = add nuw i64 %index82, 2         ; 2 uses
  %i.bb = icmp eq i64 %index.next89, %n.vec80
  br i1 %i.bb, label %middle.block90, label %vector.body81, !llvm.loop !111

middle.block90:                                   ; preds = %vector.body81
  %cmp.n91 = icmp eq i64 %i.ao, %n.vec80
  br i1 %cmp.n91, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader94

.lr.ph.i.i.i.i.i29.preheader94:                   ; preds = %vector.memcheck62, %.lr.ph.i.i.i.i.i29.preheader, %middle.block90
  %.015.i.i.i.i.i30.ph = phi ptr [ %i.ak, %vector.memcheck62 ], [ %i.ak, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.ax, %middle.block90 ]
  %.01214.i.i.i.i.i31.ph = phi ptr [ %1, %vector.memcheck62 ], [ %1, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.ay, %middle.block90 ]
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.lr.ph.i.i.i.i.i29.preheader94, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i29 ], [ %.015.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i29.preheader94 ] ; 2 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i29 ], [ %.01214.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i29.preheader94 ] ; 2 uses
  %i.bc = load <2 x double>, ptr %.01214.i.i.i.i.i31, align 8, !tbaa !23
  store <2 x double> %i.bc, ptr %.015.i.i.i.i.i30, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !112

_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %middle.block90, %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.ak, %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit ], [ %i.ax, %middle.block90 ], [ %i.be, %.lr.ph.i.i.i.i.i29 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #16
  br label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !44
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !102

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !54
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !4
  store i32 %i.u, ptr %i.h, align 4, !tbaa !4
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !54
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !102

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !4
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !102

bb.k:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.ag, ptr %1, align 4, !tbaa !4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 4
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !102

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !54
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !4
  store i32 %i.an, ptr %i.h, align 4, !tbaa !4
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
end_hunk_3
