Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/key_value_metadata?download=true
inline.NumInlined: 1342
inline.NumDeleted: 553
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow16KeyValueMetadata10DeleteManyESt6vectorIlSaIlEE:bb.a
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 5                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63
  %.not.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit
  store i64 %i.s, ptr %i.l, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.b, align 8, !tbaa !62
  %.pre48 = load ptr, ptr %2, align 8, !tbaa !65
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.d:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !65     ; 4 uses
  %i.x = ptrtoint ptr %i.l to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.e, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #24
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #25 ; 5 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store i64 %i.s, ptr %i.ai, align 8, !tbaa !64
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.f, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.an) #27
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !65
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ao, ptr %i.t, align 8, !tbaa !63
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %bb.c, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i
  %i.ap = phi ptr [ %.pre48, %bb.c ], [ %i.ah, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ] ; 2 uses
  %i.aq = phi ptr [ %i.v, %bb.c ], [ %i.ak, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp sgt i64 %i.at, 8
  br i1 %i.au, label %.lr.ph47, label %._crit_edge

.lr.ph47:                                         ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.n

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38
  %.pre49 = load ptr, ptr %i.b, align 8, !tbaa !62
  %.pre50 = load ptr, ptr %2, align 8, !tbaa !65
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %i.aw = phi ptr [ %.pre50, %.loopexit.loopexit ], [ %i.cn, %bb.n ] ; 2 uses
  %i.ax = phi ptr [ %.pre49, %.loopexit.loopexit ], [ %i.co, %bb.n ] ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = add nsw i64 %i.bb, -1
  %i.bd = icmp slt i64 %i.cp, %i.bc
  br i1 %i.bd, label %bb.n, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %.019.lcssa = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ], [ %i.cp, %.loopexit ]
  %i.be = sub nsw i64 %i.s, %.019.lcssa           ; 8 uses
  %i.bf = load ptr, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !38    ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 5                 ; 3 uses
  %i.bl = icmp ugt i64 %i.be, %i.bk
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.bm = sub nuw i64 %i.be, %i.bk
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bm)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.i:                                             ; preds = %._crit_edge
  %i.bn = icmp ult i64 %i.be, %i.bk
  br i1 %i.bn, label %bb.j, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %i.be ; 3 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.bo
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bo, %bb.j ] ; 3 uses
  %i.bp = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !37
  %i.bt = add i64 %i.bs, 1
  tail call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, %i.bf
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.bo, ptr %i.m, align 8, !tbaa !28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !28 ; 3 uses
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !38 ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 5                 ; 3 uses
  %i.cd = icmp ugt i64 %i.be, %i.cc
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.ce = sub nuw i64 %i.be, %i.cc
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 noundef %i.ce)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit28

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.cf = icmp ult i64 %i.be, %i.cc
  br i1 %i.cf, label %bb.m, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit28

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.be ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.bx, %i.cg
  br i1 %.not.i.i20, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit28, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %bb.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i24
  %.05.i.i.i.i22 = phi ptr [ %i.cm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i24 ], [ %i.cg, %bb.m ] ; 3 uses
  %i.ch = load ptr, ptr %.05.i.i.i.i22, align 8, !tbaa !34 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i22, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i23: ; preds = %.lr.ph.i.i.i.i21
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !37
  %i.cl = add i64 %i.ck, 1
  tail call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i24

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i23
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i22, i64 32 ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.cm, %i.bx
  br i1 %.not.i.i.i.i25, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i26, label %.lr.ph.i.i.i.i21, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i26: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i24
  store ptr %i.cg, ptr %i.bw, align 8, !tbaa !28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit28

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit28: ; preds = %bb.k, %bb.l, %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i26
  store ptr null, ptr %0, align 8, !tbaa !57, !alias.scope !119
  ret void

bb.n:                                             ; preds = %.lr.ph47, %.loopexit
  %i.cn = phi ptr [ %i.ap, %.lr.ph47 ], [ %i.aw, %.loopexit ] ; 3 uses
  %i.co = phi ptr [ %i.aq, %.lr.ph47 ], [ %i.ax, %.loopexit ]
  %.01846 = phi i64 [ 0, %.lr.ph47 ], [ %i.cp, %.loopexit ] ; 3 uses
  %i.cp = add nuw nsw i64 %.01846, 1              ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.01846
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cp
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !64 ; 2 uses
  %.042 = add nsw i64 %i.cr, 1                    ; 2 uses
  %i.cu = icmp slt i64 %.042, %i.ct
  br i1 %i.cu, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.n
  %3 = xor i64 %.01846, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38
  %.0.in43 = phi i64 [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38 ], [ %.042, %.lr.ph.preheader ] ; 4 uses
  %i.cv = load ptr, ptr %1, align 8, !tbaa !38    ; 2 uses
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %.0.in43 ; 9 uses
  %4 = add i64 %.0.in43, %3                       ; 2 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %4 ; 8 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !34 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !34 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 4 uses
  %i.dd = icmp eq ptr %i.db, %i.dc                ; 2 uses
  br i1 %i.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.lr.ph
  br i1 %i.dd, label %bb.o, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.lr.ph
  br i1 %i.dd, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !35 ; 3 uses
  %i.dg = icmp ult i64 %i.df, 16
  tail call void @llvm.assume(i1 %i.dg)
  switch i64 %i.df, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.dh = load i8, ptr %i.db, align 1, !tbaa !37
  store i8 %i.dh, ptr %i.cy, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr align 1 %i.db, i64 %i.df, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.di = load i64, ptr %i.de, align 8, !tbaa !35 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !35
  %i.dk = load ptr, ptr %i.cx, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 0, ptr %i.dl, align 1, !tbaa !37
  %.pre.i = load ptr, ptr %i.cw, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !34
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.do = load <2 x i64>, ptr %i.dn, align 8, !tbaa !37
  store <2 x i64> %i.do, ptr %i.dm, align 8, !tbaa !37
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dp = load i64, ptr %i.cz, align 8, !tbaa !37
  store ptr %i.db, ptr %i.cx, align 8, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.ds = load <2 x i64>, ptr %i.dq, align 8, !tbaa !37
  store <2 x i64> %i.ds, ptr %i.dr, align 8, !tbaa !37
  %.not.i29 = icmp eq ptr %i.cy, null
  br i1 %.not.i29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !34
  store i64 %i.dp, ptr %i.dc, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.dc, ptr %i.cw, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.r, %bb.s
  %i.dt = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cy, %bb.r ], [ %i.dc, %bb.s ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 0, ptr %i.du, align 8, !tbaa !35
  store i8 0, ptr %i.dt, align 1, !tbaa !37
  %i.dv = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.dv, i64 %.0.in43 ; 9 uses
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dv, i64 %4 ; 8 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !34 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  %i.eb = load ptr, ptr %i.dw, align 8, !tbaa !34 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 4 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec                ; 2 uses
  br i1 %i.ea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ed, label %bb.t, label %.thread.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ed, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i31

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i30
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !35 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 16
  tail call void @llvm.assume(i1 %i.eg)
  switch i64 %i.ef, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.eh = load i8, ptr %i.eb, align 1, !tbaa !37
  store i8 %i.eh, ptr %i.dy, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %i.eb, i64 %i.ef, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34: ; preds = %bb.v, %bb.u, %bb.t
  %i.ei = load i64, ptr %i.ee, align 8, !tbaa !35 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !35
  %i.ek = load ptr, ptr %i.dx, align 8, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store i8 0, ptr %i.el, align 1, !tbaa !37
  %.pre.i35 = load ptr, ptr %i.dw, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

.thread.i37:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i36
  %i.em = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !34
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eo = load <2 x i64>, ptr %i.en, align 8, !tbaa !37
  store <2 x i64> %i.eo, ptr %i.em, align 8, !tbaa !37
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i30
  %i.ep = load i64, ptr %i.dz, align 8, !tbaa !37
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !34
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.es = load <2 x i64>, ptr %i.eq, align 8, !tbaa !37
  store <2 x i64> %i.es, ptr %i.er, align 8, !tbaa !37
  %.not.i32 = icmp eq ptr %i.dy, null
  br i1 %.not.i32, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i31
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !34
  store i64 %i.ep, ptr %i.ec, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i31, %.thread.i37
  store ptr %i.ec, ptr %i.dw, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34, %bb.w, %bb.x
  %i.et = phi ptr [ %.pre.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i34 ], [ %i.dy, %bb.w ], [ %i.ec, %bb.x ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 0, ptr %i.eu, align 8, !tbaa !35
  store i8 0, ptr %i.et, align 1, !tbaa !37
  %.0 = add nsw i64 %.0.in43, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %.0, %i.ct
  br i1 %exitcond.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !118
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16KeyValueMetadata6DeleteESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %2, ptr %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %.fr17.i = freeze i64 %2                        ; 4 uses
  store i64 %.fr17.i, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !38     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5                   ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = icmp eq i64 %.fr17.i, 0
  br i1 %i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.b
  %.01015.us.i = phi i64 [ %i.n, %bb.b ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.01015.us.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !35
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.n = add nuw i64 %.01015.us.i, 1              ; 2 uses
  %exitcond23.not.i = icmp eq i64 %i.n, %i.h
  br i1 %exitcond23.not.i, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !1

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.c
  %.01015.i = phi i64 [ %i.u, %bb.c ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.01015.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !35
  %i.r = icmp eq i64 %.fr17.i, %i.q
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %bb.c

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.split.i
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !34
  %bcmp.i.i = tail call i32 @bcmp(ptr readonly %3, ptr %i.s, i64 %.fr17.i)
  %i.t = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.t, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph.split.i
  %i.u = add nuw i64 %.01015.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not.i, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.split.i, !llvm.loop !1

_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph.split.us.i
  %.us-phi.i = phi i64 [ %.01015.us.i, %.lr.ph.split.us.i ], [ %.01015.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ] ; 2 uses
  %i.v = and i64 %.us-phi.i, 2147483648
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.d, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @_ZN5arrow6Status8FromArgsIJRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %bb.e

bb.d:                                             ; preds = %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.w = and i64 %.us-phi.i, 2147483647           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.w
  %i.y = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %i.x), !noalias !124 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43, !noalias !124
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.w
  %i.ac = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.ab), !noalias !124 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !57, !alias.scope !125
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow16KeyValueMetadata3SetENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !34     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !35
  %.fr17.i = freeze i64 %i.c                      ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !38     ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 5                   ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = icmp eq i64 %.fr17.i, 0
  br i1 %i.k, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.b
  %.01015.us.i = phi i64 [ %i.p, %bb.b ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.01015.us.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.p = add nuw i64 %.01015.us.i, 1              ; 2 uses
  %exitcond23.not.i = icmp eq i64 %i.p, %i.j
  br i1 %exitcond23.not.i, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !1

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.c
  %.01015.i = phi i64 [ %i.w, %bb.c ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.01015.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35
  %i.t = icmp eq i64 %.fr17.i, %i.s
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %bb.c

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.split.i
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !34
  %bcmp.i.i = tail call i32 @bcmp(ptr readonly %i.a, ptr %i.u, i64 %.fr17.i)
  %i.v = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.v, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph.split.i
  %i.w = add nuw i64 %.01015.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.j
  br i1 %exitcond.not.i, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.split.i, !llvm.loop !1

_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %.lr.ph.split.us.i
  %.us-phi.i = phi i64 [ %.01015.us.i, %.lr.ph.split.us.i ], [ %.01015.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ] ; 2 uses
  %i.x = and i64 %.us-phi.i, 2147483648
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.h, label %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.a, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.ab = icmp ult i64 %.fr17.i, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %.fr17.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK5arrow16KeyValueMetadata7FindKeyESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  store ptr %i.a, ptr %4, align 8, !tbaa !34
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !37
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.fr17.i, ptr %i.ae, align 8, !tbaa !35
  store ptr %i.z, ptr %2, align 8, !tbaa !34
  store i64 0, ptr %i.b, align 8, !tbaa !35
  store i8 0, ptr %i.z, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !32
  %i.ag = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !35 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.ag, ptr %5, align 8, !tbaa !34
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !37
  store i64 %i.an, ptr %i.af, align 8, !tbaa !37
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5
  %i.ao = phi i64 [ %i.ak, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !35
end_hunk_0
