Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/GenMesh?download=true
inline.NumInlined: 678
inline.NumDeleted: 216
begin_hunk_0_@_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  %scevgep790 = getelementptr i8, ptr %i.s, i64 %i.am
  %bound0 = icmp ult ptr %i.ad, %scevgep786
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0791 = icmp ult ptr %scevgep787, %scevgep790
  %bound1792 = icmp ult ptr %scevgep789, %scevgep788
  %found.conflict793 = and i1 %bound0791, %bound1792
  %conflict.rdx = or i1 %found.conflict, %found.conflict793
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader838, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 2305843009213693950     ; 3 uses
  %i.an = shl i64 %n.vec, 4                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ad, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.s, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 4                       ; 3 uses
  %i.ar = or disjoint i64 %i.aq, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.aq
  %next.gep794 = getelementptr i8, ptr %i.ad, i64 %i.ar
  %next.gep795 = getelementptr i8, ptr %i.s, i64 %i.aq
  %next.gep796 = getelementptr i8, ptr %i.s, i64 %i.ar
  %wide.load = load <2 x double>, ptr %next.gep795, align 8
  %wide.load797 = load <2 x double>, ptr %next.gep796, align 8
  store <2 x double> %wide.load, ptr %next.gep, align 8
  store <2 x double> %wide.load797, ptr %next.gep794, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader838

.lr.ph.i.i.i.i.i.i.preheader838:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader838, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader838 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader838 ] ; 2 uses
  %i.at = load <2 x double>, ptr %.01214.i.i.i.i.i.i, align 8, !tbaa !23
  store <2 x double> %i.at, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.z
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %i.aw = load ptr, ptr %1, align 8, !tbaa !44    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #16
  br label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  store ptr %i.ad, ptr %1, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store ptr %i.bb, ptr %i.y, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.o
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !41
  br label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit:     ; preds = %bb.c, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load <2 x double>, ptr %i.bd, align 8, !tbaa !23
  %i.bg = load <2 x i32>, ptr %i.be, align 8, !tbaa !4
  %i.bh = sitofp <2 x i32> %i.bg to <2 x double>
  %i.bi = fdiv <2 x double> %i.bf, %i.bh          ; 2 uses
  %.not532 = icmp slt i32 %i.d, 0
  br i1 %.not532, label %._crit_edge, label %.lr.ph534

.lr.ph534:                                        ; preds = %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.not152530 = icmp slt i32 %i.b, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bm = extractelement <2 x double> %i.bi, i64 1
  %i.bn = extractelement <2 x double> %i.bi, i64 0
  br label %bb.m

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.bo = sext i32 %i.e to i64                    ; 6 uses
  %i.bp = icmp slt i32 %i.e, 0
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !50
  %i.bs = load ptr, ptr %2, align 8, !tbaa !53
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %i.bx = icmp ult i64 %i.bw, %i.bo
  br i1 %i.bx, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bu
  %i.cc = shl nuw nsw i64 %i.bo, 2
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #19 ; 4 uses
  %i.ce = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cd, ptr align 4 %i.ce, i64 %i.ci, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ce, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.ck = load ptr, ptr %i.bq, align 8, !tbaa !50
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cm) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.cd, ptr %2, align 8, !tbaa !53
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store ptr %i.cn, ptr %i.by, align 8, !tbaa !54
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.bo
  store ptr %i.co, ptr %i.bq, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !50
  %i.cr = load ptr, ptr %3, align 8, !tbaa !53
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 2
  %i.cw = icmp ult i64 %i.cv, %i.bo
  br i1 %i.cw, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit158

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !54
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.cz, %i.ct
  %i.db = shl nuw nsw i64 %i.bo, 2
  %i.dc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #19 ; 4 uses
  %i.dd = load ptr, ptr %3, align 8, !tbaa !53    ; 4 uses
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !54
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dc, ptr align 4 %i.dd, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155: ; preds = %bb.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154
  %.not.i8.i156 = icmp eq ptr %i.dd, null
  br i1 %.not.i8.i156, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155
  %i.dj = load ptr, ptr %i.cp, align 8, !tbaa !50
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dl) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155
  store ptr %i.dc, ptr %3, align 8, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da
  store ptr %i.dm, ptr %i.cx, align 8, !tbaa !54
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.bo
  store ptr %i.dn, ptr %i.cp, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit158

_ZNSt6vectorIiSaIiEE7reserveEm.exit158:           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157
  %i.do = shl nuw nsw i32 %i.e, 2
  %i.dp = zext nneg i32 %i.do to i64              ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 15 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !50
  %i.ds = load ptr, ptr %4, align 8, !tbaa !53
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 2
  %i.dx = icmp ult i64 %i.dw, %i.dp
  br i1 %i.dx, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i159, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit163

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i159: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit158
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !54
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.du
  %i.ec = shl nuw nsw i64 %i.dp, 2
  %i.ed = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #19 ; 4 uses
  %i.ee = load ptr, ptr %4, align 8, !tbaa !53    ; 4 uses
  %i.ef = load ptr, ptr %i.dy, align 8, !tbaa !54
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ei = sub i64 %i.eg, %i.eh                    ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 0
  br i1 %i.ej, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i160

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i159
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ed, ptr align 4 %i.ee, i64 %i.ei, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i160

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i160: ; preds = %bb.k, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i159
  %.not.i8.i161 = icmp eq ptr %i.ee, null
  br i1 %.not.i8.i161, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i162, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i160
  %i.ek = load ptr, ptr %i.dq, align 8, !tbaa !50
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.em) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i162

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i162: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i160
  store ptr %i.ed, ptr %4, align 8, !tbaa !53
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eb
  store ptr %i.en, ptr %i.dy, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.dp
  store ptr %i.eo, ptr %i.dq, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit163

_ZNSt6vectorIiSaIiEE7reserveEm.exit163:           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit158, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i162
  %i.ep = load i32, ptr %i.c, align 4, !tbaa !40  ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.preheader529.lr.ph, label %._crit_edge539

.preheader529.lr.ph:                              ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit163
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ev = load i32, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.preheader529, label %._crit_edge539

bb.m:                                             ; preds = %.lr.ph534, %.loopexit
  %.0129533 = phi i32 [ 0, %.lr.ph534 ], [ %i.hf, %.loopexit ] ; 3 uses
  %i.ex = load i32, ptr %i.bj, align 4, !tbaa !39
  %i.ey = add nsw i32 %i.ex, %.0129533            ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.fa = load ptr, ptr %i.bl, align 8, !tbaa !45 ; 4 uses
  %i.fb = load ptr, ptr %i.q, align 8, !tbaa !41
  %.not.i.i164 = icmp eq ptr %i.fa, %i.fb
  br i1 %.not.i.i164, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false)
  store ptr %i.fc, ptr %i.bl, align 8, !tbaa !45
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit

bb.p:                                             ; preds = %bb.n
  call void @_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %11)
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  %i.fd = sitofp i32 %i.ey to double
  %i.fe = fmul double %i.bm, %i.fd                ; 2 uses
  br i1 %.not152530, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %.pre = load ptr, ptr %i.bl, align 8, !tbaa !45
  %.pre575 = load ptr, ptr %i.q, align 8, !tbaa !41
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167
  %i.ff = phi ptr [ %i.hc, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167 ], [ %.pre575, %.lr.ph.preheader ] ; 5 uses
  %i.fg = phi ptr [ %i.hd, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167 ], [ %.pre, %.lr.ph.preheader ] ; 4 uses
  %.0126531 = phi i32 [ %i.he, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.fh = load i32, ptr %i.be, align 8, !tbaa !25
  %i.fi = load i32, ptr %i.bk, align 8, !tbaa !37
  %i.fj = add i32 %.0126531, %i.fi
  %i.fk = sub i32 %i.fh, %i.fj
  %i.fl = sitofp i32 %i.fk to double
  %i.fm = fmul double %i.bn, %i.fl                ; 2 uses
  %i.fn = call double @cos(double noundef %i.fm) #15, !tbaa !4
  %i.fo = fmul double %i.fe, %i.fn                ; 2 uses
  %i.fp = call double @sin(double noundef %i.fm) #15, !tbaa !4
  %i.fq = fmul double %i.fe, %i.fp                ; 2 uses
  %.not.i.i165 = icmp eq ptr %i.fg, %i.ff
  br i1 %.not.i.i165, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  store double %i.fo, ptr %i.fg, align 8, !tbaa !55
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store double %i.fq, ptr %i.fr, align 8, !tbaa !57
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  store ptr %i.fs, ptr %i.bl, align 8, !tbaa !45
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit167

bb.s:                                             ; preds = %.lr.ph
  %i.ft = load ptr, ptr %1, align 8, !tbaa !44    ; 12 uses
  %i.fu = ptrtoint ptr %i.ff to i64               ; 3 uses
  %i.fv = ptrtoint ptr %i.ft to i64               ; 4 uses
  %i.fw = sub i64 %i.fu, %i.fv                    ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775792
  br i1 %i.fx, label %.noexc434, label %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i

.noexc434:                                        ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %i.fy = ashr exact i64 %i.fw, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.fz = add nsw i64 %.sroa.speculated.i.i, %i.fy ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fy
  %i.gb = call i64 @llvm.umin.i64(i64 %i.fz, i64 576460752303423487)
  %i.gc = select i1 %i.ga, i64 576460752303423487, i64 %i.gb ; 3 uses
  %.not.i.i427 = icmp ne i64 %i.gc, 0
  call void @llvm.assume(i1 %.not.i.i427)
  %i.gd = shl nuw nsw i64 %i.gc, 4
  %i.ge = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #19 ; 13 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fw ; 2 uses
  store double %i.fo, ptr %i.gf, align 8, !tbaa !55
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store double %i.fq, ptr %i.gg, align 8, !tbaa !57
  %.not13.i.i.i.i.i.i428 = icmp eq ptr %i.ft, %i.ff
  br i1 %.not13.i.i.i.i.i.i428, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i429.preheader

.lr.ph.i.i.i.i.i.i429.preheader:                  ; preds = %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.gh = add i64 %i.fu, -16
  %i.gi = sub i64 %i.gh, %i.fv                    ; 2 uses
  %i.gj = lshr i64 %i.gi, 4
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check817 = icmp ult i64 %i.gi, 144
  br i1 %min.iters.check817, label %.lr.ph.i.i.i.i.i.i429.preheader836, label %vector.memcheck799

vector.memcheck799:                               ; preds = %.lr.ph.i.i.i.i.i.i429.preheader
  %scevgep800 = getelementptr i8, ptr %i.ge, i64 8
  %i.gl = add i64 %i.fu, -16
  %i.gm = sub i64 %i.gl, %i.fv
  %i.gn = and i64 %i.gm, -16                      ; 4 uses
  %scevgep801 = getelementptr i8, ptr %scevgep800, i64 %i.gn
  %scevgep802 = getelementptr i8, ptr %i.ft, i64 8 ; 2 uses
  %scevgep803 = getelementptr i8, ptr %scevgep802, i64 %i.gn
  %scevgep804 = getelementptr i8, ptr %i.ge, i64 8
  %scevgep805 = getelementptr i8, ptr %i.ge, i64 16
  %scevgep806 = getelementptr i8, ptr %scevgep805, i64 %i.gn
  %scevgep807 = getelementptr i8, ptr %i.ft, i64 16
  %scevgep808 = getelementptr i8, ptr %scevgep807, i64 %i.gn
  %bound0809 = icmp ult ptr %i.ge, %scevgep803
  %bound1810 = icmp ult ptr %i.ft, %scevgep801
  %found.conflict811 = and i1 %bound0809, %bound1810
  %bound0812 = icmp ult ptr %scevgep804, %scevgep808
  %bound1813 = icmp ult ptr %scevgep802, %scevgep806
  %found.conflict814 = and i1 %bound0812, %bound1813
  %conflict.rdx815 = or i1 %found.conflict811, %found.conflict814
  br i1 %conflict.rdx815, label %.lr.ph.i.i.i.i.i.i429.preheader836, label %vector.ph818

vector.ph818:                                     ; preds = %vector.memcheck799
  %n.vec819 = and i64 %i.gk, 2305843009213693950  ; 3 uses
  %i.go = shl i64 %n.vec819, 4                    ; 2 uses
  %i.gp = getelementptr i8, ptr %i.ge, i64 %i.go  ; 2 uses
  %i.gq = getelementptr i8, ptr %i.ft, i64 %i.go
  br label %vector.body820

vector.body820:                                   ; preds = %vector.body820, %vector.ph818
  %index821 = phi i64 [ 0, %vector.ph818 ], [ %index.next828, %vector.body820 ] ; 2 uses
  %i.gr = shl i64 %index821, 4                    ; 3 uses
  %i.gs = or disjoint i64 %i.gr, 16               ; 2 uses
  %next.gep822 = getelementptr i8, ptr %i.ge, i64 %i.gr
  %next.gep823 = getelementptr i8, ptr %i.ge, i64 %i.gs
end_hunk_0
begin_hunk_1_@_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  %found.conflict641 = and i1 %bound0639, %bound1640
  %conflict.rdx = or i1 %found.conflict, %found.conflict641
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader690, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 2305843009213693950     ; 3 uses
  %i.ah = shl i64 %n.vec, 4                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.m, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 4                       ; 3 uses
  %i.al = or disjoint i64 %i.ak, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ak
  %next.gep642 = getelementptr i8, ptr %i.x, i64 %i.al
  %next.gep643 = getelementptr i8, ptr %i.m, i64 %i.ak
  %next.gep644 = getelementptr i8, ptr %i.m, i64 %i.al
  %wide.load = load <2 x double>, ptr %next.gep643, align 8
  %wide.load645 = load <2 x double>, ptr %next.gep644, align 8
  store <2 x double> %wide.load, ptr %next.gep, align 8
  store <2 x double> %wide.load645, ptr %next.gep642, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader690

.lr.ph.i.i.i.i.i.i.preheader690:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader690, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader690 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader690 ] ; 2 uses
  %i.an = load <2 x double>, ptr %.01214.i.i.i.i.i.i, align 8, !tbaa !23
  store <2 x double> %i.an, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.t
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !72

_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %i.aq = load ptr, ptr %1, align 8, !tbaa !44    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #16
  br label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  store ptr %i.x, ptr %1, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.av, ptr %i.s, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i ; 2 uses
  store ptr %i.aw, ptr %i.k, align 8, !tbaa !41
  br label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit:     ; preds = %bb.c, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.ax = phi ptr [ %i.m, %bb.c ], [ %i.x, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i ]
  %i.ay = phi ptr [ %i.l, %bb.c ], [ %i.aw, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load <2 x double>, ptr %i.az, align 8, !tbaa !23
  %i.bc = load <2 x i32>, ptr %i.ba, align 8, !tbaa !4
  %i.bd = sitofp <2 x i32> %i.bc to <2 x double>
  %i.be = fdiv <2 x double> %i.bb, %i.bd          ; 2 uses
  %.not406 = icmp slt i32 %i.d, 0                 ; 3 uses
  br i1 %.not406, label %._crit_edge409, label %.lr.ph408

.lr.ph408:                                        ; preds = %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.not132404 = icmp slt i32 %i.b, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not132404, label %._crit_edge409, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph408
  %.pre.pre = load ptr, ptr %i.bh, align 8, !tbaa !45
  %i.bi = extractelement <2 x double> %i.be, i64 1
  %i.bj = extractelement <2 x double> %i.be, i64 0
  br label %.lr.ph

._crit_edge409:                                   ; preds = %._crit_edge, %.lr.ph408, %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.bk = sext i32 %i.e to i64                    ; 6 uses
  %i.bl = icmp slt i32 %i.e, 0
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge409
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
  unreachable

bb.f:                                             ; preds = %._crit_edge409
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.bo = load ptr, ptr %2, align 8, !tbaa !53
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 2
  %i.bt = icmp ult i64 %i.bs, %i.bk
  br i1 %i.bt, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !54
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.bq
  %i.by = shl nuw nsw i64 %i.bk, 2
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #19 ; 4 uses
  %i.ca = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !54
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 4 %i.ca, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ca, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.cg = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ci) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.bz, ptr %2, align 8, !tbaa !53
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store ptr %i.cj, ptr %i.bu, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bk
  store ptr %i.ck, ptr %i.bm, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.cn = load ptr, ptr %3, align 8, !tbaa !53
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2
  %i.cs = icmp ult i64 %i.cr, %i.bk
  br i1 %i.cs, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit137

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !54
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.cv, %i.cp
  %i.cx = shl nuw nsw i64 %i.bk, 2
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #19 ; 4 uses
  %i.cz = load ptr, ptr %3, align 8, !tbaa !53    ; 4 uses
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !54
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cy, ptr align 4 %i.cz, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134: ; preds = %bb.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133
  %.not.i8.i135 = icmp eq ptr %i.cz, null
  br i1 %.not.i8.i135, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134
  %i.df = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dh) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134
  store ptr %i.cy, ptr %3, align 8, !tbaa !53
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  store ptr %i.di, ptr %i.ct, align 8, !tbaa !54
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.bk
  store ptr %i.dj, ptr %i.cl, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit137

_ZNSt6vectorIiSaIiEE7reserveEm.exit137:           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136
  %i.dk = shl nuw nsw i32 %i.e, 2
  %i.dl = zext nneg i32 %i.dk to i64              ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !50
  %i.do = load ptr, ptr %4, align 8, !tbaa !53
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 2
  %i.dt = icmp ult i64 %i.ds, %i.dl
  br i1 %i.dt, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i138, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit142

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i138: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit137
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !54
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.dq
  %i.dy = shl nuw nsw i64 %i.dl, 2
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #19 ; 4 uses
  %i.ea = load ptr, ptr %4, align 8, !tbaa !53    ; 4 uses
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !54
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i139

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i138
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dz, ptr align 4 %i.ea, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i139

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i139: ; preds = %bb.k, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i138
  %.not.i8.i140 = icmp eq ptr %i.ea, null
  br i1 %.not.i8.i140, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i141, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i139
  %i.eg = load ptr, ptr %i.dm, align 8, !tbaa !50
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.ed
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ei) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i141

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i141: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i139
  store ptr %i.dz, ptr %4, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dx
  store ptr %i.ej, ptr %i.du, align 8, !tbaa !54
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dl
  store ptr %i.ek, ptr %i.dm, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit142

_ZNSt6vectorIiSaIiEE7reserveEm.exit142:           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit137, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i141
  %i.el = load i32, ptr %i.c, align 4, !tbaa !40  ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.preheader.lr.ph, label %._crit_edge414

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit142
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.eq = load i32, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.preheader, label %._crit_edge414

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.pre = phi ptr [ %i.gs, %._crit_edge ], [ %.pre.pre, %.lr.ph.preheader ]
  %i.es = phi ptr [ %i.gq, %._crit_edge ], [ %i.ax, %.lr.ph.preheader ]
  %i.et = phi ptr [ %i.gr, %._crit_edge ], [ %i.ay, %.lr.ph.preheader ]
  %.0106407 = phi i32 [ %i.ey, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.eu = load i32, ptr %i.bf, align 4, !tbaa !39
  %i.ev = add nsw i32 %i.eu, %.0106407
  %i.ew = sitofp i32 %i.ev to double
  %i.ex = fmul double %i.bi, %i.ew                ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
  %i.ey = add nuw i32 %.0106407, 1
  %exitcond440.not = icmp eq i32 %.0106407, %i.d
  br i1 %exitcond440.not, label %._crit_edge409, label %.lr.ph, !llvm.loop !73

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
  %i.ez = phi ptr [ %i.es, %.lr.ph ], [ %i.gq, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit ] ; 13 uses
  %i.fa = phi ptr [ %i.et, %.lr.ph ], [ %i.gr, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit ] ; 5 uses
  %i.fb = phi ptr [ %.pre, %.lr.ph ], [ %i.gs, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit ] ; 4 uses
  %.0105405 = phi i32 [ 0, %.lr.ph ], [ %i.gt, %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit ] ; 3 uses
  %i.fc = load i32, ptr %i.bg, align 8, !tbaa !37
  %i.fd = add nsw i32 %i.fc, %.0105405
  %i.fe = sitofp i32 %i.fd to double
  %i.ff = fmul double %i.bj, %i.fe                ; 2 uses
  %.not.i.i143 = icmp eq ptr %i.fb, %i.fa
  br i1 %.not.i.i143, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double %i.ff, ptr %i.fb, align 8, !tbaa !55
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store double %i.ex, ptr %i.fg, align 8, !tbaa !57
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  store ptr %i.fh, ptr %i.bh, align 8, !tbaa !45
  br label %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit

bb.o:                                             ; preds = %bb.m
  %i.fi = ptrtoint ptr %i.fa to i64               ; 3 uses
  %i.fj = ptrtoint ptr %i.ez to i64               ; 4 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 3 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775792
  br i1 %i.fl, label %.noexc338, label %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i

.noexc338:                                        ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.fm = ashr exact i64 %i.fk, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 576460752303423487)
  %i.fq = select i1 %i.fo, i64 576460752303423487, i64 %i.fp ; 3 uses
  %.not.i.i331 = icmp ne i64 %i.fq, 0
  tail call void @llvm.assume(i1 %.not.i.i331)
  %i.fr = shl nuw nsw i64 %i.fq, 4
  %i.fs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #19 ; 14 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fk ; 2 uses
  store double %i.ff, ptr %i.ft, align 8, !tbaa !55
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store double %i.ex, ptr %i.fu, align 8, !tbaa !57
  %.not13.i.i.i.i.i.i332 = icmp eq ptr %i.ez, %i.fa
  br i1 %.not13.i.i.i.i.i.i332, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i333.preheader

.lr.ph.i.i.i.i.i.i333.preheader:                  ; preds = %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.fv = add i64 %i.fi, -16
  %i.fw = sub i64 %i.fv, %i.fj                    ; 2 uses
  %i.fx = lshr i64 %i.fw, 4
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check665 = icmp ult i64 %i.fw, 144
  br i1 %min.iters.check665, label %.lr.ph.i.i.i.i.i.i333.preheader685, label %vector.memcheck647

vector.memcheck647:                               ; preds = %.lr.ph.i.i.i.i.i.i333.preheader
  %scevgep648 = getelementptr i8, ptr %i.fs, i64 8
  %i.fz = add i64 %i.fi, -16
  %i.ga = sub i64 %i.fz, %i.fj
  %i.gb = and i64 %i.ga, -16                      ; 4 uses
  %scevgep649 = getelementptr i8, ptr %scevgep648, i64 %i.gb
  %scevgep650 = getelementptr i8, ptr %i.ez, i64 8 ; 2 uses
  %scevgep651 = getelementptr i8, ptr %scevgep650, i64 %i.gb
  %scevgep652 = getelementptr i8, ptr %i.fs, i64 8
  %scevgep653 = getelementptr i8, ptr %i.fs, i64 16
  %scevgep654 = getelementptr i8, ptr %scevgep653, i64 %i.gb
  %scevgep655 = getelementptr i8, ptr %i.ez, i64 16
  %scevgep656 = getelementptr i8, ptr %scevgep655, i64 %i.gb
  %bound0657 = icmp ult ptr %i.fs, %scevgep651
  %bound1658 = icmp ult ptr %i.ez, %scevgep649
  %found.conflict659 = and i1 %bound0657, %bound1658
  %bound0660 = icmp ult ptr %scevgep652, %scevgep656
  %bound1661 = icmp ult ptr %scevgep650, %scevgep654
  %found.conflict662 = and i1 %bound0660, %bound1661
  %conflict.rdx663 = or i1 %found.conflict659, %found.conflict662
  br i1 %conflict.rdx663, label %.lr.ph.i.i.i.i.i.i333.preheader685, label %vector.ph666

vector.ph666:                                     ; preds = %vector.memcheck647
  %n.vec667 = and i64 %i.fy, 2305843009213693950  ; 3 uses
  %i.gc = shl i64 %n.vec667, 4                    ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fs, i64 %i.gc  ; 2 uses
  %i.ge = getelementptr i8, ptr %i.ez, i64 %i.gc
  br label %vector.body668

vector.body668:                                   ; preds = %vector.body668, %vector.ph666
  %index669 = phi i64 [ 0, %vector.ph666 ], [ %index.next676, %vector.body668 ] ; 2 uses
  %i.gf = shl i64 %index669, 4                    ; 3 uses
  %i.gg = or disjoint i64 %i.gf, 16               ; 2 uses
  %next.gep670 = getelementptr i8, ptr %i.fs, i64 %i.gf
  %next.gep671 = getelementptr i8, ptr %i.fs, i64 %i.gg
  %next.gep672 = getelementptr i8, ptr %i.ez, i64 %i.gf
  %next.gep673 = getelementptr i8, ptr %i.ez, i64 %i.gg
  %wide.load674 = load <2 x double>, ptr %next.gep672, align 8
  %wide.load675 = load <2 x double>, ptr %next.gep673, align 8
  store <2 x double> %wide.load674, ptr %next.gep670, align 8
  store <2 x double> %wide.load675, ptr %next.gep671, align 8
  %index.next676 = add nuw i64 %index669, 2       ; 2 uses
  %i.gh = icmp eq i64 %index.next676, %n.vec667
  br i1 %i.gh, label %middle.block677, label %vector.body668, !llvm.loop !74

middle.block677:                                  ; preds = %vector.body668
  %cmp.n678 = icmp eq i64 %i.fy, %n.vec667
  br i1 %cmp.n678, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i333.preheader685

.lr.ph.i.i.i.i.i.i333.preheader685:               ; preds = %vector.memcheck647, %.lr.ph.i.i.i.i.i.i333.preheader, %middle.block677
  %.015.i.i.i.i.i.i334.ph = phi ptr [ %i.fs, %vector.memcheck647 ], [ %i.fs, %.lr.ph.i.i.i.i.i.i333.preheader ], [ %i.gd, %middle.block677 ]
  %.01214.i.i.i.i.i.i335.ph = phi ptr [ %i.ez, %vector.memcheck647 ], [ %i.ez, %.lr.ph.i.i.i.i.i.i333.preheader ], [ %i.ge, %middle.block677 ]
  br label %.lr.ph.i.i.i.i.i.i333

.lr.ph.i.i.i.i.i.i333:                            ; preds = %.lr.ph.i.i.i.i.i.i333.preheader685, %.lr.ph.i.i.i.i.i.i333
  %.015.i.i.i.i.i.i334 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i333 ], [ %.015.i.i.i.i.i.i334.ph, %.lr.ph.i.i.i.i.i.i333.preheader685 ] ; 2 uses
  %.01214.i.i.i.i.i.i335 = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i333 ], [ %.01214.i.i.i.i.i.i335.ph, %.lr.ph.i.i.i.i.i.i333.preheader685 ] ; 2 uses
  %i.gi = load <2 x double>, ptr %.01214.i.i.i.i.i.i335, align 8, !tbaa !23
  store <2 x double> %i.gi, ptr %.015.i.i.i.i.i.i334, align 8, !tbaa !23
  %i.gj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i335, i64 16 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i334, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i336 = icmp eq ptr %i.gj, %i.fa
  br i1 %.not.i.i.i.i.i.i336, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i333, !llvm.loop !75

_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i333, %middle.block677, %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit.i
end_hunk_1
begin_hunk_2_@_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  %i.mj = trunc i64 %i.mi to i32                  ; 2 uses
  %i.mk = load ptr, ptr %i.jo, align 8, !tbaa !54 ; 4 uses
  %i.ml = load ptr, ptr %i.cl, align 8, !tbaa !50
  %.not.i.i332 = icmp eq ptr %i.mk, %i.ml
  br i1 %.not.i.i332, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store ptr %i.mm, ptr %i.jo, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bk:                                            ; preds = %bb.bi
  %i.mn = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.mo = ptrtoint ptr %i.mk to i64
  %i.mp = ptrtoint ptr %i.mn to i64               ; 2 uses
  %i.mq = sub i64 %i.mo, %i.mp                    ; 5 uses
  %i.mr = icmp eq i64 %i.mq, 9223372036854775804
  br i1 %i.mr, label %bb.bl, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
          to label %.noexc334 unwind label %.loopexit.split-lp880

.noexc334:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bk
  %i.ms = ashr exact i64 %i.mq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ms, i64 1)
  %i.mt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ms ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %i.ms
  %i.mv = call i64 @llvm.umin.i64(i64 %i.mt, i64 2305843009213693951)
  %i.mw = select i1 %i.mu, i64 2305843009213693951, i64 %i.mv ; 3 uses
  %.not.i.i.i.i333 = icmp ne i64 %i.mw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i333)
  %i.mx = shl nuw nsw i64 %i.mw, 2
  %i.my = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mx) #19
          to label %.noexc335 unwind label %.loopexit879 ; 4 uses

.noexc335:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 %i.mq ; 2 uses
  store i32 %i.mj, ptr %i.mz, align 4, !tbaa !4
  %i.na = icmp sgt i64 %i.mq, 0
  br i1 %i.na, label %bb.bm, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.bm:                                            ; preds = %.noexc335
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.my, ptr align 4 %i.mn, i64 %i.mq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bm, %.noexc335
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.mn, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.nc = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = sub i64 %i.nd, %i.mp
  call void @_ZdlPvm(ptr noundef nonnull %i.mn, i64 noundef %i.ne) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.my, ptr %2, align 8, !tbaa !53
  store ptr %i.nb, ptr %i.jo, align 8, !tbaa !54
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.mw
  store ptr %i.nf, ptr %i.cl, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.bj
  %i.ng = ptrtoint ptr %.sroa.37.1 to i64
  %i.nh = ptrtoint ptr %i.kr to i64
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = lshr exact i64 %i.ni, 2
  %i.nk = trunc i64 %i.nj to i32                  ; 2 uses
  %i.nl = load ptr, ptr %i.jp, align 8, !tbaa !54 ; 4 uses
  %i.nm = load ptr, ptr %i.hi, align 8, !tbaa !50
  %.not.i.i336 = icmp eq ptr %i.nl, %i.nm
  br i1 %.not.i.i336, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 %i.nk, ptr %i.nl, align 4, !tbaa !4
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  store ptr %i.nn, ptr %i.jp, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit345

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.no = load ptr, ptr %3, align 8, !tbaa !53    ; 4 uses
  %i.np = ptrtoint ptr %i.nl to i64
  %i.nq = ptrtoint ptr %i.no to i64               ; 2 uses
  %i.nr = sub i64 %i.np, %i.nq                    ; 5 uses
  %i.ns = icmp eq i64 %i.nr, 9223372036854775804
  br i1 %i.ns, label %bb.bq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i337

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
          to label %.noexc343 unwind label %.loopexit.split-lp885

.noexc343:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i337: ; preds = %bb.bp
  %i.nt = ashr exact i64 %i.nr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i338 = call i64 @llvm.umax.i64(i64 %i.nt, i64 1)
  %i.nu = add nsw i64 %.sroa.speculated.i.i.i.i338, %i.nt ; 2 uses
  %i.nv = icmp ult i64 %i.nu, %i.nt
  %i.nw = call i64 @llvm.umin.i64(i64 %i.nu, i64 2305843009213693951)
  %i.nx = select i1 %i.nv, i64 2305843009213693951, i64 %i.nw ; 3 uses
  %.not.i.i.i.i339 = icmp ne i64 %i.nx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i339)
  %i.ny = shl nuw nsw i64 %i.nx, 2
  %i.nz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ny) #19
          to label %.noexc344 unwind label %.loopexit884 ; 4 uses

.noexc344:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i337
  %i.oa = getelementptr inbounds i8, ptr %i.nz, i64 %i.nr ; 2 uses
  store i32 %i.nk, ptr %i.oa, align 4, !tbaa !4
  %i.ob = icmp sgt i64 %i.nr, 0
  br i1 %i.ob, label %bb.br, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i340

bb.br:                                            ; preds = %.noexc344
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nz, ptr align 4 %i.no, i64 %i.nr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i340

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i340: ; preds = %bb.br, %.noexc344
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %.not.i17.i.i.i341 = icmp eq ptr %i.no, null
  br i1 %.not.i17.i.i.i341, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i342, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i340
  %i.od = load ptr, ptr %i.hi, align 8, !tbaa !50
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = sub i64 %i.oe, %i.nq
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef %i.of) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i342

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i342: ; preds = %bb.bs, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i340
  store ptr %i.nz, ptr %3, align 8, !tbaa !53
  store ptr %i.oc, ptr %i.jp, align 8, !tbaa !54
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.nx
  store ptr %i.og, ptr %i.hi, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit345

_ZNSt6vectorIiSaIiEE9push_backEOi.exit345:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i342, %bb.bo
  %i.oh = load ptr, ptr %i.jn, align 8, !tbaa !103
  %i.oi = load ptr, ptr %4, align 8, !tbaa !103   ; 2 uses
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = getelementptr inbounds i8, ptr %i.oi, i64 %i.ol
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.om, ptr nonnull %i.kr, ptr nonnull %.sroa.37.1)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %bb.bt

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit345
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef 24) #16
  %i.on = add nuw nsw i32 %.0210905, 1            ; 2 uses
  %i.oo = load i32, ptr %i.a, align 8, !tbaa !38
  %i.op = icmp slt i32 %i.on, %i.oo
  br i1 %i.op, label %bb.ar, label %.loopexit878.loopexit, !llvm.loop !104

.loopexit879:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit881 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit348

.loopexit.split-lp880:                            ; preds = %bb.bl
  %lpad.loopexit.split-lp882 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit348

.loopexit884:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i337
  %lpad.loopexit886 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit348

.loopexit.split-lp885:                            ; preds = %bb.bq
  %lpad.loopexit.split-lp887 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit348

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit345
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit348

_ZNSt6vectorIiSaIiEED2Ev.exit348:                 ; preds = %.loopexit884, %.loopexit.split-lp885, %.loopexit879, %.loopexit.split-lp880, %bb.bt
  %.pn256 = phi { ptr, i32 } [ %i.oq, %bb.bt ], [ %lpad.loopexit.split-lp882, %.loopexit.split-lp880 ], [ %lpad.loopexit881, %.loopexit879 ], [ %lpad.loopexit886, %.loopexit884 ], [ %lpad.loopexit.split-lp887, %.loopexit.split-lp885 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef 24) #16
  br label %.loopexit873

bb.bu:                                            ; preds = %._crit_edge910
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 8 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !36 ; 2 uses
  %.not221 = icmp eq i32 %i.os, 0
  %i.ot = select i1 %.not221, i32 0, i32 2
  %i.ou = mul nsw i32 %i.ot, %i.f
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !35 ; 2 uses
  %.not222 = icmp eq i32 %i.ow, 0
  %i.ox = select i1 %.not222, i32 0, i32 2
  %i.oy = mul nuw nsw i32 %i.ox, %i.g
  %i.oz = add nsw i32 %i.oy, %i.ou                ; 2 uses
  %i.pa = sext i32 %i.oz to i64                   ; 3 uses
  %i.pb = icmp slt i32 %i.oz, 0
  br i1 %i.pb, label %.invoke, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 28 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !50
  %i.pe = load ptr, ptr %7, align 8, !tbaa !53
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = ptrtoint ptr %i.pe to i64               ; 2 uses
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = ashr exact i64 %i.ph, 2
  %i.pj = icmp ult i64 %i.pi, %i.pa
  br i1 %i.pj, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i349, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit355

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i349: ; preds = %bb.bv
  %i.pk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !54
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = sub i64 %i.pm, %i.pg
  %i.po = shl nuw nsw i64 %i.pa, 2
  %i.pp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.po) #19
          to label %.noexc354 unwind label %bb.an ; 4 uses

.noexc354:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i349
  %i.pq = load ptr, ptr %7, align 8, !tbaa !53    ; 4 uses
  %i.pr = load ptr, ptr %i.pk, align 8, !tbaa !54
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = ptrtoint ptr %i.pq to i64               ; 2 uses
  %i.pu = sub i64 %i.ps, %i.pt                    ; 2 uses
  %i.pv = icmp sgt i64 %i.pu, 0
  br i1 %i.pv, label %bb.bw, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i350

bb.bw:                                            ; preds = %.noexc354
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pp, ptr align 4 %i.pq, i64 %i.pu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i350

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i350: ; preds = %bb.bw, %.noexc354
  %.not.i8.i351 = icmp eq ptr %i.pq, null
  br i1 %.not.i8.i351, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i352, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i350
  %i.pw = load ptr, ptr %i.pc, align 8, !tbaa !50
  %i.px = ptrtoint ptr %i.pw to i64
  %i.py = sub i64 %i.px, %i.pt
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef %i.py) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i352

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i352: ; preds = %bb.bx, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i350
  store ptr %i.pp, ptr %7, align 8, !tbaa !53
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.pn
  store ptr %i.pz, ptr %i.pk, align 8, !tbaa !54
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.pa
  store ptr %i.qa, ptr %i.pc, align 8, !tbaa !50
  %.pre1017 = load i32, ptr %i.or, align 4, !tbaa !36
  %.pre1018 = load i32, ptr %i.ov, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit355

_ZNSt6vectorIiSaIiEE7reserveEm.exit355:           ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i352, %bb.bv
  %i.qb = phi i32 [ %.pre1018, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i352 ], [ %i.ow, %bb.bv ] ; 2 uses
  %i.qc = phi i32 [ %.pre1017, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i352 ], [ %i.os, %bb.bv ]
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !34
  %i.qf = add nsw i32 %i.qe, -1
  %.not223 = icmp eq i32 %i.qc, %i.qf
  %i.qg = select i1 %.not223, i32 0, i32 2
  %i.qh = mul nsw i32 %i.qg, %i.f
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !33
  %i.qk = add nsw i32 %i.qj, -1
  %.not224 = icmp eq i32 %i.qb, %i.qk
  %i.ql = select i1 %.not224, i32 0, i32 2
  %i.qm = mul nuw nsw i32 %i.ql, %i.g
  %i.qn = add nsw i32 %i.qm, %i.qh                ; 2 uses
  %i.qo = add nsw i32 %i.qn, 2
  %i.qp = sext i32 %i.qo to i64                   ; 3 uses
  %i.qq = icmp slt i32 %i.qn, -2
  br i1 %i.qq, label %.invoke, label %bb.by

.invoke:                                          ; preds = %._crit_edge904, %_ZNSt6vectorIiSaIiEE7reserveEm.exit355, %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
          to label %.cont unwind label %bb.an

.cont:                                            ; preds = %.invoke
  unreachable

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit355
  %i.qr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 29 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !50
  %i.qt = load ptr, ptr %10, align 8, !tbaa !53
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qt to i64               ; 2 uses
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = ashr exact i64 %i.qw, 2
  %i.qy = icmp ult i64 %i.qx, %i.qp
  br i1 %i.qy, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i356, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit362

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i356: ; preds = %bb.by
  %i.qz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !54
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = sub i64 %i.rb, %i.qv
  %i.rd = shl nuw nsw i64 %i.qp, 2
  %i.re = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rd) #19
          to label %.noexc361 unwind label %bb.an ; 4 uses

.noexc361:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i356
  %i.rf = load ptr, ptr %10, align 8, !tbaa !53   ; 4 uses
  %i.rg = load ptr, ptr %i.qz, align 8, !tbaa !54
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = ptrtoint ptr %i.rf to i64               ; 2 uses
  %i.rj = sub i64 %i.rh, %i.ri                    ; 2 uses
  %i.rk = icmp sgt i64 %i.rj, 0
  br i1 %i.rk, label %bb.bz, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i357

bb.bz:                                            ; preds = %.noexc361
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.re, ptr align 4 %i.rf, i64 %i.rj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i357

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i357: ; preds = %bb.bz, %.noexc361
  %.not.i8.i358 = icmp eq ptr %i.rf, null
  br i1 %.not.i8.i358, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i359, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i357
  %i.rl = load ptr, ptr %i.qr, align 8, !tbaa !50
  %i.rm = ptrtoint ptr %i.rl to i64
  %i.rn = sub i64 %i.rm, %i.ri
  call void @_ZdlPvm(ptr noundef nonnull %i.rf, i64 noundef %i.rn) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i359

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i359: ; preds = %bb.ca, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i357
  store ptr %i.re, ptr %10, align 8, !tbaa !53
  %i.ro = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rc
  store ptr %i.ro, ptr %i.qz, align 8, !tbaa !54
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %i.qp
  store ptr %i.rp, ptr %i.qr, align 8, !tbaa !50
  %.pre1019 = load i32, ptr %i.ov, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit362

_ZNSt6vectorIiSaIiEE7reserveEm.exit362:           ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i359, %bb.by
  %i.rq = phi i32 [ %.pre1019, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i359 ], [ %i.qb, %bb.by ]
  %.not225 = icmp eq i32 %i.rq, 0
  br i1 %.not225, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit395, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit362
  %i.rr = load i32, ptr %i.or, align 4, !tbaa !36
  %.not226 = icmp eq i32 %i.rr, 0
  br i1 %.not226, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit445.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rs = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.rt = load i32, ptr %i.qi, align 8, !tbaa !33
  %i.ru = xor i32 %i.rt, -1
  %i.rv = add i32 %i.rs, %i.ru                    ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !54 ; 4 uses
  %i.ry = load ptr, ptr %i.pc, align 8, !tbaa !50 ; 2 uses
  %.not.i.i363 = icmp eq ptr %i.rx, %i.ry
  br i1 %.not.i.i363, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.rx, align 4, !tbaa !4
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 4 ; 2 uses
  store ptr %i.rz, ptr %i.rw, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit372

bb.ce:                                            ; preds = %bb.cc
  %i.sa = load ptr, ptr %7, align 8, !tbaa !53    ; 4 uses
  %i.sb = ptrtoint ptr %i.rx to i64
  %i.sc = ptrtoint ptr %i.sa to i64               ; 2 uses
  %i.sd = sub i64 %i.sb, %i.sc                    ; 5 uses
  %i.se = icmp eq i64 %i.sd, 9223372036854775804
  br i1 %i.se, label %bb.cf, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i364

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
          to label %.noexc370 unwind label %bb.cx

.noexc370:                                        ; preds = %bb.cf
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i364: ; preds = %bb.ce
  %i.sf = ashr exact i64 %i.sd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i365 = call i64 @llvm.umax.i64(i64 %i.sf, i64 1)
  %i.sg = add nsw i64 %.sroa.speculated.i.i.i.i365, %i.sf ; 2 uses
  %i.sh = icmp ult i64 %i.sg, %i.sf
  %i.si = call i64 @llvm.umin.i64(i64 %i.sg, i64 2305843009213693951)
  %i.sj = select i1 %i.sh, i64 2305843009213693951, i64 %i.si ; 3 uses
  %.not.i.i.i.i366 = icmp ne i64 %i.sj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i366)
  %i.sk = shl nuw nsw i64 %i.sj, 2
  %i.sl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sk) #19
          to label %.noexc371 unwind label %bb.cx ; 4 uses

.noexc371:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i364
  %i.sm = getelementptr inbounds i8, ptr %i.sl, i64 %i.sd ; 2 uses
  store i32 0, ptr %i.sm, align 4, !tbaa !4
  %i.sn = icmp sgt i64 %i.sd, 0
  br i1 %i.sn, label %bb.cg, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i367

bb.cg:                                            ; preds = %.noexc371
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sl, ptr align 4 %i.sa, i64 %i.sd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i367

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i367: ; preds = %bb.cg, %.noexc371
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 4 ; 2 uses
  %.not.i17.i.i.i368 = icmp eq ptr %i.sa, null
  br i1 %.not.i17.i.i.i368, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i369, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i367
  %i.sp = load ptr, ptr %i.pc, align 8, !tbaa !50
  %i.sq = ptrtoint ptr %i.sp to i64
  %i.sr = sub i64 %i.sq, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %i.sa, i64 noundef %i.sr) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i369

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i369: ; preds = %bb.ch, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i367
  store ptr %i.sl, ptr %7, align 8, !tbaa !53
  store ptr %i.so, ptr %i.rw, align 8, !tbaa !54
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.sj ; 2 uses
  store ptr %i.ss, ptr %i.pc, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit372

_ZNSt6vectorIiSaIiEE9push_backEOi.exit372:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i369, %bb.cd
  %i.st = phi ptr [ %i.ss, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i369 ], [ %i.ry, %bb.cd ] ; 2 uses
  %i.su = phi ptr [ %i.so, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i369 ], [ %i.rz, %bb.cd ] ; 3 uses
  %.not.i.i373 = icmp eq ptr %i.su, %i.st
  br i1 %.not.i.i373, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit372
  store i32 1, ptr %i.su, align 4, !tbaa !4
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  store ptr %i.sv, ptr %i.rw, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit382

bb.cj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit372
  %i.sw = load ptr, ptr %7, align 8, !tbaa !53    ; 4 uses
  %i.sx = ptrtoint ptr %i.st to i64
  %i.sy = ptrtoint ptr %i.sw to i64               ; 2 uses
  %i.sz = sub i64 %i.sx, %i.sy                    ; 5 uses
  %i.ta = icmp eq i64 %i.sz, 9223372036854775804
  br i1 %i.ta, label %bb.ck, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i374

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
          to label %.noexc380 unwind label %bb.cy

.noexc380:                                        ; preds = %bb.ck
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i374: ; preds = %bb.cj
  %i.tb = ashr exact i64 %i.sz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i375 = call i64 @llvm.umax.i64(i64 %i.tb, i64 1)
  %i.tc = add nsw i64 %.sroa.speculated.i.i.i.i375, %i.tb ; 2 uses
  %i.td = icmp ult i64 %i.tc, %i.tb
  %i.te = call i64 @llvm.umin.i64(i64 %i.tc, i64 2305843009213693951)
  %i.tf = select i1 %i.td, i64 2305843009213693951, i64 %i.te ; 3 uses
  %.not.i.i.i.i376 = icmp ne i64 %i.tf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i376)
  %i.tg = shl nuw nsw i64 %i.tf, 2
  %i.th = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tg) #19
          to label %.noexc381 unwind label %bb.cy ; 4 uses

.noexc381:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i374
  %i.ti = getelementptr inbounds i8, ptr %i.th, i64 %i.sz ; 2 uses
  store i32 1, ptr %i.ti, align 4, !tbaa !4
  %i.tj = icmp sgt i64 %i.sz, 0
  br i1 %i.tj, label %bb.cl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i377

bb.cl:                                            ; preds = %.noexc381
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.th, ptr align 4 %i.sw, i64 %i.sz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i377

end_hunk_2
