inline.NumInlined: 541
inline.NumDeleted: 275
begin_hunk_0_@_ZNSt6vectorIN6Assimp3LWO4FaceESaIS2_EE17_M_default_appendEm:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store i32 1178682181, ptr %i.ae, align 8
  %i.af = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO4FaceEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !26

_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO4FaceEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorIN6Assimp3LWO4FaceESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #19
  unreachable

_ZNKSt6vectorIN6Assimp3LWO4FaceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 288230376151711743) ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 5                ; 2 uses
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 5 uses
  %xtraiter61 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i40.prol

.lr.ph.i.i.i40.prol:                              ; preds = %_ZNKSt6vectorIN6Assimp3LWO4FaceESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i40.prol
  %.08.i.i.i41.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i40.prol ], [ %i.am, %_ZNKSt6vectorIN6Assimp3LWO4FaceESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i42.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i40.prol ], [ %1, %_ZNKSt6vectorIN6Assimp3LWO4FaceESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter63 = phi i64 [ %prol.iter63.next, %.lr.ph.i.i.i40.prol ], [ 0, %_ZNKSt6vectorIN6Assimp3LWO4FaceESaIS2_EE12_M_check_lenEmPKc.exit ]
  store i32 0, ptr %.08.i.i.i41.prol, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i41.prol, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i41.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store i32 1178682181, ptr %i.ao, align 8
  %i.ap = add i64 %.057.i.i.i42.prol, -1          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i41.prol, i64 32 ; 2 uses
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %.lr.ph.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i40.prol, !llvm.loop !27

.lr.ph.i.i.i40.prol.loopexit:                     ; preds = %.lr.ph.i.i.i40.prol, %_ZNKSt6vectorIN6Assimp3LWO4FaceESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i41.unr = phi ptr [ %i.am, %_ZNKSt6vectorIN6Assimp3LWO4FaceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i40.prol ]
  %.057.i.i.i42.unr = phi i64 [ %1, %_ZNKSt6vectorIN6Assimp3LWO4FaceESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i40.prol ]
  %i.ar = icmp ult i64 %1, 4
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO4FaceEmS2_ET_S4_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.prol.loopexit, %.lr.ph.i.i.i40
  %.08.i.i.i41 = phi ptr [ %i.be, %.lr.ph.i.i.i40 ], [ %.08.i.i.i41.unr, %.lr.ph.i.i.i40.prol.loopexit ] ; 13 uses
  %.057.i.i.i42 = phi i64 [ %i.bd, %.lr.ph.i.i.i40 ], [ %.057.i.i.i42.unr, %.lr.ph.i.i.i40.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i41, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store i32 1178682181, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 32
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  store i32 1178682181, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 64
  store i32 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store i32 1178682181, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 96
  store i32 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 104
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  store i32 1178682181, ptr %i.bc, align 8
  %i.bd = add i64 %.057.i.i.i42, -4               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 128
  %.not.i.i.i43.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i43.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO4FaceEmS2_ET_S4_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40, !llvm.loop !26

_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO4FaceEmS2_ET_S4_T0_RSaIT1_E.exit45: ; preds = %.lr.ph.i.i.i40, %.lr.ph.i.i.i40.prol.loopexit
  %i.bf = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6Assimp3LWO4FaceEPS2_ET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef nonnull %i.al)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO4FaceES3_SaIS2_EET0_T_S6_S5_RT1_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO4FaceEmS2_ET_S4_T0_RSaIT1_E.exit45
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  %i.bi = tail call ptr @__cxa_begin_catch(ptr %i.bh) #18 ; 0 uses
  %.idx = shl nuw nsw i64 %1, 5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i ], [ %i.am, %bb.e ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.bl) #20
  br label %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i

_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i:   ; preds = %bb.f, %.lr.ph.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, %i.bj
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3LWO4FaceES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i, !llvm.loop !6

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3LWO4FaceES2_EvT_S4_RSaIT0_E.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.l

_ZSt8_DestroyIPN6Assimp3LWO4FaceES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ak) #20
  invoke void @__cxa_rethrow() #19
          to label %bb.m unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.bo

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO4FaceES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO4FaceEmS2_ET_S4_T0_RSaIT1_E.exit45
  %.not4.i.i47 = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i47, label %_ZSt8_DestroyIPN6Assimp3LWO4FaceEEvT_S4_.exit52, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO4FaceES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i50
  %.05.i.i49 = phi ptr [ %i.bs, %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i50 ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO4FaceES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i49, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i50, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i48
  tail call void @_ZdaPv(ptr noundef nonnull %i.bq) #20
  br label %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i50

_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i50: ; preds = %bb.i, %.lr.ph.i.i48
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i49, i64 32 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.bs, %i.b
  br i1 %.not.i.i51, label %_ZSt8_DestroyIPN6Assimp3LWO4FaceEEvT_S4_.exit52, label %.lr.ph.i.i48, !llvm.loop !6

_ZSt8_DestroyIPN6Assimp3LWO4FaceEEvT_S4_.exit52:  ; preds = %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i50, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO4FaceES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.not.i53 = icmp eq ptr %i.c, null
  br i1 %.not.i53, label %_ZNSt12_Vector_baseIN6Assimp3LWO4FaceESaIS2_EE13_M_deallocateEPS2_m.exit54, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3LWO4FaceEEvT_S4_.exit52
  %i.bt = load ptr, ptr %i.h, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #20
  br label %_ZNSt12_Vector_baseIN6Assimp3LWO4FaceESaIS2_EE13_M_deallocateEPS2_m.exit54

_ZNSt12_Vector_baseIN6Assimp3LWO4FaceESaIS2_EE13_M_deallocateEPS2_m.exit54: ; preds = %_ZSt8_DestroyIPN6Assimp3LWO4FaceEEvT_S4_.exit52, %bb.j
  store ptr %i.al, ptr %0, align 8
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %1
  store ptr %i.bw, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bx, ptr %i.h, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO4FaceEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6Assimp3LWO4FaceESaIS2_EE13_M_deallocateEPS2_m.exit54, %bb.a
  ret void

bb.l:                                             ; preds = %bb.g
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  tail call void @__clang_call_terminate(ptr %i.bz) #23
  unreachable

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3LWO4FaceES2_EvT_S4_RSaIT0_E.exit
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPKN6Assimp3LWO4FaceEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.l, %bb.d ], [ %2, %bb.a ]  ; 9 uses
  %.01215 = phi ptr [ %i.k, %bb.d ], [ %0, %bb.a ] ; 5 uses
  store i32 0, ptr %.016, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %i.b = icmp eq ptr %.01215, %.016
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = load i32, ptr %.01215, align 8           ; 3 uses
  store i32 %i.c, ptr %.016, align 8
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.noexc.i.i.a

.noexc.i.i.a:                                     ; preds = %bb.b
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #21
          to label %.noexc unwind label %6        ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.a
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %3 = load i32, ptr %.016, align 8
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 4 %i.h, i64 %5, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8
  br label %bb.d

6:                                                ; preds = %.noexc.i.i.a
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = load ptr, ptr %i.a, align 8                ; 2 uses
  %9 = icmp eq ptr %8, null
  br i1 %9, label %bb.e, label %10

10:                                               ; preds = %6
  tail call void @_ZdaPv(ptr noundef nonnull %8) #20
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %.noexc, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.01215, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.k, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

bb.e:                                             ; preds = %6, %10
  %i.m = extractvalue { ptr, i32 } %7, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #18 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp3LWO4FaceEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i ], [ %2, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #20
  br label %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i

_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i:   ; preds = %bb.f, %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3LWO4FaceEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6Assimp3LWO4FaceEEvT_S4_.exit:    ; preds = %_ZSt8_DestroyIN6Assimp3LWO4FaceEEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #19
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.l, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3LWO4FaceEEvT_S4_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3LWO4FaceEEvT_S4_.exit
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !alias.scope !41
  store i8 0, ptr %i.e, align 8, !alias.scope !41
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !41 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !41 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noalias !41 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !alias.scope !41 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !41
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #20
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %4, align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #18
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #18
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(328) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #19
  unreachable

_ZNKSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 328                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 28120036697727975)
  %i.l = select i1 %i.j, i64 28120036697727975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 328                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN6Assimp3LWO7SurfaceC2EOS1_(ptr noundef nonnull align 8 dereferenceable(328) %i.q, ptr noundef nonnull align 8 dereferenceable(328) %2)
          to label %_ZNSt16allocator_traitsISaIN6Assimp3LWO7SurfaceEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN6Assimp3LWO7SurfaceEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO7SurfaceES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN6Assimp3LWO7SurfaceEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit, %_ZSt10_ConstructIN6Assimp3LWO7SurfaceEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN6Assimp3LWO7SurfaceEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6Assimp3LWO7SurfaceEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN6Assimp3LWO7SurfaceEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6Assimp3LWO7SurfaceEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN6Assimp3LWO7SurfaceC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(328) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN6Assimp3LWO7SurfaceEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN6Assimp3LWO7SurfaceEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 328 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 328 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO7SurfaceES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !42

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #18 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3LWO7SurfaceEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
end_hunk_0
