inline.NumInlined: 2112
inline.NumDeleted: 869
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4lean2ir11interpreter9eval_bodyERKNS_10object_refE:bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 4
  %.val.i.i = load i32, ptr %i.k, align 4
  %i.l = lshr i32 %.val.i.i, 24
  br label %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit

_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  switch i32 %i.m, label %.thread284.backedge [
    i32 0, label %bb.d
    i32 1, label %bb.w
    i32 2, label %bb.ab
    i32 3, label %bb.af
    i32 4, label %bb.ah
    i32 5, label %bb.ak
    i32 6, label %bb.bb
    i32 7, label %bb.bh
    i32 8, label %bb.bu
    i32 9, label %bb.bx
    i32 10, label %bb.cm
    i32 11, label %bb.cp
    i32 12, label %bb.dh
  ]

bb.d:                                             ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !10   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val.i.i114 = load i32, ptr %i.q, align 4
  %.mask = and i32 %.val.i.i114, -16777216
  %i.r = icmp eq i32 %.mask, 100663296
  br i1 %i.r, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.x = tail call zeroext i8 @lean_name_eq(ptr noundef %i.v, ptr noundef %i.w)
  %.not289 = icmp eq i8 %i.x, 0
  br i1 %.not289, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !10   ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = lshr i64 %i.z, 1
  %i.ac = trunc i64 %i.ab to i32
  br label %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit116

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.y, i64 4
  %.val.i.i115 = load i32, ptr %i.ad, align 4
  %i.ae = lshr i32 %.val.i.i115, 24
  br label %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit116

_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit116: ; preds = %bb.g, %bb.h
  %i.af = phi i32 [ %i.ac, %bb.g ], [ %i.ae, %bb.h ]
  %i.ag = icmp eq i32 %i.af, 10
  br i1 %i.ag, label %bb.i, label %bb.r

bb.i:                                             ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit116
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = trunc i64 %i.aj to i1
  br i1 %i.ak, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !10 ; 3 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !10 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = and i64 %i.aq, 1
  %i.at = and i64 %i.as, %i.ar
  %or.cond.not.i.i = icmp eq i64 %i.at, 0
  br i1 %or.cond.not.i.i, label %_ZN4leaneqERKNS_3natES2_.exit, label %.split, !prof !241

.split:                                           ; preds = %bb.j
  %i.au = icmp eq ptr %i.ao, %i.ap
  br i1 %i.au, label %bb.k, label %bb.r

_ZN4leaneqERKNS_3natES2_.exit:                    ; preds = %bb.j
  %i.av = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.ao, ptr noundef %i.ap)
  br i1 %i.av, label %bb.k, label %bb.r

bb.k:                                             ; preds = %.split, %_ZN4leaneqERKNS_3natES2_.exit
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !202 ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !132
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !10, !noalias !242 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %.val.i.i.i = load i64, ptr %i.bf, align 8, !tbaa !29, !noalias !245 ; 2 uses
  %.idx328 = shl nuw nsw i64 %.val.i.i.i, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx328
  %.not290317 = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not290317, label %._crit_edge324, label %.lr.ph320

.preheader:                                       ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit
  %.pre377 = load ptr, ptr %i.ax, align 8, !tbaa !10
  %.phi.trans.insert378 = getelementptr i8, ptr %.pre377, i64 8
  %.val.i.i118321.pre = load i64, ptr %.phi.trans.insert378, align 8, !tbaa !29
  %i.bh = icmp eq i64 %.val.i.i118321.pre, 0
  br i1 %i.bh, label %._crit_edge324, label %.lr.ph323

.lr.ph320:                                        ; preds = %bb.k, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit
  %i.bi = phi ptr [ %i.dk, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ], [ %i.ay, %bb.k ] ; 3 uses
  %.sroa.0226.0318 = phi ptr [ %i.dl, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ], [ %i.be, %bb.k ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.0226.0318, align 8, !tbaa !10 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph320
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !204
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !10
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = lshr i64 %i.br, 1
  %i.bt = add i64 %i.bs, %i.bp                    ; 2 uses
  %i.bu = add i64 %i.bt, -1                       ; 2 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.bw = ptrtoint ptr %i.bi to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3
  %.not.i.i = icmp ult i64 %i.bu, %i.bz
  br i1 %.not.i.i, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.bt)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !132
  %.pre376.pre = load ptr, ptr %i.c, align 8, !tbaa !202
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i

_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i:   ; preds = %bb.m, %bb.l
  %.pre376 = phi ptr [ %.pre376.pre, %bb.m ], [ %i.bi, %bb.l ]
  %i.ca = phi ptr [ %.pre.i.i, %bb.m ], [ %i.bv, %bb.l ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bu
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !14
  br label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit

_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit: ; preds = %.lr.ph320, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i
  %i.cd = phi ptr [ %.pre376, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i ], [ %i.bi, %.lr.ph320 ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.cc, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i ], [ 1, %.lr.ph320 ] ; 2 uses
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !133
  %.not.i.i117 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i.i117, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit
  store i64 %.sroa.0.0.i, ptr %i.cd, align 8, !tbaa !14
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.c, align 8, !tbaa !202
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

bb.o:                                             ; preds = %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit
  %i.ch = load ptr, ptr %0, align 8, !tbaa !132   ; 7 uses
  %i.ci = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %bb.p, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.cm = ashr exact i64 %i.ck, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 1152921504606846975)
  %i.cq = select i1 %i.co, i64 1152921504606846975, i64 %i.cp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #27 ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck
  store i64 %.sroa.0.0.i, ptr %i.ct, align 8, !tbaa !14
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.cd
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cu = ptrtoaddr ptr %i.cs to i64
  %3 = add i64 %i.ci, -8
  %4 = sub i64 %3, %i.cj                          ; 2 uses
  %i.cv = lshr i64 %4, 3
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 24
  %i.cx = sub i64 %i.cj, %i.cu
  %diff.check = icmp ugt i64 %i.cx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader537, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cw, 4611686018427387900     ; 3 uses
  %i.cy = shl i64 %n.vec, 3                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cs, i64 %i.cy  ; 2 uses
  %i.da = getelementptr i8, ptr %i.ch, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cs, i64 %i.db ; 2 uses
  %next.gep480 = getelementptr i8, ptr %i.ch, i64 %i.db ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.dc = getelementptr i8, ptr %next.gep480, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep480, align 8, !tbaa !14, !alias.scope !251, !noalias !248
  %wide.load481 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !14, !alias.scope !251, !noalias !248
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !14, !alias.scope !248, !noalias !251
  store <2 x i64> %wide.load481, ptr %i.dd, align 8, !tbaa !14, !alias.scope !248, !noalias !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader537

.lr.ph.i.i.i.i.i.i.preheader537:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cz, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader537, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader537 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader537 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.df = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !251, !noalias !248
  store i64 %i.df, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !248, !noalias !251
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.cd
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !254

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cs, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cz, %middle.block ], [ %i.dh, %.lr.ph.i.i.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.ck) #25
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.cs, ptr %0, align 8, !tbaa !132
  store ptr %i.di, ptr %i.c, align 8, !tbaa !202
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.dj, ptr %i.d, align 8, !tbaa !133
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.n, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.dk = phi ptr [ %i.cg, %bb.n ], [ %i.di, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0226.0318, i64 8 ; 2 uses
  %.not290 = icmp eq ptr %i.dl, %i.bg
  br i1 %.not290, label %.preheader, label %.lr.ph320

._crit_edge324:                                   ; preds = %.lr.ph323, %bb.k, %.preheader
  %.val.i.i118.lcssa = phi i64 [ 0, %.preheader ], [ 0, %bb.k ], [ %.val.i.i118, %.lr.ph323 ]
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !204
  %i.dp = add i64 %i.do, %.val.i.i118.lcssa
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.dp)
  tail call void @_ZN4lean2ir11interpreter12check_systemEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br label %.thread284.backedge

.lr.ph323:                                        ; preds = %.preheader, %.lr.ph323
  %.0322 = phi i64 [ %i.dz, %.lr.ph323 ], [ 0, %.preheader ] ; 3 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.bc
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.0322
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !204
  %i.dw = getelementptr [8 x i8], ptr %i.dq, i64 %i.dv
  %i.dx = getelementptr [8 x i8], ptr %i.dw, i64 %.0322
  %i.dy = load i64, ptr %i.ds, align 8, !tbaa !14
  store i64 %i.dy, ptr %i.dx, align 8, !tbaa !14
  %i.dz = add nuw i64 %.0322, 1                   ; 2 uses
  %i.ea = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %.val.i.i118 = load i64, ptr %i.eb, align 8, !tbaa !29 ; 2 uses
  %i.ec = icmp ult i64 %i.dz, %.val.i.i118
  br i1 %i.ec, label %.lr.ph323, label %._crit_edge324, !llvm.loop !255

bb.r:                                             ; preds = %.split, %_ZN4leaneqERKNS_3natES2_.exit, %bb.i, %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit116, %bb.e, %bb.d
  %i.ed = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !13
  %i.eg = ptrtoint ptr %i.ef to i64               ; 2 uses
  %i.eh = trunc i64 %i.eg to i1
  br i1 %i.eh, label %_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ei, ptr noundef nonnull @.str)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.ei, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #24
  unreachable

common.resume:                                    ; preds = %bb.cl, %bb.dj, %bb.az, %bb.ay, %bb.cb, %bb.ap, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.ej, %bb.u ], [ %i.mn, %bb.ap ], [ %i.td, %bb.cb ], [ %i.aao, %bb.dj ], [ %i.ug, %bb.cl ], [ %.pn273, %bb.az ], [ %lpad.thr_comm.split-lp, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.s
  %i.ej = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ei) #23
  br label %common.resume

_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit: ; preds = %bb.r
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.el = lshr i64 %i.eg, 1
  %i.em = trunc i64 %i.el to i32
  %i.en = tail call i64 @_ZN4lean2ir11interpreter9eval_exprERKNS_10object_refENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ek, i32 noundef %i.em)
  %i.eo = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -16
  %i.es = load i64, ptr %i.er, align 8, !tbaa !204
  %i.et = load ptr, ptr %i.ep, align 8, !tbaa !10
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = lshr i64 %i.eu, 1
  %i.ew = add i64 %i.ev, %i.es                    ; 2 uses
  %i.ex = add i64 %i.ew, -1                       ; 2 uses
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.ez = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 3
  %.not.i = icmp ult i64 %i.ex, %i.fd
  br i1 %.not.i, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.ew)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !132
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit

_ZN4lean2ir11interpreter3varERKNS_3natE.exit:     ; preds = %_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit, %bb.v
  %i.fe = phi ptr [ %.pre.i, %bb.v ], [ %i.ez, %_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ex
  store i64 %i.en, ptr %i.ff, align 8, !tbaa !14
  %i.fg = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  br label %.thread284.backedge

bb.w:                                             ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !206
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !10
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = lshr i64 %i.fn, 1
  %i.fp = add i64 %i.fo, %i.fk                    ; 3 uses
  %i.fq = load ptr, ptr %i.e, align 8, !tbaa !203 ; 2 uses
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !130 ; 6 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 3                 ; 4 uses
  %.not = icmp ult i64 %i.fp, %i.fv
  br i1 %.not, label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fw = add i64 %i.fp, 1                        ; 4 uses
  %i.fx = icmp ugt i64 %i.fw, %i.fv
  br i1 %i.fx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fy = sub nuw i64 %i.fw, %i.fv
  tail call void @_ZNSt6vectorIPKN4lean10object_refESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.fy)
  %.pre374 = load ptr, ptr %i.a, align 8, !tbaa !130
  %.pre375 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10
  br label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

bb.z:                                             ; preds = %bb.x
end_hunk_0
begin_hunk_1_@_ZN4lean2ir11interpreter9eval_bodyERKNS_10object_refE:bb.a
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.ni
  store i64 %.sroa.021.0.copyload27, ptr %i.nj, align 8, !tbaa !29
  br label %bb.ba

bb.aw:                                            ; preds = %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit, %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit, %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit, %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit, %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit, %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit, %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit, %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit
  %i.nk = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %2, i8 0, i64 376, i1 false)
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
          to label %_ZN4lean7sstreamC2Ev.exit unwind label %.thread

_ZN4lean7sstreamC2Ev.exit:                        ; preds = %bb.aw
  %i.nl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull @.str.23, i64 noundef 19)
          to label %_ZN4lean7sstreamlsIA20_cEERS0_RKT_.exit unwind label %.thread274 ; 0 uses

_ZN4lean7sstreamlsIA20_cEERS0_RKT_.exit:          ; preds = %_ZN4lean7sstreamC2Ev.exit
  invoke void @_ZN4lean9throwableC2ERKNS_7sstreamE(ptr noundef nonnull align 8 dereferenceable(40) %i.nk, ptr noundef nonnull align 8 dereferenceable(376) %2)
          to label %bb.ax unwind label %.thread274

bb.ax:                                            ; preds = %_ZN4lean7sstreamlsIA20_cEERS0_RKT_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.nk, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.nk, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #24
          to label %bb.dk unwind label %bb.ay

.thread:                                          ; preds = %bb.aw
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.thread274:                                       ; preds = %_ZN4lean7sstreamlsIA20_cEERS0_RKT_.exit, %_ZN4lean7sstreamC2Ev.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #23
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume

bb.az:                                            ; preds = %.thread274, %.thread
  %.pn273 = phi { ptr, i32 } [ %i.nm, %.thread ], [ %lpad.thr_comm, %.thread274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @__cxa_free_exception(ptr %i.nk) #23
  br label %common.resume

bb.ba:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit
  %i.nn = phi ptr [ %i.me, %bb.av ], [ %i.me, %bb.au ], [ %i.me, %bb.at ], [ %.pre365, %bb.as ], [ %i.me, %bb.ar ], [ %i.me, %bb.aq ], [ %i.me, %_ZN4lean2ir17fn_body_sset_typeERKNS_10object_refE.exit ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  br label %.thread284.backedge

bb.bb:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.np = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.nq = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 -16
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !204
  %i.nt = load ptr, ptr %i.np, align 8, !tbaa !10
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = lshr i64 %i.nu, 1
  %i.nw = add i64 %i.nv, %i.ns                    ; 2 uses
  %i.nx = add i64 %i.nw, -1                       ; 2 uses
  %i.ny = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.nz = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = ashr exact i64 %i.oc, 3
  %.not.i144 = icmp ult i64 %i.nx, %i.od
  br i1 %.not.i144, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit146, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.nw)
  %.pre.i145 = load ptr, ptr %0, align 8, !tbaa !132
  %.pre358 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit146

_ZN4lean2ir11interpreter3varERKNS_3natE.exit146:  ; preds = %bb.bb, %bb.bc
  %i.oe = phi ptr [ %.pre358, %bb.bc ], [ %i.f, %bb.bb ] ; 4 uses
  %i.of = phi ptr [ %.pre.i145, %bb.bc ], [ %i.nz, %bb.bb ]
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.nx
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !14 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !10
  %i.ok = ptrtoint ptr %i.oj to i64
  %i.ol = lshr i64 %i.ok, 1                       ; 2 uses
  %i.om = ptrtoint ptr %i.oh to i64
  %i.on = and i64 %i.om, 1
  %.not.i.i147 = icmp eq i64 %i.on, 0
  br i1 %.not.i.i147, label %bb.bd, label %_ZN4lean3incEP11lean_objectm.exit

bb.bd:                                            ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit146
  %.val.i.i.i148 = load i32, ptr %i.oh, align 4, !tbaa !20 ; 3 uses
  %i.oo = icmp sgt i32 %.val.i.i.i148, 0
  br i1 %i.oo, label %bb.be, label %bb.bf, !prof !22

bb.be:                                            ; preds = %bb.bd
  %i.op = trunc i64 %i.ol to i32
  %i.oq = add i32 %.val.i.i.i148, %i.op
  store i32 %i.oq, ptr %i.oh, align 4, !tbaa !20
  br label %_ZN4lean3incEP11lean_objectm.exit

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i.i = icmp eq i32 %.val.i.i.i148, 0
  br i1 %.not.i.i.i, label %_ZN4lean3incEP11lean_objectm.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.or = trunc i64 %i.ol to i32
  %i.os = atomicrmw sub ptr %i.oh, i32 %i.or monotonic, align 4 ; 0 uses
  %.pre359 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10
  br label %_ZN4lean3incEP11lean_objectm.exit

_ZN4lean3incEP11lean_objectm.exit:                ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit146, %bb.be, %bb.bf, %bb.bg
  %i.ot = phi ptr [ %i.oe, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit146 ], [ %i.oe, %bb.be ], [ %i.oe, %bb.bf ], [ %.pre359, %bb.bg ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  br label %.thread284.backedge

bb.bh:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.ov = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !10
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = lshr i64 %i.ox, 1                       ; 2 uses
  %.not327 = icmp eq i64 %i.oy, 0
  br i1 %.not327, label %._crit_edge316, label %.lr.ph315

._crit_edge316.loopexit:                          ; preds = %_ZN4lean3decEP11lean_object.exit
  %.pre357 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10
  br label %._crit_edge316

._crit_edge316:                                   ; preds = %._crit_edge316.loopexit, %bb.bh
  %i.oz = phi ptr [ %.pre357, %._crit_edge316.loopexit ], [ %i.f, %bb.bh ]
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  br label %.thread284.backedge

.lr.ph315:                                        ; preds = %bb.bh, %_ZN4lean3decEP11lean_object.exit
  %.0109313 = phi i64 [ %i.ri, %_ZN4lean3decEP11lean_object.exit ], [ 0, %bb.bh ]
  %i.pb = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.pe = getelementptr inbounds i8, ptr %i.pd, i64 -16
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !204
  %i.pg = load ptr, ptr %i.pc, align 8, !tbaa !10
  %i.ph = ptrtoint ptr %i.pg to i64
  %i.pi = lshr i64 %i.ph, 1
  %i.pj = add i64 %i.pi, %i.pf                    ; 5 uses
  %i.pk = add i64 %i.pj, -1                       ; 2 uses
  %i.pl = load ptr, ptr %i.c, align 8, !tbaa !202 ; 5 uses
  %i.pm = load ptr, ptr %0, align 8, !tbaa !132   ; 13 uses
  %i.pn = ptrtoint ptr %i.pl to i64               ; 3 uses
  %i.po = ptrtoint ptr %i.pm to i64               ; 4 uses
  %i.pp = sub i64 %i.pn, %i.po                    ; 2 uses
  %i.pq = ashr exact i64 %i.pp, 3                 ; 8 uses
  %.not.i149 = icmp ult i64 %i.pk, %i.pq
  br i1 %.not.i149, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit151, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph315
  %i.pr = icmp ugt i64 %i.pj, %i.pq
  br i1 %i.pr, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.ps = sub nuw i64 %i.pj, %i.pq                ; 5 uses
  %i.pt = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.pu = ptrtoint ptr %i.pt to i64               ; 2 uses
  %i.pv = sub i64 %i.pu, %i.pn
  %i.pw = ashr exact i64 %i.pv, 3                 ; 2 uses
  %i.px = icmp ult i64 %i.pq, 1152921504606846976
  tail call void @llvm.assume(i1 %i.px)
  %i.py = xor i64 %i.pq, 1152921504606846975      ; 2 uses
  %i.pz = icmp ule i64 %i.pw, %i.py
  tail call void @llvm.assume(i1 %i.pz)
  %.not28.i.i = icmp ult i64 %i.pw, %i.ps
  br i1 %.not28.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.qa = shl nuw nsw i64 %i.ps, 3
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.pl, i64 %i.qa
  store ptr %scevgep.i.i.i.i.i, ptr %i.c, align 8, !tbaa !202
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit151

bb.bl:                                            ; preds = %bb.bj
  %i.qb = icmp ult i64 %i.py, %i.ps
  br i1 %i.qb, label %bb.bm, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bm:                                            ; preds = %bb.bl
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #24
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bl
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.pq, i64 %i.ps)
  %i.qc = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.pq
  %i.qd = tail call i64 @llvm.umin.i64(i64 %i.qc, i64 1152921504606846975) ; 2 uses
  %i.qe = shl nuw nsw i64 %i.qd, 3
  %i.qf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qe) #27 ; 8 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.pp
  %.not10.i.i.i.i.i = icmp eq ptr %i.pm, %i.pl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.qh = ptrtoaddr ptr %i.qf to i64
  %5 = add i64 %i.pn, -8
  %6 = sub i64 %5, %i.po                          ; 2 uses
  %i.qi = lshr i64 %6, 3
  %i.qj = add nuw nsw i64 %i.qi, 1                ; 2 uses
  %min.iters.check486 = icmp ult i64 %6, 24
  %i.qk = sub i64 %i.po, %i.qh
  %diff.check484 = icmp ugt i64 %i.qk, -32
  %or.cond534 = or i1 %min.iters.check486, %diff.check484
  br i1 %or.cond534, label %.lr.ph.i.i.i.i.i.preheader538, label %vector.ph487

vector.ph487:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec488 = and i64 %i.qj, 4611686018427387900  ; 3 uses
  %i.ql = shl i64 %n.vec488, 3                    ; 2 uses
  %i.qm = getelementptr i8, ptr %i.qf, i64 %i.ql
  %i.qn = getelementptr i8, ptr %i.pm, i64 %i.ql
  br label %vector.body489

vector.body489:                                   ; preds = %vector.body489, %vector.ph487
  %index490 = phi i64 [ 0, %vector.ph487 ], [ %index.next495, %vector.body489 ] ; 2 uses
  %i.qo = shl i64 %index490, 3                    ; 2 uses
  %next.gep491 = getelementptr i8, ptr %i.qf, i64 %i.qo ; 2 uses
  %next.gep492 = getelementptr i8, ptr %i.pm, i64 %i.qo ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.qp = getelementptr i8, ptr %next.gep492, i64 16
  %wide.load493 = load <2 x i64>, ptr %next.gep492, align 8, !tbaa !14, !alias.scope !261, !noalias !258
  %wide.load494 = load <2 x i64>, ptr %i.qp, align 8, !tbaa !14, !alias.scope !261, !noalias !258
  %i.qq = getelementptr i8, ptr %next.gep491, i64 16
  store <2 x i64> %wide.load493, ptr %next.gep491, align 8, !tbaa !14, !alias.scope !258, !noalias !261
  store <2 x i64> %wide.load494, ptr %i.qq, align 8, !tbaa !14, !alias.scope !258, !noalias !261
  %index.next495 = add nuw i64 %index490, 4       ; 2 uses
  %i.qr = icmp eq i64 %index.next495, %n.vec488
  br i1 %i.qr, label %middle.block496, label %vector.body489, !llvm.loop !263

middle.block496:                                  ; preds = %vector.body489
  %cmp.n497 = icmp eq i64 %i.qj, %n.vec488
  br i1 %cmp.n497, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader538

.lr.ph.i.i.i.i.i.preheader538:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block496
  %.012.i.i.i.i.i.ph = phi ptr [ %i.qf, %.lr.ph.i.i.i.i.i.preheader ], [ %i.qm, %middle.block496 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.pm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.qn, %middle.block496 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader538, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.qu, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader538 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.qt, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader538 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.qs = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !261, !noalias !258
  store i64 %i.qs, ptr %.012.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !258, !noalias !261
  %i.qt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.qt, %i.pl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !264

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block496, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i31.i.i = icmp eq ptr %i.pm, null
  br i1 %.not.i31.i.i, label %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  %i.qv = sub i64 %i.pu, %i.po
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pm, i64 noundef %i.qv) #25
  br label %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i

_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i: ; preds = %bb.bn, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  store ptr %i.qf, ptr %0, align 8, !tbaa !132
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %i.ps
  store ptr %i.qw, ptr %i.c, align 8, !tbaa !202
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.qd
  store ptr %i.qx, ptr %i.d, align 8, !tbaa !133
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit151

bb.bo:                                            ; preds = %bb.bi
  %i.qy = icmp ult i64 %i.pj, %i.pq
  br i1 %i.qy, label %bb.bp, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit151

bb.bp:                                            ; preds = %bb.bo
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.pj ; 2 uses
  %.not.i4.i = icmp eq ptr %i.pl, %i.qz
  br i1 %.not.i4.i, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit151, label %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.bp
  store ptr %i.qz, ptr %i.c, align 8, !tbaa !202
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit151

_ZN4lean2ir11interpreter3varERKNS_3natE.exit151:  ; preds = %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.bp, %bb.bo, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i, %bb.bk, %.lr.ph315
  %i.ra = phi ptr [ %i.pm, %.lr.ph315 ], [ %i.pm, %bb.bk ], [ %i.qf, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i ], [ %i.pm, %bb.bo ], [ %i.pm, %bb.bp ], [ %i.pm, %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %i.pk
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !14 ; 4 uses
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = and i64 %i.rd, 1
  %.not.i.i152 = icmp eq i64 %i.re, 0
  br i1 %.not.i.i152, label %bb.bq, label %_ZN4lean3decEP11lean_object.exit

bb.bq:                                            ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit151
  %i.rf = load i32, ptr %i.rc, align 4, !tbaa !20 ; 3 uses
  %i.rg = icmp sgt i32 %i.rf, 1
  br i1 %i.rg, label %bb.br, label %bb.bs, !prof !22

bb.br:                                            ; preds = %bb.bq
  %i.rh = add nsw i32 %i.rf, -1
  store i32 %i.rh, ptr %i.rc, align 4, !tbaa !20
  br label %_ZN4lean3decEP11lean_object.exit

bb.bs:                                            ; preds = %bb.bq
  %.not.i1.i = icmp eq i32 %i.rf, 0
  br i1 %.not.i1.i, label %_ZN4lean3decEP11lean_object.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.rc)
  br label %_ZN4lean3decEP11lean_object.exit

_ZN4lean3decEP11lean_object.exit:                 ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit151, %bb.br, %bb.bs, %bb.bt
  %i.ri = add nuw nsw i64 %.0109313, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ri, %i.oy
  br i1 %exitcond.not, label %._crit_edge316.loopexit, label %.lr.ph315, !llvm.loop !265

bb.bu:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.rj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.rk = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.rl = getelementptr inbounds i8, ptr %i.rk, i64 -16
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !204
  %i.rn = load ptr, ptr %i.rj, align 8, !tbaa !10
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = lshr i64 %i.ro, 1
  %i.rq = add i64 %i.rp, %i.rm                    ; 2 uses
  %i.rr = add i64 %i.rq, -1                       ; 2 uses
  %i.rs = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.rt = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = sub i64 %i.ru, %i.rv
  %i.rx = ashr exact i64 %i.rw, 3
  %.not.i153 = icmp ult i64 %i.rr, %i.rx
  br i1 %.not.i153, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit155, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.rq)
  %.pre.i154 = load ptr, ptr %0, align 8, !tbaa !132
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit155

_ZN4lean2ir11interpreter3varERKNS_3natE.exit155:  ; preds = %bb.bu, %bb.bv
  %i.ry = phi ptr [ %.pre.i154, %bb.bv ], [ %i.rt, %bb.bu ]
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.rr
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !14 ; 2 uses
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = and i64 %i.sb, 1
  %.not.i156 = icmp eq i64 %i.sc, 0
  br i1 %.not.i156, label %bb.bw, label %_ZL15lean_del_objectP11lean_object.exit

bb.bw:                                            ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit155
  tail call void @lean_free_object(ptr noundef %i.sa)
  br label %_ZL15lean_del_objectP11lean_object.exit

_ZL15lean_del_objectP11lean_object.exit:          ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit155, %bb.bw
  %i.sd = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  br label %.thread284.backedge

bb.bx:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.sf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.sg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.sh = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.si = getelementptr inbounds i8, ptr %i.sh, i64 -16
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !204
  %i.sk = load ptr, ptr %i.sg, align 8, !tbaa !10
  %i.sl = ptrtoint ptr %i.sk to i64
  %i.sm = lshr i64 %i.sl, 1
  %i.sn = add i64 %i.sm, %i.sj                    ; 2 uses
  %i.so = add i64 %i.sn, -1                       ; 2 uses
  %i.sp = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.sq = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = ptrtoint ptr %i.sq to i64
  %i.st = sub i64 %i.sr, %i.ss
  %i.su = ashr exact i64 %i.st, 3
  %.not.i157 = icmp ult i64 %i.so, %i.su
  br i1 %.not.i157, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit159, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.sn)
  %.pre.i158 = load ptr, ptr %0, align 8, !tbaa !132
  %.pre355 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit159

_ZN4lean2ir11interpreter3varERKNS_3natE.exit159:  ; preds = %bb.bx, %bb.by
  %i.sv = phi ptr [ %.pre355, %bb.by ], [ %i.f, %bb.bx ]
  %i.sw = phi ptr [ %.pre.i158, %bb.by ], [ %i.sq, %bb.bx ]
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.so
  %.sroa.012.0.copyload = load i64, ptr %i.sx, align 8, !tbaa !14 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !13
  %i.ta = ptrtoint ptr %i.sz to i64               ; 2 uses
  %i.tb = trunc i64 %i.ta to i1
  br i1 %i.tb, label %_ZN4lean2ir21fn_body_case_var_typeERKNS_10object_refE.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit159
  %i.tc = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.tc, ptr noundef nonnull @.str)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
end_hunk_1
begin_hunk_2_@_ZN4lean2ir11interpreter9eval_bodyERKNS_10object_refE:bb.a
.lr.ph311:                                        ; preds = %_ZL12lean_obj_tagP11lean_object.exit
  %i.tr = zext i32 %.0108 to i64
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph311, %bb.cj
  %.sroa.0210.0310 = phi ptr [ %i.to, %.lr.ph311 ], [ %i.ue, %bb.cj ] ; 2 uses
  %i.ts = load ptr, ptr %.sroa.0210.0310, align 8, !tbaa !10 ; 4 uses
  %i.tt = getelementptr i8, ptr %i.ts, i64 4
  %.val.i.i162 = load i32, ptr %i.tt, align 4
  %i.tu = lshr i32 %.val.i.i162, 24
  %trunc = trunc nuw i32 %i.tu to i8
  switch i8 %trunc, label %bb.cj [
    i8 0, label %bb.cg
    i8 1, label %bb.ci
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !10
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !10
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = lshr i64 %i.tz, 1
  %i.ub = icmp eq i64 %i.ua, %i.tr
  br i1 %i.ub, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  br label %.thread284.backedge

.thread284.backedge:                              ; preds = %bb.ch, %bb.ci, %._crit_edge324, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit, %._crit_edge, %_ZL15lean_del_objectP11lean_object.exit, %._crit_edge316, %_ZN4lean3incEP11lean_objectm.exit, %bb.ba, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit137, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit131, %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit128, %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit, %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %.sroa.0229.0.be = phi ptr [ %.sroa.0229.0, %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit ], [ %i.fh, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit ], [ %1, %._crit_edge324 ], [ %i.ge, %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit ], [ %i.ic, %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit128 ], [ %i.jh, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit131 ], [ %i.kt, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit137 ], [ %i.no, %bb.ba ], [ %i.ou, %_ZN4lean3incEP11lean_objectm.exit ], [ %i.pa, %._crit_edge316 ], [ %i.se, %_ZL15lean_del_objectP11lean_object.exit ], [ %i.vs, %._crit_edge ], [ %i.uc, %bb.ch ], [ %i.ud, %bb.ci ]
  br label %.thread284, !llvm.loop !272

bb.ci:                                            ; preds = %bb.cf
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  br label %.thread284.backedge

bb.cj:                                            ; preds = %bb.cg, %bb.cf
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.0210.0310, i64 8 ; 2 uses
  %.not288 = icmp eq ptr %i.ue, %i.tq
  br i1 %.not288, label %_ZL12lean_obj_tagP11lean_object.exit._crit_edge, label %bb.cf

_ZL12lean_obj_tagP11lean_object.exit._crit_edge:  ; preds = %_ZL12lean_obj_tagP11lean_object.exit, %bb.cj
  %i.uf = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.uf, ptr noundef nonnull @.str.24)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %_ZL12lean_obj_tagP11lean_object.exit._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.uf, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #24
  unreachable

bb.cl:                                            ; preds = %_ZL12lean_obj_tagP11lean_object.exit._crit_edge
  %i.ug = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.uf) #23
  br label %common.resume

bb.cm:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.uh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !10 ; 2 uses
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = trunc i64 %i.uj to i1
  br i1 %i.uk, label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit167, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.um = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.un = getelementptr inbounds i8, ptr %i.um, i64 -16
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !204
  %i.up = load ptr, ptr %i.ul, align 8, !tbaa !10
  %i.uq = ptrtoint ptr %i.up to i64
  %i.ur = lshr i64 %i.uq, 1
  %i.us = add i64 %i.ur, %i.uo                    ; 2 uses
  %i.ut = add i64 %i.us, -1                       ; 2 uses
  %i.uu = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.uv = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.uw = ptrtoint ptr %i.uu to i64
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = sub i64 %i.uw, %i.ux
  %i.uz = ashr exact i64 %i.uy, 3
  %.not.i.i163 = icmp ult i64 %i.ut, %i.uz
  br i1 %.not.i.i163, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i165, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.us)
  %.pre.i.i164 = load ptr, ptr %0, align 8, !tbaa !132
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i165

_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i165: ; preds = %bb.co, %bb.cn
  %i.va = phi ptr [ %.pre.i.i164, %bb.co ], [ %i.uv, %bb.cn ]
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %i.ut
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !14
  br label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit167

_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit167: ; preds = %bb.cm, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i165
  %.sroa.0.0.i166 = phi i64 [ %i.vc, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i165 ], [ 1, %bb.cm ]
  ret i64 %.sroa.0.0.i166

bb.cp:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.vd = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 -8
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !206
  %i.vg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !10
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = lshr i64 %i.vi, 1
  %i.vk = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.vl = getelementptr [8 x i8], ptr %i.vk, i64 %i.vf
  %i.vm = getelementptr [8 x i8], ptr %i.vl, i64 %i.vj
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !256 ; 3 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !10 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !10
  %i.vr = getelementptr i8, ptr %i.vq, i64 8
  %.val.i.i168307 = load i64, ptr %i.vr, align 8, !tbaa !29
  %.not326 = icmp eq i64 %.val.i.i168307, 0
  br i1 %.not326, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176, %bb.cp
  %.lcssa = phi ptr [ %i.vo, %bb.cp ], [ %i.aai, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176 ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  br label %.thread284.backedge

.lr.ph:                                           ; preds = %bb.cp, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176
  %i.vt = phi ptr [ %i.aai, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176 ], [ %i.vo, %bb.cp ] ; 6 uses
  %.0100308 = phi i64 [ %i.aah, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176 ], [ 0, %bb.cp ] ; 3 uses
  %i.vu = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !10
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !10
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 24
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vx, i64 %.0100308
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !10 ; 2 uses
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = trunc i64 %i.wa to i1
  %.pre351 = load ptr, ptr %i.b, align 8, !tbaa !240 ; 8 uses
  %.pre352 = load ptr, ptr %i.c, align 8, !tbaa !202 ; 9 uses
  %.pre353 = load ptr, ptr %0, align 8, !tbaa !132 ; 14 uses
  br i1 %i.wb, label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit173, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wd = getelementptr inbounds i8, ptr %.pre351, i64 -16
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !204
  %i.wf = load ptr, ptr %i.wc, align 8, !tbaa !10
  %i.wg = ptrtoint ptr %i.wf to i64
  %i.wh = lshr i64 %i.wg, 1
  %i.wi = add i64 %i.wh, %i.we                    ; 5 uses
  %i.wj = add i64 %i.wi, -1                       ; 2 uses
  %i.wk = ptrtoint ptr %.pre352 to i64            ; 3 uses
  %i.wl = ptrtoint ptr %.pre353 to i64            ; 4 uses
  %i.wm = sub i64 %i.wk, %i.wl                    ; 2 uses
  %i.wn = ashr exact i64 %i.wm, 3                 ; 8 uses
  %.not.i.i169 = icmp ult i64 %i.wj, %i.wn
  br i1 %.not.i.i169, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.wo = icmp ugt i64 %i.wi, %i.wn
  br i1 %i.wo, label %bb.cs, label %bb.cx

bb.cs:                                            ; preds = %bb.cr
  %i.wp = sub nuw i64 %i.wi, %i.wn                ; 5 uses
  %i.wq = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.wr = ptrtoint ptr %i.wq to i64               ; 2 uses
  %i.ws = sub i64 %i.wr, %i.wk
  %i.wt = ashr exact i64 %i.ws, 3                 ; 2 uses
  %i.wu = icmp ult i64 %i.wn, 1152921504606846976
  tail call void @llvm.assume(i1 %i.wu)
  %i.wv = xor i64 %i.wn, 1152921504606846975      ; 2 uses
  %i.ww = icmp ule i64 %i.wt, %i.wv
  tail call void @llvm.assume(i1 %i.ww)
  %.not28.i.i179 = icmp ult i64 %i.wt, %i.wp
  br i1 %.not28.i.i179, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.wx = shl nuw nsw i64 %i.wp, 3
  %scevgep.i.i.i.i.i180 = getelementptr i8, ptr %.pre352, i64 %i.wx ; 2 uses
  store ptr %scevgep.i.i.i.i.i180, ptr %i.c, align 8, !tbaa !202
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171

bb.cu:                                            ; preds = %bb.cs
  %i.wy = icmp ult i64 %i.wv, %i.wp
  br i1 %i.wy, label %bb.cv, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i181

bb.cv:                                            ; preds = %bb.cu
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #24
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i181: ; preds = %bb.cu
  %.sroa.speculated.i.i.i182 = tail call i64 @llvm.umax.i64(i64 %i.wn, i64 %i.wp)
  %i.wz = add nuw nsw i64 %.sroa.speculated.i.i.i182, %i.wn
  %i.xa = tail call i64 @llvm.umin.i64(i64 %i.wz, i64 1152921504606846975) ; 2 uses
  %i.xb = shl nuw nsw i64 %i.xa, 3
  %i.xc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xb) #27 ; 8 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.wm
  %.not10.i.i.i.i.i183 = icmp eq ptr %.pre353, %.pre352
  br i1 %.not10.i.i.i.i.i183, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i188, label %.lr.ph.i.i.i.i.i184.preheader

.lr.ph.i.i.i.i.i184.preheader:                    ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i181
  %i.xe = ptrtoaddr ptr %i.xc to i64
  %7 = add i64 %i.wk, -8
  %8 = sub i64 %7, %i.wl                          ; 2 uses
  %i.xf = lshr i64 %8, 3
  %i.xg = add nuw nsw i64 %i.xf, 1                ; 2 uses
  %min.iters.check520 = icmp ult i64 %8, 24
  %i.xh = sub i64 %i.wl, %i.xe
  %diff.check518 = icmp ugt i64 %i.xh, -32
  %or.cond535 = or i1 %min.iters.check520, %diff.check518
  br i1 %or.cond535, label %.lr.ph.i.i.i.i.i184.preheader540, label %vector.ph521

vector.ph521:                                     ; preds = %.lr.ph.i.i.i.i.i184.preheader
  %n.vec522 = and i64 %i.xg, 4611686018427387900  ; 3 uses
  %i.xi = shl i64 %n.vec522, 3                    ; 2 uses
  %i.xj = getelementptr i8, ptr %i.xc, i64 %i.xi
  %i.xk = getelementptr i8, ptr %.pre353, i64 %i.xi
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph521
  %index524 = phi i64 [ 0, %vector.ph521 ], [ %index.next529, %vector.body523 ] ; 2 uses
  %i.xl = shl i64 %index524, 3                    ; 2 uses
  %next.gep525 = getelementptr i8, ptr %i.xc, i64 %i.xl ; 2 uses
  %next.gep526 = getelementptr i8, ptr %.pre353, i64 %i.xl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.xm = getelementptr i8, ptr %next.gep526, i64 16
  %wide.load527 = load <2 x i64>, ptr %next.gep526, align 8, !tbaa !14, !alias.scope !276, !noalias !273
  %wide.load528 = load <2 x i64>, ptr %i.xm, align 8, !tbaa !14, !alias.scope !276, !noalias !273
  %i.xn = getelementptr i8, ptr %next.gep525, i64 16
  store <2 x i64> %wide.load527, ptr %next.gep525, align 8, !tbaa !14, !alias.scope !273, !noalias !276
  store <2 x i64> %wide.load528, ptr %i.xn, align 8, !tbaa !14, !alias.scope !273, !noalias !276
  %index.next529 = add nuw i64 %index524, 4       ; 2 uses
  %i.xo = icmp eq i64 %index.next529, %n.vec522
  br i1 %i.xo, label %middle.block530, label %vector.body523, !llvm.loop !278

middle.block530:                                  ; preds = %vector.body523
  %cmp.n531 = icmp eq i64 %i.xg, %n.vec522
  br i1 %cmp.n531, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i188, label %.lr.ph.i.i.i.i.i184.preheader540

.lr.ph.i.i.i.i.i184.preheader540:                 ; preds = %.lr.ph.i.i.i.i.i184.preheader, %middle.block530
  %.012.i.i.i.i.i185.ph = phi ptr [ %i.xc, %.lr.ph.i.i.i.i.i184.preheader ], [ %i.xj, %middle.block530 ]
  %.0911.i.i.i.i.i186.ph = phi ptr [ %.pre353, %.lr.ph.i.i.i.i.i184.preheader ], [ %i.xk, %middle.block530 ]
  br label %.lr.ph.i.i.i.i.i184

.lr.ph.i.i.i.i.i184:                              ; preds = %.lr.ph.i.i.i.i.i184.preheader540, %.lr.ph.i.i.i.i.i184
  %.012.i.i.i.i.i185 = phi ptr [ %i.xr, %.lr.ph.i.i.i.i.i184 ], [ %.012.i.i.i.i.i185.ph, %.lr.ph.i.i.i.i.i184.preheader540 ] ; 2 uses
  %.0911.i.i.i.i.i186 = phi ptr [ %i.xq, %.lr.ph.i.i.i.i.i184 ], [ %.0911.i.i.i.i.i186.ph, %.lr.ph.i.i.i.i.i184.preheader540 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.xp = load i64, ptr %.0911.i.i.i.i.i186, align 8, !tbaa !14, !alias.scope !276, !noalias !273
  store i64 %i.xp, ptr %.012.i.i.i.i.i185, align 8, !tbaa !14, !alias.scope !273, !noalias !276
  %i.xq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i186, i64 8 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i185, i64 8
  %.not.i.i.i.i.i187 = icmp eq ptr %i.xq, %.pre352
  br i1 %.not.i.i.i.i.i187, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i188, label %.lr.ph.i.i.i.i.i184, !llvm.loop !279

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i188: ; preds = %.lr.ph.i.i.i.i.i184, %middle.block530, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i181
  %.not.i31.i.i189 = icmp eq ptr %.pre353, null
  br i1 %.not.i31.i.i189, label %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i190, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i188
  %i.xs = sub i64 %i.wr, %i.wl
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre353, i64 noundef %i.xs) #25
  %.pre350.pre.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !240
  br label %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i190

_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i190: ; preds = %bb.cw, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i188
  %.pre350.pre.pre = phi ptr [ %.pre350.pre.pre.pre, %bb.cw ], [ %.pre351, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i188 ]
  store ptr %i.xc, ptr %0, align 8, !tbaa !132
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.wp ; 2 uses
  store ptr %i.xt, ptr %i.c, align 8, !tbaa !202
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.xa
  store ptr %i.xu, ptr %i.d, align 8, !tbaa !133
  %.pre.pre.pre = load ptr, ptr %i.vn, align 8, !tbaa !10
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171

bb.cx:                                            ; preds = %bb.cr
  %i.xv = icmp ult i64 %i.wi, %i.wn
  br i1 %i.xv, label %bb.cy, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171

bb.cy:                                            ; preds = %bb.cx
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %.pre353, i64 %i.wi ; 3 uses
  %.not.i4.i177 = icmp eq ptr %.pre352, %i.xw
  br i1 %.not.i4.i177, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171, label %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i178

_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i178: ; preds = %bb.cy
  store ptr %i.xw, ptr %i.c, align 8, !tbaa !202
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171

_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171: ; preds = %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i178, %bb.cy, %bb.cx, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i190, %bb.ct, %bb.cq
  %.pre350 = phi ptr [ %.pre351, %bb.cq ], [ %.pre351, %bb.ct ], [ %.pre350.pre.pre, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i190 ], [ %.pre351, %bb.cx ], [ %.pre351, %bb.cy ], [ %.pre351, %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i178 ]
  %.pre = phi ptr [ %i.vt, %bb.cq ], [ %i.vt, %bb.ct ], [ %.pre.pre.pre, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i190 ], [ %i.vt, %bb.cx ], [ %i.vt, %bb.cy ], [ %i.vt, %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i178 ]
  %i.xx = phi ptr [ %.pre352, %bb.cq ], [ %scevgep.i.i.i.i.i180, %bb.ct ], [ %i.xt, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i190 ], [ %.pre352, %bb.cx ], [ %.pre352, %bb.cy ], [ %i.xw, %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i178 ]
  %i.xy = phi ptr [ %.pre353, %bb.cq ], [ %.pre353, %bb.ct ], [ %i.xc, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i190 ], [ %.pre353, %bb.cx ], [ %.pre353, %bb.cy ], [ %.pre353, %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i178 ] ; 2 uses
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.xy, i64 %i.wj
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !14
  br label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit173

_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit173: ; preds = %.lr.ph, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171
  %i.yb = phi ptr [ %i.xy, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171 ], [ %.pre353, %.lr.ph ] ; 13 uses
  %i.yc = phi ptr [ %i.xx, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171 ], [ %.pre352, %.lr.ph ] ; 5 uses
  %i.yd = phi ptr [ %.pre350, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171 ], [ %.pre351, %.lr.ph ]
  %i.ye = phi ptr [ %.pre, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171 ], [ %i.vt, %.lr.ph ]
  %.sroa.0.0.i172 = phi i64 [ %i.ya, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i171 ], [ 1, %.lr.ph ]
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !10
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 24
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %.0100308
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !10
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yl = getelementptr inbounds i8, ptr %i.yd, i64 -16
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !204
  %i.yn = load ptr, ptr %i.yk, align 8, !tbaa !10
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = lshr i64 %i.yo, 1
  %i.yq = add i64 %i.yp, %i.ym                    ; 5 uses
  %i.yr = add i64 %i.yq, -1                       ; 2 uses
  %i.ys = ptrtoint ptr %i.yc to i64               ; 3 uses
  %i.yt = ptrtoint ptr %i.yb to i64               ; 4 uses
  %i.yu = sub i64 %i.ys, %i.yt                    ; 2 uses
  %i.yv = ashr exact i64 %i.yu, 3                 ; 8 uses
  %.not.i174 = icmp ult i64 %i.yr, %i.yv
  br i1 %.not.i174, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176, label %bb.cz

bb.cz:                                            ; preds = %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit173
  %i.yw = icmp ugt i64 %i.yq, %i.yv
  br i1 %i.yw, label %bb.da, label %bb.df

bb.da:                                            ; preds = %bb.cz
  %i.yx = sub nuw i64 %i.yq, %i.yv                ; 5 uses
  %i.yy = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.yz = ptrtoint ptr %i.yy to i64               ; 2 uses
  %i.za = sub i64 %i.yz, %i.ys
  %i.zb = ashr exact i64 %i.za, 3                 ; 2 uses
  %i.zc = icmp ult i64 %i.yv, 1152921504606846976
  tail call void @llvm.assume(i1 %i.zc)
  %i.zd = xor i64 %i.yv, 1152921504606846975      ; 2 uses
  %i.ze = icmp ule i64 %i.zb, %i.zd
  tail call void @llvm.assume(i1 %i.ze)
  %.not28.i.i194 = icmp ult i64 %i.zb, %i.yx
  br i1 %.not28.i.i194, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.zf = shl nuw nsw i64 %i.yx, 3
  %scevgep.i.i.i.i.i195 = getelementptr i8, ptr %i.yc, i64 %i.zf
  store ptr %scevgep.i.i.i.i.i195, ptr %i.c, align 8, !tbaa !202
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176

bb.dc:                                            ; preds = %bb.da
  %i.zg = icmp ult i64 %i.zd, %i.yx
  br i1 %i.zg, label %bb.dd, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i196

bb.dd:                                            ; preds = %bb.dc
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #24
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i196: ; preds = %bb.dc
  %.sroa.speculated.i.i.i197 = tail call i64 @llvm.umax.i64(i64 %i.yv, i64 %i.yx)
  %i.zh = add nuw nsw i64 %.sroa.speculated.i.i.i197, %i.yv
  %i.zi = tail call i64 @llvm.umin.i64(i64 %i.zh, i64 1152921504606846975) ; 2 uses
  %i.zj = shl nuw nsw i64 %i.zi, 3
  %i.zk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zj) #27 ; 8 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.yu
  %.not10.i.i.i.i.i198 = icmp eq ptr %i.yb, %i.yc
  br i1 %.not10.i.i.i.i.i198, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i203, label %.lr.ph.i.i.i.i.i199.preheader

.lr.ph.i.i.i.i.i199.preheader:                    ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i196
  %i.zm = ptrtoaddr ptr %i.zk to i64
  %9 = add i64 %i.ys, -8
  %10 = sub i64 %9, %i.yt                         ; 2 uses
  %i.zn = lshr i64 %10, 3
  %i.zo = add nuw nsw i64 %i.zn, 1                ; 2 uses
  %min.iters.check503 = icmp ult i64 %10, 24
  %i.zp = sub i64 %i.yt, %i.zm
  %diff.check501 = icmp ugt i64 %i.zp, -32
  %or.cond536 = or i1 %min.iters.check503, %diff.check501
  br i1 %or.cond536, label %.lr.ph.i.i.i.i.i199.preheader539, label %vector.ph504

vector.ph504:                                     ; preds = %.lr.ph.i.i.i.i.i199.preheader
  %n.vec505 = and i64 %i.zo, 4611686018427387900  ; 3 uses
  %i.zq = shl i64 %n.vec505, 3                    ; 2 uses
  %i.zr = getelementptr i8, ptr %i.zk, i64 %i.zq
  %i.zs = getelementptr i8, ptr %i.yb, i64 %i.zq
  br label %vector.body506

vector.body506:                                   ; preds = %vector.body506, %vector.ph504
  %index507 = phi i64 [ 0, %vector.ph504 ], [ %index.next512, %vector.body506 ] ; 2 uses
  %i.zt = shl i64 %index507, 3                    ; 2 uses
  %next.gep508 = getelementptr i8, ptr %i.zk, i64 %i.zt ; 2 uses
  %next.gep509 = getelementptr i8, ptr %i.yb, i64 %i.zt ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.zu = getelementptr i8, ptr %next.gep509, i64 16
  %wide.load510 = load <2 x i64>, ptr %next.gep509, align 8, !tbaa !14, !alias.scope !283, !noalias !280
  %wide.load511 = load <2 x i64>, ptr %i.zu, align 8, !tbaa !14, !alias.scope !283, !noalias !280
  %i.zv = getelementptr i8, ptr %next.gep508, i64 16
  store <2 x i64> %wide.load510, ptr %next.gep508, align 8, !tbaa !14, !alias.scope !280, !noalias !283
  store <2 x i64> %wide.load511, ptr %i.zv, align 8, !tbaa !14, !alias.scope !280, !noalias !283
  %index.next512 = add nuw i64 %index507, 4       ; 2 uses
  %i.zw = icmp eq i64 %index.next512, %n.vec505
  br i1 %i.zw, label %middle.block513, label %vector.body506, !llvm.loop !285

middle.block513:                                  ; preds = %vector.body506
  %cmp.n514 = icmp eq i64 %i.zo, %n.vec505
  br i1 %cmp.n514, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i203, label %.lr.ph.i.i.i.i.i199.preheader539

.lr.ph.i.i.i.i.i199.preheader539:                 ; preds = %.lr.ph.i.i.i.i.i199.preheader, %middle.block513
  %.012.i.i.i.i.i200.ph = phi ptr [ %i.zk, %.lr.ph.i.i.i.i.i199.preheader ], [ %i.zr, %middle.block513 ]
  %.0911.i.i.i.i.i201.ph = phi ptr [ %i.yb, %.lr.ph.i.i.i.i.i199.preheader ], [ %i.zs, %middle.block513 ]
  br label %.lr.ph.i.i.i.i.i199

.lr.ph.i.i.i.i.i199:                              ; preds = %.lr.ph.i.i.i.i.i199.preheader539, %.lr.ph.i.i.i.i.i199
  %.012.i.i.i.i.i200 = phi ptr [ %i.zz, %.lr.ph.i.i.i.i.i199 ], [ %.012.i.i.i.i.i200.ph, %.lr.ph.i.i.i.i.i199.preheader539 ] ; 2 uses
  %.0911.i.i.i.i.i201 = phi ptr [ %i.zy, %.lr.ph.i.i.i.i.i199 ], [ %.0911.i.i.i.i.i201.ph, %.lr.ph.i.i.i.i.i199.preheader539 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.zx = load i64, ptr %.0911.i.i.i.i.i201, align 8, !tbaa !14, !alias.scope !283, !noalias !280
  store i64 %i.zx, ptr %.012.i.i.i.i.i200, align 8, !tbaa !14, !alias.scope !280, !noalias !283
  %i.zy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i201, i64 8 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i200, i64 8
  %.not.i.i.i.i.i202 = icmp eq ptr %i.zy, %i.yc
  br i1 %.not.i.i.i.i.i202, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i203, label %.lr.ph.i.i.i.i.i199, !llvm.loop !286

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i203: ; preds = %.lr.ph.i.i.i.i.i199, %middle.block513, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i196
  %.not.i31.i.i204 = icmp eq ptr %i.yb, null
  br i1 %.not.i31.i.i204, label %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i205, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i203
  %i.aaa = sub i64 %i.yz, %i.yt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.yb, i64 noundef %i.aaa) #25
  br label %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i205

_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i205: ; preds = %bb.de, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i203
  store ptr %i.zk, ptr %0, align 8, !tbaa !132
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %i.yx
  store ptr %i.aab, ptr %i.c, align 8, !tbaa !202
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %i.zi
  store ptr %i.aac, ptr %i.d, align 8, !tbaa !133
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176

bb.df:                                            ; preds = %bb.cz
  %i.aad = icmp ult i64 %i.yq, %i.yv
  br i1 %i.aad, label %bb.dg, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176

bb.dg:                                            ; preds = %bb.df
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %i.yq ; 2 uses
  %.not.i4.i192 = icmp eq ptr %i.yc, %i.aae
  br i1 %.not.i4.i192, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176, label %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i193

_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i193: ; preds = %bb.dg
  store ptr %i.aae, ptr %i.c, align 8, !tbaa !202
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176

_ZN4lean2ir11interpreter3varERKNS_3natE.exit176:  ; preds = %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i193, %bb.dg, %bb.df, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i205, %bb.db, %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit173
  %i.aaf = phi ptr [ %i.yb, %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit173 ], [ %i.yb, %bb.db ], [ %i.zk, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i205 ], [ %i.yb, %bb.df ], [ %i.yb, %bb.dg ], [ %i.yb, %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i193 ]
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %i.yr
  store i64 %.sroa.0.0.i172, ptr %i.aag, align 8, !tbaa !14
  %i.aah = add nuw i64 %.0100308, 1               ; 2 uses
  %i.aai = load ptr, ptr %i.vn, align 8, !tbaa !10 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !10
  %i.aal = getelementptr i8, ptr %i.aak, i64 8
  %.val.i.i168 = load i64, ptr %i.aal, align 8, !tbaa !29
  %i.aam = icmp ult i64 %i.aah, %.val.i.i168
  br i1 %i.aam, label %.lr.ph, label %._crit_edge, !llvm.loop !287

bb.dh:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.aan = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.aan, ptr noundef nonnull @.str.25)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  tail call void @__cxa_throw(ptr nonnull %i.aan, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #24
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.aao = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aan) #23
  br label %common.resume

bb.dk:                                            ; preds = %bb.ax
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean2ir11interpreter9pop_frameENS0_5valueENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !204
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !240  ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !206  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !203  ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !130  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 3 uses
  %i.p = icmp ugt i64 %i.h, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw i64 %i.h, %i.o
  tail call void @_ZNSt6vectorIPKN4lean10object_refESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.q)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !139
  br label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %i.h, %i.o
  br i1 %i.r, label %bb.d, label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.s
  br i1 %.not.i.i, label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.s, ptr %i.i, align 8, !tbaa !203
  br label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !139
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10   ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE8pop_backEv.exit

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit
  %i.y = load i32, ptr %i.v, align 4, !tbaa !20   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !20
  br label %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE8pop_backEv.exit

bb.g:                                             ; preds = %bb.e
  %.not.i1.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i1.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE8pop_backEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.v)
          to label %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE8pop_backEv.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #26
  unreachable

_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE8pop_backEv.exit: ; preds = %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE17_M_realloc_insertIJRKNS0_4nameERmmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4lean2ir11interpreter12check_systemEv:bb.a
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, i32 } %i.b, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %1)
          to label %_ZN4lean7sstreamC2Ev.exit unwind label %bb.f

_ZN4lean7sstreamC2Ev.exit:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(72) %i.g) #23
  store ptr %i.k, ptr %i.a, align 8, !tbaa !99
  %i.l = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4lean7sstreamlsIPKcEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN4lean7sstreamC2Ev.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull @.str.26, i64 noundef 1)
          to label %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit:           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull @.str.27, i64 noundef 24)
          to label %_ZN4lean7sstreamlsIA25_cEERS0_RKT_.exit.preheader unwind label %bb.h ; 0 uses

_ZN4lean7sstreamlsIA25_cEERS0_RKT_.exit.preheader: ; preds = %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %_ZN4lean7sstreamlsIA25_cEERS0_RKT_.exit

_ZN4lean7sstreamlsIA25_cEERS0_RKT_.exit:          ; preds = %_ZN4lean7sstreamlsIA25_cEERS0_RKT_.exit.preheader, %_ZN4lean7sstreamlsINS_4nameEEERS0_RKT_.exit
  %.0 = phi i32 [ %i.ad, %_ZN4lean7sstreamlsINS_4nameEEERS0_RKT_.exit ], [ 0, %_ZN4lean7sstreamlsIA25_cEERS0_RKT_.exit.preheader ] ; 2 uses
  %i.q = zext i32 %.0 to i64                      ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !139
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !138
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 24
  %i.x = icmp ugt i64 %i.w, %i.q
  br i1 %i.x, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN4lean7sstreamlsIA25_cEERS0_RKT_.exit
  %i.y = call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN4lean9throwableC1ERKNS_7sstreamE(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(376) %1)
          to label %bb.l unwind label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %bb.d, %_ZN4lean7sstreamC2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.n

bb.h:                                             ; preds = %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit, %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %_ZN4lean7sstreamlsIA25_cEERS0_RKT_.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit19 unwind label %bb.j ; 0 uses

_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit19:         ; preds = %bb.i
  %i.ad = add i32 %.0, 1                          ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %1, i64 noundef %i.ae)
          to label %_ZN4lean7sstreamlsIjEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN4lean7sstreamlsIjEERS0_RKT_.exit:              ; preds = %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit19
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull @.str.29, i64 noundef 1)
          to label %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit20 unwind label %bb.k ; 0 uses

_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit20:         ; preds = %_ZN4lean7sstreamlsIjEERS0_RKT_.exit
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !139
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !138 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = xor i64 %i.q, -1
  %i.an = getelementptr i8, ptr %i.ai, i64 %i.al
  %i.ao = getelementptr [24 x i8], ptr %i.an, i64 %i.am
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_4nameE(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %_ZN4lean7sstreamlsINS_4nameEEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN4lean7sstreamlsINS_4nameEEERS0_RKT_.exit:      ; preds = %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit20
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull @.str.26, i64 noundef 1)
          to label %_ZN4lean7sstreamlsIA25_cEERS0_RKT_.exit unwind label %bb.k, !llvm.loop !301 ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZN4lean7sstreamlsINS_4nameEEERS0_RKT_.exit, %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit20, %_ZN4lean7sstreamlsIjEERS0_RKT_.exit, %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit19
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN4lean9throwableE, ptr nonnull @_ZN4lean9throwableD1Ev) #24
          to label %bb.s unwind label %bb.h

bb.m:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.y) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.m, %bb.h, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.ab, %bb.h ], [ %i.at, %bb.m ], [ %i.as, %bb.k ], [ %i.ar, %bb.j ]
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %1) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.p:                                             ; preds = %bb.a
  ret void

bb.q:                                             ; preds = %bb.o, %bb.b
  %.merged = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn.pn.pn, %bb.o ]
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #26
  unreachable

bb.s:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !132    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !133
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !202
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #24
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.y = ptrtoaddr ptr %i.w to i64
  %2 = add i64 %i.d, -8
  %3 = sub i64 %2, %i.e                           ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.ab = sub i64 %i.e, %i.y
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.af ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.ag = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !14, !alias.scope !305, !noalias !302
  %wide.load13 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !14, !alias.scope !305, !noalias !302
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !14, !alias.scope !302, !noalias !305
  store <2 x i64> %wide.load13, ptr %i.ah, align 8, !tbaa !14, !alias.scope !302, !noalias !305
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.aj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !14, !alias.scope !305, !noalias !302
  store i64 %i.aj, ptr %.012.i.i.i.i, align 8, !tbaa !14, !alias.scope !302, !noalias !305
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !308

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.am = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #25
  br label %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i

_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !132
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !202
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ao, ptr %i.j, align 8, !tbaa !133
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ap = icmp ult i64 %1, %i.g
  br i1 %i.ap, label %bb.h, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.aq
  br i1 %.not.i4, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !202
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN4lean2ir11interpreter9eval_exprERKNS_10object_refENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.lean::ir::interpreter::symbol_cache_entry", align 8 ; 9 uses
  %4 = alloca %"class.lean::sstream", align 8     ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 25 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %.val.i.i = load i32, ptr %i.b, align 4
  %i.c = lshr i32 %.val.i.i, 24
  %trunc = trunc nuw i32 %i.c to i8
  switch i8 %trunc, label %bb.dd [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.n
    i8 3, label %bb.w
    i8 4, label %bb.y
    i8 5, label %bb.aa
    i8 6, label %bb.al
    i8 7, label %bb.ao
    i8 8, label %bb.bi
    i8 9, label %bb.bn
    i8 10, label %bb.bs
    i8 11, label %bb.bu
    i8 12, label %bb.cz
    i8 13, label %bb.db
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = tail call noundef ptr @_ZN4lean2ir11interpreter10alloc_ctorERKNS_10object_refERKNS_9array_refIS2_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = ptrtoint ptr %i.f to i64
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !240
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !204
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = lshr i64 %i.n, 1
  %i.p = add i64 %i.o, %i.l                       ; 2 uses
  %i.q = add i64 %i.p, -1                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !202
  %i.t = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %.not.i139 = icmp ult i64 %i.q, %i.x
  br i1 %.not.i139, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.p)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !132
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit

_ZN4lean2ir11interpreter3varERKNS_3natE.exit:     ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %.pre.i, %bb.d ], [ %i.t, %bb.c ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.q
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14  ; 5 uses
  %.val.i = load i32, ptr %i.aa, align 4, !tbaa !20 ; 4 uses
  %i.ab = icmp eq i32 %.val.i, 1
  br i1 %i.ab, label %.preheader, label %bb.j

.preheader:                                       ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit
  %i.ac = load ptr, ptr %1, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10
  %.not254 = icmp ult ptr %i.ae, inttoptr (i64 2 to ptr)
  br i1 %.not254, label %._crit_edge249, label %.lr.ph248

.lr.ph248:                                        ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %bb.e

._crit_edge249:                                   ; preds = %_ZN4lean13cnstr_releaseEP11lean_objectj.exit, %.preheader
  %i.ag = ptrtoint ptr %i.aa to i64
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.e:                                             ; preds = %.lr.ph248, %_ZN4lean13cnstr_releaseEP11lean_objectj.exit
  %.0108247 = phi i64 [ 0, %.lr.ph248 ], [ %i.ap, %_ZN4lean13cnstr_releaseEP11lean_objectj.exit ] ; 2 uses
  %i.ah = and i64 %.0108247, 4294967295
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !13 ; 4 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 1
  %.not.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN4lean13cnstr_releaseEP11lean_objectj.exit

bb.f:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !20 ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.ao = add nsw i32 %i.am, -1
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !20
  br label %_ZN4lean13cnstr_releaseEP11lean_objectj.exit

bb.h:                                             ; preds = %bb.f
  %.not.i4.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i4.i.i, label %_ZN4lean13cnstr_releaseEP11lean_objectj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj)
  br label %_ZN4lean13cnstr_releaseEP11lean_objectj.exit

_ZN4lean13cnstr_releaseEP11lean_objectj.exit:     ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  store ptr inttoptr (i64 1 to ptr), ptr %i.ai, align 8, !tbaa !13
end_hunk_3
begin_hunk_4_@_ZN4lean2ir11interpreter4callERKNS_4nameERKNS_9array_refINS_10object_refEEE:bb.a
  br label %bb.bb

bb.ba:                                            ; preds = %.thread136, %.thread133, %.thread130, %.thread
  %.pn54.pn.pn129 = phi { ptr, i32 } [ %i.fd, %.thread ], [ %lpad.thr_comm, %.thread136 ], [ %i.fe, %.thread130 ], [ %i.ff, %.thread133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @__cxa_free_exception(ptr %i.em) #23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.pn54.pn.pn128 = phi { ptr, i32 } [ %.pn54.pn.pn129, %bb.ba ], [ %lpad.thr_comm.split-lp, %bb.az ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ay
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn128, %bb.bb ], [ %i.fc, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ax
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn, %bb.bc ], [ %i.fb, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.be:                                            ; preds = %_ZN4lean2ir8decl_tagERKNS_10object_refE.exit
  %i.fg = load ptr, ptr %2, align 8, !tbaa !10, !noalias !325 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fg, i64 8
  %.val.i.i.i90 = load i64, ptr %i.fi, align 8, !tbaa !29, !noalias !328 ; 2 uses
  %.idx = shl nuw nsw i64 %.val.i.i.i90, 3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.idx
  %.not140148 = icmp eq i64 %.val.i.i.i90, 0
  br i1 %.not140148, label %._crit_edge152, label %.lr.ph151

.lr.ph151:                                        ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre154.pre = load ptr, ptr %i.g, align 8, !tbaa !202
  br label %bb.bl

._crit_edge152.loopexit:                          ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit
  %.pre155 = load ptr, ptr %3, align 8, !tbaa !10
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit, %bb.be
  %i.fm = phi ptr [ %.pre155, %._crit_edge152.loopexit ], [ %i.eb, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.a, align 8, !tbaa !29
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !203
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !130
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 3                 ; 2 uses
  store i64 %i.fv, ptr %i.b, align 8, !tbaa !29
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !139 ; 8 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !141
  %.not.i.i91 = icmp eq ptr %i.fx, %i.fz
  br i1 %.not.i.i91, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge152
  %i.ga = load ptr, ptr %i.fn, align 8, !tbaa !10 ; 5 uses
  store ptr %i.ga, ptr %i.fx, align 8, !tbaa !10
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, 1
  %.not.i.i.i.i.i.i.i.i92 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i.i.i92, label %bb.bg, label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i93

bb.bg:                                            ; preds = %bb.bf
  %.val.i.i.i.i.i.i.i.i.i94 = load i32, ptr %i.ga, align 4, !tbaa !20 ; 3 uses
  %i.gd = icmp sgt i32 %.val.i.i.i.i.i.i.i.i.i94, 0
  br i1 %i.gd, label %bb.bh, label %bb.bi, !prof !22

bb.bh:                                            ; preds = %bb.bg
  %i.ge = add nuw i32 %.val.i.i.i.i.i.i.i.i.i94, 1
  store i32 %i.ge, ptr %i.ga, align 4, !tbaa !20
  br label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i93

bb.bi:                                            ; preds = %bb.bg
  %.not.i.i.i.i.i.i.i.i.i95 = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i94, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i95, label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i93, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gf = atomicrmw sub ptr %i.ga, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i.i96 = load ptr, ptr %i.fw, align 8, !tbaa !139
  br label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i93

_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i93: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bf
  %i.gg = phi ptr [ %i.fx, %bb.bf ], [ %i.fx, %bb.bh ], [ %i.fx, %bb.bi ], [ %.pre.i.i96, %bb.bj ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.m, ptr %i.gh, align 8, !tbaa !204
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 %i.fv, ptr %i.gi, align 8, !tbaa !206
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store ptr %i.gj, ptr %i.fw, align 8, !tbaa !139
  br label %bb.bs

bb.bk:                                            ; preds = %._crit_edge152
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE17_M_realloc_insertIJRKNS0_4nameERmmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, ptr %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bs unwind label %bb.aw

bb.bl:                                            ; preds = %.lr.ph151, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit
  %.pre154 = phi ptr [ %.pre154.pre, %.lr.ph151 ], [ %.pre154157, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.sroa.0120.0149 = phi ptr [ %i.fh, %.lr.ph151 ], [ %i.im, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.gl = load ptr, ptr %.sroa.0120.0149, align 8, !tbaa !10 ; 2 uses
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = trunc i64 %i.gm to i1
  br i1 %i.gn, label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit104, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gp = load ptr, ptr %i.fk, align 8, !tbaa !240
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -16
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !204
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !10
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = lshr i64 %i.gt, 1
  %i.gv = add i64 %i.gu, %i.gr                    ; 2 uses
  %i.gw = add i64 %i.gv, -1                       ; 2 uses
  %i.gx = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.gy = ptrtoint ptr %.pre154 to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 3
  %.not.i.i99 = icmp ult i64 %i.gw, %i.hb
  br i1 %.not.i.i99, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i101, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.gv)
          to label %.noexc103 unwind label %.loopexit

.noexc103:                                        ; preds = %bb.bn
  %.pre.i.i100 = load ptr, ptr %0, align 8, !tbaa !132
  %.pre.pre = load ptr, ptr %i.g, align 8, !tbaa !202
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i101

_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i101: ; preds = %.noexc103, %bb.bm
  %.pre = phi ptr [ %.pre.pre, %.noexc103 ], [ %.pre154, %bb.bm ]
  %i.hc = phi ptr [ %.pre.i.i100, %.noexc103 ], [ %i.gx, %bb.bm ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.gw
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !14
  br label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit104

_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit104: ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i101, %bb.bl
  %i.hf = phi ptr [ %.pre, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i101 ], [ %.pre154, %bb.bl ] ; 5 uses
  %.sroa.0.0.i102 = phi i64 [ %i.he, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i101 ], [ 1, %bb.bl ] ; 2 uses
  %i.hg = load ptr, ptr %i.fl, align 8, !tbaa !133
  %.not.i.i105 = icmp eq ptr %i.hf, %i.hg
  br i1 %.not.i.i105, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit104
  store i64 %.sroa.0.0.i102, ptr %i.hf, align 8, !tbaa !14
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !202
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  store ptr %i.hi, ptr %i.g, align 8, !tbaa !202
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

bb.bp:                                            ; preds = %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit104
  %i.hj = load ptr, ptr %0, align 8, !tbaa !132   ; 7 uses
  %i.hk = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hl = ptrtoint ptr %i.hj to i64               ; 3 uses
  %i.hm = sub i64 %i.hk, %i.hl                    ; 4 uses
  %i.hn = icmp eq i64 %i.hm, 9223372036854775800
  br i1 %i.hn, label %bb.bq, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc106 unwind label %.loopexit.split-lp

.noexc106:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bp
  %i.ho = ashr exact i64 %i.hm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ho, i64 1)
  %i.hp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ho ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.ho
  %i.hr = call i64 @llvm.umin.i64(i64 %i.hp, i64 1152921504606846975)
  %i.hs = select i1 %i.hq, i64 1152921504606846975, i64 %i.hr ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.hs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ht = shl nuw nsw i64 %i.hs, 3
  %i.hu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ht) #27
          to label %.noexc107 unwind label %.loopexit ; 8 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hm
  store i64 %.sroa.0.0.i102, ptr %i.hv, align 8, !tbaa !14
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.hj, %i.hf
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc107
  %i.hw = ptrtoaddr ptr %i.hu to i64
  %7 = add i64 %i.hk, -8
  %8 = sub i64 %7, %i.hl                          ; 2 uses
  %i.hx = lshr i64 %8, 3
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  %i.hz = sub i64 %i.hl, %i.hw
  %diff.check = icmp ugt i64 %i.hz, -32
  %or.cond174 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond174, label %.lr.ph.i.i.i.i.i.i.preheader175, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.hy, 4611686018427387900     ; 3 uses
  %i.ia = shl i64 %n.vec, 3                       ; 2 uses
  %i.ib = getelementptr i8, ptr %i.hu, i64 %i.ia  ; 2 uses
  %i.ic = getelementptr i8, ptr %i.hj, i64 %i.ia
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.id = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hu, i64 %i.id ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.hj, i64 %i.id ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.ie = getelementptr i8, ptr %next.gep171, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep171, align 8, !tbaa !14, !alias.scope !334, !noalias !331
  %wide.load172 = load <2 x i64>, ptr %i.ie, align 8, !tbaa !14, !alias.scope !334, !noalias !331
  %i.if = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !14, !alias.scope !331, !noalias !334
  store <2 x i64> %wide.load172, ptr %i.if, align 8, !tbaa !14, !alias.scope !331, !noalias !334
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %middle.block, label %vector.body, !llvm.loop !336

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader175

.lr.ph.i.i.i.i.i.i.preheader175:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ib, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ic, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader175, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader175 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader175 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.ih = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !334, !noalias !331
  store i64 %i.ih, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !331, !noalias !334
  %i.ii = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ii, %i.hf
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !337

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc107
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.hu, %.noexc107 ], [ %i.ib, %middle.block ], [ %i.ij, %.lr.ph.i.i.i.i.i.i ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.hm) #25
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.br, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.hu, ptr %0, align 8, !tbaa !132
  store ptr %i.ik, ptr %i.g, align 8, !tbaa !202
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hs
  store ptr %i.il, ptr %i.fl, align 8, !tbaa !133
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.bo
  %.pre154157 = phi ptr [ %i.ik, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.hi, %bb.bo ]
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0120.0149, i64 8 ; 2 uses
  %.not140 = icmp eq ptr %i.im, %i.fj
  br i1 %.not140, label %._crit_edge152.loopexit, label %bb.bl

.loopexit:                                        ; preds = %bb.bn, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bs:                                            ; preds = %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i93, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean2ir13decl_fun_bodyERKNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.io = invoke i64 @_ZN4lean2ir11interpreter9eval_bodyERKNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.in)
          to label %_ZL8lean_decP11lean_object.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZL8lean_decP11lean_object.exit:                  ; preds = %bb.bt, %bb.ad, %bb.ag, %bb.af, %bb.ah, %_ZN4lean2irL14type_is_scalarENS0_4typeE.exit
  %.sroa.0124.0 = phi i64 [ %i.dr, %bb.ad ], [ %i.ea, %_ZN4lean2irL14type_is_scalarENS0_4typeE.exit ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ag ], [ %i.io, %bb.bt ] ; 2 uses
  %i.iq = load ptr, ptr %3, align 8, !tbaa !10
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !13
  %i.it = ptrtoint ptr %i.is to i64               ; 2 uses
  %i.iu = trunc i64 %i.it to i1
  br i1 %i.iu, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %_ZL8lean_decP11lean_object.exit
  %i.iv = call ptr @__cxa_allocate_exception(i64 40) #23 ; 4 uses
  invoke void @_ZN4lean9throwableC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.iv, ptr noundef nonnull @.str)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.iv, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.iv, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #24
          to label %.noexc108 unwind label %bb.aw

.noexc108:                                        ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.iv) #23
  br label %.body

bb.by:                                            ; preds = %_ZL8lean_decP11lean_object.exit
  %i.ix = lshr i64 %i.it, 1
  %i.iy = trunc i64 %i.ix to i32
  invoke void @_ZN4lean2ir11interpreter9pop_frameENS0_5valueENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %.sroa.0124.0, i32 noundef %i.iy)
          to label %bb.bz unwind label %bb.aw

bb.bz:                                            ; preds = %bb.by
  %i.iz = load ptr, ptr %3, align 8, !tbaa !10    ; 4 uses
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = and i64 %i.ja, 1
  %.not.i.i.i.i112 = icmp eq i64 %i.jb, 0
  br i1 %.not.i.i.i.i112, label %bb.ca, label %_ZN4lean2ir11interpreter18symbol_cache_entryD2Ev.exit

bb.ca:                                            ; preds = %bb.bz
  %i.jc = load i32, ptr %i.iz, align 4, !tbaa !20 ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 1
  br i1 %i.jd, label %bb.cb, label %bb.cc, !prof !22

bb.cb:                                            ; preds = %bb.ca
  %i.je = add nsw i32 %i.jc, -1
  store i32 %i.je, ptr %i.iz, align 4, !tbaa !20
  br label %_ZN4lean2ir11interpreter18symbol_cache_entryD2Ev.exit

bb.cc:                                            ; preds = %bb.ca
  %.not.i1.i.i.i = icmp eq i32 %i.jc, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean2ir11interpreter18symbol_cache_entryD2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.iz)
          to label %_ZN4lean2ir11interpreter18symbol_cache_entryD2Ev.exit unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  %i.jg = extractvalue { ptr, i32 } %i.jf, 0
  call void @__clang_call_terminate(ptr %i.jg) #26
  unreachable

_ZN4lean2ir11interpreter18symbol_cache_entryD2Ev.exit: ; preds = %bb.bz, %bb.cb, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.sroa.0124.0

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit141, %.loopexit.split-lp142, %bb.aw, %bb.bx, %bb.aj, %bb.aa, %bb.m, %bb.i, %bb.ak, %bb.ai, %bb.bu, %bb.bd
  %.pn63.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.bu ], [ %i.do, %bb.aa ], [ %.pn54.pn.pn.pn.pn, %bb.bd ], [ %i.iw, %bb.bx ], [ %i.au, %bb.i ], [ %lpad.loopexit.split-lp144, %.loopexit.split-lp142 ], [ %i.dz, %bb.ak ], [ %i.dx, %bb.ai ], [ %i.bh, %bb.m ], [ %i.fa, %bb.aw ], [ %i.dy, %bb.aj ], [ %lpad.loopexit143, %.loopexit141 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4lean2ir11interpreter18symbol_cache_entryD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn63.pn.pn

bb.cf:                                            ; preds = %bb.av
  unreachable
}

declare double @lean_float_of_nat(ptr noundef) local_unnamed_addr #7

declare float @lean_float32_of_nat(ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN4lean5curryEPvjPP11lean_object(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i64 @lean_usize_of_big_nat(ptr noundef) local_unnamed_addr #7

declare i64 @lean_uint64_of_big_nat(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPKN4lean10object_refESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN4lean2ir11interpreter10stub_m_auxEPP11lean_object:bb.a

bb.q:                                             ; preds = %bb.p
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt17_Function_handlerIFP11lean_objectRN4lean2ir11interpreterEEZNS4_10stub_m_auxEPS1_EUlS5_E_E9_M_invokeERKSt9_Any_dataS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !347, !nonnull !45, !align !85
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = tail call noundef ptr @_ZN4lean2ir11interpreter6stub_mEPP11lean_object(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %i.b), !inline_history !349
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFP11lean_objectRN4lean2ir11interpreterEEZNS4_10stub_m_auxEPS1_EUlS5_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS1_E_, ptr %0, align 8, !tbaa !148
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !13
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !50
  store i64 %i.a, ptr %0, align 8, !tbaa !50
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN4lean2ir11interpreter6stub_mEPP11lean_object(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.lean::object_ref", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !202  ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !132
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val.i.i26 = load i64, ptr %i.n, align 8, !tbaa !29
  %.not = icmp eq i64 %.val.i.i26, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit, %bb.a
  %.lcssa23 = phi ptr [ %i.d, %bb.a ], [ %i.bz, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.a, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa23, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !203
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !130
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  store i64 %i.x, ptr %i.b, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !139  ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !141
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !10  ; 5 uses
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !10
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !20 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.ag = add nuw i32 %.val.i.i.i.i.i.i.i.i.i, 1
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !20
  br label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = atomicrmw sub ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !139
  br label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.ai = phi ptr [ %i.z, %bb.b ], [ %i.z, %bb.d ], [ %i.z, %bb.e ], [ %.pre.i.i, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.k, ptr %i.aj, align 8, !tbaa !204
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.x, ptr %i.ak, align 8, !tbaa !206
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.al, ptr %i.y, align 8, !tbaa !139
  br label %bb.m

bb.g:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE17_M_realloc_insertIJRKNS0_4nameERmmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.m unwind label %bb.v

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit
  %i.an = phi ptr [ %i.d, %.lr.ph ], [ %i.bz, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ]
  %i.ao = phi ptr [ %i.f, %.lr.ph ], [ %i.ca, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %.027 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %1, i64 %.027
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !133
  %.not.i.i18 = icmp eq ptr %i.ao, %i.at
  br i1 %.not.i.i18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !14
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !202
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.e, align 8, !tbaa !202
  %.pre = load ptr, ptr %2, align 8, !tbaa !10
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %0, align 8, !tbaa !132   ; 7 uses
  %i.ax = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.k, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #27
          to label %.noexc20 unwind label %.loopexit ; 8 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  store i64 %i.as, ptr %i.bi, align 8, !tbaa !14
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.ao
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc20
  %i.bj = ptrtoaddr ptr %i.bh to i64
  %3 = add i64 %i.ax, -8
  %4 = sub i64 %3, %i.ay                          ; 2 uses
  %i.bk = lshr i64 %4, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 24
  %i.bm = sub i64 %i.ay, %i.bj
  %diff.check = icmp ugt i64 %i.bm, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bn = shl i64 %n.vec, 3                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bh, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %i.aw, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bq ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.aw, i64 %i.bq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.br = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep38, align 8, !tbaa !14, !alias.scope !353, !noalias !350
  %wide.load39 = load <2 x i64>, ptr %i.br, align 8, !tbaa !14, !alias.scope !353, !noalias !350
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !14, !alias.scope !350, !noalias !353
  store <2 x i64> %wide.load39, ptr %i.bs, align 8, !tbaa !14, !alias.scope !350, !noalias !353
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader41

.lr.ph.i.i.i.i.i.i.preheader41:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader41, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader41 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader41 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.bu = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !353, !noalias !350
  store i64 %i.bu, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !350, !noalias !353
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !356

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc20
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bh, %.noexc20 ], [ %i.bo, %middle.block ], [ %i.bw, %.lr.ph.i.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.az) #25
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bh, ptr %0, align 8, !tbaa !132
  store ptr %i.bx, ptr %i.e, align 8, !tbaa !202
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.by, ptr %i.o, align 8, !tbaa !133
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.i
  %i.bz = phi ptr [ %i.an, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.pre, %bb.i ] ; 3 uses
  %i.ca = phi ptr [ %i.bx, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.av, %bb.i ]
  %i.cb = add nuw i64 %.027, 1                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !10
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val.i.i = load i64, ptr %i.ce, align 8, !tbaa !29
  %i.cf = icmp ult i64 %i.cb, %.val.i.i
  br i1 %i.cf, label %bb.h, label %._crit_edge, !llvm.loop !357

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.m:                                             ; preds = %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean2ir13decl_fun_bodyERKNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ch = invoke i64 @_ZN4lean2ir11interpreter9eval_bodyERKNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %bb.o unwind label %bb.w       ; 2 uses

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4lean2ir11interpreter9pop_frameENS0_5valueENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %i.ch, i32 noundef 8)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %2, align 8, !tbaa !10    ; 4 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, 1
  %.not.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i, label %bb.q, label %_ZN4lean10object_refD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !20 ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %bb.r, label %bb.s, !prof !22

bb.r:                                             ; preds = %bb.q
  %i.cn = add nsw i32 %i.cl, -1
  store i32 %i.cn, ptr %i.ci, align 4, !tbaa !20
  br label %_ZN4lean10object_refD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %.not.i1.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ci)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #26
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  %i.cq = inttoptr i64 %i.ch to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.cq

bb.v:                                             ; preds = %bb.g
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %bb.n, %bb.m
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.o
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.w, %bb.x, %bb.v
  %.pn15.pn = phi { ptr, i32 } [ %i.cr, %bb.v ], [ %i.cs, %bb.w ], [ %i.ct, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn15.pn
}

declare ptr @lean_apply_n(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFjRN4lean2ir11interpreterEEZNS1_8run_mainERKNS0_16elab_environmentERKNS0_7optionsERKNS0_8list_refINS0_10string_refEEEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !358
  %i.a = tail call noundef i32 @_ZN4lean2ir11interpreter8run_mainERKNS_8list_refINS_10string_refEEE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %.val)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFjRN4lean2ir11interpreterEEZNS1_8run_mainERKNS0_16elab_environmentERKNS0_7optionsERKNS0_8list_refINS0_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4lean2ir8run_mainERKNS_16elab_environmentERKNS_7optionsERKNS_8list_refINS_10string_refEEEE3$_0", ptr %0, align 8, !tbaa !148
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !13
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !91
  store i64 %.val.i, ptr %0, align 8, !tbaa !91
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

end_hunk_5
