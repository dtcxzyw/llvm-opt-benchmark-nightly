Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/multipletimestepping?download=true
inline.NumInlined: 532
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx18nonbondedMtsFactorERK10t_inputrec:bb.a
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %.thread5, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !125
  br label %.thread5

.thread5:                                         ; preds = %bb.a, %.thread, %bb.d
  %.0 = phi i32 [ %i.p, %bb.d ], [ 1, %.thread ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx14setupMtsLevelsERKNS_13GromppMtsOptsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(44) %1, ptr noundef %2) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::vector.66", align 8    ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = load i32, ptr %1, align 8, !tbaa !139
  %.not38 = icmp eq i32 %i.c, 2
  br i1 %.not38, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.a = icmp eq ptr %2, null
  br i1 %.not.a, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA33_KcEEERS5_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 32, ptr %i.b, align 8, !tbaa !131
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.i, ptr %i.e, align 8, !tbaa !16
  %i.j = load i64, ptr %i.b, align 8, !tbaa !131  ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 1 dereferenceable(33) @.str.11, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !132
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.d, align 8, !tbaa !128
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA33_KcEEERS5_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA33_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.e, ptr noundef nonnull align 1 dereferenceable(33) @.str.11)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA33_KcEEERS5_DpOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %.noexc.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.f:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN3gmx8MtsLevelESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
          to label %_ZNSt6vectorIN3gmx8MtsLevelESaIS1_EE6resizeEm.exit unwind label %bb.e

_ZNSt6vectorIN3gmx8MtsLevelESaIS1_EE6resizeEm.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN3gmx11splitStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.66") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %_ZNSt6vectorIN3gmx8MtsLevelESaIS1_EE6resizeEm.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 28 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !140    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !140  ; 3 uses
  %.not6975 = icmp eq ptr %i.t, %i.v
  br i1 %.not6975, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.w = icmp eq ptr %2, null
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br i1 %i.w, label %.preheader.us, label %.preheader

.preheader.us:                                    ; preds = %.preheader.lr.ph, %bb.u
  %.sroa.065.076.us = phi ptr [ %i.aw, %bb.u ], [ %i.t, %.preheader.lr.ph ] ; 8 uses
  %i.ab = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076.us, ptr noundef nonnull align 8 dereferenceable(32) @_ZN3gmxL18mtsForceGroupNamesB5cxx11E)
          to label %bb.h unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %.preheader.us
  br i1 %i.ab, label %_ZNSt6bitsetILm7EE3setEmb.exit.us, label %bb.i

_ZNSt6bitsetILm7EE3setEmb.exit.us:                ; preds = %bb.h
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !131
  %i.ad = or i64 %i.ac, 1
  store i64 %i.ad, ptr %i.s, align 8, !tbaa !131
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.us, %bb.h
  %i.ae = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076.us, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 32))
          to label %bb.j unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  br i1 %i.ae, label %_ZNSt6bitsetILm7EE3setEmb.exit.us.1, label %bb.k

_ZNSt6bitsetILm7EE3setEmb.exit.us.1:              ; preds = %bb.j
  %i.af = load i64, ptr %i.s, align 8, !tbaa !131
  %i.ag = or i64 %i.af, 2
  store i64 %i.ag, ptr %i.s, align 8, !tbaa !131
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.us.1, %bb.j
  %i.ah = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076.us, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 64))
          to label %bb.l unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  br i1 %i.ah, label %_ZNSt6bitsetILm7EE3setEmb.exit.us.2, label %bb.m

_ZNSt6bitsetILm7EE3setEmb.exit.us.2:              ; preds = %bb.l
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !131
  %i.aj = or i64 %i.ai, 4
  store i64 %i.aj, ptr %i.s, align 8, !tbaa !131
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.us.2, %bb.l
  %i.ak = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076.us, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 96))
          to label %bb.n unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.ak, label %_ZNSt6bitsetILm7EE3setEmb.exit.us.3, label %bb.o

_ZNSt6bitsetILm7EE3setEmb.exit.us.3:              ; preds = %bb.n
  %i.al = load i64, ptr %i.s, align 8, !tbaa !131
  %i.am = or i64 %i.al, 8
  store i64 %i.am, ptr %i.s, align 8, !tbaa !131
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.us.3, %bb.n
  %i.an = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076.us, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 128))
          to label %bb.p unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  br i1 %i.an, label %_ZNSt6bitsetILm7EE3setEmb.exit.us.4, label %bb.q

_ZNSt6bitsetILm7EE3setEmb.exit.us.4:              ; preds = %bb.p
  %i.ao = load i64, ptr %i.s, align 8, !tbaa !131
  %i.ap = or i64 %i.ao, 16
  store i64 %i.ap, ptr %i.s, align 8, !tbaa !131
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.us.4, %bb.p
  %i.aq = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076.us, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 160))
          to label %bb.r unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  br i1 %i.aq, label %_ZNSt6bitsetILm7EE3setEmb.exit.us.5, label %bb.s

_ZNSt6bitsetILm7EE3setEmb.exit.us.5:              ; preds = %bb.r
  %i.ar = load i64, ptr %i.s, align 8, !tbaa !131
  %i.as = or i64 %i.ar, 32
  store i64 %i.as, ptr %i.s, align 8, !tbaa !131
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.us.5, %bb.r
  %i.at = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076.us, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 192))
          to label %bb.t unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  br i1 %i.at, label %_ZNSt6bitsetILm7EE3setEmb.exit.us.6, label %bb.u

_ZNSt6bitsetILm7EE3setEmb.exit.us.6:              ; preds = %bb.t
  %i.au = load i64, ptr %i.s, align 8, !tbaa !131
  %i.av = or i64 %i.au, 64
  store i64 %i.av, ptr %i.s, align 8, !tbaa !131
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.us.6, %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.065.076.us, i64 32 ; 2 uses
  %.not69.us = icmp eq ptr %i.aw, %i.v
  br i1 %.not69.us, label %._crit_edge, label %.preheader.us

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ar
  %.sroa.065.076 = phi ptr [ %i.db, %bb.ar ], [ %i.t, %.preheader.lr.ph ] ; 9 uses
  %i.ax = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076, ptr noundef nonnull align 8 dereferenceable(32) @_ZN3gmxL18mtsForceGroupNamesB5cxx11E)
          to label %bb.w unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

._crit_edge:                                      ; preds = %bb.ar, %bb.u, %bb.g
  %i.ay = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = and i64 %i.ba, 127
  %i.bc = xor i64 %i.bb, 127
  store i64 %i.bc, ptr %i.ay, align 8
  %i.bd = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 1, ptr %i.be, align 8, !tbaa !125
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !141 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !125
  %.not39 = icmp ne ptr %2, null
  %i.bi = icmp slt i32 %i.bg, 2
  %or.cond68 = select i1 %.not39, i1 %i.bi, i1 false
  br i1 %or.cond68, label %bb.as, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA35_KcEEERS5_DpOT_.exit

bb.v:                                             ; preds = %_ZNSt6vectorIN3gmx8MtsLevelESaIS1_EE6resizeEm.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.w:                                             ; preds = %.preheader
  br i1 %i.ax, label %_ZNSt6bitsetILm7EE3setEmb.exit, label %bb.x

_ZNSt6bitsetILm7EE3setEmb.exit:                   ; preds = %bb.w
  %i.bk = load i64, ptr %i.s, align 8, !tbaa !131
  %i.bl = or i64 %i.bk, 1
  store i64 %i.bl, ptr %i.s, align 8, !tbaa !131
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit, %bb.w
  %i.bm = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 32))
          to label %bb.y unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  br i1 %i.bm, label %_ZNSt6bitsetILm7EE3setEmb.exit.1, label %bb.z

_ZNSt6bitsetILm7EE3setEmb.exit.1:                 ; preds = %bb.y
  %i.bn = load i64, ptr %i.s, align 8, !tbaa !131
  %i.bo = or i64 %i.bn, 2
  store i64 %i.bo, ptr %i.s, align 8, !tbaa !131
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.1, %bb.y
  %.1.1 = phi i1 [ %i.ax, %bb.y ], [ true, %_ZNSt6bitsetILm7EE3setEmb.exit.1 ]
  %i.bp = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 64))
          to label %bb.aa unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bp, label %_ZNSt6bitsetILm7EE3setEmb.exit.2, label %bb.ab

_ZNSt6bitsetILm7EE3setEmb.exit.2:                 ; preds = %bb.aa
  %i.bq = load i64, ptr %i.s, align 8, !tbaa !131
  %i.br = or i64 %i.bq, 4
  store i64 %i.br, ptr %i.s, align 8, !tbaa !131
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.2, %bb.aa
  %.1.2 = phi i1 [ %.1.1, %bb.aa ], [ true, %_ZNSt6bitsetILm7EE3setEmb.exit.2 ]
  %i.bs = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 96))
          to label %bb.ac unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.bs, label %_ZNSt6bitsetILm7EE3setEmb.exit.3, label %bb.ad

_ZNSt6bitsetILm7EE3setEmb.exit.3:                 ; preds = %bb.ac
  %i.bt = load i64, ptr %i.s, align 8, !tbaa !131
  %i.bu = or i64 %i.bt, 8
  store i64 %i.bu, ptr %i.s, align 8, !tbaa !131
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.3, %bb.ac
  %.1.3 = phi i1 [ %.1.2, %bb.ac ], [ true, %_ZNSt6bitsetILm7EE3setEmb.exit.3 ]
  %i.bv = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 128))
          to label %bb.ae unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.bv, label %_ZNSt6bitsetILm7EE3setEmb.exit.4, label %bb.af

_ZNSt6bitsetILm7EE3setEmb.exit.4:                 ; preds = %bb.ae
  %i.bw = load i64, ptr %i.s, align 8, !tbaa !131
  %i.bx = or i64 %i.bw, 16
  store i64 %i.bx, ptr %i.s, align 8, !tbaa !131
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.4, %bb.ae
  %.1.4 = phi i1 [ %.1.3, %bb.ae ], [ true, %_ZNSt6bitsetILm7EE3setEmb.exit.4 ]
  %i.by = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 160))
          to label %bb.ag unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  br i1 %i.by, label %_ZNSt6bitsetILm7EE3setEmb.exit.5, label %bb.ah

_ZNSt6bitsetILm7EE3setEmb.exit.5:                 ; preds = %bb.ag
  %i.bz = load i64, ptr %i.s, align 8, !tbaa !131
  %i.ca = or i64 %i.bz, 32
  store i64 %i.ca, ptr %i.s, align 8, !tbaa !131
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6bitsetILm7EE3setEmb.exit.5, %bb.ag
  %.1.5 = phi i1 [ %.1.4, %bb.ag ], [ true, %_ZNSt6bitsetILm7EE3setEmb.exit.5 ]
  %i.cb = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.065.076, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 192))
          to label %bb.ai unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cb, label %.thread, label %bb.aj

.thread:                                          ; preds = %bb.ai
  %i.cc = load i64, ptr %i.s, align 8, !tbaa !131
  %i.cd = or i64 %i.cc, 64
  store i64 %i.cd, ptr %i.s, align 8, !tbaa !131
  br label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  br i1 %.1.5, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ce = load ptr, ptr %.sroa.065.076, align 8, !tbaa !16
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.12, ptr noundef %i.ce)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.cf = load ptr, ptr %i.x, align 8, !tbaa !128 ; 6 uses
  %i.cg = load ptr, ptr %i.y, align 8, !tbaa !129
  %.not.i.i53 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i.i53, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 3 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !130
  %i.ci = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.z
  br i1 %i.cj, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !132 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.am
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !16
  %i.cn = load i64, ptr %i.z, align 8, !tbaa !17
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !17
  %.pre = load i64, ptr %i.aa, align 8, !tbaa !132
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.co = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ck, %bb.an ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !132
  store ptr %i.z, ptr %4, align 8, !tbaa !16
  store i64 0, ptr %i.aa, align 8, !tbaa !132
  %i.cq = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store ptr %i.cr, ptr %i.x, align 8, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ao:                                            ; preds = %bb.al
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.aq

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ao
  %.pre85 = load ptr, ptr %4, align 8, !tbaa !16  ; 2 uses
  %i.cs = icmp eq ptr %.pre85, %i.z
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ct = load i64, ptr %i.z, align 8, !tbaa !17
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %.pre85, i64 noundef %i.cu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ak
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.aq:                                            ; preds = %bb.ao
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.z
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.aq
  %i.cz = load i64, ptr %i.z, align 8, !tbaa !17
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ap ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.cw, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.loopexit.split

bb.ar:                                            ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aj
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.065.076, i64 32 ; 2 uses
  %.not69 = icmp eq ptr %i.db, %i.v
  br i1 %.not69, label %._crit_edge, label %.preheader

bb.as:                                            ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !128 ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !129
  %.not.i58 = icmp eq ptr %i.dd, %i.df
  br i1 %.not.i58, label %bb.at, label %.noexc.i.i60

.noexc.i.i60:                                     ; preds = %bb.as
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  store ptr %i.dg, ptr %i.dd, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 34, ptr %i.a, align 8, !tbaa !131
  %i.dh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc62 unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc62:                                         ; preds = %.noexc.i.i60
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !16
  %i.di = load i64, ptr %i.a, align 8, !tbaa !131 ; 3 uses
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.dh, ptr noundef nonnull align 1 dereferenceable(35) @.str.13, i64 34, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !132
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 0, ptr %i.dl, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.dm = load ptr, ptr %i.dc, align 8, !tbaa !128
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store ptr %i.dn, ptr %i.dc, align 8, !tbaa !128
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA35_KcEEERS5_DpOT_.exit

bb.at:                                            ; preds = %bb.as
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA35_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.dd, ptr noundef nonnull align 1 dereferenceable(35) @.str.13)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA35_KcEEERS5_DpOT_.exit unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.us, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %.preheader, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.at, %.noexc.i.i60
  %lpad.loopexit.split-lp118 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA35_KcEEERS5_DpOT_.exit: ; preds = %bb.at, %.noexc62, %._crit_edge
  %i.do = load ptr, ptr %3, align 8, !tbaa !133   ; 3 uses
  %i.dp = load ptr, ptr %i.u, align 8, !tbaa !128 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.do, %i.dp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA35_KcEEERS5_DpOT_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.do, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA35_KcEEERS5_DpOT_.exit ] ; 3 uses
  %i.dq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !17
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dv, %i.dp
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !133
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA35_KcEEERS5_DpOT_.exit
  %i.dw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.do, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA35_KcEEERS5_DpOT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !129
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA33_KcEEERS5_DpOT_.exit

.loopexit.split:                                  ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %lpad.loopexit.split-lp118, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #22
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.split, %bb.v
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn, %.loopexit.split ], [ %i.bj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.aw

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA33_KcEEERS5_DpOT_.exit: ; preds = %bb.d, %.noexc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.b
  ret void

bb.aw:                                            ; preds = %bb.av, %bb.e
  %.pn48 = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn43.pn.pn.pn, %bb.av ]
  %i.ec = load ptr, ptr %0, align 8, !tbaa !120   ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIN3gmx8MtsLevelESaIS1_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
end_hunk_0
