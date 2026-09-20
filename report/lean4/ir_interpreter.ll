Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ir_interpreter?download=true
inline.NumInlined: 2112
inline.NumDeleted: 869
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4lean26notify_assertion_violationEPKciS1_

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN4lean2ir11interpreter9eval_bodyERKNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.lean::sstream", align 8     ; 9 uses
  tail call void @_ZN4lean2ir11interpreter12check_systemEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 28 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.thread284

.thread284:                                       ; preds = %.thread284.backedge, %bb.a
  %.sroa.0229.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0229.0.be, %.thread284.backedge ] ; 24 uses
  %i.f = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !20 ; 27 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.thread284
  %i.i = lshr i64 %i.g, 1
  %i.j = trunc i64 %i.i to i32
  br label %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit

bb.c:                                             ; preds = %.thread284
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
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val.i.i114 = load i32, ptr %i.q, align 4
  %.mask = and i32 %.val.i.i114, -16777216
  %i.r = icmp eq i32 %.mask, 100663296
  br i1 %i.r, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.x = tail call zeroext i8 @lean_name_eq(ptr noundef %i.v, ptr noundef %i.w)
  %.not289 = icmp eq i8 %i.x, 0
  br i1 %.not289, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !20   ; 3 uses
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
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = trunc i64 %i.aj to i1
  br i1 %i.ak, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !20 ; 3 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !20 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = and i64 %i.aq, 1
  %i.at = and i64 %i.as, %i.ar
  %or.cond.not.i.i = icmp eq i64 %i.at, 0
  br i1 %or.cond.not.i.i, label %_ZN4leaneqERKNS_3natES2_.exit, label %.split, !prof !276

.split:                                           ; preds = %bb.j
  %i.au = icmp eq ptr %i.ao, %i.ap
  br i1 %i.au, label %bb.k, label %bb.r

_ZN4leaneqERKNS_3natES2_.exit:                    ; preds = %bb.j
  %i.av = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.ao, ptr noundef %i.ap)
  br i1 %i.av, label %bb.k, label %bb.r

bb.k:                                             ; preds = %.split, %_ZN4leaneqERKNS_3natES2_.exit
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !146 ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !117
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !20, !noalias !277 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %.val.i.i.i = load i64, ptr %i.bf, align 8, !tbaa !37, !noalias !278 ; 2 uses
  %.idx328 = shl nuw nsw i64 %.val.i.i.i, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx328
  %.not290317 = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not290317, label %._crit_edge324, label %.lr.ph320

.preheader:                                       ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit
  %.pre377 = load ptr, ptr %i.ax, align 8, !tbaa !20
  %.phi.trans.insert378 = getelementptr i8, ptr %.pre377, i64 8
  %.val.i.i118321.pre = load i64, ptr %.phi.trans.insert378, align 8, !tbaa !37
  %i.bh = icmp eq i64 %.val.i.i118321.pre, 0
  br i1 %i.bh, label %._crit_edge324, label %.lr.ph323

.lr.ph320:                                        ; preds = %bb.k, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit
  %i.bi = phi ptr [ %i.db, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ], [ %i.ay, %bb.k ] ; 3 uses
  %.sroa.0226.0318 = phi ptr [ %i.dc, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ], [ %i.be, %bb.k ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.0226.0318, align 8, !tbaa !20 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph320
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !149
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !20
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = lshr i64 %i.br, 1
  %i.bt = add i64 %i.bs, %i.bp                    ; 2 uses
  %i.bu = add i64 %i.bt, -1                       ; 2 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.bw = ptrtoint ptr %i.bi to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3
  %.not.i.i = icmp ult i64 %i.bu, %i.bz
  br i1 %.not.i.i, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.bt)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !117
  %.pre376.pre = load ptr, ptr %i.c, align 8, !tbaa !146
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i

_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i:   ; preds = %bb.m, %bb.l
  %.pre376 = phi ptr [ %.pre376.pre, %bb.m ], [ %i.bi, %bb.l ]
  %i.ca = phi ptr [ %.pre.i.i, %bb.m ], [ %i.bv, %bb.l ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bu
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !22
  br label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit

_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit: ; preds = %.lr.ph320, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i
  %i.cd = phi ptr [ %.pre376, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i ], [ %i.bi, %.lr.ph320 ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.cc, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i ], [ 1, %.lr.ph320 ] ; 2 uses
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !118
  %.not.i.i117 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i.i117, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit
  store i64 %.sroa.0.0.i, ptr %i.cd, align 8, !tbaa !22
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !146
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.c, align 8, !tbaa !146
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

bb.o:                                             ; preds = %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit
  %i.ch = load ptr, ptr %0, align 8, !tbaa !117   ; 5 uses
  %i.ci = ptrtoint ptr %i.cd to i64
  %i.cj = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %bb.p, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.cm = ashr exact i64 %i.ck, 3
  %mul2.i.i.i = ashr exact i64 %i.ck, 2
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.cn = icmp ult i64 %3, %i.cm
  %i.co = tail call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.cp = select i1 %i.cn, i64 1152921504606846975, i64 %i.co ; 2 uses
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #27 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ck
  store i64 %.sroa.0.0.i, ptr %i.cs, align 8, !tbaa !22
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.cd
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i ], [ %i.cr, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i ], [ %i.ch, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.ct = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !280, !noalias !279
  store i64 %i.ct, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !279, !noalias !280
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, %i.cd
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cr, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cv, %.lr.ph.i.i.i.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cz) #25
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.cr, ptr %0, align 8, !tbaa !117
  store ptr %i.cw, ptr %i.c, align 8, !tbaa !146
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.da, ptr %i.d, align 8, !tbaa !118
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.n, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.db = phi ptr [ %i.cg, %bb.n ], [ %i.cw, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0226.0318, i64 8 ; 2 uses
  %.not290 = icmp eq ptr %i.dc, %i.bg
  br i1 %.not290, label %.preheader, label %.lr.ph320

._crit_edge324:                                   ; preds = %.lr.ph323, %bb.k, %.preheader
  %.val.i.i118.lcssa = phi i64 [ 0, %.preheader ], [ 0, %bb.k ], [ %.val.i.i118, %.lr.ph323 ]
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !149
  %i.dg = add i64 %i.df, %.val.i.i118.lcssa
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.dg)
  tail call void @_ZN4lean2ir11interpreter12check_systemEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br label %.thread284.backedge

.lr.ph323:                                        ; preds = %.preheader, %.lr.ph323
  %.0107322 = phi i64 [ %i.dq, %.lr.ph323 ], [ 0, %.preheader ] ; 3 uses
  %i.dh = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.bc
  %i.dj = getelementptr [8 x i8], ptr %i.di, i64 %.0107322
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !149
  %i.dn = getelementptr [8 x i8], ptr %i.dh, i64 %i.dm
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %.0107322
  %i.dp = load i64, ptr %i.dj, align 8, !tbaa !22
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !22
  %i.dq = add nuw i64 %.0107322, 1                ; 2 uses
  %i.dr = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %.val.i.i118 = load i64, ptr %i.ds, align 8, !tbaa !37 ; 2 uses
  %i.dt = icmp ult i64 %i.dq, %.val.i.i118
  br i1 %i.dt, label %.lr.ph323, label %._crit_edge324, !llvm.loop !259

bb.r:                                             ; preds = %.split, %_ZN4leaneqERKNS_3natES2_.exit, %bb.i, %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit116, %bb.e, %bb.d
  %i.du = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !20 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !21
  %i.dx = ptrtoint ptr %i.dw to i64               ; 2 uses
  %i.dy = trunc i64 %i.dx to i1
  br i1 %i.dy, label %_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.dz, ptr noundef nonnull @.str)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #24
  unreachable

common.resume:                                    ; preds = %bb.cl, %bb.dj, %bb.az, %bb.ay, %bb.cb, %bb.ap, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.ea, %bb.u ], [ %i.me, %bb.ap ], [ %i.sl, %bb.cb ], [ %i.ze, %bb.dj ], [ %i.to, %bb.cl ], [ %.pn273, %bb.az ], [ %lpad.thr_comm.split-lp, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.s
  %i.ea = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dz) #23
  br label %common.resume

_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit: ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.ec = lshr i64 %i.dx, 1
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = tail call i64 @_ZN4lean2ir11interpreter9eval_exprERKNS_10object_refENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.eb, i32 noundef %i.ed)
  %i.ef = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !149
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = lshr i64 %i.el, 1
  %i.en = add i64 %i.em, %i.ej                    ; 2 uses
  %i.eo = add i64 %i.en, -1                       ; 2 uses
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !146
  %i.eq = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 3
  %.not.i = icmp ult i64 %i.eo, %i.eu
  br i1 %.not.i, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.en)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !117
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit

_ZN4lean2ir11interpreter3varERKNS_3natE.exit:     ; preds = %_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit, %bb.v
  %i.ev = phi ptr [ %.pre.i, %bb.v ], [ %i.eq, %_ZN4lean2ir18fn_body_vdecl_typeERKNS_10object_refE.exit ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.eo
  store i64 %i.ee, ptr %i.ew, align 8, !tbaa !22
  %i.ex = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  br label %.thread284.backedge

bb.w:                                             ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !150
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !20
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = lshr i64 %i.fe, 1
  %i.fg = add i64 %i.ff, %i.fb                    ; 3 uses
  %i.fh = load ptr, ptr %i.e, align 8, !tbaa !147 ; 2 uses
  %i.fi = load ptr, ptr %i.a, align 8, !tbaa !115 ; 6 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = ashr exact i64 %i.fl, 3                 ; 4 uses
  %.not = icmp ult i64 %i.fg, %i.fm
  br i1 %.not, label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fn = add i64 %i.fg, 1                        ; 4 uses
  %i.fo = icmp ugt i64 %i.fn, %i.fm
  br i1 %i.fo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fp = sub nuw i64 %i.fn, %i.fm
  tail call void @_ZNSt6vectorIPKN4lean10object_refESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.fp)
  %.pre374 = load ptr, ptr %i.a, align 8, !tbaa !115
  %.pre375 = load ptr, ptr %.sroa.0229.0, align 8, !tbaa !20
  br label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

bb.z:                                             ; preds = %bb.x
  %i.fq = icmp ult i64 %i.fn, %i.fm
  br i1 %i.fq, label %bb.aa, label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

bb.aa:                                            ; preds = %bb.z
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fn ; 2 uses
  %.not.i.i120 = icmp eq ptr %i.fh, %i.fr
  br i1 %.not.i.i120, label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.aa
  store ptr %i.fr, ptr %i.e, align 8, !tbaa !147
  br label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.aa, %bb.z, %bb.y, %bb.w
  %i.fs = phi ptr [ %i.f, %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %i.f, %bb.aa ], [ %i.f, %bb.z ], [ %.pre375, %bb.y ], [ %i.f, %bb.w ]
  %i.ft = phi ptr [ %i.fi, %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %i.fi, %bb.aa ], [ %i.fi, %bb.z ], [ %.pre374, %bb.y ], [ %i.fi, %bb.w ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fg
  store ptr %.sroa.0229.0, ptr %i.fu, align 8, !tbaa !164
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  br label %.thread284.backedge

bb.ab:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fx = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -16
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !149
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !20
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = lshr i64 %i.gb, 1
  %i.gd = add i64 %i.gc, %i.fz                    ; 2 uses
  %i.ge = add i64 %i.gd, -1                       ; 2 uses
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !146
end_hunk_0
begin_hunk_1_@_ZN4lean2ir11interpreter9eval_bodyERKNS_10object_refE:bb.a
  %.not28.i.i194 = icmp ult i64 %i.ya, %i.xw
  br i1 %.not28.i.i194, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ye = shl nuw nsw i64 %i.xw, 3
  %scevgep.i.i.i.i.i195 = getelementptr i8, ptr %i.xb, i64 %i.ye
  store ptr %scevgep.i.i.i.i.i195, ptr %i.c, align 8, !tbaa !146
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176

bb.dc:                                            ; preds = %bb.da
  %i.yf = icmp ult i64 %i.yc, %i.xw
  br i1 %i.yf, label %bb.dd, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i196

bb.dd:                                            ; preds = %bb.dc
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #24
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i196: ; preds = %bb.dc
  %.sroa.speculated.i.i.i197 = tail call i64 @llvm.umax.i64(i64 %i.xu, i64 %i.xw)
  %i.yg = add nuw nsw i64 %.sroa.speculated.i.i.i197, %i.xu
  %i.yh = tail call i64 @llvm.umin.i64(i64 %i.yg, i64 1152921504606846975) ; 2 uses
  %i.yi = shl nuw nsw i64 %i.yh, 3
  %i.yj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yi) #27 ; 5 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.xt
  %.not10.i.i.i.i.i198 = icmp eq ptr %i.xa, %i.xb
  br i1 %.not10.i.i.i.i.i198, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i203, label %.lr.ph.i.i.i.i.i199

.lr.ph.i.i.i.i.i199:                              ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i196, %.lr.ph.i.i.i.i.i199
  %.012.i.i.i.i.i200 = phi ptr [ %i.yn, %.lr.ph.i.i.i.i.i199 ], [ %i.yj, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i196 ] ; 2 uses
  %.0911.i.i.i.i.i201 = phi ptr [ %i.ym, %.lr.ph.i.i.i.i.i199 ], [ %i.xa, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i196 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.yl = load i64, ptr %.0911.i.i.i.i.i201, align 8, !tbaa !22, !alias.scope !288, !noalias !287
  store i64 %i.yl, ptr %.012.i.i.i.i.i200, align 8, !tbaa !22, !alias.scope !287, !noalias !288
  %i.ym = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i201, i64 8 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i200, i64 8
  %.not.i.i.i.i.i202 = icmp eq ptr %i.ym, %i.xb
  br i1 %.not.i.i.i.i.i202, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i203, label %.lr.ph.i.i.i.i.i199, !llvm.loop !7

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i203: ; preds = %.lr.ph.i.i.i.i.i199, %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i196
  %.not.i31.i.i204 = icmp eq ptr %i.xa, null
  br i1 %.not.i31.i.i204, label %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i205, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i203
  %i.yo = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.yp = ptrtoint ptr %i.yo to i64
  %i.yq = sub i64 %i.yp, %i.xs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.xa, i64 noundef %i.yq) #25
  br label %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i205

_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i205: ; preds = %bb.de, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i203
  store ptr %i.yj, ptr %0, align 8, !tbaa !117
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %i.xw
  store ptr %i.yr, ptr %i.c, align 8, !tbaa !146
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yj, i64 %i.yh
  store ptr %i.ys, ptr %i.d, align 8, !tbaa !118
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176

bb.df:                                            ; preds = %bb.cz
  %i.yt = icmp ult i64 %i.xp, %i.xu
  br i1 %i.yt, label %bb.dg, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176

bb.dg:                                            ; preds = %bb.df
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %i.xp ; 2 uses
  %.not.i4.i192 = icmp eq ptr %i.xb, %i.yu
  br i1 %.not.i4.i192, label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176, label %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i193

_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i193: ; preds = %bb.dg
  store ptr %i.yu, ptr %i.c, align 8, !tbaa !146
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit176

_ZN4lean2ir11interpreter3varERKNS_3natE.exit176:  ; preds = %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i193, %bb.dg, %bb.df, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i205, %bb.db, %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit173
  %i.yv = phi ptr [ %i.xa, %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit173 ], [ %i.xa, %bb.db ], [ %i.yj, %_ZNSt12_Vector_baseIN4lean2ir5valueESaIS2_EE13_M_deallocateEPS2_m.exit32.i.i205 ], [ %i.xa, %bb.df ], [ %i.xa, %bb.dg ], [ %i.xa, %_ZSt8_DestroyIPN4lean2ir5valueES2_EvT_S4_RSaIT0_E.exit.i.i193 ]
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.xq
  store i64 %.sroa.0.0.i172, ptr %i.yw, align 8, !tbaa !22
  %i.yx = add nuw i64 %.0308, 1                   ; 2 uses
  %i.yy = load ptr, ptr %i.uv, align 8, !tbaa !20 ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !20
  %i.zb = getelementptr i8, ptr %i.za, i64 8
  %.val.i.i168 = load i64, ptr %i.zb, align 8, !tbaa !37
  %i.zc = icmp ult i64 %i.yx, %.val.i.i168
  br i1 %i.zc, label %.lr.ph, label %._crit_edge, !llvm.loop !275

bb.dh:                                            ; preds = %_ZN4lean2ir11fn_body_tagERKNS_10object_refE.exit
  %i.zd = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.zd, ptr noundef nonnull @.str.25)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  tail call void @__cxa_throw(ptr nonnull %i.zd, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #24
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.ze = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.zd) #23
  br label %common.resume

bb.dk:                                            ; preds = %bb.ax
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean2ir11interpreter9pop_frameENS0_5valueENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !149
  tail call void @_ZNSt6vectorIN4lean2ir5valueESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !162  ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !150  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147  ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !115  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 3 uses
  %i.p = icmp ugt i64 %i.h, %i.o
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw i64 %i.h, %i.o
  tail call void @_ZNSt6vectorIPKN4lean10object_refESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.q)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !122
  br label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %i.h, %i.o
  br i1 %i.r, label %bb.d, label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.s
  br i1 %.not.i.i, label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.s, ptr %i.i, align 8, !tbaa !147
  br label %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %_ZSt8_DestroyIPPKN4lean10object_refES3_EvT_S5_RSaIT0_E.exit.i.i ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !122
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE8pop_backEv.exit

bb.e:                                             ; preds = %_ZNSt6vectorIPKN4lean10object_refESaIS3_EE6resizeEm.exit
  %i.y = load i32, ptr %i.v, align 4, !tbaa !29   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !29
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !121    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
  unreachable

_ZNKSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %5 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %5, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %5, i64 384307168202282325)
  %i.k = select i1 %i.i, i64 384307168202282325, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 24
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 3 uses
  %i.q = load i64, ptr %3, align 8, !tbaa !37
  %i.r = load i64, ptr %4, align 8, !tbaa !37
  %i.s = load ptr, ptr %2, align 8, !tbaa !20     ; 5 uses
  store ptr %i.s, ptr %i.p, align 8, !tbaa !20
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE12_M_check_lenEmPKc.exit
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.s, align 4, !tbaa !29 ; 3 uses
  %i.v = icmp sgt i32 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.v, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.w = add nuw i32 %.val.i.i.i.i.i.i.i, 1
  store i32 %i.w, ptr %i.s, align 4, !tbaa !29
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = atomicrmw sub ptr %i.s, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.q, ptr %i.y, align 8, !tbaa !149
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.r, ptr %i.z, align 8, !tbaa !150
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.o, %bb.g ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.aa = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !297, !noalias !296
  store ptr %i.aa, ptr %.012.i.i.i, align 8, !tbaa !20, !alias.scope !296, !noalias !297
  store ptr inttoptr (i64 1 to ptr), ptr %.0911.i.i.i, align 8, !tbaa !20, !alias.scope !297, !noalias !296
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !alias.scope !298
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !292

_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.g ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.ak, %.lr.ph.i.i.i29 ], [ %i.af, %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0911.i.i.i31 = phi ptr [ %i.aj, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.ag = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !20, !alias.scope !300, !noalias !299
  store ptr %i.ag, ptr %.012.i.i.i30, align 8, !tbaa !20, !alias.scope !299, !noalias !300
  store ptr inttoptr (i64 1 to ptr), ptr %.0911.i.i.i31, align 8, !tbaa !20, !alias.scope !300, !noalias !299
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !alias.scope !301
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !292

_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.af, %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ak, %.lr.ph.i.i.i29 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN4lean2ir11interpreter5frameESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !123
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #25
  br label %_ZNSt12_Vector_baseIN4lean2ir11interpreter5frameESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4lean2ir11interpreter5frameESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !121
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !122
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean2ir11interpreter12check_systemEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.lean::sstream", align 8     ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  invoke void @_ZN4lean12check_systemEPKcb(ptr noundef nonnull @.str.8, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTIN4lean21stack_space_exceptionE ; 3 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 1
  %i.d = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4lean21stack_space_exceptionE) #23
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(72) %i.g) #23
  store ptr %i.k, ptr %i.a, align 8, !tbaa !92
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
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !122
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !121
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
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !122
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !121 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = xor i64 %i.q, -1
  %i.an = getelementptr i8, ptr %i.ai, i64 %i.al
  %i.ao = getelementptr [24 x i8], ptr %i.an, i64 %i.am
end_hunk_1
begin_hunk_2_@_ZN4lean2ir11interpreter4callERKNS_4nameERKNS_9array_refINS_10object_refEEE:bb.a
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.thread130:                                       ; preds = %_ZN4lean7sstreamC2Ev.exit, %_ZN4lean7sstreamlsIA63_cEERS0_RKT_.exit, %_ZN4lean7sstreamlsINS_4nameEEERS0_RKT_.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #23
  br label %bb.ba

.thread133:                                       ; preds = %bb.ar, %bb.as
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #23
  br label %bb.ba

.thread136:                                       ; preds = %_ZN4lean7sstreamlsIA62_cEERS0_RKT_.exit, %_ZN4lean7sstreamlsIA94_cEERS0_RKT_.exit, %_ZN4lean7sstreamlsIA5_cEERS0_RKT_.exit, %bb.au, %bb.at
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #23
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
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
  %i.fg = load ptr, ptr %2, align 8, !tbaa !20, !noalias !331 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fg, i64 8
  %.val.i.i.i90 = load i64, ptr %i.fi, align 8, !tbaa !37, !noalias !332 ; 2 uses
  %.idx = shl nuw nsw i64 %.val.i.i.i90, 3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.idx
  %.not140148 = icmp eq i64 %.val.i.i.i90, 0
  br i1 %.not140148, label %._crit_edge152, label %.lr.ph151

.lr.ph151:                                        ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre154.pre = load ptr, ptr %i.g, align 8, !tbaa !146
  br label %bb.bl

._crit_edge152.loopexit:                          ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit
  %.pre155 = load ptr, ptr %3, align 8, !tbaa !20
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit, %bb.be
  %i.fm = phi ptr [ %.pre155, %._crit_edge152.loopexit ], [ %i.eb, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.a, align 8, !tbaa !37
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !147
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !115
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 3                 ; 2 uses
  store i64 %i.fv, ptr %i.b, align 8, !tbaa !37
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !122 ; 8 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !123
  %.not.i.i91 = icmp eq ptr %i.fx, %i.fz
  br i1 %.not.i.i91, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge152
  %i.ga = load ptr, ptr %i.fn, align 8, !tbaa !20 ; 5 uses
  store ptr %i.ga, ptr %i.fx, align 8, !tbaa !20
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, 1
  %.not.i.i.i.i.i.i.i.i92 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i.i.i92, label %bb.bg, label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i93

bb.bg:                                            ; preds = %bb.bf
  %.val.i.i.i.i.i.i.i.i.i94 = load i32, ptr %i.ga, align 4, !tbaa !29 ; 3 uses
  %i.gd = icmp sgt i32 %.val.i.i.i.i.i.i.i.i.i94, 0
  br i1 %i.gd, label %bb.bh, label %bb.bi, !prof !30

bb.bh:                                            ; preds = %bb.bg
  %i.ge = add nuw i32 %.val.i.i.i.i.i.i.i.i.i94, 1
  store i32 %i.ge, ptr %i.ga, align 4, !tbaa !29
  br label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i93

bb.bi:                                            ; preds = %bb.bg
  %.not.i.i.i.i.i.i.i.i.i95 = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i94, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i95, label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i93, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gf = atomicrmw sub ptr %i.ga, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i.i96 = load ptr, ptr %i.fw, align 8, !tbaa !122
  br label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i93

_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i93: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bf
  %i.gg = phi ptr [ %i.fx, %bb.bf ], [ %i.fx, %bb.bh ], [ %i.fx, %bb.bi ], [ %.pre.i.i96, %bb.bj ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.m, ptr %i.gh, align 8, !tbaa !149
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 %i.fv, ptr %i.gi, align 8, !tbaa !150
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  store ptr %i.gj, ptr %i.fw, align 8, !tbaa !122
  br label %bb.bs

bb.bk:                                            ; preds = %._crit_edge152
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE17_M_realloc_insertIJRKNS0_4nameERmmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, ptr %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.bs unwind label %bb.aw

bb.bl:                                            ; preds = %.lr.ph151, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit
  %.pre154 = phi ptr [ %.pre154.pre, %.lr.ph151 ], [ %.pre154157, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.sroa.0120.0149 = phi ptr [ %i.fh, %.lr.ph151 ], [ %i.id, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.gl = load ptr, ptr %.sroa.0120.0149, align 8, !tbaa !20 ; 2 uses
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = trunc i64 %i.gm to i1
  br i1 %i.gn, label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit104, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gp = load ptr, ptr %i.fk, align 8, !tbaa !162
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -16
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !149
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !20
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = lshr i64 %i.gt, 1
  %i.gv = add i64 %i.gu, %i.gr                    ; 2 uses
  %i.gw = add i64 %i.gv, -1                       ; 2 uses
  %i.gx = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
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
  %.pre.i.i100 = load ptr, ptr %0, align 8, !tbaa !117
  %.pre.pre = load ptr, ptr %i.g, align 8, !tbaa !146
  br label %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i101

_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i101: ; preds = %.noexc103, %bb.bm
  %.pre = phi ptr [ %.pre.pre, %.noexc103 ], [ %.pre154, %bb.bm ]
  %i.hc = phi ptr [ %.pre.i.i100, %.noexc103 ], [ %i.gx, %bb.bm ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.gw
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !22
  br label %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit104

_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit104: ; preds = %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i101, %bb.bl
  %i.hf = phi ptr [ %.pre, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i101 ], [ %.pre154, %bb.bl ] ; 5 uses
  %.sroa.0.0.i102 = phi i64 [ %i.he, %_ZN4lean2ir11interpreter3varERKNS_3natE.exit.i101 ], [ 1, %bb.bl ] ; 2 uses
  %i.hg = load ptr, ptr %i.fl, align 8, !tbaa !118
  %.not.i.i105 = icmp eq ptr %i.hf, %i.hg
  br i1 %.not.i.i105, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit104
  store i64 %.sroa.0.0.i102, ptr %i.hf, align 8, !tbaa !22
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !146
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  store ptr %i.hi, ptr %i.g, align 8, !tbaa !146
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

bb.bp:                                            ; preds = %_ZN4lean2ir11interpreter8eval_argERKNS_10object_refE.exit104
  %i.hj = load ptr, ptr %0, align 8, !tbaa !117   ; 5 uses
  %i.hk = ptrtoint ptr %i.hf to i64
  %i.hl = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.hm = sub i64 %i.hk, %i.hl                    ; 4 uses
  %i.hn = icmp eq i64 %i.hm, 9223372036854775800
  br i1 %i.hn, label %bb.bq, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc106 unwind label %.loopexit.split-lp

.noexc106:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bp
  %i.ho = ashr exact i64 %i.hm, 3
  %mul2.i.i.i = ashr exact i64 %i.hm, 2
  %7 = call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.hp = icmp ult i64 %7, %i.ho
  %i.hq = call i64 @llvm.umin.i64(i64 %7, i64 1152921504606846975)
  %i.hr = select i1 %i.hp, i64 1152921504606846975, i64 %i.hq ; 2 uses
  %i.hs = shl nuw nsw i64 %i.hr, 3
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #27
          to label %.noexc107 unwind label %.loopexit ; 5 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hm
  store i64 %.sroa.0.0.i102, ptr %i.hu, align 8, !tbaa !22
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.hj, %i.hf
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc107, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i.i ], [ %i.ht, %.noexc107 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i.i ], [ %i.hj, %.noexc107 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.hv = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !334, !noalias !333
  store i64 %i.hv, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !333, !noalias !334
  %i.hw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hw, %i.hf
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc107
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ht, %.noexc107 ], [ %i.hx, %.lr.ph.i.i.i.i.i.i ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.hz = load ptr, ptr %i.fl, align 8, !tbaa !118
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = sub i64 %i.ia, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.ib) #25
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.br, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ht, ptr %0, align 8, !tbaa !117
  store ptr %i.hy, ptr %i.g, align 8, !tbaa !146
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hr
  store ptr %i.ic, ptr %i.fl, align 8, !tbaa !118
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.bo
  %.pre154157 = phi ptr [ %i.hy, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.hi, %bb.bo ]
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0120.0149, i64 8 ; 2 uses
  %.not140 = icmp eq ptr %i.id, %i.fj
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
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean2ir13decl_fun_bodyERKNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.if = invoke i64 @_ZN4lean2ir11interpreter9eval_bodyERKNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ie)
          to label %_ZL8lean_decP11lean_object.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZL8lean_decP11lean_object.exit:                  ; preds = %bb.bt, %bb.ad, %bb.ag, %bb.af, %bb.ah, %_ZN4lean2irL14type_is_scalarENS0_4typeE.exit
  %.sroa.0124.0 = phi i64 [ %i.dr, %bb.ad ], [ %i.ea, %_ZN4lean2irL14type_is_scalarENS0_4typeE.exit ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ag ], [ %i.if, %bb.bt ] ; 2 uses
  %i.ih = load ptr, ptr %3, align 8, !tbaa !20
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !21
  %i.ik = ptrtoint ptr %i.ij to i64               ; 2 uses
  %i.il = trunc i64 %i.ik to i1
  br i1 %i.il, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %_ZL8lean_decP11lean_object.exit
  %i.im = call ptr @__cxa_allocate_exception(i64 40) #23 ; 4 uses
  invoke void @_ZN4lean9throwableC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.im, ptr noundef nonnull @.str)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.im, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.im, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #24
          to label %.noexc108 unwind label %bb.aw

.noexc108:                                        ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.im) #23
  br label %.body

bb.by:                                            ; preds = %_ZL8lean_decP11lean_object.exit
  %i.io = lshr i64 %i.ik, 1
  %i.ip = trunc i64 %i.io to i32
  invoke void @_ZN4lean2ir11interpreter9pop_frameENS0_5valueENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %.sroa.0124.0, i32 noundef %i.ip)
          to label %bb.bz unwind label %bb.aw

bb.bz:                                            ; preds = %bb.by
  %i.iq = load ptr, ptr %3, align 8, !tbaa !20    ; 4 uses
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = and i64 %i.ir, 1
  %.not.i.i.i.i112 = icmp eq i64 %i.is, 0
  br i1 %.not.i.i.i.i112, label %bb.ca, label %_ZN4lean2ir11interpreter18symbol_cache_entryD2Ev.exit

bb.ca:                                            ; preds = %bb.bz
  %i.it = load i32, ptr %i.iq, align 4, !tbaa !29 ; 3 uses
  %i.iu = icmp sgt i32 %i.it, 1
  br i1 %i.iu, label %bb.cb, label %bb.cc, !prof !30

bb.cb:                                            ; preds = %bb.ca
  %i.iv = add nsw i32 %i.it, -1
  store i32 %i.iv, ptr %i.iq, align 4, !tbaa !29
  br label %_ZN4lean2ir11interpreter18symbol_cache_entryD2Ev.exit

bb.cc:                                            ; preds = %bb.ca
  %.not.i1.i.i.i = icmp eq i32 %i.it, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean2ir11interpreter18symbol_cache_entryD2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.iq)
          to label %_ZN4lean2ir11interpreter18symbol_cache_entryD2Ev.exit unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #26
  unreachable

_ZN4lean2ir11interpreter18symbol_cache_entryD2Ev.exit: ; preds = %bb.bz, %bb.cb, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i64 %.sroa.0124.0

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit141, %.loopexit.split-lp142, %bb.aw, %bb.bx, %bb.aj, %bb.aa, %bb.m, %bb.i, %bb.ak, %bb.ai, %bb.bu, %bb.bd
  %.pn63.pn.pn = phi { ptr, i32 } [ %i.ig, %bb.bu ], [ %i.do, %bb.aa ], [ %.pn54.pn.pn.pn.pn, %bb.bd ], [ %i.in, %bb.bx ], [ %i.au, %bb.i ], [ %lpad.loopexit.split-lp144, %.loopexit.split-lp142 ], [ %i.dz, %bb.ak ], [ %i.dx, %bb.ai ], [ %i.bh, %bb.m ], [ %i.fa, %bb.aw ], [ %i.dy, %bb.aj ], [ %lpad.loopexit143, %.loopexit141 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !115    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !164
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPKN4lean10object_refEmS3_ET_S5_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPKN4lean10object_refEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPKN4lean10object_refEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !164
end_hunk_2
begin_hunk_3_@_ZN4lean2ir11interpreter10stub_m_auxEPP11lean_object:bb.a
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !29
  br label %_ZN4lean10object_refD2Ev.exit5

bb.l:                                             ; preds = %bb.j
  %.not.i1.i.i4 = icmp eq i32 %i.ab, 0
  br i1 %.not.i1.i.i4, label %_ZN4lean10object_refD2Ev.exit5, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.y)
          to label %_ZN4lean10object_refD2Ev.exit5 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #26
  unreachable

_ZN4lean10object_refD2Ev.exit5:                   ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret ptr %i.l

bb.o:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !56  ; 2 uses
  %.not.i6 = icmp eq ptr %i.ah, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.q ; 0 uses

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
  %i.a = load ptr, ptr %0, align 8, !tbaa !342, !nonnull !46, !align !86
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = tail call noundef ptr @_ZN4lean2ir11interpreter6stub_mEPP11lean_object(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %i.b), !inline_history !340
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
  store ptr @_ZTIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS1_E_, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !21
  br label %_ZNSt14_Function_base13_Base_managerIZN4lean2ir11interpreter10stub_m_auxEPP11lean_objectEUlRS3_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !52
  store i64 %i.a, ptr %0, align 8, !tbaa !52
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !146  ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !117
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val.i.i26 = load i64, ptr %i.n, align 8, !tbaa !37
  %.not = icmp eq i64 %.val.i.i26, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit, %bb.a
  %.lcssa23 = phi ptr [ %i.d, %bb.a ], [ %i.bq, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %i.a, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa23, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !147
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  store i64 %i.x, ptr %i.b, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122  ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !123
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !20  ; 5 uses
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !20
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !29 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.ag = add nuw i32 %.val.i.i.i.i.i.i.i.i.i, 1
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !29
  br label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = atomicrmw sub ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !122
  br label %_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

_ZSt12construct_atIN4lean2ir11interpreter5frameEJRKNS0_4nameERmmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.ai = phi ptr [ %i.z, %bb.b ], [ %i.z, %bb.d ], [ %i.z, %bb.e ], [ %.pre.i.i, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.k, ptr %i.aj, align 8, !tbaa !149
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.x, ptr %i.ak, align 8, !tbaa !150
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.al, ptr %i.y, align 8, !tbaa !122
  br label %bb.m

bb.g:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt6vectorIN4lean2ir11interpreter5frameESaIS3_EE17_M_realloc_insertIJRKNS0_4nameERmmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.m unwind label %bb.v

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit
  %i.an = phi ptr [ %i.d, %.lr.ph ], [ %i.bq, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ]
  %i.ao = phi ptr [ %i.f, %.lr.ph ], [ %i.br, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %.01327 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %1, i64 %.01327
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !118
  %.not.i.i18 = icmp eq ptr %i.ao, %i.at
  br i1 %.not.i.i18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !22
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !146
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.e, align 8, !tbaa !146
  %.pre = load ptr, ptr %2, align 8, !tbaa !20
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %0, align 8, !tbaa !117   ; 5 uses
  %i.ax = ptrtoint ptr %i.ao to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.k, label %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #24
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.bb = ashr exact i64 %i.az, 3
  %mul2.i.i.i = ashr exact i64 %i.az, 2
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.bc = icmp ult i64 %3, %i.bb
  %i.bd = tail call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #27
          to label %.noexc20 unwind label %.loopexit ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN4lean2ir5valueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.az
  store i64 %i.as, ptr %i.bh, align 8, !tbaa !22
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.ao
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc20, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %i.bg, %.noexc20 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %i.aw, %.noexc20 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !348, !noalias !347
  store i64 %i.bi, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !347, !noalias !348
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bg, %.noexc20 ], [ %i.bk, %.lr.ph.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !118
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bo) #25
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bg, ptr %0, align 8, !tbaa !117
  store ptr %i.bl, ptr %i.e, align 8, !tbaa !146
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bp, ptr %i.o, align 8, !tbaa !118
  br label %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4lean2ir5valueESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.i
  %i.bq = phi ptr [ %i.an, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.pre, %bb.i ] ; 3 uses
  %i.br = phi ptr [ %i.bl, %_ZNSt6vectorIN4lean2ir5valueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.av, %bb.i ]
  %i.bs = add nuw i64 %.01327, 1                  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %.val.i.i = load i64, ptr %i.bv, align 8, !tbaa !37
  %i.bw = icmp ult i64 %i.bs, %.val.i.i
  br i1 %i.bw, label %bb.h, label %._crit_edge, !llvm.loop !346

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
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean2ir13decl_fun_bodyERKNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.by = invoke i64 @_ZN4lean2ir11interpreter9eval_bodyERKNS_10object_refE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.o unwind label %bb.w       ; 2 uses

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4lean2ir11interpreter9pop_frameENS0_5valueENS0_4typeE(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %i.by, i32 noundef 8)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %2, align 8, !tbaa !20    ; 4 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = and i64 %i.ca, 1
  %.not.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i, label %bb.q, label %_ZN4lean10object_refD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.bz, align 4, !tbaa !29 ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.r, label %bb.s, !prof !30

bb.r:                                             ; preds = %bb.q
  %i.ce = add nsw i32 %i.cc, -1
  store i32 %i.ce, ptr %i.bz, align 4, !tbaa !29
  br label %_ZN4lean10object_refD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %.not.i1.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bz)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #26
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  %i.ch = inttoptr i64 %i.by to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.ch

bb.v:                                             ; preds = %bb.g
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %bb.n, %bb.m
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.w, %bb.x, %bb.v
  %.pn15.pn = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %i.cj, %bb.w ], [ %i.ck, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn15.pn
}

declare ptr @lean_apply_n(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFjRN4lean2ir11interpreterEEZNS1_8run_mainERKNS0_16elab_environmentERKNS0_7optionsERKNS0_8list_refINS0_10string_refEEEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !350
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
  store ptr @"_ZTIZN4lean2ir8run_mainERKNS_16elab_environmentERKNS_7optionsERKNS_8list_refINS_10string_refEEEE3$_0", ptr %0, align 8, !tbaa !126
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !21
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !89
  store i64 %.val.i, ptr %0, align 8, !tbaa !89
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4lean2ir8run_mainERKNS1_16elab_environmentERKNS1_7optionsERKNS1_8list_refINS1_10string_refEEEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN4lean2ir11interpreter8run_mainERKNS_8list_refINS_10string_refEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.lean::environment", align 8 ; 7 uses
  %3 = alloca %"class.lean::name", align 8        ; 7 uses
  %4 = alloca %"class.lean::name", align 8        ; 7 uses
  %5 = alloca %"class.lean::name", align 8        ; 7 uses
  %6 = alloca %"class.lean::object_ref", align 8  ; 7 uses
  %7 = alloca %"class.lean::name", align 8        ; 7 uses
  %8 = alloca %"class.lean::buffer", align 8      ; 16 uses
  %9 = alloca %"class.lean::name", align 8        ; 7 uses
  %10 = alloca %"class.lean::expr", align 8       ; 10 uses
  %11 = alloca %"class.lean::constant_info", align 8 ; 6 uses
  %12 = alloca %"class.lean::name", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr inttoptr (i64 1 to ptr), ptr %5, align 8, !tbaa !20
  invoke void @_ZN4lean4nameC2ERKS0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.7)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !20     ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4lean4nameC2EPKc.exit

end_hunk_3
