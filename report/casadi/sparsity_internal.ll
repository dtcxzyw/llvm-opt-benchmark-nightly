Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity_internal?download=true
inline.NumInlined: 4371
inline.NumDeleted: 628
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK6casadi16SparsityInternal13_appendVectorERKS0_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread: ; preds = %bb.d
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !76
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.cs = load i64, ptr %i.ck, align 8, !tbaa !76
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.ct) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.10, label %bb.ab, label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.10, label %bb.ab, label %bb.au

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105.ph = phi { ptr, i32 } [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn105.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.m) #29
  br label %bb.au

bb.ac:                                            ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !43 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.cw = getelementptr i8, ptr %i.d, i64 32      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !alias.scope !502
  %.idx.i = shl nsw i64 %i.cv, 3                  ; 6 uses
  %i.cx = icmp ugt i64 %.idx.i, 9223372036854775800
  br i1 %i.cx, label %.noexc.i.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.ac
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27, !noalias !502
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.ac
  %.not.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !54, !alias.scope !502
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #28, !noalias !502 ; 6 uses
  store ptr %i.da, ptr %17, align 8, !tbaa !53, !alias.scope !502
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !54, !alias.scope !502
  %i.dd = icmp samesign ugt i64 %.idx.i, 8
  br i1 %i.dd, label %bb.ad, label %bb.ae, !prof !99

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.da, ptr align 8 %i.cw, i64 %.idx.i, i1 false), !noalias !502
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

bb.ae:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  %i.de = load i64, ptr %i.cw, align 8, !tbaa !43, !noalias !502
  store i64 %i.de, ptr %i.da, align 8, !tbaa !43, !noalias !502
  br label %_ZNK6casadi16SparsityInternal7get_rowEv.exit

_ZNK6casadi16SparsityInternal7get_rowEv.exit:     ; preds = %.thread.i.i.i, %bb.ad, %bb.ae
  %i.df = phi ptr [ %i.da, %bb.ad ], [ null, %.thread.i.i.i ], [ %i.da, %bb.ae ] ; 9 uses
  %i.dg = phi ptr [ %i.db, %bb.ad ], [ %i.cy, %.thread.i.i.i ], [ %i.db, %bb.ae ] ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !55, !alias.scope !502
  %i.di = load ptr, ptr %i.h, align 8, !tbaa !69  ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !43 ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.di, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 24     ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dk
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !43
  %i.dq = add nsw i64 %i.dp, %i.cv                ; 4 uses
  %i.dr = ptrtoint ptr %i.dg to i64
  %i.ds = ptrtoint ptr %i.df to i64               ; 4 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 5 uses
  %i.du = ashr exact i64 %i.dt, 3                 ; 7 uses
  %i.dv = icmp ugt i64 %i.dq, %i.du
  br i1 %i.dv, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %_ZNK6casadi16SparsityInternal7get_rowEv.exit
  %i.dw = sub nuw i64 %i.dq, %i.du                ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dy = icmp ult i64 %i.du, 1152921504606846976
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = xor i64 %i.du, 1152921504606846975
  %i.ea = icmp ult i64 %i.dz, %i.dw
  br i1 %i.ea, label %bb.ag, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.noexc101 unwind label %bb.al

.noexc101:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.af
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.dw)
  %i.eb = add nuw nsw i64 %.sroa.speculated.i.i, %i.du
  %i.ec = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975) ; 2 uses
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #28
          to label %.noexc102 unwind label %bb.al ; 6 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dt ; 3 uses
  store i64 0, ptr %i.ef, align 8, !tbaa !43
  %i.eg = add nsw i64 %i.dw, -1                   ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc102
  %i.ei = getelementptr i8, ptr %i.ef, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.eg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ei, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !43
  br label %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc102
  %i.ej = icmp sgt i64 %i.dt, 0
  br i1 %i.ej, label %bb.ah, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

bb.ah:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr align 8 %i.df, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i: ; preds = %bb.ah, %_ZSt27__uninitialized_default_n_aIPxmxET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.df, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dt) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i: ; preds = %bb.ai, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  store ptr %i.ee, ptr %17, align 8, !tbaa !53
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dw ; 2 uses
  store ptr %i.ek, ptr %i.dh, align 8, !tbaa !55
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.el, ptr %i.dx, align 8, !tbaa !54
  %.pre118 = ptrtoint ptr %i.ee to i64
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.aj:                                            ; preds = %_ZNK6casadi16SparsityInternal7get_rowEv.exit
  %i.em = icmp ult i64 %i.dq, %i.du
  br i1 %i.em, label %bb.ak, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.ak:                                            ; preds = %bb.aj
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dq ; 3 uses
  %.not.i.i = icmp eq ptr %i.dg, %i.en
  br i1 %.not.i.i, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ak
  store ptr %i.en, ptr %i.dh, align 8, !tbaa !55
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i, %bb.aj, %bb.ak, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %i.ds, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %.pre118, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ], [ %i.ds, %bb.aj ], [ %i.ds, %bb.ak ]
  %i.eo = phi ptr [ %i.df, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ee, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ], [ %i.df, %bb.aj ], [ %i.df, %bb.ak ] ; 6 uses
  %i.ep = phi ptr [ %i.en, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ek, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ], [ %i.dg, %bb.aj ], [ %i.dg, %bb.ak ]
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %.pre-phi                ; 2 uses
  %i.es = ashr exact i64 %i.er, 3                 ; 7 uses
  %i.et = icmp ult i64 %i.cv, %i.es
  br i1 %i.et, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.eu = load ptr, ptr %i.c, align 8, !tbaa !53  ; 6 uses
  %i.ev = sub nuw i64 %i.es, %i.cv                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ev, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ew = shl i64 %i.cv, 3                        ; 2 uses
  %i.ex = getelementptr i8, ptr %i.eo, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr i8, ptr %i.eo, i64 %i.er  ; 2 uses
  %i.ez = add i64 %i.dk, %i.es
  %i.fa = shl i64 %i.ez, 3
  %i.fb = add i64 %i.fa, 24
  %i.fc = sub i64 %i.fb, %i.ew
  %i.fd = getelementptr i8, ptr %i.di, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.eu, i64 8
  %bound0 = icmp ult ptr %i.ex, %i.fd
  %bound1 = icmp ult ptr %i.dm, %i.ey
  %found.conflict = and i1 %bound0, %bound1
  %bound0168 = icmp ult ptr %i.ex, %i.fe
  %bound1169 = icmp ult ptr %i.eu, %i.ey
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx = or i1 %found.conflict, %found.conflict170
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ev, -4                      ; 3 uses
  %i.ff = add i64 %i.cv, %n.vec
  %i.fg = load i64, ptr %i.eu, align 8, !tbaa !43, !alias.scope !503
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.fg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %index ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %wide.load = load <2 x i64>, ptr %i.fi, align 8, !tbaa !43, !alias.scope !504
  %wide.load171 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !43, !alias.scope !504
  %i.fk = add nsw <2 x i64> %broadcast.splat, %wide.load
  %i.fl = add nsw <2 x i64> %broadcast.splat, %wide.load171
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %index ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <2 x i64> %i.fk, ptr %i.fm, align 8, !tbaa !43, !alias.scope !505, !noalias !506
  store <2 x i64> %i.fl, ptr %i.fn, align 8, !tbaa !43, !alias.scope !505, !noalias !506
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !499

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0117.ph = phi i64 [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph ], [ %i.ff, %middle.block ] ; 6 uses
  %i.fp = sub i64 %i.es, %.0117.ph
  %.neg = add i64 %.0117.ph, 1
  %xtraiter = and i64 %i.fp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fq = sub nuw nsw i64 %.0117.ph, %i.cv
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !43
  %i.ft = load i64, ptr %i.eu, align 8, !tbaa !43
  %i.fu = add nsw i64 %i.ft, %i.fs
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0117.ph
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !43
  %i.fw = add nuw nsw i64 %.0117.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0117.unr = phi i64 [ %.0117.ph, %scalar.ph.preheader ], [ %i.fw, %scalar.ph.prol ]
  %i.fx = icmp eq i64 %i.es, %.neg
  br i1 %i.fx, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.fy = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %.noexc94 unwind label %bb.ap  ; 4 uses

.noexc94:                                         ; preds = %._crit_edge
  store ptr %i.fy, ptr %18, align 8, !tbaa !53
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !54
  store i64 0, ptr %i.fy, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !55
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i64 %i.es, ptr %i.gc, align 8, !tbaa !43
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !43
  %i.gf = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !43
  %i.gh = add nsw i64 %i.gg, %i.ge
  invoke void @_ZN6casadi8SparsityC1ExxRKSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.gh, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %17, i1 noundef zeroext false)
          to label %bb.am unwind label %bb.aq

bb.al:                                            ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i, %bb.ag
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0117 = phi i64 [ %i.gw, %scalar.ph ], [ %.0117.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.gj = sub nuw nsw i64 %.0117, %i.cv
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !43
  %i.gm = load i64, ptr %i.eu, align 8, !tbaa !43
  %i.gn = add nsw i64 %i.gm, %i.gl
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0117
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !43
  %i.gp = add nuw nsw i64 %.0117, 1               ; 2 uses
  %i.gq = sub nuw nsw i64 %i.gp, %i.cv
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !43
  %i.gt = load i64, ptr %i.eu, align 8, !tbaa !43
  %i.gu = add nsw i64 %i.gt, %i.gs
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.gp
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !43
  %i.gw = add nuw nsw i64 %.0117, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gw, %i.es
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !500

bb.am:                                            ; preds = %.noexc94
  %i.gx = load ptr, ptr %18, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gy = load ptr, ptr %i.ga, align 8, !tbaa !54
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gx to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hb) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.hc = load ptr, ptr %17, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIxSaIxEED2Ev.exit96, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !54
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit96

_ZNSt6vectorIxSaIxEED2Ev.exit96:                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  ret void

bb.ap:                                            ; preds = %._crit_edge
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit98

bb.aq:                                            ; preds = %.noexc94
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = load ptr, ptr %18, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIxSaIxEED2Ev.exit98, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hl = load ptr, ptr %i.ga, align 8, !tbaa !54
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.ho) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit98

_ZNSt6vectorIxSaIxEED2Ev.exit98:                  ; preds = %bb.ar, %bb.aq, %bb.ap
  %.pn57 = phi { ptr, i32 } [ %i.hi, %bb.ap ], [ %i.hj, %bb.aq ], [ %i.hj, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %.pre = load ptr, ptr %17, align 8, !tbaa !53
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit98, %bb.al
  %i.hp = phi ptr [ %.pre, %_ZNSt6vectorIxSaIxEED2Ev.exit98 ], [ %i.df, %bb.al ] ; 3 uses
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %_ZNSt6vectorIxSaIxEED2Ev.exit98 ], [ %i.gi, %bb.al ]
  %.not.i.i.i99 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIxSaIxEED2Ev.exit100, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hq = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !54
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hp to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.hu) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit100

_ZNSt6vectorIxSaIxEED2Ev.exit100:                 ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.au

end_hunk_0
