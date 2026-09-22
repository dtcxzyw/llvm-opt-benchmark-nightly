Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/download?download=true
inline.NumInlined: 6887
inline.NumDeleted: 2501
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZL17find_best_siblingRKSt6vectorIN8hf_cache7hf_fileESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_SD_:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31, !noalias !1421
  %i.bf = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.bg = tail call ptr @__errno_location() #35   ; 6 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !92 ; 2 uses
  store i32 0, ptr %i.bg, align 4, !tbaa !92
  %i.bi = call noundef i64 @__isoc23_strtol(ptr noundef %i.bf, ptr noundef nonnull %i.b, i32 noundef 10) ; 2 uses
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.bk = icmp eq ptr %i.bj, %i.bf
  br i1 %i.bk, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.52) #33
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %.critedge.i.i, %bb.l
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load i32, ptr %i.bg, align 4, !tbaa !92
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.o:                                             ; preds = %bb.n
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !92
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.bo = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.as
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

bb.p:                                             ; preds = %bb.k
  %i.bq = load i32, ptr %i.bg, align 4, !tbaa !92 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 34
  %i.bs = add i64 %i.bi, -2147483648
  %i.bt = icmp ult i64 %i.bs, -4294967296
  %or.cond.i.i = or i1 %i.bt, %i.br
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.r

.critedge.i.i:                                    ; preds = %bb.p
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.52) #33
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %.critedge.i.i
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bu = icmp eq i32 %i.bq, 0
  br i1 %i.bu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !92
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bv = trunc nsw i64 %i.bi to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.bw = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.as
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.by = load i64, ptr %i.as, align 8, !tbaa !62
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.critedge

bb.u:                                             ; preds = %.noexc10.i.i, %bb.h
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
  %i.cb = load i64, ptr %i.as, align 8, !tbaa !62
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.cc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.u ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.bl, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.bb

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.cd = invoke fastcc noundef i32 @_ZL18extract_quant_bitsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.critedge unwind label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.critedge:                                        ; preds = %bb.f, %._crit_edge.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.099 = phi i32 [ %i.cd, %._crit_edge.thread ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke fastcc void @_ZL12string_splitINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIT_SaIS7_EERKS5_c(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 47)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %.critedge
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !163 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -32 ; 2 uses
  %i.ci = load ptr, ptr %1, align 8, !tbaa !173   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !173 ; 2 uses
  %.not2157 = icmp eq ptr %i.ci, %i.ck
  br i1 %.not2157, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.z

._crit_edge65.loopexit:                           ; preds = %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread
  %.pre68 = load ptr, ptr %i.cf, align 8, !tbaa !52
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %._crit_edge65.loopexit, %bb.w
  %i.cu = phi ptr [ %.pre68, %._crit_edge65.loopexit ], [ %i.cg, %bb.w ] ; 2 uses
  %i.cv = load ptr, ptr %6, align 8, !tbaa !53    ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.cv, %i.cu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge65, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.db, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.cv, %._crit_edge65 ] ; 3 uses
  %i.cw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !59 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !62
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.db, %i.cu
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !53
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge65
  %i.dc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cv, %._crit_edge65 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !64
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.di = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.v
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.dk = load i64, ptr %i.v, align 8, !tbaa !62
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.y:                                             ; preds = %.critedge
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.z:                                             ; preds = %.lr.ph64, %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread
  %.06862 = phi i64 [ 0, %.lr.ph64 ], [ %.3, %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread ] ; 7 uses
  %.06961 = phi i32 [ 0, %.lr.ph64 ], [ %.372, %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread ] ; 6 uses
  %.07359 = phi i8 [ 0, %.lr.ph64 ], [ %.376, %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread ] ; 7 uses
  %.07759 = phi i1 [ false, %.lr.ph64 ], [ %.380, %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread ] ; 5 uses
  %.sroa.011.058 = phi ptr [ %i.ci, %.lr.ph64 ], [ %i.is, %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread ] ; 13 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.011.058, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !60 ; 2 uses
  %.not.i = icmp ult i64 %i.do, 5
  br i1 %.not.i, label %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.z
  %i.dp = load ptr, ptr %.sroa.011.058, align 8, !tbaa !59
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.do
  %i.dr = getelementptr i8, ptr %i.dq, i64 -5     ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 1
  %i.dt = xor i32 %i.ds, 1969710894
  %i.du = getelementptr i8, ptr %i.dr, i64 4
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i32
  %i.dx = xor i32 %i.dw, 102
  %i.dy = or i32 %i.dt, %i.dx
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = zext i1 %i.dz to i32
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit, label %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread

_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.ec = load ptr, ptr %3, align 8, !tbaa !59
  %i.ed = load i64, ptr %i.cl, align 8, !tbaa !60
  %i.ee = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.058, ptr noundef %i.ec, i64 noundef 0, i64 noundef %i.ed) #31
  %i.ef = icmp eq i64 %i.ee, -1
  br i1 %i.ef, label %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke fastcc void @_ZL12string_splitINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIT_SaIS7_EERKS5_c(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.058, i8 noundef signext 47)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load ptr, ptr %i.cm, align 8, !tbaa !163 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -32 ; 4 uses
  %i.ei = load ptr, ptr %6, align 8, !tbaa !163   ; 2 uses
  %i.ej = load ptr, ptr %7, align 8, !tbaa !163   ; 5 uses
  %i.ek = icmp ne ptr %i.ei, %i.ch
  %i.el = icmp ne ptr %i.ej, %i.eh
  %or.cond9.i.i = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond9.i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.ab, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i
  %.sroa.05.011.i.i = phi ptr [ %i.ev, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i ], [ %i.ei, %bb.ab ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %i.ew, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i ], [ %i.ej, %bb.ab ] ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !60 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !60
  %i.eq = icmp eq i64 %i.en, %i.ep
  br i1 %i.eq, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.er = icmp eq i64 %i.en, 0
  br i1 %i.er, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i: ; preds = %bb.ac
  %i.es = load ptr, ptr %.sroa.02.010.i.i, align 8, !tbaa !59
  %i.et = load ptr, ptr %.sroa.05.011.i.i, align 8, !tbaa !59
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.et, ptr %i.es, i64 %i.en)
  %i.eu = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.eu, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i, label %.loopexit

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i, %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i.i, i64 32 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i.i, i64 32 ; 3 uses
  %i.ex = icmp ne ptr %i.ev, %i.ch
  %i.ey = icmp ne ptr %i.ew, %i.eh
  %or.cond.i.i133 = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond.i.i133, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !1414

.loopexit:                                        ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i, %.lr.ph.i.i, %bb.ab
  %.sroa.02.0.lcssa.i.i = phi ptr [ %i.ej, %bb.ab ], [ %.sroa.02.010.i.i, %.lr.ph.i.i ], [ %i.ew, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i ], [ %.sroa.02.010.i.i, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i ]
  %.not22 = icmp eq ptr %.sroa.02.0.lcssa.i.i, %i.eh
  br i1 %.not22, label %bb.ae, label %bb.av

bb.ad:                                            ; preds = %bb.aa
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ae:                                            ; preds = %.loopexit
  %i.fa = ptrtoint ptr %i.eh to i64
  %i.fb = ptrtoint ptr %i.ej to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 5                 ; 3 uses
  %i.fe = invoke fastcc noundef i32 @_ZL18extract_quant_bitsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.011.058)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ff = sub nsw i32 %i.fe, %.099
  %i.fg = call i32 @llvm.abs.i32(i32 %i.ff, i1 true) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store ptr %i.cn, ptr %8, align 8, !tbaa !56
  %i.fh = load ptr, ptr %.sroa.011.058, align 8, !tbaa !59 ; 2 uses
  %i.fi = load i64, ptr %i.dn, align 8, !tbaa !60 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.fi, ptr %i.a, align 8, !tbaa !61
  %i.fj = icmp ugt i64 %i.fi, 15
  br i1 %i.fj, label %.noexc.i135, label %._crit_edge.i.i134

.noexc.i135:                                      ; preds = %bb.af
  %i.fk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc136 unwind label %bb.ak ; 2 uses

.noexc136:                                        ; preds = %.noexc.i135
  store ptr %i.fk, ptr %8, align 8, !tbaa !59
  %i.fl = load i64, ptr %i.a, align 8, !tbaa !61
  store i64 %i.fl, ptr %i.cn, align 8, !tbaa !62
  br label %._crit_edge.i.i134

._crit_edge.i.i134:                               ; preds = %.noexc136, %bb.af
  %i.fm = phi ptr [ %i.fk, %.noexc136 ], [ %i.cn, %bb.af ] ; 2 uses
  switch i64 %i.fi, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i134
  %i.fn = load i8, ptr %i.fh, align 1, !tbaa !62
  store i8 %i.fn, ptr %i.fm, align 1, !tbaa !62
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i134
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr align 1 %i.fh, i64 %i.fi, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i134
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  store i64 %i.fo, ptr %i.co, align 8, !tbaa !60
  %i.fp = load ptr, ptr %8, align 8, !tbaa !59
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fo
  store i8 0, ptr %i.fq, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.fr = load ptr, ptr %8, align 8, !tbaa !59    ; 2 uses
  %i.fs = load i64, ptr %i.co, align 8, !tbaa !60 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fs
  %.not2352 = icmp samesign eq i64 %i.fs, 0
  br i1 %.not2352, label %._crit_edge56, label %.lr.ph55

._crit_edge56:                                    ; preds = %.lr.ph55, %bb.ai
  %i.fu = load i64, ptr %i.ac, align 8, !tbaa !60 ; 4 uses
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %.critedge118, label %bb.al

bb.aj:                                            ; preds = %bb.ae
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ak:                                            ; preds = %.noexc.i135
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

.lr.ph55:                                         ; preds = %bb.ai, %.lr.ph55
  %.sroa.01.053 = phi ptr [ %i.gc, %.lr.ph55 ], [ %i.fr, %bb.ai ] ; 3 uses
  %i.fy = load i8, ptr %.sroa.01.053, align 1, !tbaa !62
  %i.fz = zext i8 %i.fy to i32
  %i.ga = call i32 @toupper(i32 noundef %i.fz) #36
  %i.gb = trunc i32 %i.ga to i8
  store i8 %i.gb, ptr %.sroa.01.053, align 1, !tbaa !62
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.01.053, i64 1 ; 2 uses
  %.not23 = icmp eq ptr %i.gc, %i.ft
  br i1 %.not23, label %._crit_edge56, label %.lr.ph55

bb.al:                                            ; preds = %._crit_edge56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.gd = load ptr, ptr %4, align 8, !tbaa !59, !noalias !1422
  store ptr %i.cp, ptr %10, align 8, !tbaa !56, !alias.scope !1423
  store i64 0, ptr %i.cq, align 8, !tbaa !60, !alias.scope !1423
  store i8 0, ptr %i.cp, align 8, !tbaa !62, !alias.scope !1423
  %i.ge = add i64 %i.fu, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ge)
          to label %bb.am unwind label %.loopexit26.a

bb.am:                                            ; preds = %bb.al
  %i.gf = load i64, ptr %i.cq, align 8, !tbaa !60, !alias.scope !1423
  %i.gg = icmp eq i64 %i.gf, 4611686018427387903
  br i1 %i.gg, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.am
  %i.gh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.94, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit26.a ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.gi = load i64, ptr %i.cq, align 8, !tbaa !60, !alias.scope !1423
  %i.gj = sub i64 4611686018427387903, %i.gi
  %i.gk = icmp ult i64 %i.gj, %i.fu
  br i1 %i.gk, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #33
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.gl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.gd, i64 noundef %i.fu)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit26.a ; 0 uses

.loopexit26.a:                                    ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp, %.loopexit26.a
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit26.a ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.gm = load ptr, ptr %10, align 8, !tbaa !59, !alias.scope !1423 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.cp
  br i1 %i.gn, label %.body138, label %.body138.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.go = load i64, ptr %i.cq, align 8, !tbaa !60, !noalias !1424
  %i.gp = icmp eq i64 %i.go, 4611686018427387903
  br i1 %i.gp, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ao:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #33
          to label %.noexc141.a unwind label %.loopexit.split-lp28

.noexc141.a:                                      ; preds = %bb.ao
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.gq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.278, i64 noundef 1)
          to label %.noexc142 unwind label %.loopexit27 ; 6 uses

.noexc142:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.cr, ptr %9, align 8, !tbaa !56, !alias.scope !1424
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !59 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 5 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

bb.ap:                                            ; preds = %.noexc142
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !60 ; 3 uses
  %i.gw = icmp ult i64 %i.gv, 16
  call void @llvm.assume(i1 %i.gw)
  %i.gx = add nuw nsw i64 %i.gv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.gs, i64 %i.gx, i1 false)
  br label %.critedge116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %.noexc142
  store ptr %i.gr, ptr %9, align 8, !tbaa !59, !alias.scope !1424
  %i.gy = load i64, ptr %i.gs, align 8, !tbaa !62
  store i64 %i.gy, ptr %i.cr, align 8, !tbaa !62, !alias.scope !1424
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  br label %.critedge116

.critedge116:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.ap
  %i.gz = phi i64 [ %i.gv, %bb.ap ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i64 %i.gz, ptr %i.cs, align 8, !tbaa !60, !alias.scope !1424
  store ptr %i.gs, ptr %i.gq, align 8, !tbaa !59
  store i64 0, ptr %i.ha, align 8, !tbaa !60
  store i8 0, ptr %i.gs, align 8, !tbaa !62
  %i.hb = load ptr, ptr %9, align 8, !tbaa !59
  %i.hc = load i64, ptr %i.cs, align 8, !tbaa !60
  %i.hd = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.hb, i64 noundef 0, i64 noundef %i.hc) #31
  %i.he = icmp ne i64 %i.hd, -1
  %i.hf = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.cr
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %.critedge116
  %i.hh = load i64, ptr %i.cr, align 8, !tbaa !62
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %.critedge116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  %i.hj = load ptr, ptr %10, align 8, !tbaa !59   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.cp
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.hl = load i64, ptr %i.cp, align 8, !tbaa !62
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.critedge118

.critedge118:                                     ; preds = %._crit_edge56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.hn = phi i1 [ %i.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ false, %._crit_edge56 ] ; 2 uses
  %11 = zext i1 %i.hn to i8                       ; 2 uses
  %i.ho = icmp ule i64 %i.fd, %.06862
  %or.cond120.not = select i1 %.07759, i1 %i.ho, i1 false
  br i1 %or.cond120.not, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.critedge118
  %i.hp = icmp eq i64 %i.fd, %.06862              ; 2 uses
  %or.cond = and i1 %i.hp, %i.hn
  %or.cond.not = xor i1 %or.cond, true
  %12 = trunc nuw i8 %.07359 to i1
  %or.cond3 = select i1 %or.cond.not, i1 true, i1 %12
  br i1 %or.cond3, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %13 = icmp eq i8 %.07359, %11
  %or.cond123.not = select i1 %i.hp, i1 %13, i1 false
  %i.hq = icmp slt i32 %i.fg, %.06961
  %or.cond124 = select i1 %or.cond123.not, i1 %i.hq, i1 false
  br i1 %or.cond124, label %bb.as, label %_ZN8hf_cache7hf_fileaSERKS0_.exit

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.critedge118
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.011.058)
          to label %.noexc149.a unwind label %bb.au

.noexc149.a:                                      ; preds = %bb.as
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.011.058, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.hr)
          to label %.noexc150.a unwind label %bb.au

.noexc150.a:                                      ; preds = %.noexc149.a
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.011.058, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.hs)
          to label %.noexc151.a unwind label %bb.au

.noexc151.a:                                      ; preds = %.noexc150.a
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.011.058, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.ht)
          to label %.noexc152.a unwind label %bb.au

.noexc152.a:                                      ; preds = %.noexc151.a
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.011.058, i64 128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.hu)
          to label %.noexc153 unwind label %bb.au

.noexc153:                                        ; preds = %.noexc152.a
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.011.058, i64 160
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.hv)
          to label %_ZN8hf_cache7hf_fileaSERKS0_.exit unwind label %bb.au

.loopexit27:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp28:                             ; preds = %bb.ao
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp28, %.loopexit27
  %lpad.phi31 = phi { ptr, i32 } [ %lpad.loopexit29, %.loopexit27 ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp28 ] ; 2 uses
  %i.hw = load ptr, ptr %10, align 8, !tbaa !59   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.cp
  br i1 %i.hx, label %.body138, label %.body138.sink.split

.body138.sink.split:                              ; preds = %bb.at, %bb.an
  %.sink = phi ptr [ %i.gm, %bb.an ], [ %i.hw, %bb.at ]
  %.pn103.ph = phi { ptr, i32 } [ %lpad.phi, %bb.an ], [ %lpad.phi31, %bb.at ]
  %i.hy = load i64, ptr %i.cp, align 8, !tbaa !62
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hz) #32
  br label %.body138

.body138:                                         ; preds = %.body138.sink.split, %bb.at, %bb.an
  %.pn103 = phi { ptr, i32 } [ %lpad.phi, %bb.an ], [ %lpad.phi31, %bb.at ], [ %.pn103.ph, %.body138.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ax

bb.au:                                            ; preds = %.noexc153, %.noexc152.a, %.noexc151.a, %.noexc150.a, %.noexc149.a, %bb.as
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZN8hf_cache7hf_fileaSERKS0_.exit:                ; preds = %.noexc153, %bb.ar
  %.174 = phi i8 [ %.07359, %bb.ar ], [ %11, %.noexc153 ]
  %.170 = phi i32 [ %.06961, %bb.ar ], [ %i.fg, %.noexc153 ]
  %.1 = phi i64 [ %.06862, %bb.ar ], [ %i.fd, %.noexc153 ]
  %i.ib = load ptr, ptr %8, align 8, !tbaa !59    ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.cn
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZN8hf_cache7hf_fileaSERKS0_.exit
  %i.id = load i64, ptr %i.cn, align 8, !tbaa !62
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZN8hf_cache7hf_fileaSERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %.pre66.a = load ptr, ptr %7, align 8, !tbaa !53
  %.pre67 = load ptr, ptr %i.cm, align 8, !tbaa !52
  br label %bb.av

bb.av:                                            ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.if = phi ptr [ %.pre67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %i.eg, %.loopexit ] ; 2 uses
  %i.ig = phi ptr [ %.pre66.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %i.ej, %.loopexit ] ; 3 uses
  %.279 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.07759, %.loopexit ]
  %.275 = phi i8 [ %.174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.07359, %.loopexit ]
  %.271 = phi i32 [ %.170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.06961, %.loopexit ]
  %.2 = phi i64 [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.06862, %.loopexit ]
  %.not4.i.i.i161 = icmp eq ptr %i.ig, %i.if
  br i1 %.not4.i.i.i161, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i169, label %.lr.ph.i.i.i162

.lr.ph.i.i.i162:                                  ; preds = %bb.av, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i165
  %.05.i.i.i163 = phi ptr [ %i.im, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i165 ], [ %i.ig, %bb.av ] ; 3 uses
  %i.ih = load ptr, ptr %.05.i.i.i163, align 8, !tbaa !59 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i.i.i163, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i164: ; preds = %.lr.ph.i.i.i162
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !62
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i165

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i165: ; preds = %.lr.ph.i.i.i162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i164
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i163, i64 32 ; 2 uses
  %.not.i.i.i166 = icmp eq ptr %i.im, %i.if
  br i1 %.not.i.i.i166, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i167, label %.lr.ph.i.i.i162, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i167: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i165
  %.pr.i168 = load ptr, ptr %7, align 8, !tbaa !53
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i169

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i169: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i167, %bb.av
  %i.in = phi ptr [ %.pr.i168, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i167 ], [ %i.ig, %bb.av ] ; 3 uses
  %.not.i.i1.i170 = icmp eq ptr %i.in, null
  br i1 %.not.i.i1.i170, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit172, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i169
  %i.io = load ptr, ptr %i.ct, align 8, !tbaa !64
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.ir) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit172

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit172: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i169, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread

_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.z, %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit172
  %.380 = phi i1 [ %.279, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit172 ], [ %.07759, %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit ], [ %.07759, %bb.z ], [ %.07759, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %.376 = phi i8 [ %.275, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit172 ], [ %.07359, %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit ], [ %.07359, %bb.z ], [ %.07359, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %.372 = phi i32 [ %.271, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit172 ], [ %.06961, %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit ], [ %.06961, %bb.z ], [ %.06961, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %.3 = phi i64 [ %.2, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit172 ], [ %.06862, %_Z16string_ends_withSt17basic_string_viewIcSt11char_traitsIcEES2_.exit ], [ %.06862, %bb.z ], [ %.06862, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.011.058, i64 192 ; 2 uses
  %.not21 = icmp eq ptr %i.is, %i.ck
  br i1 %.not21, label %._crit_edge65.loopexit, label %bb.z

bb.ax:                                            ; preds = %.body138, %bb.au
  %.pn105 = phi { ptr, i32 } [ %i.ia, %bb.au ], [ %.pn103, %.body138 ] ; 2 uses
  %i.it = load ptr, ptr %8, align 8, !tbaa !59    ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.cn
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.ax
  %i.iv = load i64, ptr %i.cn, align 8, !tbaa !62
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.ak
  %.pn105.pn = phi { ptr, i32 } [ %i.fx, %bb.ak ], [ %.pn105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %.pn105, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.aj ], [ %.pn105.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #31
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ad
  %.pn105.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn.pn, %bb.ay ], [ %i.ez, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #31
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.y
  %.pn105.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn.pn.pn, %bb.az ], [ %i.dm, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %.pn105.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn.pn.pn.pn.pn, %bb.ba ], [ %i.ce, %bb.v ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ] ; 2 uses
  %i.ix = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.v
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.bb
  %i.iz = load i64, ptr %i.v, align 8, !tbaa !62
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176, %bb.e
  %.pn105.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176 ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) #31
  resume { ptr, i32 } %.pn105.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL18extract_quant_bitsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %struct.gguf_split_info, align 8    ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call fastcc void @_ZL19get_gguf_split_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull @.str.277, i64 noundef 0, i64 noundef 10) #31 ; 5 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60, !noalias !1427 ; 3 uses
  %i.h = icmp ugt i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.288, i64 noundef %i.d, i64 noundef %i.g) #33
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !56, !alias.scope !1427
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !59, !noalias !1427
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d ; 2 uses
  %i.l = sub nuw i64 %i.g, %i.d                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !1427
  store i64 %i.l, ptr %i.b, align 8, !tbaa !61, !noalias !1427
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc9 unwind label %bb.p    ; 2 uses

.noexc9:                                          ; preds = %.noexc10.i.i
  store ptr %i.n, ptr %2, align 8, !tbaa !59, !alias.scope !1427
  %i.o = load i64, ptr %i.b, align 8, !tbaa !61, !noalias !1427
  store i64 %i.o, ptr %i.i, align 8, !tbaa !62, !alias.scope !1427
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.p = phi ptr [ %i.n, %.noexc9 ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.l, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.k, align 1, !tbaa !62
  store i8 %i.q, ptr %i.p, align 1, !tbaa !62
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.k, i64 %i.l, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !61, !noalias !1427 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !60, !alias.scope !1427
  %i.t = load ptr, ptr %2, align 8, !tbaa !59, !alias.scope !1427
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31, !noalias !1427
  %i.v = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.w = tail call ptr @__errno_location() #35    ; 6 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !92   ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !92
  %i.y = call noundef i64 @__isoc23_strtol(ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.aa = icmp eq ptr %i.z, %i.v
  br i1 %i.aa, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.52) #33
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %.critedge.i.i, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !92
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.j:                                             ; preds = %bb.i
  store i32 %i.x, ptr %i.w, align 4, !tbaa !92
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.ae = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.i
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

bb.k:                                             ; preds = %bb.f
  %i.ag = load i32, ptr %i.w, align 4, !tbaa !92  ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 34
  %i.ai = add i64 %i.y, -2147483648
  %i.aj = icmp ult i64 %i.ai, -4294967296
  %or.cond.i.i = or i1 %i.aj, %i.ah
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.m

.critedge.i.i:                                    ; preds = %bb.k
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.52) #33
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %.critedge.i.i
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = icmp eq i32 %i.ag, 0
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.x, ptr %i.w, align 4, !tbaa !92
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = trunc nsw i64 %i.y to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.am = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.i
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !62
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #32
end_hunk_0
