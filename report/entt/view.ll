Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/view?download=true
inline.NumInlined: 14012
inline.NumDeleted: 4156
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE3popENS_8internal19sparse_set_iteratorISt6vectorIS1_S2_EEES8_:bb.a
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = or i32 %i.bt, -1048576
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cg
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !102
  %i.cj = getelementptr [4 x i8], ptr %i.k, i64 %.sroa.4.119
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !102
  %i.cm = and i32 %i.cl, 1048575
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.co = lshr i64 %i.cn, 12
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !99
  %i.cr = and i64 %i.cn, 4095
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !102
  store i32 -1, ptr %i.cs, align 4, !tbaa !102
  %i.cu = and i32 %i.ct, 1048575                  ; 2 uses
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = or i32 %i.ce, -1048576
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cv
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !102
  %i.cy = add nsw i64 %.sroa.4.119, -2            ; 2 uses
  %i.cz = icmp eq i64 %i.cy, %4
  br i1 %i.cz, label %..loopexit15_crit_edge, label %.lr.ph20.new, !llvm.loop !2637

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.da = phi i64 [ %.promoted, %.lr.ph ], [ %i.dw, %bb.c ] ; 2 uses
  %.sroa.4.218 = phi i64 [ %2, %.lr.ph ], [ %i.en, %bb.c ] ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.d, i64 %.sroa.4.218
  %i.dc = getelementptr i8, ptr %i.db, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !102 ; 2 uses
  %i.de = and i32 %i.dd, 1048575                  ; 2 uses
  %i.df = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dg = lshr i64 %i.df, 12
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !99
  %i.dj = and i64 %i.df, 4095
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !102
  %i.dm = and i32 %i.dl, 1048575                  ; 2 uses
  %i.dn = zext nneg i32 %i.dm to i64              ; 2 uses
  %i.do = lshr i32 %i.dd, 20
  %i.dp = add nuw nsw i32 %i.do, 1                ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 4095
  %i.dr = shl i32 %i.dp, 20
  %i.ds = select i1 %i.dq, i32 0, i32 %i.dr       ; 2 uses
  %i.dt = or disjoint i32 %i.ds, %i.de
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dn ; 3 uses
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !102
  %i.dv = icmp ugt i64 %i.da, %i.dn
  %.neg.i = sext i1 %i.dv to i64
  %i.dw = add i64 %i.da, %.neg.i                  ; 4 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dw ; 3 uses
  %i.dy = trunc i64 %i.dw to i32
  %i.dz = and i32 %i.dy, 1048575
  %i.ea = or disjoint i32 %i.dz, %i.ds
  store i32 %i.ea, ptr %i.dk, align 4, !tbaa !102
  %i.eb = load i32, ptr %i.dx, align 4, !tbaa !102 ; 2 uses
  %i.ec = and i32 %i.eb, -1048576
  %i.ed = or disjoint i32 %i.ec, %i.dm
  %i.ee = and i32 %i.eb, 1048575
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eg = lshr i64 %i.ef, 12
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !99
  %i.ej = and i64 %i.ef, 4095
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  store i32 %i.ed, ptr %i.ek, align 4, !tbaa !102
  %i.el = load i32, ptr %i.du, align 4, !tbaa !102
  %i.em = load i32, ptr %i.dx, align 4, !tbaa !102
  store i32 %i.em, ptr %i.du, align 4, !tbaa !102
  store i32 %i.el, ptr %i.dx, align 4, !tbaa !102
  %i.en = add nsw i64 %.sroa.4.218, -1            ; 2 uses
  %i.eo = icmp eq i64 %i.en, %4
  br i1 %i.eo, label %..loopexit17_crit_edge, label %bb.c, !llvm.loop !2638

..loopexit15_crit_edge:                           ; preds = %.lr.ph20.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.cv, %.lr.ph20.new ]
  store i64 %.lcssa, ptr %i.n, align 8, !tbaa !97
  br label %.loopexit

..loopexit17_crit_edge:                           ; preds = %bb.c
  store i64 %i.dw, ptr %i.i, align 8, !tbaa !70
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader16, %..loopexit17_crit_edge, %.preheader14, %..loopexit15_crit_edge, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7pop_allEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !69
  %.not.i10 = icmp eq i8 %i.g, 2
  %i.h = select i1 %.not.i10, i64 0, i64 1048575
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.h, ptr %i.i, align 8, !tbaa !70
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EE5clearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !114  ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZSt8_DestroyIPN4entt6entityES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.loopexit
  %.sroa.07.012 = phi ptr [ %i.p, %.loopexit ], [ %i.k, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.07.012, align 8, !tbaa !99 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.o, i8 -1, i64 16384, i1 false), !tbaa !102
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 8 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %_ZSt8_DestroyIPN4entt6entityES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph

_ZSt8_DestroyIPN4entt6entityES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.loopexit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i8, ptr %i.r, align 8, !tbaa !69
  %.not.i = icmp eq i8 %i.s, 2
  %i.t = select i1 %.not.i, i64 0, i64 1048575
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.t, ptr %i.u, align 8, !tbaa !70
  store ptr %i.b, ptr %i.c, align 8, !tbaa !80
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EE5clearEv.exit

_ZNSt6vectorIN4entt6entityESaIS1_EE5clearEv.exit: ; preds = %.thread, %_ZSt8_DestroyIPN4entt6entityES1_EvT_S3_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = and i32 %1, 1048575
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = lshr i64 %i.c, 12                        ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIPN4entt6entityESaIS2_EE6resizeEmRKS2_.exit.i

_ZNSt6vectorIPN4entt6entityESaIS2_EE6resizeEmRKS2_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !99
  %i.n = add nuw nsw i64 %i.d, 1
  %i.o = sub nuw nsw i64 %i.n, %i.l
  call void @_ZNSt6vectorIPN4entt6entityESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.g, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !103
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN4entt6entityESaIS2_EE6resizeEmRKS2_.exit.i, %bb.a
  %i.p = phi ptr [ %.pre.i, %_ZNSt6vectorIPN4entt6entityESaIS2_EE6resizeEmRKS2_.exit.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.d ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE15assure_at_leastES1_.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.s = call noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #30
  store ptr %i.s, ptr %i.q, align 8, !tbaa !99
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.v, i8 -1, i64 16384, i1 false), !tbaa !102
  br label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE15assure_at_leastES1_.exit

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE15assure_at_leastES1_.exit: ; preds = %bb.b, %.lr.ph.preheader.i.i.i.i.i.i
  %i.w = phi ptr [ %i.t, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.x = phi ptr [ %i.v, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.r, %bb.b ]
  %i.y = and i64 %i.c, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80 ; 7 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 11 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 13 uses
  %i.ah = ashr exact i64 %i.ag, 2                 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !69
  switch i8 %i.aj, label %bb.t [
    i8 1, label %bb.c
    i8 0, label %bb.e
    i8 2, label %bb.k
  ]

bb.c:                                             ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE15assure_at_leastES1_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !70 ; 4 uses
  %i.am = icmp eq i64 %i.al, 1048575
  %or.cond = or i1 %2, %i.am
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = trunc i64 %i.al to i32
  %i.ao = and i32 %i.an, 1048575
  %i.ap = and i32 %1, -1048576
  %i.aq = or disjoint i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.z, align 4, !tbaa !102
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !102
  store i32 %1, ptr %i.ar, align 4, !tbaa !102
  %i.at = and i32 %i.as, 1048575
  %i.au = zext nneg i32 %i.at to i64
  store i64 %i.au, ptr %i.ak, align 8, !tbaa !70
  br label %bb.t

bb.e:                                             ; preds = %bb.c, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE15assure_at_leastES1_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !116
  %.not.i11 = icmp eq ptr %i.ac, %i.aw
  br i1 %.not.i11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %1, ptr %i.ac, align 4, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.ax, ptr %i.ab, align 8, !tbaa !80
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.ay = icmp eq i64 %i.ag, 9223372036854775804
  br i1 %i.ay, label %bb.h, label %_ZNKSt6vectorIN4entt6entityESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #29
  unreachable

_ZNKSt6vectorIN4entt6entityESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %mul2.i.i = ashr exact i64 %i.ag, 1
  %4 = call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.az = icmp ult i64 %4, %i.ah
  %i.ba = call i64 @llvm.umin.i64(i64 %4, i64 2305843009213693951)
  %i.bb = select i1 %i.az, i64 2305843009213693951, i64 %i.ba ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #30 ; 5 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.ag ; 2 uses
  store i32 %1, ptr %i.be, align 4, !tbaa !102
  %i.bf = icmp sgt i64 %i.ag, 0
  br i1 %i.bf, label %bb.i, label %_ZNSt6vectorIN4entt6entityESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN4entt6entityESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN4entt6entityESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIN4entt6entityESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #27
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN4entt6entityESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bd, ptr %i.aa, align 8, !tbaa !81
  store ptr %i.bg, ptr %i.ab, align 8, !tbaa !80
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bh, ptr %i.av, align 8, !tbaa !116
  %.pre31.a = ptrtoint ptr %i.bd to i64
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.f, %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.af, %bb.f ], [ %.pre31.a, %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.bi = phi ptr [ %i.ax, %bb.f ], [ %i.bg, %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %.pre-phi
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = add nuw nsw i32 %i.bm, 1048575
  %i.bo = and i32 %i.bn, 1048575
  %i.bp = and i32 %1, -1048576
  %i.bq = or disjoint i32 %i.bo, %i.bp
  store i32 %i.bq, ptr %i.z, align 4, !tbaa !102
  br label %bb.t

bb.k:                                             ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE15assure_at_leastES1_.exit
  %i.br = load i32, ptr %i.z, align 4, !tbaa !102
  %i.bs = and i32 %i.br, 1048575                  ; 3 uses
  %i.bt = icmp eq i32 %i.bs, 1048575
  br i1 %i.bt, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !116
  %.not.i12 = icmp eq ptr %i.ac, %i.bv
  br i1 %.not.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %1, ptr %i.ac, align 4, !tbaa !102
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.bw, ptr %i.ab, align 8, !tbaa !80
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit19

bb.n:                                             ; preds = %bb.l
  %i.bx = icmp eq i64 %i.ag, 9223372036854775804
  br i1 %i.bx, label %bb.o, label %_ZNKSt6vectorIN4entt6entityESaIS1_EE12_M_check_lenEmPKc.exit.i.i13

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #29
  unreachable

_ZNKSt6vectorIN4entt6entityESaIS1_EE12_M_check_lenEmPKc.exit.i.i13: ; preds = %bb.n
  %mul2.i.i14 = ashr exact i64 %i.ag, 1
  %5 = call i64 @llvm.umax.i64(i64 %mul2.i.i14, i64 1) ; 2 uses
  %i.by = icmp ult i64 %5, %i.ah
  %i.bz = call i64 @llvm.umin.i64(i64 %5, i64 2305843009213693951)
  %i.ca = select i1 %i.by, i64 2305843009213693951, i64 %i.bz ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #30 ; 6 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.ag ; 2 uses
  store i32 %1, ptr %i.cd, align 4, !tbaa !102
  %i.ce = icmp sgt i64 %i.ag, 0
  br i1 %i.ce, label %bb.p, label %_ZNSt6vectorIN4entt6entityESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i16

bb.p:                                             ; preds = %_ZNKSt6vectorIN4entt6entityESaIS1_EE12_M_check_lenEmPKc.exit.i.i13
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i16

_ZNSt6vectorIN4entt6entityESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i16: ; preds = %bb.p, %_ZNKSt6vectorIN4entt6entityESaIS1_EE12_M_check_lenEmPKc.exit.i.i13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %.not.i17.i.i17 = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i17, label %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i18, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i16
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #27
  %.pre28.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !103
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i18

_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i18: ; preds = %bb.q, %_ZNSt6vectorIN4entt6entityESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i16
  %.pre28.pre = phi ptr [ %.pre28.pre.pre, %bb.q ], [ %i.w, %_ZNSt6vectorIN4entt6entityESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i16 ]
  store ptr %i.cc, ptr %i.aa, align 8, !tbaa !81
  store ptr %i.cf, ptr %i.ab, align 8, !tbaa !80
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.cg, ptr %i.bu, align 8, !tbaa !116
  %.pre32 = ptrtoint ptr %i.cc to i64
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit19

_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit19: ; preds = %bb.m, %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i18
  %.pre-phi33 = phi i64 [ %i.af, %bb.m ], [ %.pre32, %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i18 ]
  %.pre28 = phi ptr [ %i.w, %bb.m ], [ %.pre28.pre, %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i18 ]
  %i.ch = phi ptr [ %i.ad, %bb.m ], [ %i.cc, %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i18 ]
  %i.ci = phi ptr [ %i.bw, %bb.m ], [ %i.cf, %_ZNSt6vectorIN4entt6entityESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i18 ]
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %.pre-phi33
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = lshr i32 %i.cl, 2
  %i.cn = add nuw nsw i32 %i.cm, 1048575
  %i.co = and i32 %i.cn, 1048575                  ; 2 uses
  %i.cp = and i32 %1, -1048576
  %i.cq = or disjoint i32 %i.co, %i.cp
  store i32 %i.cq, ptr %i.z, align 4, !tbaa !102
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.cr = and i32 %1, -1048576
  %i.cs = or disjoint i32 %i.bs, %i.cr
  store i32 %i.cs, ptr %i.z, align 4, !tbaa !102
  %i.ct = zext nneg i32 %i.bs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ct
  store i32 %1, ptr %i.cu, align 4, !tbaa !102
  %.pre = load i32, ptr %i.z, align 4, !tbaa !102
  %i.cv = and i32 %.pre, 1048575
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit19
  %i.cw = phi ptr [ %i.w, %bb.r ], [ %.pre28, %_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit19 ] ; 2 uses
  %i.cx = phi ptr [ %i.ad, %bb.r ], [ %i.ch, %_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit19 ] ; 2 uses
  %i.cy = phi i32 [ %i.cv, %bb.r ], [ %i.co, %_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit19 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !70 ; 4 uses
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !70
  %i.dc = zext nneg i32 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.dc ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.da ; 3 uses
  %i.df = trunc i64 %i.da to i32
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !102 ; 2 uses
  %i.dh = and i32 %i.df, 1048575
  %i.di = and i32 %i.dg, -1048576
  %i.dj = or disjoint i32 %i.di, %i.dh
  %i.dk = and i32 %i.dg, 1048575
  %i.dl = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.dm = lshr i64 %i.dl, 12
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !99
  %i.dp = and i64 %i.dl, 4095
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dp
  store i32 %i.dj, ptr %i.dq, align 4, !tbaa !102
  %i.dr = load i32, ptr %i.de, align 4, !tbaa !102 ; 2 uses
  %i.ds = and i32 %i.dr, -1048576
  %i.dt = or disjoint i32 %i.ds, %i.cy
  %i.du = and i32 %i.dr, 1048575
  %i.dv = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dw = lshr i64 %i.dv, 12
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !99
  %i.dz = and i64 %i.dv, 4095
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dz
  store i32 %i.dt, ptr %i.ea, align 4, !tbaa !102
  %i.eb = load i32, ptr %i.dd, align 4, !tbaa !102
  %i.ec = load i32, ptr %i.de, align 4, !tbaa !102
  store i32 %i.ec, ptr %i.dd, align 4, !tbaa !102
  store i32 %i.eb, ptr %i.de, align 4, !tbaa !102
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit, %bb.d, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE15assure_at_leastES1_.exit
  %.0 = phi i64 [ %i.ah, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE15assure_at_leastES1_.exit ], [ %i.ah, %_ZNSt6vectorIN4entt6entityESaIS1_EE9push_backERKS1_.exit ], [ %i.al, %bb.d ], [ %i.da, %bb.s ]
  %i.ed = add i64 %.0, 1
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.ed, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE8bind_anyENS_9basic_anyILm16ELm8EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofreeobj noundef align 8 dereferenceable(40) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %.sroa.08.012.i.i = phi ptr [ %i.g, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.sroa.08.012.i.i, align 8, !tbaa !99 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 16384) #27, !inline_history !115
  store ptr null, ptr %.sroa.08.012.i.i, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i: ; preds = %bb.c, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27, !inline_history !115
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i:   ; preds = %bb.d, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27, !inline_history !115
  br label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.322) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !81   ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 2
  %i.j = icmp ult i64 %i.i, %1
  br i1 %i.j, label %_ZNSt12_Vector_baseIN4entt6entityESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4entt6entityESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4entt6entityESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g                       ; 3 uses
end_hunk_0
