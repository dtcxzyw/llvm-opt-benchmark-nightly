Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4toml2v35arrayC2EPKNS0_4impl15array_init_elemES5_:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35arrayC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.107, align 2            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !205  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !207  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.not52 = icmp eq ptr %i.e, %i.f
  br i1 %.not52, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #55
          to label %.noexc12 unwind label %bb.e   ; 9 uses

.noexc12:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !207  ; 11 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !205  ; 3 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc12
  %i.r = add i64 %i.q, -8
  %i.s = sub i64 %i.r, %i.o                       ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.v = add i64 %i.q, -8
  %i.w = sub i64 %i.v, %i.o
  %i.x = and i64 %i.w, -8
  %i.y = add i64 %i.x, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.y
  %scevgep59 = getelementptr i8, ptr %i.n, i64 %i.y
  %bound0 = icmp ult ptr %i.m, %scevgep59
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.n, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ac ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.n, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.ad = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep60, align 8, !tbaa !208, !alias.scope !287, !noalias !282
  %wide.load61 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !208, !alias.scope !287, !noalias !282
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !208, !alias.scope !290, !noalias !287
  store <2 x i64> %wide.load61, ptr %i.ae, align 8, !tbaa !208, !alias.scope !290, !noalias !287
  %i.af = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep60, align 8, !tbaa !208, !alias.scope !287, !noalias !282
  store <2 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !208, !alias.scope !287, !noalias !282
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader90

.lr.ph.i.i.i.i.preheader90:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader90, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader90 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.ah = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !208, !alias.scope !285, !noalias !282
  store i64 %i.ah, ptr %.012.i.i.i.i, align 8, !tbaa !208, !alias.scope !282, !noalias !285
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !208, !alias.scope !285, !noalias !282
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !293

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc12
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !263
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.n to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.an) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.m, ptr %i.b, align 8, !tbaa !207
  store ptr %i.m, ptr %i.l, align 8, !tbaa !205
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store ptr %i.ao, ptr %i.k, align 8, !tbaa !263
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !189
  %.pre41 = load ptr, ptr %i.d, align 8, !tbaa !189
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, %bb.c
  %i.ap = phi ptr [ %.pre41, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.aq = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ], [ %i.f, %bb.c ] ; 2 uses
  %.not36 = icmp eq ptr %i.aq, %i.ap
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %.sroa.031.037 = phi ptr [ %i.aq, %.lr.ph ], [ %i.ck, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.at = load ptr, ptr %.sroa.031.037, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50, !noalias !294
  store i16 -1, ptr %2, align 2, !tbaa !297, !noalias !294
  %i.au = invoke noundef ptr @_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_(ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.at)
          to label %bb.g unwind label %bb.l, !inline_history !299 ; 5 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50, !noalias !294
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !205 ; 6 uses
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !263
  %.not.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = ptrtoint ptr %i.au to i64
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ay, ptr %i.ar, align 8, !tbaa !205
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !207 ; 10 uses
  %i.ba = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 4 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #55
          to label %.noexc27 unwind label %.loopexit ; 10 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  %i.bm = ptrtoint ptr %i.au to i64
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !208
  %.not10.i.i.i.i19 = icmp eq ptr %i.az, %i.av
  br i1 %.not10.i.i.i.i19, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20.preheader

.lr.ph.i.i.i.i20.preheader:                       ; preds = %.noexc27
  %i.bn = add i64 %i.ba, -8
  %i.bo = sub i64 %i.bn, %i.bb                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.bo, 56
  br i1 %min.iters.check72, label %.lr.ph.i.i.i.i20.preheader86, label %vector.memcheck63

vector.memcheck63:                                ; preds = %.lr.ph.i.i.i.i20.preheader
  %scevgep64 = getelementptr i8, ptr %i.bk, i64 8
  %i.br = add i64 %i.ba, -8
  %i.bs = sub i64 %i.br, %i.bb
  %i.bt = and i64 %i.bs, -8                       ; 2 uses
  %scevgep65 = getelementptr i8, ptr %scevgep64, i64 %i.bt
  %scevgep66 = getelementptr i8, ptr %i.az, i64 8
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.bt
  %bound068 = icmp ult ptr %i.bk, %scevgep67
  %bound169 = icmp ult ptr %i.az, %scevgep65
  %found.conflict70 = and i1 %bound068, %bound169
  br i1 %found.conflict70, label %.lr.ph.i.i.i.i20.preheader86, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck63
  %n.vec74 = and i64 %i.bq, 4611686018427387900   ; 3 uses
  %i.bu = shl i64 %n.vec74, 3                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bk, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.az, i64 %i.bu
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next81, %vector.body75 ] ; 2 uses
  %i.bx = shl i64 %index76, 3                     ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.bk, i64 %i.bx ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.az, i64 %i.bx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.by = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load79 = load <2 x i64>, ptr %next.gep78, align 8, !tbaa !208, !alias.scope !305, !noalias !300
  %wide.load80 = load <2 x i64>, ptr %i.by, align 8, !tbaa !208, !alias.scope !305, !noalias !300
  %i.bz = getelementptr i8, ptr %next.gep77, i64 16
  store <2 x i64> %wide.load79, ptr %next.gep77, align 8, !tbaa !208, !alias.scope !308, !noalias !305
  store <2 x i64> %wide.load80, ptr %i.bz, align 8, !tbaa !208, !alias.scope !308, !noalias !305
  %i.ca = getelementptr i8, ptr %next.gep78, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep78, align 8, !tbaa !208, !alias.scope !305, !noalias !300
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !208, !alias.scope !305, !noalias !300
  %index.next81 = add nuw i64 %index76, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.cb, label %middle.block82, label %vector.body75, !llvm.loop !310

middle.block82:                                   ; preds = %vector.body75
  %cmp.n83 = icmp eq i64 %i.bq, %n.vec74
  br i1 %cmp.n83, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20.preheader86

.lr.ph.i.i.i.i20.preheader86:                     ; preds = %vector.memcheck63, %.lr.ph.i.i.i.i20.preheader, %middle.block82
  %.012.i.i.i.i21.ph = phi ptr [ %i.bk, %vector.memcheck63 ], [ %i.bk, %.lr.ph.i.i.i.i20.preheader ], [ %i.bv, %middle.block82 ]
  %.0911.i.i.i.i22.ph = phi ptr [ %i.az, %vector.memcheck63 ], [ %i.az, %.lr.ph.i.i.i.i20.preheader ], [ %i.bw, %middle.block82 ]
  br label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %.lr.ph.i.i.i.i20.preheader86, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i21 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i20 ], [ %.012.i.i.i.i21.ph, %.lr.ph.i.i.i.i20.preheader86 ] ; 2 uses
  %.0911.i.i.i.i22 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i20 ], [ %.0911.i.i.i.i22.ph, %.lr.ph.i.i.i.i20.preheader86 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.cc = load i64, ptr %.0911.i.i.i.i22, align 8, !tbaa !208, !alias.scope !303, !noalias !300
  store i64 %i.cc, ptr %.012.i.i.i.i21, align 8, !tbaa !208, !alias.scope !300, !noalias !303
  store ptr null, ptr %.0911.i.i.i.i22, align 8, !tbaa !208, !alias.scope !303, !noalias !300
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i22, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21, i64 8 ; 2 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.cd, %i.av
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20, !llvm.loop !311

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i20, %middle.block82, %.noexc27
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bk, %.noexc27 ], [ %i.bv, %middle.block82 ], [ %i.ce, %.lr.ph.i.i.i.i20 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.az, null
  br i1 %.not.i23.i, label %.noexc14, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !263
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.ci) #51
  br label %.noexc14

.noexc14:                                         ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !207
  store ptr %i.cf, ptr %i.ar, align 8, !tbaa !205
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.cj, ptr %i.k, align 8, !tbaa !263
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %.noexc14
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.031.037, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.ap
  br i1 %.not, label %._crit_edge, label %bb.f

bb.l:                                             ; preds = %bb.f
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i16 = icmp eq ptr %i.au, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17: ; preds = %bb.m
  %i.cm = load ptr, ptr %i.au, align 8, !tbaa !70
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #50, !inline_history !312
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18: ; preds = %bb.l, %bb.m, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.e ], [ %i.cl, %bb.l ], [ %lpad.phi, %bb.m ], [ %lpad.phi, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17 ]
  call void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #50
  call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #50
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4toml2v35arrayC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v34nodeE, i64 16), ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !180, !noalias !319
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !180, !alias.scope !319
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !189
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !189
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !263
  store ptr %i.k, ptr %i.i, align 8, !tbaa !263
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN4toml2v35arrayaSERKS1_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.107, align 2            ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167  ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !167
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4toml2v34nodeaSERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !170
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50, !inline_history !320
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
end_hunk_0
begin_hunk_1_@_ZN4toml2v35arrayaSERKS1_:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !205  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4toml2v34nodeaSERKS1_.exit, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.t, %_ZN4toml2v34nodeaSERKS1_.exit ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !208 ; 3 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i10, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #50, !inline_history !321
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !262

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.t, ptr %i.u, align 8, !tbaa !205
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit: ; preds = %_ZN4toml2v34nodeaSERKS1_.exit, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !205 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !207 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ugt i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
  unreachable

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !263
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !207
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.ah
  br i1 %i.ap, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.aq = ptrtoint ptr %i.t to i64
  %i.ar = sub i64 %i.aq, %i.an
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #55 ; 9 uses
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !207 ; 11 uses
  %i.au = ptrtoaddr ptr %i.at to i64              ; 2 uses
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !205 ; 3 uses
  %i.aw = ptrtoaddr ptr %i.av to i64              ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.at, %i.av
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11.preheader

.lr.ph.i.i.i.i11.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.ax = add i64 %i.aw, -8
  %i.ay = sub i64 %i.ax, %i.au                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i11.preheader97, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i11.preheader
  %i.bb = add i64 %i.aw, -8
  %i.bc = sub i64 %i.bb, %i.au
  %i.bd = and i64 %i.bc, -8
  %i.be = add i64 %i.bd, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.be
  %scevgep66 = getelementptr i8, ptr %i.at, i64 %i.be
  %bound0 = icmp ult ptr %i.as, %scevgep66
  %bound1 = icmp ult ptr %i.at, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i11.preheader97, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.as, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.at, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bi ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.at, i64 %i.bi ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.bj = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep67, align 8, !tbaa !208, !alias.scope !327, !noalias !322
  %wide.load68 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !208, !alias.scope !327, !noalias !322
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !208, !alias.scope !330, !noalias !327
  store <2 x i64> %wide.load68, ptr %i.bk, align 8, !tbaa !208, !alias.scope !330, !noalias !327
  %i.bl = getelementptr i8, ptr %next.gep67, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep67, align 8, !tbaa !208, !alias.scope !327, !noalias !322
  store <2 x ptr> splat (ptr null), ptr %i.bl, align 8, !tbaa !208, !alias.scope !327, !noalias !322
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !332

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11.preheader97

.lr.ph.i.i.i.i11.preheader97:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i11.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i11.preheader ], [ %i.bg, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.i11.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %.lr.ph.i.i.i.i11.preheader97, %.lr.ph.i.i.i.i11
  %.012.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i11 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i11.preheader97 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i11 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i11.preheader97 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.bn = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !208, !alias.scope !325, !noalias !322
  store i64 %i.bn, ptr %.012.i.i.i.i, align 8, !tbaa !208, !alias.scope !322, !noalias !325
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !208, !alias.scope !325, !noalias !322
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i12 = icmp eq ptr %i.bo, %i.av
  br i1 %.not.i.i.i.i12, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11, !llvm.loop !333

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i11, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.at, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.bq = load ptr, ptr %i.aj, align 8, !tbaa !263
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.at to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bt) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.as, ptr %i.s, align 8, !tbaa !207
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store ptr %i.bu, ptr %i.u, align 8, !tbaa !205
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ah
  store ptr %i.bv, ptr %i.aj, align 8, !tbaa !263
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !189
  %.pre42 = load ptr, ptr %i.ac, align 8, !tbaa !189
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.j, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bw = phi ptr [ %i.ad, %bb.j ], [ %.pre42, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.bx = phi ptr [ %i.ae, %bb.j ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %.not3337 = icmp eq ptr %i.bx, %i.bw
  br i1 %.not3337, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %.sroa.030.038 = phi ptr [ %i.dp, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.bx, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ] ; 2 uses
  %i.by = load ptr, ptr %.sroa.030.038, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50, !noalias !334
  store i16 -1, ptr %2, align 2, !tbaa !297, !noalias !334
  %i.bz = call noundef ptr @_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_(ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.by), !noalias !334, !inline_history !337 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50, !noalias !334
  %i.ca = load ptr, ptr %i.u, align 8, !tbaa !205 ; 6 uses
  %i.cb = load ptr, ptr %i.aj, align 8, !tbaa !263
  %.not.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.cc = ptrtoint ptr %i.bz to i64
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !208
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cd, ptr %i.u, align 8, !tbaa !205
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %.lr.ph
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !207 ; 10 uses
  %i.cf = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 4 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc25.a unwind label %.loopexit.split-lp

.noexc25.a:                                       ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.cj = ashr exact i64 %i.ch, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #55
          to label %.noexc26 unwind label %.loopexit34 ; 10 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch
  %i.cr = ptrtoint ptr %i.bz to i64
  store i64 %i.cr, ptr %i.cq, align 8, !tbaa !208
  %.not10.i.i.i.i18 = icmp eq ptr %i.ce, %i.ca
  br i1 %.not10.i.i.i.i18, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader

.lr.ph.i.i.i.i19.preheader:                       ; preds = %.noexc26
  %i.cs = add i64 %i.cf, -8
  %i.ct = sub i64 %i.cs, %i.cg                    ; 2 uses
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check79 = icmp ult i64 %i.ct, 56
  br i1 %min.iters.check79, label %.lr.ph.i.i.i.i19.preheader93, label %vector.memcheck70

vector.memcheck70:                                ; preds = %.lr.ph.i.i.i.i19.preheader
  %scevgep71.a = getelementptr i8, ptr %i.cp, i64 8
  %i.cw = add i64 %i.cf, -8
  %i.cx = sub i64 %i.cw, %i.cg
  %i.cy = and i64 %i.cx, -8                       ; 2 uses
  %scevgep72.a = getelementptr i8, ptr %scevgep71.a, i64 %i.cy
  %scevgep73.a = getelementptr i8, ptr %i.ce, i64 8
  %scevgep74 = getelementptr i8, ptr %scevgep73.a, i64 %i.cy
  %bound075 = icmp ult ptr %i.cp, %scevgep74
  %bound176 = icmp ult ptr %i.ce, %scevgep72.a
  %found.conflict77 = and i1 %bound075, %bound176
  br i1 %found.conflict77, label %.lr.ph.i.i.i.i19.preheader93, label %vector.ph80

vector.ph80:                                      ; preds = %vector.memcheck70
  %n.vec81 = and i64 %i.cv, 4611686018427387900   ; 3 uses
  %i.cz = shl i64 %n.vec81, 3                     ; 2 uses
  %i.da = getelementptr i8, ptr %i.cp, i64 %i.cz  ; 2 uses
  %i.db = getelementptr i8, ptr %i.ce, i64 %i.cz
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 2 uses
  %i.dc = shl i64 %index83, 3                     ; 2 uses
  %next.gep84.a = getelementptr i8, ptr %i.cp, i64 %i.dc ; 2 uses
  %next.gep85 = getelementptr i8, ptr %i.ce, i64 %i.dc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.dd = getelementptr i8, ptr %next.gep85, i64 16
  %wide.load86.a = load <2 x i64>, ptr %next.gep85, align 8, !tbaa !208, !alias.scope !343, !noalias !338
  %wide.load87 = load <2 x i64>, ptr %i.dd, align 8, !tbaa !208, !alias.scope !343, !noalias !338
  %i.de = getelementptr i8, ptr %next.gep84.a, i64 16
  store <2 x i64> %wide.load86.a, ptr %next.gep84.a, align 8, !tbaa !208, !alias.scope !346, !noalias !343
  store <2 x i64> %wide.load87, ptr %i.de, align 8, !tbaa !208, !alias.scope !346, !noalias !343
  %i.df = getelementptr i8, ptr %next.gep85, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep85, align 8, !tbaa !208, !alias.scope !343, !noalias !338
  store <2 x ptr> splat (ptr null), ptr %i.df, align 8, !tbaa !208, !alias.scope !343, !noalias !338
  %index.next88 = add nuw i64 %index83, 4         ; 2 uses
  %i.dg = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.dg, label %middle.block89, label %vector.body82, !llvm.loop !348

middle.block89:                                   ; preds = %vector.body82
  %cmp.n90 = icmp eq i64 %i.cv, %n.vec81
  br i1 %cmp.n90, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader93

.lr.ph.i.i.i.i19.preheader93:                     ; preds = %vector.memcheck70, %.lr.ph.i.i.i.i19.preheader, %middle.block89
  %.012.i.i.i.i20.ph = phi ptr [ %i.cp, %vector.memcheck70 ], [ %i.cp, %.lr.ph.i.i.i.i19.preheader ], [ %i.da, %middle.block89 ]
  %.0911.i.i.i.i21.ph = phi ptr [ %i.ce, %vector.memcheck70 ], [ %i.ce, %.lr.ph.i.i.i.i19.preheader ], [ %i.db, %middle.block89 ]
  br label %.lr.ph.i.i.i.i19

.lr.ph.i.i.i.i19:                                 ; preds = %.lr.ph.i.i.i.i19.preheader93, %.lr.ph.i.i.i.i19
  %.012.i.i.i.i20 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i19 ], [ %.012.i.i.i.i20.ph, %.lr.ph.i.i.i.i19.preheader93 ] ; 2 uses
  %.0911.i.i.i.i21 = phi ptr [ %i.di, %.lr.ph.i.i.i.i19 ], [ %.0911.i.i.i.i21.ph, %.lr.ph.i.i.i.i19.preheader93 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.dh = load i64, ptr %.0911.i.i.i.i21, align 8, !tbaa !208, !alias.scope !341, !noalias !338
  store i64 %i.dh, ptr %.012.i.i.i.i20, align 8, !tbaa !208, !alias.scope !338, !noalias !341
  store ptr null, ptr %.0911.i.i.i.i21, align 8, !tbaa !208, !alias.scope !341, !noalias !338
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i21, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.di, %i.ca
  br i1 %.not.i.i.i.i22, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19, !llvm.loop !349

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i19, %middle.block89, %.noexc26
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cp, %.noexc26 ], [ %i.da, %middle.block89 ], [ %i.dj, %.lr.ph.i.i.i.i19 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ce, null
  br i1 %.not.i23.i, label %.noexc, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dl = load ptr, ptr %i.aj, align 8, !tbaa !263
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.dn) #51
  br label %.noexc

.noexc:                                           ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.cp, ptr %i.s, align 8, !tbaa !207
  store ptr %i.dk, ptr %i.u, align 8, !tbaa !205
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.do, ptr %i.aj, align 8, !tbaa !263
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.l, %.noexc
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.030.038, i64 8 ; 2 uses
  %.not33 = icmp eq ptr %i.dp, %i.bw
  br i1 %.not33, label %.loopexit, label %.lr.ph

.loopexit34:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit34
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit34 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i14 = icmp eq ptr %i.bz, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit16, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i15

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i15: ; preds = %bb.p
  %i.dq = load ptr, ptr %i.bz, align 8, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(40) %i.bz) #50, !inline_history !312
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit16

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit16: ; preds = %bb.p, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i15
  resume { ptr, i32 } %lpad.phi

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN4toml2v35arrayaSEOS1_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(64) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.010.i = alloca { %"struct.toml::v3::source_position", %"struct.toml::v3::source_position" }, align 8 ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, label %_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit.i

_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.i)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !180, !noalias !350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.i, i64 16, i1 false)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !167  ; 8 uses
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !180
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4toml2v34nodeaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !168
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !170
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !355
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !355
  br label %_ZN4toml2v34nodeaSEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN4toml2v34nodeaSEOS1_.exit, !prof !173

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50
end_hunk_1
begin_hunk_2_@_ZN4toml2v34impl7impl_ex6parser11parse_arrayEv:bb.a
  store i64 %.sroa.0.0.i, ptr %19, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.sroa.4.0.i, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #50
  store i64 1, ptr %20, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.16, ptr %i.bc, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20) #54
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.az:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.ba:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #50
  invoke void @_ZN4toml2v34impl7impl_ex6parser11parse_valueEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !263 ; 3 uses
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !207 ; 2 uses
  %.not14 = icmp eq ptr %i.be, %i.bf
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !205 ; 2 uses
  br i1 %.not14, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i, label %bb.bf

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i: ; preds = %bb.bb
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %.pre to i64
  %i.bi = sub i64 %i.bh, %i.bg
  %i.bj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #55
          to label %.noexc27 unwind label %.loopexit68 ; 10 uses

.noexc27:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !207 ; 11 uses
  %i.bl = ptrtoaddr ptr %i.bk to i64              ; 2 uses
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !205 ; 3 uses
  %i.bn = ptrtoaddr ptr %i.bm to i64              ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bm
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc27
  %i.bo = add i64 %i.bn, -8
  %i.bp = sub i64 %i.bo, %i.bl                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check228 = icmp ult i64 %i.bp, 56
  br i1 %min.iters.check228, label %.lr.ph.i.i.i.i.i.preheader243, label %vector.memcheck219

vector.memcheck219:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep220 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bs = add i64 %i.bn, -8
  %i.bt = sub i64 %i.bs, %i.bl
  %i.bu = and i64 %i.bt, -8                       ; 2 uses
  %scevgep221 = getelementptr i8, ptr %scevgep220, i64 %i.bu
  %scevgep222 = getelementptr i8, ptr %i.bk, i64 8
  %scevgep223 = getelementptr i8, ptr %scevgep222, i64 %i.bu
  %bound0224 = icmp ult ptr %i.bj, %scevgep223
  %bound1225 = icmp ult ptr %i.bk, %scevgep221
  %found.conflict226 = and i1 %bound0224, %bound1225
  br i1 %found.conflict226, label %.lr.ph.i.i.i.i.i.preheader243, label %vector.ph229

vector.ph229:                                     ; preds = %vector.memcheck219
  %n.vec230 = and i64 %i.br, 4611686018427387900  ; 3 uses
  %i.bv = shl i64 %n.vec230, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bj, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bk, i64 %i.bv
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph229
  %index232 = phi i64 [ 0, %vector.ph229 ], [ %index.next237, %vector.body231 ] ; 2 uses
  %i.by = shl i64 %index232, 3                    ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.bj, i64 %i.by ; 2 uses
  %next.gep234 = getelementptr i8, ptr %i.bk, i64 %i.by ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.bz = getelementptr i8, ptr %next.gep234, i64 16
  %wide.load235 = load <2 x i64>, ptr %next.gep234, align 8, !tbaa !208, !alias.scope !502, !noalias !497
  %wide.load236 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !208, !alias.scope !502, !noalias !497
  %i.ca = getelementptr i8, ptr %next.gep233, i64 16
  store <2 x i64> %wide.load235, ptr %next.gep233, align 8, !tbaa !208, !alias.scope !505, !noalias !502
  store <2 x i64> %wide.load236, ptr %i.ca, align 8, !tbaa !208, !alias.scope !505, !noalias !502
  %i.cb = getelementptr i8, ptr %next.gep234, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep234, align 8, !tbaa !208, !alias.scope !502, !noalias !497
  store <2 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !208, !alias.scope !502, !noalias !497
  %index.next237 = add nuw i64 %index232, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next237, %n.vec230
  br i1 %i.cc, label %middle.block238, label %vector.body231, !llvm.loop !507

middle.block238:                                  ; preds = %vector.body231
  %cmp.n239 = icmp eq i64 %i.br, %n.vec230
  br i1 %cmp.n239, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader243

.lr.ph.i.i.i.i.i.preheader243:                    ; preds = %vector.memcheck219, %.lr.ph.i.i.i.i.i.preheader, %middle.block238
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bj, %vector.memcheck219 ], [ %i.bj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bw, %middle.block238 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck219 ], [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bx, %middle.block238 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader243, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader243 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader243 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !208, !alias.scope !500, !noalias !497
  store i64 %i.cd, ptr %.012.i.i.i.i.i, align 8, !tbaa !208, !alias.scope !497, !noalias !500
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !208, !alias.scope !500, !noalias !497
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bm
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !508

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block238, %.noexc27
  %.not.i8.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i8.i.i, label %_ZN4toml2v35array7reserveEm.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !263
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.bk to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cj) #51
  br label %_ZN4toml2v35array7reserveEm.exit

_ZN4toml2v35array7reserveEm.exit:                 ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, %bb.bc
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !207
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 2 uses
  store ptr %i.ck, ptr %i.j, align 8, !tbaa !205
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  store ptr %i.cl, ptr %i.i, align 8, !tbaa !263
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

.loopexit68:                                      ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i, %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp69:                             ; preds = %bb.bh
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp69, %.loopexit68
  %lpad.phi72 = phi { ptr, i32 } [ %lpad.loopexit70, %.loopexit68 ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp69 ] ; 2 uses
  %i.cn = load ptr, ptr %21, align 8, !tbaa !208  ; 3 uses
  %.not.i28 = icmp eq ptr %i.cn, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i: ; preds = %bb.be
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !70
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #50, !inline_history !312
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.bf:                                            ; preds = %_ZN4toml2v35array7reserveEm.exit, %bb.bb
  %i.cr = phi ptr [ %i.bj, %_ZN4toml2v35array7reserveEm.exit ], [ %i.bf, %bb.bb ] ; 10 uses
  %i.cs = phi ptr [ %i.cl, %_ZN4toml2v35array7reserveEm.exit ], [ %i.be, %bb.bb ] ; 4 uses
  %i.ct = phi ptr [ %i.ck, %_ZN4toml2v35array7reserveEm.exit ], [ %.pre, %bb.bb ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.cs
  br i1 %.not.i.i.i.i, label %bb.bg, label %.thread57

.thread57:                                        ; preds = %bb.bf
  %i.cu = load i64, ptr %21, align 8, !tbaa !208
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !208
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cv, ptr %i.j, align 8, !tbaa !205
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32

bb.bg:                                            ; preds = %bb.bf
  %i.cw = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cx = ptrtoint ptr %i.cr to i64               ; 4 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.bh, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc47 unwind label %.loopexit.split-lp69

.noexc47:                                         ; preds = %bb.bh
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bg
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 2 uses
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #55
          to label %.noexc48 unwind label %.loopexit68 ; 10 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  %i.di = load i64, ptr %21, align 8, !tbaa !208
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !208
  store ptr null, ptr %21, align 8, !tbaa !208
  %.not10.i.i.i.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc48
  %i.dj = add i64 %i.cw, -8
  %i.dk = sub i64 %i.dj, %i.cx                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader242, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dg, i64 8
  %i.dn = add i64 %i.cw, -8
  %i.do = sub i64 %i.dn, %i.cx
  %i.dp = and i64 %i.do, -8                       ; 2 uses
  %scevgep213 = getelementptr i8, ptr %scevgep, i64 %i.dp
  %scevgep214 = getelementptr i8, ptr %i.cr, i64 8
  %scevgep215 = getelementptr i8, ptr %scevgep214, i64 %i.dp
  %bound0 = icmp ult ptr %i.dg, %scevgep215
  %bound1 = icmp ult ptr %i.cr, %scevgep213
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader242, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.dq = shl i64 %n.vec, 3                       ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dg, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %i.cr, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dt ; 2 uses
  %next.gep216 = getelementptr i8, ptr %i.cr, i64 %i.dt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.du = getelementptr i8, ptr %next.gep216, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep216, align 8, !tbaa !208, !alias.scope !514, !noalias !509
  %wide.load217 = load <2 x i64>, ptr %i.du, align 8, !tbaa !208, !alias.scope !514, !noalias !509
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !208, !alias.scope !517, !noalias !514
  store <2 x i64> %wide.load217, ptr %i.dv, align 8, !tbaa !208, !alias.scope !517, !noalias !514
  %i.dw = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep216, align 8, !tbaa !208, !alias.scope !514, !noalias !509
  store <2 x ptr> splat (ptr null), ptr %i.dw, align 8, !tbaa !208, !alias.scope !514, !noalias !509
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !519

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader242

.lr.ph.i.i.i.i.preheader242:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader242, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader242 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader242 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.dy = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !208, !alias.scope !512, !noalias !509
  store i64 %i.dy, ptr %.012.i.i.i.i, align 8, !tbaa !208, !alias.scope !509, !noalias !512
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !208, !alias.scope !512, !noalias !509
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.dz, %i.cs
  br i1 %.not.i.i.i.i46, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !520

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc48
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dg, %.noexc48 ], [ %i.dr, %middle.block ], [ %i.ea, %.lr.ph.i.i.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cr, null
  br i1 %.not.i23.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !263
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.ee) #51
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.bi
  store ptr %i.dg, ptr %i.h, align 8, !tbaa !207
  store ptr %i.eb, ptr %i.j, align 8, !tbaa !205
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.ef, ptr %i.i, align 8, !tbaa !263
  %.pr56 = load ptr, ptr %21, align 8, !tbaa !208 ; 3 uses
  %.not.i30 = icmp eq ptr %.pr56, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31: ; preds = %bb.bj
  %i.eg = load ptr, ptr %.pr56, align 8, !tbaa !70
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(40) %.pr56) #50, !inline_history !312
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32: ; preds = %.thread57, %bb.bj, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, %bb.al
  %.be = phi i1 [ false, %bb.al ], [ true, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32 ]
  br label %.backedge, !llvm.loop !521

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i, %bb.be, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.bd ], [ %lpad.phi72, %bb.be ], [ %lpad.phi72, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34: ; preds = %bb.ai, %bb.ao, %bb.ar, %bb.az, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %.loopexit.i, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit59
  %.pn17 = phi { ptr, i32 } [ %i.an, %bb.ai ], [ %i.aq, %bb.ao ], [ %.pn, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.as, %bb.ar ], [ %i.bd, %bb.az ], [ %.pn.i, %.loopexit.i ], [ %lpad.loopexit60, %.loopexit59 ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ej = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #50, !inline_history !312
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.bk:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34, %bb.f, %bb.e
  %.pn19 = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ], [ %.pn17, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !461, !nonnull !121, !noundef !121
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.e = load i64, ptr %i.c, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !522  ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !522
  %.not9.i = icmp eq i64 %i.h, 0
  br i1 %.not9.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !523
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.m = load i64, ptr %i.l, align 8, !tbaa !524
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.o = load i64, ptr %i.n, align 8, !tbaa !525
  %reass.sub = sub i64 %i.m, %i.g
  %i.p = add i64 %reass.sub, 1
  %i.q = add i64 %i.p, %i.o
  %i.r = urem i64 %i.q, 127
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.r
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3056 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !525  ; 4 uses
  %.not6.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.x, null               ; 2 uses
  %i.y = select i1 %.not6.i, i1 %.not7.i, i1 false
  br i1 %i.y, label %bb.f, label %bb.g, !prof !173

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !526, !nonnull !121, !align !527 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z), !inline_history !528 ; 2 uses
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !523
end_hunk_2
begin_hunk_3_@_ZN4toml2v34impl7impl_ex6parser11parse_valueEv:bb.a
  %i.kv = trunc i64 %i.kt to i32                  ; 2 uses
  br i1 %i.ku, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i32 0, ptr %i.ks, align 8, !tbaa !168
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  store i32 0, ptr %i.kw, align 4, !tbaa !170
  %i.kx = load ptr, ptr %i.kr, align 8, !tbaa !70
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(16) %i.kr) #50, !inline_history !182
  %i.la = load ptr, ptr %i.kr, align 8, !tbaa !70
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(16) %i.kr) #50, !inline_history !182
  br label %_ZN4toml2v313source_regionD2Ev.exit

bb.dk:                                            ; preds = %bb.di
  %i.ld = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ld, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.le = add nsw i32 %i.kv, -1
  store i32 %i.le, ptr %i.ks, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.lf = atomicrmw volatile add ptr %i.ks, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.kv, %bb.dl ], [ %i.lf, %bb.dm ]
  %i.lg = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.lg, label %bb.dn, label %_ZN4toml2v313source_regionD2Ev.exit, !prof !173

bb.dn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kr) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit

_ZN4toml2v313source_regionD2Ev.exit:              ; preds = %bb.dn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dj, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit
  %i.lh = load i64, ptr %i.l, align 8, !tbaa !139
  %i.li = add i64 %i.lh, -1
  store i64 %i.li, ptr %i.l, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

.thread166:                                       ; preds = %bb.ao, %bb.by, %bb.bq, %bb.cb, %bb.bu, %bb.cf, %bb.ci, %bb.bh, %bb.cl, %bb.ax, %bb.co, %bb.ab, %bb.cr, %bb.at, %bb.cu, %bb.da, %bb.cx
  %.pn.ph = phi { ptr, i32 } [ %i.jk, %bb.cx ], [ %i.js, %bb.da ], [ %i.je, %bb.cu ], [ %i.fe, %bb.at ], [ %i.iy, %bb.cr ], [ %i.db, %bb.ab ], [ %i.is, %bb.co ], [ %i.fi, %bb.ax ], [ %i.im, %bb.cl ], [ %i.fy, %bb.bh ], [ %i.ig, %bb.ci ], [ %i.ia, %bb.cf ], [ %i.hd, %bb.bu ], [ %i.ht, %bb.cb ], [ %i.gx, %bb.bq ], [ %i.hn, %bb.by ], [ %i.eu, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100

.thread171:                                       ; preds = %bb.cy, %bb.cv, %bb.cs, %bb.cp, %bb.cm, %bb.cj, %bb.cg, %bb.bz, %bb.bw, %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit.thread, %bb.bn, %bb.bk, %bb.be, %bb.aq, %bb.al, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i99: ; preds = %bb.bl, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit59, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit
  %.pr120140.ph = phi ptr [ %i.gc, %bb.bl ], [ %i.ek, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit ], [ %i.gc, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EE5resetEPS2_.exit59 ] ; 2 uses
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.lj = load ptr, ptr %.pr120140.ph, align 8, !tbaa !70
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(40) %.pr120140.ph) #50, !inline_history !312
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit100: ; preds = %.thread171, %.thread166, %.thread161, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i99, %.thread, %bb.l, %bb.h, %bb.d
  %.pn44 = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.w, %bb.h ], [ %i.z, %bb.l ], [ %i.ac, %.thread ], [ %lpad.thr_comm, %.thread171 ], [ %lpad.thr_comm.split-lp, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i99 ], [ %i.ju, %.thread161 ], [ %.pn.ph, %.thread166 ]
  %i.lm = load i64, ptr %i.l, align 8, !tbaa !139
  %i.ln = add i64 %i.lm, -1
  store i64 %i.ln, ptr %i.l, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn44
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl7impl_ex6parser18parse_inline_tableEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3496) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3192 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !460
  store i64 12, ptr %i.b, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3480
  store ptr @.str.17, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !461
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.g, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.d, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.g, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.au

bb.g:                                             ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #55
          to label %bb.h unwind label %bb.e       ; 8 uses

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4toml2v35tableC1Ev(ptr noundef nonnull align 8 dereferenceable(89) %i.g) #50
  store ptr %i.g, ptr %0, align 8, !tbaa !208
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i8 1, ptr %i.h, align 8, !tbaa !148
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3248 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3256 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !576  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3264 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !577
  %.not.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.g, ptr %i.k, align 8, !tbaa !578
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !576
  br label %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.preheader

bb.j:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !580  ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.k, label %_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #55
          to label %.noexc22 unwind label %bb.p   ; 4 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %i.g, ptr %i.aa, align 8, !tbaa !578
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.l, label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.l:                                             ; preds = %.noexc22
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.l, %.noexc22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !577
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.af) #51
  br label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !580
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !576
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !577
  br label %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.preheader

_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.preheader: ; preds = %bb.i, %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i
  br label %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit

_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit: ; preds = %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.backedge, %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.preheader
  %i.ah = phi i1 [ false, %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.preheader ], [ %.be, %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.backedge ]
  %i.ai = phi i1 [ false, %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.preheader ], [ %.be114, %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.backedge ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit
  %i.aj = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.n, label %bb.q, !llvm.loop !581

bb.p:                                             ; preds = %_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.an, %bb.w
  %lpad.loopexit34 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ai
  %lpad.loopexit.split-lp35 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !461 ; 6 uses
  %.not15 = icmp eq ptr %i.al, null
  br i1 %.not15, label %bb.r, label %bb.u, !prof !173

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 23, ptr %3, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.13, ptr %i.am, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %.loopexit.split-lp

bb.u:                                             ; preds = %bb.q
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !488 ; 7 uses
  switch i32 %i.ao, label %bb.aj [
    i32 44, label %bb.v
    i32 125, label %bb.ae
    i32 39, label %bb.ak
    i32 34, label %bb.ak
  ]

bb.v:                                             ; preds = %bb.u
  br i1 %i.ai, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit

bb.x:                                             ; preds = %bb.w
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !461
  %.not16 = icmp eq ptr %i.ap, null
  br i1 %.not16, label %bb.y, label %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.backedge, !prof !173

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 23, ptr %4, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.13, ptr %i.aq, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 49, ptr %5, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.18, ptr %i.as, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %5) #54
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.u
  br i1 %i.ah, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store i64 57, ptr %6, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.19, ptr %i.au, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %6) #54
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ae
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.u
  %i.aw = add i32 %i.ao, -123
  %or.cond.i.i = icmp ult i32 %i.aw, -78
  br i1 %or.cond.i.i, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit

_ZN4toml2v34impl21is_bare_key_characterEDi.exit:  ; preds = %bb.aj
  %i.ax = zext nneg i32 %i.ao to i64
  %i.ay = add nsw i64 %i.ax, -45
  %.not.i.i = icmp samesign ugt i32 %i.ao, 108
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.az, -3307330977390599
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = select i1 %.not.i.i, i1 true, i1 %i.bb
  br i1 %i.bc, label %bb.ak, label %.thread

.thread:                                          ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  store i64 34, ptr %10, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.21, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  br label %bb.aq

bb.ak:                                            ; preds = %bb.u, %bb.u, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  br i1 %i.ai, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.an

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 36, ptr %7, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.20, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !495
  store i64 %i.bh, ptr %8, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bf, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store i64 1, ptr %9, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.16, ptr %i.bj, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) #54
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.am:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %.loopexit.split-lp

bb.an:                                            ; preds = %bb.ak
  %i.bl = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser31parse_key_value_pair_and_insertEPNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull %i.g)
          to label %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.backedge unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit.backedge: ; preds = %bb.an, %bb.x
  %.be = phi i1 [ true, %bb.x ], [ false, %bb.an ]
  %.be114 = phi i1 [ false, %bb.x ], [ true, %bb.an ]
  br label %_ZN12_GLOBAL__N_118table_vector_scopeC2ERSt6vectorIPN4toml2v35tableESaIS5_EERS4_.exit, !llvm.loop !582

_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread: ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  store i64 34, ptr %10, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.21, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  %i.bn = icmp ult i32 %i.ao, 32
  br i1 %i.bn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread
  %i.bo = zext nneg i32 %i.ao to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.bo ; 2 uses
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.bp, align 16, !tbaa !139
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.4.0.copyload.i29 = load ptr, ptr %.sroa.4.0..sroa_idx.i28, align 8, !tbaa !140
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit30

bb.ap:                                            ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread
  %i.bq = icmp eq i32 %i.ao, 127
  br i1 %i.bq, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit30, label %bb.aq

bb.aq:                                            ; preds = %.thread, %bb.ap
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !495
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit30

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit30: ; preds = %bb.ao, %bb.ap, %bb.aq
  %.sroa.4.0.i23 = phi ptr [ %.sroa.4.0.copyload.i29, %bb.ao ], [ %i.br, %bb.aq ], [ @.str.29, %bb.ap ]
  %.sroa.0.0.i24 = phi i64 [ %.sroa.0.0.copyload.i27, %bb.ao ], [ %i.bt, %bb.aq ], [ 6, %bb.ap ]
  store i64 %.sroa.0.0.i24, ptr %11, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.4.0.i23, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #50
  store i64 1, ptr %12, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.16, ptr %i.bv, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12) #54
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit30
  unreachable

bb.as:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit30
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50
  br label %.loopexit.split-lp

bb.at:                                            ; preds = %bb.ai
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !576
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  store ptr %i.by, ptr %i.j, align 8, !tbaa !576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.am, %bb.ah, %bb.ad, %bb.aa, %bb.t
  %.pn = phi { ptr, i32 } [ %i.an, %bb.t ], [ %i.ar, %bb.aa ], [ %i.bw, %bb.as ], [ %i.at, %bb.ad ], [ %i.av, %bb.ah ], [ %i.bk, %bb.am ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit34, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp35, %.loopexit.split-lp.loopexit.split-lp ]
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !576
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8
  store ptr %i.ca, ptr %i.j, align 8, !tbaa !576
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.ak, %bb.p ]
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #50, !inline_history !312
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %bb.f, %bb.e
  %.pn19 = phi { ptr, i32 } [ %i.f, %bb.f ], [ %.pn.pn, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.e, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn19
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser31parse_key_value_pair_and_insertEPNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef %1) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6175 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.toml::v3::impl::table_iterator", align 8 ; 5 uses
  %15 = alloca %"class.toml::v3::impl::table_iterator.42", align 8 ; 3 uses
  %16 = alloca %"class.toml::v3::key", align 8    ; 9 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"class.toml::v3::key", align 8    ; 9 uses
  %23 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %24 = alloca %"class.toml::v3::impl::table_iterator.42", align 8 ; 3 uses
  %25 = alloca %"class.toml::v3::impl::table_iterator", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !461, !nonnull !121, !noundef !121
  %i.c = load i32, ptr %i.b, align 4, !tbaa !488  ; 2 uses
  switch i32 %i.c, label %bb.b [
    i32 39, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
    i32 34, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.c, -45
  %or.cond.i.i = icmp ult i32 %i.d, 78
  tail call void @llvm.assume(i1 %or.cond.i.i)
  br label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit

_ZN4toml2v34impl21is_bare_key_characterEDi.exit:  ; preds = %bb.a, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6175)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6175, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !460
  store i64 14, ptr %i.e, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.153, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !529
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3465
  store i8 1, ptr %i.g, align 1, !tbaa !530
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3432 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 5 uses
  store i64 0, ptr %i.i, align 8, !tbaa !14
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !8
  store i8 0, ptr %i.j, align 1, !tbaa !17
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !461  ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !495  ; 2 uses
  %i.n = load i64, ptr %i.i, align 8, !tbaa !14
  %i.o = sub i64 4611686018427387903, %i.n
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #54
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull %i.q, i64 noundef %i.m)
          to label %_ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #53
  unreachable

_ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit: ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.u = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser9parse_keyEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.f unwind label %bb.m       ; 0 uses

bb.f:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit
  store i8 0, ptr %i.f, align 8, !tbaa !529
  %i.v = load i64, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %.not4.i = icmp ugt i64 %i.v, 1
  br i1 %.not4.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.i, align 8, !tbaa !14
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !8
  store i8 0, ptr %i.w, align 1, !tbaa !17
  br label %_ZN4toml2v34impl7impl_ex6parser14stop_recordingEm.exit

bb.h:                                             ; preds = %bb.f
  %i.x = add i64 %i.v, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.x, i64 noundef 1)
          to label %_ZN4toml2v34impl7impl_ex6parser14stop_recordingEm.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #53
  unreachable

_ZN4toml2v34impl7impl_ex6parser14stop_recordingEm.exit: ; preds = %bb.g, %bb.h
  %i.aa = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser14stop_recordingEm.exit
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !461 ; 4 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.k, label %bb.o, !prof !173

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.ac, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.aa, %bb.v, %_ZN4toml2v34impl7impl_ex6parser14stop_recordingEm.exit, %_ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.ck

bb.o:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !488 ; 4 uses
  %.not46 = icmp eq i32 %i.af, 61
  br i1 %.not46, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 19, ptr %3, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.154, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %i.ah = icmp ult i32 %i.af, 32
  br i1 %i.ah, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ai = zext nneg i32 %i.af to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.ai ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aj, align 16, !tbaa !139
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !140
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.r:                                             ; preds = %bb.p
  %i.ak = icmp eq i32 %i.af, 127
  br i1 %i.ak, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !495
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.q ], [ %i.al, %bb.s ], [ @.str.29, %bb.r ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.q ], [ %i.an, %bb.s ], [ 6, %bb.r ]
  store i64 %.sroa.0.0.i, ptr %4, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.4.0.i, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 1, ptr %5, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.16, ptr %i.ap, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) #54
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.ck

bb.v:                                             ; preds = %bb.o
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.w unwind label %bb.m

bb.w:                                             ; preds = %bb.v
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !461
  %.not47 = icmp eq ptr %i.ar, null
  br i1 %.not47, label %bb.x, label %bb.aa, !prof !173

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store i64 23, ptr %6, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.13, ptr %i.as, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %6) #54
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %bb.ck

bb.aa:                                            ; preds = %bb.w
  %i.au = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.ab unwind label %bb.m      ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !461 ; 4 uses
  %.not48 = icmp eq ptr %i.av, null
  br i1 %.not48, label %bb.ac, label %bb.af, !prof !173

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 23, ptr %7, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.13, ptr %i.aw, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %7) #54
          to label %bb.ad unwind label %bb.ae
end_hunk_3
begin_hunk_4_@_ZN4toml2v34impl7impl_ex6parser31parse_key_value_pair_and_insertEPNS0_5tableE:bb.a
  %.0.lcssa.i.i.i.i.i181 = phi ptr [ %.1.i.i.i.i.i, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.1.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.1.i.i.i.i.i, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit ], [ %i.ck, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #50
  store ptr %.0.lcssa.i.i.i.i.i181, ptr %15, align 8, !tbaa !594
  store i8 0, ptr %i.by, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #50
  invoke void @_ZNK4toml2v34impl7impl_ex6parser8make_keyEm(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::key") align 8 %16, ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 noundef %.045209)
          to label %bb.au unwind label %bb.br

bb.au:                                            ; preds = %.critedge
  invoke void @_ZN4toml2v35table12emplace_hintIS1_NS0_3keyEJETnNSt9enable_ifIXoo21is_key_or_convertibleIOT0_Esr4implE14is_wide_stringIS5_EEiE4typeELi0EEENS0_4impl14table_iteratorILb0EEENSA_ILb1EEES6_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::impl::table_iterator") align 8 %14, ptr noundef nonnull align 8 dereferenceable(89) %.0211, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %bb.av unwind label %bb.bs

bb.av:                                            ; preds = %bb.au
  %i.ed = load i64, ptr %14, align 8, !tbaa !191
  %i.ee = inttoptr i64 %i.ed to ptr               ; 4 uses
  %i.ef = load ptr, ptr %i.bz, align 8, !tbaa !167 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i, label %_ZN4toml2v313source_regionD2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.eg, align 8, !tbaa !168
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !170
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !70
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #50, !inline_history !595
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !70
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #50, !inline_history !595
  br label %_ZN4toml2v313source_regionD2Ev.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i91 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i.i91, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i.i = phi i32 [ %i.ej, %bb.az ], [ %i.et, %bb.ba ]
  %i.eu = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.eu, label %bb.bb, label %_ZN4toml2v313source_regionD2Ev.exit.i, !prof !173

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit.i

_ZN4toml2v313source_regionD2Ev.exit.i:            ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ax, %bb.av
  %i.ev = load ptr, ptr %16, align 8, !tbaa !8    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ca
  br i1 %i.ew, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i
  %i.ex = load i64, ptr %i.ca, align 8, !tbaa !17
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #51
  br label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit92

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit92: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #50
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !208 ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, i64 16, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !125
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !125
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ee, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !167 ; 4 uses
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !167 ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i93, label %_ZN4toml2v313source_regionaSERKS1_.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit92
  %.not7.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 3 uses
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i94 = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i94, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !172
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fk, align 4, !tbaa !172
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.fo = atomicrmw volatile add ptr %i.fk, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.fg, align 8, !tbaa !167
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.bf, %bb.be, %bb.bc
  %i.fp = phi ptr [ %i.fj, %bb.bc ], [ %i.fj, %bb.be ], [ %.pr.pre.i.i.i.i, %bb.bf ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.fq, align 8, !tbaa !168
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !170
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !70
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #50, !inline_history !596
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !70
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #50, !inline_history !596
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i9.i.i.i.i = icmp eq i8 %i.gb, 0
  br i1 %.not.i9.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95

bb.bk:                                            ; preds = %bb.bi
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i96 = phi i32 [ %i.ft, %bb.bj ], [ %i.gd, %bb.bk ]
  %i.ge = icmp eq i32 %.0.i.i.i.i.i.i96, 1
  br i1 %i.ge, label %bb.bl, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !173

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #50
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95, %bb.bh, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.fi, ptr %i.fg, align 8, !tbaa !167
  br label %_ZN4toml2v313source_regionaSERKS1_.exit

_ZN4toml2v313source_regionaSERKS1_.exit:          ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit92, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %i.gf = load ptr, ptr %i.bv, align 8, !tbaa !576 ; 4 uses
  %i.gg = load ptr, ptr %i.cb, align 8, !tbaa !577
  %.not.i.i97 = icmp eq ptr %i.gf, %i.gg
  br i1 %.not.i.i97, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZN4toml2v313source_regionaSERKS1_.exit
  store ptr %i.fa, ptr %i.gf, align 8, !tbaa !578
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.gh, ptr %i.bv, align 8, !tbaa !576
  br label %.critedge64

bb.bn:                                            ; preds = %_ZN4toml2v313source_regionaSERKS1_.exit
  %i.gi = load ptr, ptr %i.bu, align 8, !tbaa !580 ; 4 uses
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gl = sub i64 %i.gj, %i.gk                    ; 5 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775800
  br i1 %i.gm, label %bb.bo, label %_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.bo
  unreachable

_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bn
  %i.gn = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 2 uses
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #55
          to label %.noexc99 unwind label %.loopexit194 ; 4 uses

.noexc99:                                         ; preds = %_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gl ; 2 uses
  store ptr %i.fa, ptr %i.gu, align 8, !tbaa !578
  %i.gv = icmp sgt i64 %i.gl, 0
  br i1 %i.gv, label %bb.bp, label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.bp:                                            ; preds = %.noexc99
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.bp, %.noexc99
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.gx = load ptr, ptr %i.cb, align 8, !tbaa !577
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gz) #51
  br label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.bq, %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.gt, ptr %i.bu, align 8, !tbaa !580
  store ptr %i.gw, ptr %i.bv, align 8, !tbaa !576
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  store ptr %i.ha, ptr %i.cb, align 8, !tbaa !577
  br label %.critedge64

bb.br:                                            ; preds = %.critedge
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.au
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4toml2v33keyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #50
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn53 = phi { ptr, i32 } [ %i.hc, %bb.bs ], [ %i.hb, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #50
  br label %bb.ck

.loopexit194:                                     ; preds = %_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp:                               ; preds = %bb.bo
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.critedge64:                                      ; preds = %.lr.ph.i, %.lr.ph.i81, %bb.bm, %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.1 = phi ptr [ %i.dg, %.lr.ph.i81 ], [ %i.fa, %bb.bm ], [ %i.fa, %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.dg, %.lr.ph.i ] ; 2 uses
  %i.hd = add nuw i64 %.045209, 1                 ; 2 uses
  %i.he = load ptr, ptr %i.bn, align 8, !tbaa !583
  %i.hf = load ptr, ptr %i.bm, align 8, !tbaa !584 ; 3 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 2 uses
  %i.hj = ashr exact i64 %i.hi, 4
  %i.hk = add nsw i64 %i.hj, -1
  %i.hl = icmp ult i64 %i.hd, %i.hk
  br i1 %i.hl, label %bb.an, label %.loopexit192, !llvm.loop !597

.loopexit192:                                     ; preds = %.critedge64, %bb.am
  %.pre-phi224 = phi i64 [ %i.bs, %bb.am ], [ %i.hi, %.critedge64 ]
  %i.hm = phi ptr [ %i.bp, %bb.am ], [ %i.hf, %.critedge64 ]
  %.2 = phi ptr [ %1, %bb.am ], [ %.1, %.critedge64 ] ; 3 uses
  %i.hn = ashr exact i64 %.pre-phi224, 4
  %i.ho = add nsw i64 %i.hn, -1                   ; 2 uses
  %i.hp = load ptr, ptr %i.bl, align 8, !tbaa !8
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.ho ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !585
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hr ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !587 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.2, i64 56
  %i.hw = getelementptr inbounds nuw i8, ptr %.2, i64 48 ; 3 uses
  %.0810.i.i.i.i.i100 = load ptr, ptr %i.hv, align 8, !tbaa !191, !noalias !598 ; 2 uses
  %.not11.i.i.i.i.i101 = icmp eq ptr %.0810.i.i.i.i.i100, null
  br i1 %.not11.i.i.i.i.i101, label %.critedge2, label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %.loopexit192, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i107
  %.0813.i.i.i.i.i103 = phi ptr [ %.08.i.i.i.i.i112, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i107 ], [ %.0810.i.i.i.i.i100, %.loopexit192 ] ; 4 uses
  %.012.i.i.i.i.i104 = phi ptr [ %.1.i.i.i.i.i111, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i107 ], [ %i.hw, %.loopexit192 ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i103, i64 40
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !14, !noalias !598 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i105 = call i64 @llvm.umin.i64(i64 %i.hu, i64 %i.hy) ; 2 uses
  %i.hz = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i105, 0
  br i1 %i.hz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i115, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i106

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i106: ; preds = %.lr.ph.i.i.i.i.i102
  %i.ia = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i103, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !8, !noalias !598
  %i.ic = call i32 @memcmp(ptr noundef %i.ib, ptr noundef readonly %i.hs, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i105) #50, !noalias !598 ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i115, label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i107

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i115: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i106, %.lr.ph.i.i.i.i.i102
  %i.ie = sub i64 %i.hy, %i.hu
  %spec.select7.i.i.i.i.i.i.i.i.i.i116 = call i64 @llvm.smax.i64(i64 %i.ie, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i117 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i116, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i118 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i117 to i32
  br label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i107

_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i107: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i115, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i106
  %.0.i.i.i.i.i.i.i.i.i108 = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i118, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i115 ], [ %i.ic, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i106 ]
  %i.if = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i108, 0 ; 2 uses
  %.19.in.v.i.i.i.i.i109 = select i1 %i.if, i64 24, i64 16
  %.19.in.i.i.i.i.i110 = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i103, i64 %.19.in.v.i.i.i.i.i109
  %.1.i.i.i.i.i111 = select i1 %i.if, ptr %.012.i.i.i.i.i104, ptr %.0813.i.i.i.i.i103 ; 8 uses
  %.08.i.i.i.i.i112 = load ptr, ptr %.19.in.i.i.i.i.i110, align 8, !tbaa !191, !noalias !598 ; 2 uses
  %.not.i.i.i.i.i113 = icmp eq ptr %.08.i.i.i.i.i112, null
  br i1 %.not.i.i.i.i.i113, label %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit119, label %.lr.ph.i.i.i.i.i102, !llvm.loop !192

_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit119: ; preds = %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i107
  %.not189 = icmp eq ptr %.1.i.i.i.i.i111, %i.hw
  br i1 %.not189, label %.critedge2, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit120

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit120: ; preds = %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit119
  %i.ig = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i111, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i111, i64 96
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !208 ; 2 uses
  %i.ij = load ptr, ptr %i.ig, align 8, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i111, i64 40
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !14
  %i.im = icmp eq i64 %i.il, %i.hu
  br i1 %i.im, label %bb.bu, label %.critedge2

bb.bu:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit120
  %i.in = icmp eq i64 %i.hu, 0
  br i1 %i.in, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit127, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123: ; preds = %bb.bu
  %bcmp.i124 = call i32 @bcmp(ptr %i.ij, ptr %i.hs, i64 %i.hu)
  %i.io = icmp eq i32 %bcmp.i124, 0
  br i1 %i.io, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit127, label %.critedge2

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit127: ; preds = %bb.bu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #50
  store i64 25, ptr %17, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @.str.156, ptr %i.ip, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #50
  %i.iq = load ptr, ptr %i.ii, align 8, !tbaa !70
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef zeroext i8 %i.is(ptr noundef nonnull align 8 dereferenceable(40) %i.ii) #52
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl24node_type_friendly_namesE, i64 %i.iu ; 2 uses
  %.sroa.0.0.copyload.i128 = load i64, ptr %i.iv, align 16, !tbaa !139
  %.sroa.2.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %.sroa.2.0.copyload.i130 = load ptr, ptr %.sroa.2.0..sroa_idx.i129, align 8, !tbaa !140
  store i64 %.sroa.0.0.copyload.i128, ptr %18, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.sroa.2.0.copyload.i130, ptr %i.iw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #50
  store i64 2, ptr %19, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str.158, ptr %i.ix, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #50
  %.val = load ptr, ptr %i.h, align 8, !tbaa !8
  %.val65 = load i64, ptr %i.i, align 8, !tbaa !14
  store i64 %.val65, ptr %20, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %.val, ptr %i.iy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #50
  store i64 1, ptr %21, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @.str.16, ptr %i.iz, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21) #54
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit127
  unreachable

bb.bw:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit127
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #50
  br label %bb.ck

.critedge2:                                       ; preds = %.loopexit192, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit120, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit119
  %.0.lcssa.i.i.i.i.i114187 = phi ptr [ %.1.i.i.i.i.i111, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit119 ], [ %.1.i.i.i.i.i111, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123 ], [ %.1.i.i.i.i.i111, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit120 ], [ %i.hw, %.loopexit192 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #50
  invoke void @_ZNK4toml2v34impl7impl_ex6parser8make_keyEm(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::key") align 8 %22, ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 noundef %i.ho)
          to label %bb.bx unwind label %bb.cg

bb.bx:                                            ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #50
  invoke void @_ZN4toml2v34impl7impl_ex6parser11parse_valueEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %23, ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.by unwind label %bb.ch

bb.by:                                            ; preds = %bb.bx
  store ptr %.0.lcssa.i.i.i.i.i114187, ptr %24, align 8, !tbaa !594
  %i.jb = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i8 0, ptr %i.jb, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #50
  invoke void @_ZN4toml2v35table12emplace_hintISt10unique_ptrINS0_4nodeESt14default_deleteIS4_EENS0_3keyEJS7_ETnNSt9enable_ifIXoo21is_key_or_convertibleIOT0_Esr4implE14is_wide_stringISA_EEiE4typeELi0EEENS0_4impl14table_iteratorILb0EEENSF_ILb1EEESB_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::impl::table_iterator") align 8 %25, ptr noundef nonnull align 8 dereferenceable(89) %.2, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bz unwind label %bb.ci

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #50
  %i.jc = load ptr, ptr %23, align 8, !tbaa !208  ; 3 uses
  %.not.i135 = icmp eq ptr %i.jc, null
  br i1 %.not.i135, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i: ; preds = %bb.bz
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !70
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(40) %i.jc) #50, !inline_history !312
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.bz, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #50
  %i.jg = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !167 ; 8 uses
  %.not.i.i.i.i136 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i136, label %_ZN4toml2v313source_regionD2Ev.exit.i140, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 4 uses
  %i.jj = load atomic i64, ptr %i.ji acquire, align 8 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 4294967297
  %i.jl = trunc i64 %i.jj to i32                  ; 2 uses
  br i1 %i.jk, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.ji, align 8, !tbaa !168
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  store i32 0, ptr %i.jm, align 4, !tbaa !170
  %i.jn = load ptr, ptr %i.jh, align 8, !tbaa !70
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(16) %i.jh) #50, !inline_history !595
  %i.jq = load ptr, ptr %i.jh, align 8, !tbaa !70
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(16) %i.jh) #50, !inline_history !595
  br label %_ZN4toml2v313source_regionD2Ev.exit.i140

bb.cc:                                            ; preds = %bb.ca
  %i.jt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i137 = icmp eq i8 %i.jt, 0
  br i1 %.not.i.i.i.i.i137, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ju = add nsw i32 %i.jl, -1
  store i32 %i.ju, ptr %i.ji, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i138

bb.ce:                                            ; preds = %bb.cc
  %i.jv = atomicrmw volatile add ptr %i.ji, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i138

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i138: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i.i.i139 = phi i32 [ %i.jl, %bb.cd ], [ %i.jv, %bb.ce ]
  %i.jw = icmp eq i32 %.0.i.i.i.i.i.i139, 1
  br i1 %i.jw, label %bb.cf, label %_ZN4toml2v313source_regionD2Ev.exit.i140, !prof !173

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i138
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jh) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit.i140

_ZN4toml2v313source_regionD2Ev.exit.i140:         ; preds = %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i138, %bb.cb, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %i.jx = load ptr, ptr %22, align 8, !tbaa !8    ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZN4toml2v33keyD2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i140
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !17
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #51
  br label %_ZN4toml2v33keyD2Ev.exit143

_ZN4toml2v33keyD2Ev.exit143:                      ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6175, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6175)
  ret i1 true

bb.cg:                                            ; preds = %.critedge2
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ch:                                            ; preds = %bb.bx
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit146

bb.ci:                                            ; preds = %bb.by
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #50
  %i.kf = load ptr, ptr %23, align 8, !tbaa !208  ; 3 uses
  %.not.i144 = icmp eq ptr %i.kf, null
  br i1 %.not.i144, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit146, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i145

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i145: ; preds = %bb.ci
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !70
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(40) %i.kf) #50, !inline_history !312
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit146

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit146: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i145, %bb.ci, %bb.ch
  %.pn = phi { ptr, i32 } [ %i.kd, %bb.ch ], [ %i.ke, %bb.ci ], [ %i.ke, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i145 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #50
  call void @_ZN4toml2v33keyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %22) #50
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit146, %bb.cg
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit146 ], [ %i.kc, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #50
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit194, %.loopexit.split-lp, %bb.bw, %bb.cj, %bb.at, %bb.bt, %bb.al, %bb.ae, %bb.z, %bb.u, %bb.n, %bb.m
  %.pn59 = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.aq, %bb.u ], [ %i.at, %bb.z ], [ %i.ax, %bb.ae ], [ %i.bk, %bb.al ], [ %i.ad, %bb.m ], [ %.pn53, %bb.bt ], [ %i.ec, %bb.at ], [ %.pn.pn, %bb.cj ], [ %i.ja, %bb.bw ], [ %lpad.loopexit, %.loopexit194 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6175, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6175)
  resume { ptr, i32 } %.pn59
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v32ex5parseESt17basic_string_viewIcSt11char_traitsIcEES5_(ptr dead_on_unwind noalias writable sret(%"class.toml::v3::table") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::allocator.96", align 1 ; 3 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.(anonymous namespace)::utf8_reader", align 32 ; 14 uses
  store i64 %3, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE, i64 16), ptr %8, align 32, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i.i, align 16, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !601
  %i.d = icmp ugt i64 %1, 2
  br i1 %i.d, label %bb.b, label %_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %2, align 1
  %i.f = xor i16 -17425, %i.e
  %i.g = getelementptr i8, ptr %2, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i16
  %i.j = xor i16 191, %i.i
  %i.k = or i16 %i.f, %i.j
  %i.l = icmp ne i16 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i

bb.c:                                             ; preds = %bb.b
  store i64 3, ptr %i.c, align 8, !tbaa !601
  br label %_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i

_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %i.o, align 32, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 864 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 0, ptr %i.q, align 8, !tbaa !603
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = icmp eq i64 %3, 0
  br i1 %i.s, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEC2IRS4_S7_EEOT_OT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50, !noalias !609
  store ptr null, ptr %6, align 16, !tbaa !125, !alias.scope !609
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvEJRSt17basic_string_viewIcS7_EEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i unwind label %bb.e

_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50, !noalias !609
  %i.u = load <2 x ptr>, ptr %6, align 16, !tbaa !180
  store <2 x ptr> %i.u, ptr %i.p, align 32, !tbaa !180
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEC2IRS4_S7_EEOT_OT0_.exit

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #53
  unreachable

_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEC2IRS4_S7_EEOT_OT0_.exit: ; preds = %_ZN12_GLOBAL__N_116utf8_byte_streamISt17basic_string_viewIcSt11char_traitsIcEEEC2ES4_.exit.i, %_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  invoke fastcc void @_ZN12_GLOBAL__N_18do_parseEONS_21utf8_reader_interfaceE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEC2IRS4_S7_EEOT_OT0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 872
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !167  ; 8 uses
  %.not.i.i.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i2, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.z, align 8, !tbaa !168
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !170
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #50, !inline_history !612
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #50, !inline_history !612
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i3 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4

bb.k:                                             ; preds = %bb.i
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i5 = phi i32 [ %i.ac, %bb.j ], [ %i.am, %bb.k ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i5, 1
  br i1 %i.an, label %bb.l, label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, !prof !173

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #50
  br label %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit

_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  ret void

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEC2IRS4_S7_EEOT_OT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 32 dead_on_return(880) dereferenceable(896) %8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18do_parseEONS_21utf8_reader_interfaceE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.toml::v3::impl::impl_ex::parser", align 8 ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store ptr %1, ptr %2, align 8, !tbaa !613
  %.ptr3.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3080) %.ptr3.i.i, i8 0, i64 3080, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3088 ; 4 uses
  call void @_ZN4toml2v35tableC1Ev(ptr noundef nonnull align 8 dereferenceable(89) %i.a) #50
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 3184 ; 2 uses
  store i32 1, ptr %i.b, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3188
  store i32 1, ptr %i.c, align 4, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3192 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 3200
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 3224
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 3248
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 3272
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 3296 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 3312 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 3304
  store i64 0, ptr %i.k, align 8, !tbaa !14
  store i8 0, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, i8 0, i64 72, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 3400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 3416 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 3408
  store i64 0, ptr %i.o, align 8, !tbaa !14
  store i8 0, ptr %i.n, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 3432 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 3448 ; 4 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 3440
  store i64 0, ptr %i.r, align 8, !tbaa !14
  store i8 0, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 3464
  store i8 0, ptr %i.s, align 8, !tbaa !529
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 3465
  store i8 1, ptr %i.t, align 1, !tbaa !530
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 3472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = load i64, ptr %i.b, align 8              ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !526, !nonnull !121, !align !527 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef nonnull align 8 dereferenceable(16) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #50, !inline_history !614 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !180
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZN4toml2v314toml_formatter5printERKNS0_5tableE:bb.a
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread", label %bb.m

bb.c:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 224
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull readonly align 8 dereferenceable(40) %i.v) #52, !inline_history !681 ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !189 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread", label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i, i64 8 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not15.i.i.i, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.012.017.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ah, %bb.d ] ; 2 uses
  %i.am = load ptr, ptr %.sroa.012.017.i.i.i, align 8, !tbaa !208 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef zeroext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %i.am) #52, !inline_history !682
  %.not.i.i.i = icmp eq i8 %i.aq, 1
  br i1 %.not.i.i.i, label %bb.e, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread"

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit": ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !208
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.at = load i8, ptr %i.as, align 8, !tbaa !148, !range !120, !noundef !121
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread", label %bb.m

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread": ; preds = %.lr.ph.i.i.i, %bb.d, %bb.c, %bb.b, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit"
  store i8 1, ptr %i.d, align 8, !tbaa !665
  %i.av = load i8, ptr %i.e, align 4, !tbaa !145, !range !120, !noundef !121
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN4toml2v34impl9formatter13print_newlineEb.exit, label %bb.f

bb.f:                                             ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread"
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !146
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.e, align 4, !tbaa !145
  br label %_ZN4toml2v34impl9formatter13print_newlineEb.exit

_ZN4toml2v34impl9formatter13print_newlineEb.exit: ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit.thread", %bb.f
  %i.az = load i32, ptr %i.g, align 8, !tbaa !144
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit

.lr.ph.i:                                         ; preds = %_ZN4toml2v34impl9formatter13print_newlineEb.exit, %.lr.ph.i
  %.02.i = phi i32 [ %i.bd, %.lr.ph.i ], [ 0, %_ZN4toml2v34impl9formatter13print_newlineEb.exit ]
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !146
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !139
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) ; 0 uses
  store i8 0, ptr %i.e, align 4, !tbaa !145
  %i.bd = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.be = load i32, ptr %i.g, align 8, !tbaa !144
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.i, label %_ZN4toml2v34impl9formatter12print_indentEv.exit, !llvm.loop !660

_ZN4toml2v34impl9formatter12print_indentEv.exit:  ; preds = %.lr.ph.i, %_ZN4toml2v34impl9formatter13print_newlineEb.exit
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0162.0180, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !14
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 %i.bi, ptr %i.bg, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.bj = load i64, ptr %i.i, align 8, !tbaa !141
  %i.bk = and i64 %i.bj, 4096
  %.not.i.i.not = icmp eq i64 %i.bk, 0
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !146 ; 2 uses
  br i1 %.not.i.i.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.44, i64 noundef 3) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i8 0, ptr %i.e, align 4, !tbaa !145
  %i.bo = icmp ne i8 %i.z, 0
  tail call void @llvm.assume(i1 %i.bo)
  switch i8 %i.z, label %bb.l [
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4toml2v314toml_formatter12print_inlineERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.v)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5arrayE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v)
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 noundef zeroext %i.z)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.b, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit"
  %i.bp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0162.0180) #52 ; 2 uses
  %.not175.a = icmp eq ptr %i.bp, %i.c
  br i1 %.not175.a, label %._crit_edge.loopexit, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit

._crit_edge191.loopexit:                          ; preds = %bb.ak
  %.pre199.a = load ptr, ptr %i.a, align 8, !tbaa !400, !noalias !683
  br label %._crit_edge191

._crit_edge191:                                   ; preds = %._crit_edge191.loopexit, %._crit_edge
  %i.bq = phi ptr [ %.pre199.a, %._crit_edge191.loopexit ], [ %i.j, %._crit_edge ] ; 2 uses
  %.not177194 = icmp eq ptr %i.bq, %i.c
  br i1 %.not177194, label %._crit_edge196, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101.lr.ph

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101.lr.ph: ; preds = %._crit_edge191
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82: ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82.lr.ph, %bb.ak
  %.sroa.0152.0190 = phi ptr [ %i.j, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82.lr.ph ], [ %i.gi, %bb.ak ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0152.0190, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0152.0190, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !208 ; 7 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !70
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef zeroext i8 %i.cf(ptr noundef nonnull align 8 dereferenceable(40) %i.cc) #52
  %.not = icmp eq i8 %i.cg, 1
  br i1 %.not, label %bb.n, label %bb.ak

bb.n:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !148, !range !120, !noundef !121
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !400, !noalias !686 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %.not178181 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not178181, label %._crit_edge186, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84

._crit_edge186.loopexit:                          ; preds = %bb.ac
  %i.cn = icmp eq i64 %.175, 0
  %i.co = icmp ne i64 %.173, 0
  %i.cp = icmp ne i64 %.171, 0
  %i.cq = select i1 %i.co, i1 true, i1 %i.cp
  %i.cr = select i1 %i.cn, i1 %i.cq, i1 false
  br label %._crit_edge186

._crit_edge186:                                   ; preds = %._crit_edge186.loopexit, %bb.o
  %.074.lcssa = phi i1 [ false, %bb.o ], [ %i.cr, %._crit_edge186.loopexit ]
  %i.cs = load ptr, ptr %i.l, align 8, !tbaa !689 ; 4 uses
  %i.ct = load ptr, ptr %i.m, align 8, !tbaa !166
  %.not.i.i83 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i.i83, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge186
  store ptr %i.ca, ptr %i.cs, align 8, !tbaa !412
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cu, ptr %i.l, align 8, !tbaa !689
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit

bb.q:                                             ; preds = %._crit_edge186
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !162 ; 4 uses
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 5 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.r, label %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
  unreachable

_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 2 uses
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #55 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy ; 2 uses
  store ptr %i.ca, ptr %i.dh, align 8, !tbaa !412
  %i.di = icmp sgt i64 %i.cy, 0
  br i1 %i.di, label %bb.s, label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr align 8 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.s, %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.dk = load ptr, ptr %i.m, align 8, !tbaa !166
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dm) #51
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.dg, ptr %i.k, align 8, !tbaa !162
  store ptr %i.dj, ptr %i.l, align 8, !tbaa !689
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.dn, ptr %i.m, align 8, !tbaa !166
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.p, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  br i1 %.074.lcssa, label %.critedge, label %bb.ad

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84: ; preds = %bb.o, %bb.ac
  %.070185 = phi i64 [ %.171, %bb.ac ], [ 0, %bb.o ] ; 5 uses
  %.072184 = phi i64 [ %.173, %bb.ac ], [ 0, %bb.o ] ; 5 uses
  %.074183 = phi i64 [ %.175, %bb.ac ], [ 0, %bb.o ] ; 5 uses
  %.sroa.0144.0182 = phi ptr [ %i.ev, %bb.ac ], [ %i.cl, %bb.o ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0144.0182, i64 96
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !208 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !70 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = tail call noundef zeroext i8 %i.ds(ptr noundef nonnull align 8 dereferenceable(40) %i.dp) #52 ; 2 uses
  %i.du = icmp ne i8 %i.dt, 0
  tail call void @llvm.assume(i1 %i.du)
  switch i8 %i.dt, label %bb.ab [
    i8 1, label %bb.u
    i8 2, label %bb.x
  ]

bb.u:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !148, !range !120, !noundef !121
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dy = add i64 %.074183, 1
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.dz = add i64 %.072184, 1
  br label %bb.ac

bb.x:                                             ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 224
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call noundef ptr %i.eb(ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dp) #52, !inline_history !681 ; 3 uses
  %.not.i85 = icmp eq ptr %i.ec, null
  br i1 %.not.i85, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !189 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !189 ; 2 uses
  %i.eh = icmp eq ptr %i.ee, %i.eg
  br i1 %i.eh, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread", label %.lr.ph.i.i.i86

bb.z:                                             ; preds = %.lr.ph.i.i.i86
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i87, i64 8 ; 2 uses
  %.not15.i.i.i90 = icmp eq ptr %i.ei, %i.eg
  br i1 %.not15.i.i.i90, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92", label %.lr.ph.i.i.i86

.lr.ph.i.i.i86:                                   ; preds = %bb.y, %bb.z
  %.sroa.012.017.i.i.i87 = phi ptr [ %i.ei, %bb.z ], [ %i.ee, %bb.y ] ; 2 uses
  %i.ej = load ptr, ptr %.sroa.012.017.i.i.i87, align 8, !tbaa !208 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !70
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call noundef zeroext i8 %i.em(ptr noundef nonnull align 8 dereferenceable(40) %i.ej) #52, !inline_history !682
  %.not.i.i.i88 = icmp eq i8 %i.en, 1
  br i1 %.not.i.i.i88, label %bb.z, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread"

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92": ; preds = %bb.z
  %i.eo = load ptr, ptr %i.ee, align 8, !tbaa !208
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 88
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !148, !range !120, !noundef !121
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread", label %bb.aa

bb.aa:                                            ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92"
  %i.es = add i64 %.070185, 1
  br label %bb.ac

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread": ; preds = %.lr.ph.i.i.i86, %bb.y, %bb.x, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92"
  %i.et = add i64 %.074183, 1
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84
  %i.eu = add i64 %.074183, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread", %bb.v, %bb.w, %bb.ab
  %.175 = phi i64 [ %i.eu, %bb.ab ], [ %i.dy, %bb.v ], [ %.074183, %bb.w ], [ %.074183, %bb.aa ], [ %i.et, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread" ] ; 2 uses
  %.173 = phi i64 [ %.072184, %bb.ab ], [ %.072184, %bb.v ], [ %i.dz, %bb.w ], [ %.072184, %bb.aa ], [ %.072184, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread" ] ; 2 uses
  %.171 = phi i64 [ %.070185, %bb.ab ], [ %.070185, %bb.v ], [ %.070185, %bb.w ], [ %i.es, %bb.aa ], [ %.070185, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit92.thread" ] ; 2 uses
  %i.ev = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0144.0182) #52 ; 2 uses
  %.not178 = icmp eq ptr %i.ev, %i.cm
  br i1 %.not178, label %._crit_edge186.loopexit, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit84

bb.ad:                                            ; preds = %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit
  %i.ew = load i8, ptr %i.n, align 8, !tbaa !665, !range !120, !noundef !121
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ae, label %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ey = load ptr, ptr %i.p, align 8, !tbaa !146
  %i.ez = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.o, align 4, !tbaa !145
  %i.fa = load ptr, ptr %i.p, align 8, !tbaa !146
  %i.fb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.o, align 4, !tbaa !145
  store i8 0, ptr %i.n, align 8, !tbaa !665
  br label %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit

_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit: ; preds = %bb.ad, %bb.ae
  %i.fc = load i64, ptr %i.q, align 8, !tbaa !141
  %i.fd = and i64 %i.fc, 512
  %.not.i.i79.not = icmp eq i64 %i.fd, 0
  %.pre198 = load i32, ptr %i.r, align 8, !tbaa !144 ; 2 uses
  br i1 %.not.i.i79.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit
  %i.fe = add nsw i32 %.pre198, 1                 ; 2 uses
  store i32 %i.fe, ptr %i.r, align 8, !tbaa !144
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit
  %i.ff = phi i32 [ %i.fe, %bb.af ], [ %.pre198, %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit ]
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i93, label %_ZN4toml2v34impl9formatter12print_indentEv.exit98

.lr.ph.i93:                                       ; preds = %bb.ag, %.lr.ph.i93
  %.02.i95 = phi i32 [ %i.fj, %.lr.ph.i93 ], [ 0, %bb.ag ]
  %i.fh = load ptr, ptr %i.p, align 8, !tbaa !146
  %.sroa.0.0.copyload.i96 = load i64, ptr %i.s, align 8, !tbaa !139
  %.sroa.2.0.copyload.i97 = load ptr, ptr %.sroa.2.0..sroa_idx.i94, align 8, !tbaa !140
  %i.fi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef %.sroa.2.0.copyload.i97, i64 noundef %.sroa.0.0.copyload.i96) ; 0 uses
  store i8 0, ptr %i.o, align 4, !tbaa !145
  %i.fj = add nuw nsw i32 %.02.i95, 1             ; 2 uses
  %i.fk = load i32, ptr %i.r, align 8, !tbaa !144
  %i.fl = icmp slt i32 %i.fj, %i.fk
  br i1 %i.fl, label %.lr.ph.i93, label %_ZN4toml2v34impl9formatter12print_indentEv.exit98, !llvm.loop !660

_ZN4toml2v34impl9formatter12print_indentEv.exit98: ; preds = %.lr.ph.i93, %bb.ag
  %i.fm = load ptr, ptr %i.p, align 8, !tbaa !146
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.47, i64 noundef 1) ; 0 uses
  store i8 0, ptr %i.o, align 4, !tbaa !145
  %i.fo = load ptr, ptr %i.k, align 8, !tbaa !690 ; 2 uses
  %i.fp = load ptr, ptr %i.l, align 8, !tbaa !690 ; 2 uses
  %.not45.i = icmp eq ptr %i.fo, %i.fp
  br i1 %.not45.i, label %.loopexit, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit98, %bb.ai
  %.07.i = phi i64 [ %i.fr, %bb.ai ], [ 0, %_ZN4toml2v34impl9formatter12print_indentEv.exit98 ] ; 2 uses
  %.sroa.01.06.i = phi ptr [ %i.fx, %bb.ai ], [ %i.fo, %_ZN4toml2v34impl9formatter12print_indentEv.exit98 ] ; 2 uses
  %i.fq = load ptr, ptr %.sroa.01.06.i, align 8, !tbaa !412 ; 2 uses
  %i.fr = add i64 %.07.i, 1
  %.not.i100 = icmp eq i64 %.07.i, 0
  br i1 %.not.i100, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i99
  %i.fs = load ptr, ptr %i.p, align 8, !tbaa !146
  %i.ft = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, i8 noundef signext 46) ; 0 uses
  store i8 0, ptr %i.o, align 4, !tbaa !145
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i99
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !14
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 %i.fw, ptr %i.fu, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 8 ; 2 uses
  %.not4.i = icmp eq ptr %i.fx, %i.fp
  br i1 %.not4.i, label %.loopexit, label %.lr.ph.i99

.loopexit:                                        ; preds = %bb.ai, %_ZN4toml2v34impl9formatter12print_indentEv.exit98
  %i.fy = load ptr, ptr %i.p, align 8, !tbaa !146
  %i.fz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef nonnull @.str.48, i64 noundef 1) ; 0 uses
  store i8 0, ptr %i.o, align 4, !tbaa !145
  store i8 1, ptr %i.n, align 8, !tbaa !665
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.cc)
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !689
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -8
  store ptr %i.gb, ptr %i.l, align 8, !tbaa !689
  %i.gc = load i64, ptr %i.q, align 8, !tbaa !141
  %i.gd = and i64 %i.gc, 512
  %.not.i.i78.not = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i78.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.ge = load i32, ptr %i.r, align 8, !tbaa !144
  %i.gf = add nsw i32 %i.ge, -1
  store i32 %i.gf, ptr %i.r, align 8, !tbaa !144
  br label %bb.ak

.critedge:                                        ; preds = %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.cc)
  %i.gg = load ptr, ptr %i.l, align 8, !tbaa !689
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -8
  store ptr %i.gh, ptr %i.l, align 8, !tbaa !689
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.aj, %.critedge, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82, %bb.n
  %i.gi = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0152.0190) #52 ; 2 uses
  %.not176.a = icmp eq ptr %i.gi, %i.c
  br i1 %.not176.a, label %._crit_edge191.loopexit, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit82

._crit_edge196:                                   ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread", %._crit_edge191
  ret void

_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101: ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101.lr.ph, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread"
  %.sroa.0134.0195 = phi ptr [ %i.bq, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101.lr.ph ], [ %i.kc, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread" ] ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0134.0195, i64 32 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0134.0195, i64 96
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !208 ; 4 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !70
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 224
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = tail call noundef ptr %i.go(ptr noundef nonnull readonly align 8 dereferenceable(40) %i.gl) #52, !inline_history !681 ; 3 uses
  %.not.i102 = icmp eq ptr %i.gp, null
  br i1 %.not.i102, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread", label %bb.al

bb.al:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !189 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !189 ; 2 uses
  %i.gu = icmp eq ptr %i.gr, %i.gt
  br i1 %i.gu, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread", label %.lr.ph.i.i.i103

bb.am:                                            ; preds = %.lr.ph.i.i.i103
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i.i.i104, i64 8 ; 2 uses
  %.not15.i.i.i107 = icmp eq ptr %i.gv, %i.gt
  br i1 %.not15.i.i.i107, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109", label %.lr.ph.i.i.i103

.lr.ph.i.i.i103:                                  ; preds = %bb.al, %bb.am
  %.sroa.012.017.i.i.i104 = phi ptr [ %i.gv, %bb.am ], [ %i.gr, %bb.al ] ; 2 uses
  %i.gw = load ptr, ptr %.sroa.012.017.i.i.i104, align 8, !tbaa !208 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !70
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = tail call noundef zeroext i8 %i.gz(ptr noundef nonnull align 8 dereferenceable(40) %i.gw) #52, !inline_history !682
  %.not.i.i.i105 = icmp eq i8 %i.ha, 1
  br i1 %.not.i.i.i105, label %bb.am, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread"

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109": ; preds = %bb.am
  %i.hb = load ptr, ptr %i.gr, align 8, !tbaa !208
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 88
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !148, !range !120, !noundef !121
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread", label %bb.an

bb.an:                                            ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109"
  %i.hf = load i64, ptr %i.br, align 8, !tbaa !141
  %i.hg = and i64 %i.hf, 512
  %.not.i.i77.not = icmp eq i64 %i.hg, 0
  br i1 %.not.i.i77.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hh = load i32, ptr %i.bs, align 8, !tbaa !144
  %i.hi = add nsw i32 %i.hh, 1
  store i32 %i.hi, ptr %i.bs, align 8, !tbaa !144
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hj = load ptr, ptr %i.bu, align 8, !tbaa !689 ; 4 uses
  %i.hk = load ptr, ptr %i.bv, align 8, !tbaa !166
  %.not.i.i110 = icmp eq ptr %i.hj, %i.hk
  br i1 %.not.i.i110, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.gj, ptr %i.hj, align 8, !tbaa !412
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  store ptr %i.hl, ptr %i.bu, align 8, !tbaa !689
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117

bb.ar:                                            ; preds = %bb.ap
  %i.hm = load ptr, ptr %i.bt, align 8, !tbaa !162 ; 4 uses
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = ptrtoint ptr %i.hm to i64               ; 2 uses
  %i.hp = sub i64 %i.hn, %i.ho                    ; 5 uses
  %i.hq = icmp eq i64 %i.hp, 9223372036854775800
  br i1 %i.hq, label %bb.as, label %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i111

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
  unreachable

_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i111: ; preds = %bb.ar
  %i.hr = ashr exact i64 %i.hp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i112 = tail call i64 @llvm.umax.i64(i64 %i.hr, i64 1)
  %i.hs = add nsw i64 %.sroa.speculated.i.i.i.i112, %i.hr ; 2 uses
  %i.ht = icmp ult i64 %i.hs, %i.hr
  %i.hu = tail call i64 @llvm.umin.i64(i64 %i.hs, i64 1152921504606846975)
  %i.hv = select i1 %i.ht, i64 1152921504606846975, i64 %i.hu ; 2 uses
  %i.hw = shl nuw nsw i64 %i.hv, 3
  %i.hx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #55 ; 4 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 %i.hp ; 2 uses
  store ptr %i.gj, ptr %i.hy, align 8, !tbaa !412
  %i.hz = icmp sgt i64 %i.hp, 0
  br i1 %i.hz, label %bb.at, label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i114

bb.at:                                            ; preds = %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i111
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr align 8 %i.hm, i64 %i.hp, i1 false)
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i114

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i114: ; preds = %bb.at, %_ZNKSt6vectorIPKN4toml2v33keyESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i111
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %.not.i17.i.i.i115 = icmp eq ptr %i.hm, null
  br i1 %.not.i17.i.i.i115, label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i116, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i114
  %i.ib = load ptr, ptr %i.bv, align 8, !tbaa !166
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = sub i64 %i.ic, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.id) #51
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i116

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i116: ; preds = %bb.au, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i114
  store ptr %i.hx, ptr %i.bt, align 8, !tbaa !162
  store ptr %i.ia, ptr %i.bu, align 8, !tbaa !689
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hv
  store ptr %i.ie, ptr %i.bv, align 8, !tbaa !166
  br label %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117

_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117: ; preds = %bb.aq, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i116
  %i.if = phi ptr [ %i.hl, %bb.aq ], [ %i.ia, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i116 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gl, i64 40 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gl, i64 48 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !205
  %i.ij = load ptr, ptr %i.ig, align 8, !tbaa !207
  %.not197 = icmp eq ptr %i.ii, %i.ij
  br i1 %.not197, label %._crit_edge193, label %.lr.ph

._crit_edge193.loopexit:                          ; preds = %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131"
  %.pre200 = load ptr, ptr %i.bu, align 8, !tbaa !689
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %._crit_edge193.loopexit, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117
  %i.ik = phi ptr [ %.pre200, %._crit_edge193.loopexit ], [ %i.if, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117 ]
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -8
  store ptr %i.il, ptr %i.bu, align 8, !tbaa !689
  %i.im = load i64, ptr %i.br, align 8, !tbaa !141
  %i.in = and i64 %i.im, 512
  %.not.i.i76.not = icmp eq i64 %i.in, 0
  br i1 %.not.i.i76.not, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread", label %bb.ay

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131"
  %.068192 = phi i64 [ %i.js, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131" ], [ 0, %_ZNSt6vectorIPKN4toml2v33keyESaIS4_EE9push_backEOS4_.exit117 ] ; 2 uses
  %i.io = load i8, ptr %i.bw, align 8, !tbaa !665, !range !120, !noundef !121
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.av, label %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118

bb.av:                                            ; preds = %.lr.ph
  %i.iq = load ptr, ptr %i.by, align 8, !tbaa !146
  %i.ir = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.bx, align 4, !tbaa !145
  %i.is = load ptr, ptr %i.by, align 8, !tbaa !146
  %i.it = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.is, i8 noundef signext 10) ; 0 uses
  store i8 1, ptr %i.bx, align 4, !tbaa !145
  store i8 0, ptr %i.bw, align 8, !tbaa !665
  br label %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118

_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118: ; preds = %.lr.ph, %bb.av
  %i.iu = load i32, ptr %i.bs, align 8, !tbaa !144
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %.lr.ph.i119, label %_ZN4toml2v34impl9formatter12print_indentEv.exit124

.lr.ph.i119:                                      ; preds = %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118, %.lr.ph.i119
  %.02.i121 = phi i32 [ %i.iy, %.lr.ph.i119 ], [ 0, %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118 ]
  %i.iw = load ptr, ptr %i.by, align 8, !tbaa !146
  %.sroa.0.0.copyload.i122 = load i64, ptr %i.bz, align 8, !tbaa !139
  %.sroa.2.0.copyload.i123 = load ptr, ptr %.sroa.2.0..sroa_idx.i120, align 8, !tbaa !140
  %i.ix = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.iw, ptr noundef %.sroa.2.0.copyload.i123, i64 noundef %.sroa.0.0.copyload.i122) ; 0 uses
  store i8 0, ptr %i.bx, align 4, !tbaa !145
  %i.iy = add nuw nsw i32 %.02.i121, 1            ; 2 uses
  %i.iz = load i32, ptr %i.bs, align 8, !tbaa !144
  %i.ja = icmp slt i32 %i.iy, %i.iz
  br i1 %i.ja, label %.lr.ph.i119, label %_ZN4toml2v34impl9formatter12print_indentEv.exit124, !llvm.loop !660

_ZN4toml2v34impl9formatter12print_indentEv.exit124: ; preds = %.lr.ph.i119, %_ZN4toml2v314toml_formatter29print_pending_table_separatorEv.exit118
  %i.jb = load ptr, ptr %i.by, align 8, !tbaa !146
  %i.jc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.49, i64 noundef 2) ; 0 uses
  store i8 0, ptr %i.bx, align 4, !tbaa !145
  %i.jd = load ptr, ptr %i.bt, align 8, !tbaa !690 ; 2 uses
  %i.je = load ptr, ptr %i.bu, align 8, !tbaa !690 ; 2 uses
  %.not45.i125 = icmp eq ptr %i.jd, %i.je
  br i1 %.not45.i125, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131", label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %_ZN4toml2v34impl9formatter12print_indentEv.exit124, %bb.ax
  %.07.i127 = phi i64 [ %i.jg, %bb.ax ], [ 0, %_ZN4toml2v34impl9formatter12print_indentEv.exit124 ] ; 2 uses
  %.sroa.01.06.i128 = phi ptr [ %i.jm, %bb.ax ], [ %i.jd, %_ZN4toml2v34impl9formatter12print_indentEv.exit124 ] ; 2 uses
  %i.jf = load ptr, ptr %.sroa.01.06.i128, align 8, !tbaa !412 ; 2 uses
  %i.jg = add i64 %.07.i127, 1
  %.not.i129 = icmp eq i64 %.07.i127, 0
  br i1 %.not.i129, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i126
  %i.jh = load ptr, ptr %i.by, align 8, !tbaa !146
  %i.ji = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, i8 noundef signext 46) ; 0 uses
  store i8 0, ptr %i.bx, align 4, !tbaa !145
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i126
  %i.jj = load ptr, ptr %i.jf, align 8, !tbaa !8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !14
  tail call void @_ZN4toml2v34impl9formatter12print_stringESt17basic_string_viewIcSt11char_traitsIcEEbbb(ptr noundef nonnull align 8 dereferenceable(97) %0, i64 %i.jl, ptr %i.jj, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i128, i64 8 ; 2 uses
  %.not4.i130 = icmp eq ptr %i.jm, %i.je
  br i1 %.not4.i130, label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131", label %.lr.ph.i126

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_1clEv.exit131": ; preds = %bb.ax, %_ZN4toml2v34impl9formatter12print_indentEv.exit124
  %i.jn = load ptr, ptr %i.by, align 8, !tbaa !146
  %i.jo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull @.str.50, i64 noundef 2) ; 0 uses
  store i8 0, ptr %i.bx, align 4, !tbaa !145
  store i8 1, ptr %i.bw, align 8, !tbaa !665
  %i.jp = load ptr, ptr %i.ig, align 8, !tbaa !207
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.068192
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !208
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.jr)
  %i.js = add nuw i64 %.068192, 1                 ; 2 uses
  %i.jt = load ptr, ptr %i.ih, align 8, !tbaa !205
  %i.ju = load ptr, ptr %i.ig, align 8, !tbaa !207
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = ashr exact i64 %i.jx, 3
  %i.jz = icmp ult i64 %i.js, %i.jy
  br i1 %i.jz, label %.lr.ph, label %._crit_edge193.loopexit, !llvm.loop !691

bb.ay:                                            ; preds = %._crit_edge193
  %i.ka = load i32, ptr %i.bs, align 8, !tbaa !144
  %i.kb = add nsw i32 %i.ka, -1
  store i32 %i.kb, ptr %i.bs, align 8, !tbaa !144
  br label %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread"

"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109.thread": ; preds = %.lr.ph.i.i.i103, %bb.al, %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101, %._crit_edge193, %bb.ay, %"_ZZN4toml2v314toml_formatter5printERKNS0_5tableEENK3$_0clERKNS0_4nodeE.exit109"
  %i.kc = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0134.0195) #52 ; 2 uses
  %.not177 = icmp eq ptr %i.kc, %i.c
  br i1 %.not177, label %._crit_edge196, label %_ZNK4toml2v34impl14table_iteratorILb1EE9get_proxyEv.exit101
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314toml_formatter5printEv(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !130    ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #52 ; 2 uses
  switch i8 %i.e, label %bb.f [
    i8 1, label %bb.b
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !148, !range !120, !noundef !121
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4toml2v314toml_formatter12print_inlineERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !144
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !144
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5tableE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.a)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v314toml_formatter5printERKNS0_5arrayE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl9formatter11print_valueERKNS0_4nodeENS0_9node_typeE(ptr noundef nonnull align 8 dereferenceable(69) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 noundef zeroext %i.e)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314json_formatter5printERKNS0_5tableE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69) initializes((68, 69)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(89) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !188
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !146  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 8 uses
end_hunk_5
begin_hunk_6_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #50, !inline_history !703
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !168
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !170
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !704
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50, !inline_history !704
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !173

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #50
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #30

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #31

; Function Attrs: inlinehint mustprogress nounwind memory(read, argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_"(ptr nofree noundef captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2) unnamed_addr #32 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !208, !nonnull !121, !noundef !121 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #52, !inline_history !705 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPvS6_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 4 uses
  %.0810.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !191 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq ptr %.0810.i.i.i.i.i.i, null
  br i1 %.not11.i.i.i.i.i.i, label %_ZN4toml2v35table3getESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i
  %.0813.i.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i, %bb.b ] ; 4 uses
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i ], [ %i.g, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef readonly %2, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #50 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.o = sub i64 %i.i, %1
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i

_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0  ; 2 uses
  %.19.in.v.i.i.i.i.i.i = select i1 %i.p, i64 24, i64 16
  %.19.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i, i64 %.19.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = select i1 %i.p, ptr %.012.i.i.i.i.i.i, ptr %.0813.i.i.i.i.i.i ; 6 uses
  %.08.i.i.i.i.i.i = load ptr, ptr %.19.in.i.i.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !192

_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %1) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = tail call i32 @memcmp(ptr noundef readonly %2, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #50 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.x = sub i64 %1, %i.r
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i

_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %i.y, ptr %i.g, ptr %.1.i.i.i.i.i.i
  br label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i: ; preds = %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.03.0.i.i.i.i.i, %i.g
  br i1 %.not.i.i, label %_ZN4toml2v35table3getESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !208
  br label %_ZN4toml2v35table3getESt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZN4toml2v35table3getESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.d, %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i, %bb.b
  %i.ab = phi ptr [ %i.aa, %bb.d ], [ null, %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i ], [ null, %bb.b ] ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !208
  %i.ac = icmp ne ptr %i.ab, null
  br label %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPvS6_.exit"

"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEPvS6_.exit": ; preds = %bb.a, %_ZN4toml2v35table3getESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %.0.i = phi i1 [ %i.ac, %_ZN4toml2v35table3getESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #31

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !244    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
  unreachable

_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 40                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #55 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  invoke void @_ZN4toml2v314path_componentC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(33) %i.q, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %_ZNSt16allocator_traitsISaIN4toml2v314path_componentEEE9constructIS2_JRSt17basic_string_viewIcSt11char_traitsIcEEEEEvRS3_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaIN4toml2v314path_componentEEE9constructIS2_JRSt17basic_string_viewIcSt11char_traitsIcEEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN4toml2v314path_componentEEE9constructIS2_JRSt17basic_string_viewIcSt11char_traitsIcEEEEEvRS3_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN4toml2v314path_componentEEE9constructIS2_JRSt17basic_string_viewIcSt11char_traitsIcEEEEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN4toml2v314path_componentEEE9constructIS2_JRSt17basic_string_viewIcSt11char_traitsIcEEEEEvRS3_PT_DpOT0_.exit ] ; 5 uses
  tail call void @_ZN4toml2v314path_componentC1EOS1_(ptr noundef nonnull align 8 dereferenceable(33) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(33) %.0911.i.i.i) #50
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.s = load i8, ptr %i.r, align 8, !tbaa !215, !alias.scope !706, !noalias !709
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.c, label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.u = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !8, !alias.scope !706, !noalias !709 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8, !tbaa !17, !alias.scope !706, !noalias !709
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #51
  br label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !711

_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN4toml2v314path_componentEEE9constructIS2_JRSt17basic_string_viewIcSt11char_traitsIcEEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4toml2v314path_componentEEE9constructIS2_JRSt17basic_string_viewIcSt11char_traitsIcEEEEEvRS3_PT_DpOT0_.exit ], [ %i.aa, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i30
  %.012.i.i.i28 = phi ptr [ %i.al, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i30 ], [ %i.ab, %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i30 ], [ %1, %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  tail call void @_ZN4toml2v314path_componentC1EOS1_(ptr noundef nonnull align 8 dereferenceable(33) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(33) %.0911.i.i.i29) #50
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !215, !alias.scope !712, !noalias !715
  %i.ae = icmp eq i8 %i.ad, 1
  br i1 %i.ae, label %bb.d, label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i30

bb.d:                                             ; preds = %.lr.ph.i.i.i27
  %i.af = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !8, !alias.scope !712, !noalias !715 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i33: ; preds = %bb.d
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !17, !alias.scope !712, !noalias !715
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #51
  br label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i30

_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i30: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i33, %.lr.ph.i.i.i27
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, label %.lr.ph.i.i.i27, !llvm.loop !711

_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35: ; preds = %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i30, %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ab, %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.al, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i30 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4toml2v314path_componentESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !246
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #51
  br label %_ZNSt12_Vector_baseIN4toml2v314path_componentESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4toml2v314path_componentESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !244
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !242
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !246
  ret void

bb.f:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #50 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #51
  invoke void @__cxa_rethrow() #54
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ar

bb.i:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #53
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #31

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN4toml2v314path_componentEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #33 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4toml2v314path_componentEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i
  %.05.i = phi ptr [ %i.i, %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !215
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = load ptr, ptr %.05.i, align 8, !tbaa !8  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !17
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #51
  br label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i

_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4toml2v314path_componentEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !247

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4toml2v314path_componentEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !244    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
  unreachable

_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #55 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !139
  tail call void @_ZN4toml2v314path_componentC1Em(ptr noundef nonnull align 8 dereferenceable(33) %i.q, i64 noundef %i.r) #50
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aa, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @_ZN4toml2v314path_componentC1EOS1_(ptr noundef nonnull align 8 dereferenceable(33) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(33) %.0911.i.i.i) #50
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.t = load i8, ptr %i.s, align 8, !tbaa !215, !alias.scope !717, !noalias !720
  %i.u = icmp eq i8 %i.t, 1
  br i1 %i.u, label %bb.c, label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !8, !alias.scope !717, !noalias !720 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.w, align 8, !tbaa !17, !alias.scope !717, !noalias !720
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #51
  br label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !711

_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20
  %.012.i.i.i18 = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %i.ac, %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.al, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %1, %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  tail call void @_ZN4toml2v314path_componentC1EOS1_(ptr noundef nonnull align 8 dereferenceable(33) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(33) %.0911.i.i.i19) #50
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !215, !alias.scope !722, !noalias !725
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %bb.d, label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20

bb.d:                                             ; preds = %.lr.ph.i.i.i17
  %i.ag = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !8, !alias.scope !722, !noalias !725 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i23: ; preds = %bb.d
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !17, !alias.scope !722, !noalias !725
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #51
  br label %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20

_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i23, %.lr.ph.i.i.i17
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !711

_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25: ; preds = %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20, %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ac, %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.am, %_ZSt19__relocate_object_aIN4toml2v314path_componentES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20 ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN4toml2v314path_componentESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !246
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aq) #51
  br label %_ZNSt12_Vector_baseIN4toml2v314path_componentESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4toml2v314path_componentESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !244
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !242
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !244    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !246
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.h, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt10_ConstructIN4toml2v314path_componentEJEEvPT_DpOT0_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN4toml2v314path_componentEJEEvPT_DpOT0_.exit.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.01013.i.i.i = phi i64 [ %i.p, %_ZSt10_ConstructIN4toml2v314path_componentEJEEvPT_DpOT0_.exit.i.i.i ], [ %1, %bb.b ]
  invoke void @_ZN4toml2v314path_componentC1Ev(ptr noundef nonnull align 8 dereferenceable(33) %.014.i.i.i)
          to label %_ZSt10_ConstructIN4toml2v314path_componentEJEEvPT_DpOT0_.exit.i.i.i unwind label %bb.c

_ZSt10_ConstructIN4toml2v314path_componentEJEEvPT_DpOT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = add nsw i64 %.01013.i.i.i, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN4toml2v314path_componentEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !727

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #50 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4toml2v314path_componentEEvT_S4_(ptr noundef %i.b, ptr noundef nonnull %.014.i.i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #54
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.o, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.an, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #53
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZSt27__uninitialized_default_n_aIPN4toml2v314path_componentEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN4toml2v314path_componentEJEEvPT_DpOT0_.exit.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !242
  br label %bb.r

bb.h:                                             ; preds = %bb.b
  %i.x = icmp ult i64 %i.n, %1
  br i1 %i.x, label %bb.i, label %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #54
  unreachable

_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.y = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 230584300921369395) ; 2 uses
  %i.aa = mul nuw nsw i64 %i.z, 40                ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #55 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.f ; 3 uses
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructIN4toml2v314path_componentEJEEvPT_DpOT0_.exit.i.i.i33
  %.014.i.i.i31 = phi ptr [ %i.ae, %_ZSt10_ConstructIN4toml2v314path_componentEJEEvPT_DpOT0_.exit.i.i.i33 ], [ %i.ac, %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01013.i.i.i32 = phi i64 [ %i.ad, %_ZSt10_ConstructIN4toml2v314path_componentEJEEvPT_DpOT0_.exit.i.i.i33 ], [ %1, %_ZNKSt6vectorIN4toml2v314path_componentESaIS2_EE12_M_check_lenEmPKc.exit ]
  invoke void @_ZN4toml2v314path_componentC1Ev(ptr noundef nonnull align 8 dereferenceable(33) %.014.i.i.i31)
          to label %_ZSt10_ConstructIN4toml2v314path_componentEJEEvPT_DpOT0_.exit.i.i.i33 unwind label %bb.j

_ZSt10_ConstructIN4toml2v314path_componentEJEEvPT_DpOT0_.exit.i.i.i33: ; preds = %.lr.ph.i.i.i30
  %i.ad = add nsw i64 %.01013.i.i.i32, -1         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i31, i64 40
  %.not.i.i.i34 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i34, label %_ZSt27__uninitialized_default_n_aIPN4toml2v314path_componentEmS2_ET_S4_T0_RSaIT1_E.exit36, label %.lr.ph.i.i.i30, !llvm.loop !727

bb.j:                                             ; preds = %.lr.ph.i.i.i30
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #50 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4toml2v314path_componentEEvT_S4_(ptr noundef nonnull %i.ac, ptr noundef nonnull %.014.i.i.i31)
          to label %bb.k unwind label %bb.l
end_hunk_6
begin_hunk_7_@_ZN4toml2v34impl7impl_ex6parser9parse_keyEv:_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread
  br i1 %or.cond.i.i24, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27

_ZN4toml2v34impl21is_bare_key_characterEDi.exit27: ; preds = %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = add nsw i64 %i.ac, -45
  %.not.i.i25 = icmp samesign ugt i32 %i.aa, 108
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = and i64 %i.ae, -3307330977390599
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = select i1 %.not.i.i25, i1 true, i1 %i.ag
  br i1 %i.ah, label %bb.a, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread

bb.a:                                             ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27
  %i.ai = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser22parse_bare_key_segmentEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1
  br label %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit39

bb.c:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread: ; preds = %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27
  switch i32 %i.aa, label %bb.l [
    i32 39, label %bb.d
    i32 34, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread
  %.sroa.05.0.copyload = load i64, ptr %i.z, align 8
  store i8 1, ptr %i.r, align 1, !tbaa !530
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  invoke fastcc void @_ZN4toml2v34impl7impl_ex6parser12parse_stringEv(ptr dead_on_unwind noalias writable align 8 %1, ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.r, align 1, !tbaa !530
  %i.am = load i8, ptr %i.u, align 8, !tbaa !792, !range !120, !noundef !121
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 37, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.160, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !801
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !801
  %i.ar = icmp eq ptr %i.ap, %i.aq                ; 2 uses
  %spec.select = select i1 %i.ar, i64 0, i64 7
  %spec.select126 = select i1 %i.ar, ptr @.str.7, ptr @.str.161
  store i64 %spec.select, ptr %3, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select126, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 4, ptr %4, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.162, ptr %i.at, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !139
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit39

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %bb.i ], [ %i.au, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.as

bb.l:                                             ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit27.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 63, ptr %5, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.163, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.ax = icmp ult i32 %i.aa, 32
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = zext nneg i32 %i.aa to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.ay ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.az, align 16, !tbaa !139
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !140
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.n:                                             ; preds = %bb.l
  %i.ba = icmp eq i32 %i.aa, 127
  br i1 %i.ba, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !495
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.m ], [ %i.bb, %bb.o ], [ @.str.29, %bb.n ]
  %.sroa.0.0.i28 = phi i64 [ %.sroa.0.0.copyload.i, %bb.m ], [ %i.bd, %bb.o ], [ 6, %bb.n ]
  store i64 %.sroa.0.0.i28, ptr %6, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.4.0.i, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 1, ptr %7, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.16, ptr %i.bf, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #54
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %bb.as

_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit39: ; preds = %bb.j, %bb.b
  %.sroa.0.0 = phi i64 [ %i.aj, %bb.b ], [ %.sroa.0.0.copyload, %bb.j ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %i.ak, %bb.b ], [ %.sroa.7.0.copyload, %bb.j ]
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !461 ; 3 uses
  %.not.i29 = icmp eq ptr %i.bh, null             ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.3.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %.sroa.0.0.in.i32 = select i1 %.not.i29, ptr %i.s, ptr %i.bi
  %.sroa.3.0.i33.in = select i1 %.not.i29, ptr %i.t, ptr %.sroa.3.0..sroa_idx.i30
  %.sroa.3.0.i33 = load i32, ptr %.sroa.3.0.i33.in, align 4, !tbaa !172
  %.sroa.0.0.i34 = load i32, ptr %.sroa.0.0.in.i32, align 8, !tbaa !172
  %.sroa.3.0.insert.ext.i35 = zext i32 %.sroa.3.0.i33 to i64
  %.sroa.3.0.insert.shift.i36 = shl nuw i64 %.sroa.3.0.insert.ext.i35, 32
  %.sroa.0.0.insert.ext.i37 = zext i32 %.sroa.0.0.i34 to i64
  %.sroa.0.0.insert.insert.i38 = or disjoint i64 %.sroa.3.0.insert.shift.i36, %.sroa.0.0.insert.ext.i37 ; 2 uses
  %i.bj = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.r unwind label %.loopexit  ; 0 uses

bb.r:                                             ; preds = %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit39
  %i.bk = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !583 ; 6 uses
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !802
  %.not.i.i.i40 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i.i40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.bk, ptr %i.bl, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !583
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bo, ptr %i.h, align 8, !tbaa !583
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !584 ; 5 uses
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775792
  br i1 %i.bt, label %.invoke, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke:                                          ; preds = %bb.aa, %bb.w, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i, %bb.t
  %i.bu = phi ptr [ @.str.65, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i ], [ @.str.63, %bb.t ], [ @.str.63, %bb.w ], [ @.str.63, %bb.aa ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.bu) #54
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.t
  %i.bv = ashr exact i64 %i.bs, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 576460752303423487)
  %i.bz = select i1 %i.bx, i64 576460752303423487, i64 %i.by ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 4
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #55
          to label %.noexc42 unwind label %.loopexit ; 5 uses

.noexc42:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bs ; 2 uses
  store i64 %i.bk, ptr %i.cc, align 8
  %.sroa.5.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx11.i, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.bl
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc42, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cb, %.noexc42 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bp, %.noexc42 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !803
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cd, %i.bl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !807

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc42
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.noexc42 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  %i.cg = load ptr, ptr %i.v, align 8, !tbaa !802
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.ci) #51
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  store ptr %i.cb, ptr %i.f, align 8, !tbaa !584
  store ptr %i.cf, ptr %i.h, align 8, !tbaa !583
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cj, ptr %i.v, align 8, !tbaa !802
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.s
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !14
  %i.cl = sub i64 4611686018427387903, %i.ck
  %i.cm = icmp ult i64 %i.cl, %.sroa.0.0
  br i1 %i.cm, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit.i
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef %.sroa.7.0, i64 noundef %.sroa.0.0)
          to label %.noexc44 unwind label %.loopexit ; 0 uses

.noexc44:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  %i.co = load ptr, ptr %i.l, align 8, !tbaa !800 ; 3 uses
  %i.cp = load ptr, ptr %i.w, align 8, !tbaa !808
  %.not.i.i41 = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i.i41, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc44
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.co, align 4
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !800
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cr, ptr %i.l, align 8, !tbaa !800
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE9push_backERKS2_.exit.i

bb.w:                                             ; preds = %.noexc44
  %i.cs = load ptr, ptr %i.j, align 8, !tbaa !593 ; 4 uses
  %i.ct = ptrtoint ptr %i.co to i64
  %i.cu = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 5 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %.invoke, label %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #55
          to label %.noexc46 unwind label %.loopexit ; 4 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cv ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.de, align 4
  %i.df = icmp sgt i64 %i.cv, 0
  br i1 %i.df, label %bb.x, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.x:                                             ; preds = %.noexc46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dd, ptr align 4 %i.cs, i64 %i.cv, i1 false)
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.x, %.noexc46
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.dh = load ptr, ptr %i.w, align 8, !tbaa !808
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.dj) #51
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.y, %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.dd, ptr %i.j, align 8, !tbaa !593
  store ptr %i.dg, ptr %i.l, align 8, !tbaa !800
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.dk, ptr %i.w, align 8, !tbaa !808
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.v
  %i.dl = load ptr, ptr %i.p, align 8, !tbaa !800 ; 3 uses
  %i.dm = load ptr, ptr %i.x, align 8, !tbaa !808
  %.not.i1.i = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i1.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE9push_backERKS2_.exit.i
  store i64 %.sroa.0.0.insert.insert.i38, ptr %i.dl, align 4
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !800
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.do, ptr %i.p, align 8, !tbaa !800
  br label %_ZN12_GLOBAL__N_116parse_key_buffer9push_backESt17basic_string_viewIcSt11char_traitsIcEEN4toml2v315source_positionES7_.exit

bb.aa:                                            ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE9push_backERKS2_.exit.i
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !593 ; 4 uses
  %i.dq = ptrtoint ptr %i.dl to i64
  %i.dr = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 5 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775800
  br i1 %i.dt, label %.invoke, label %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i2.i

_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i2.i: ; preds = %bb.aa
  %i.du = ashr exact i64 %i.ds, 3                 ; 3 uses
  %.sroa.speculated.i.i.i3.i = tail call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i3.i, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 1152921504606846975)
  %i.dy = select i1 %i.dw, i64 1152921504606846975, i64 %i.dx ; 2 uses
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #55
          to label %.noexc48 unwind label %.loopexit ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i2.i
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.ds ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i38, ptr %i.eb, align 4
  %i.ec = icmp sgt i64 %i.ds, 0
  br i1 %i.ec, label %bb.ab, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i5.i

bb.ab:                                            ; preds = %.noexc48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr align 4 %i.dp, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i5.i

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i5.i: ; preds = %bb.ab, %.noexc48
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.not.i17.i.i6.i = icmp eq ptr %i.dp, null
  br i1 %.not.i17.i.i6.i, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i7.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i5.i
  %i.ee = load ptr, ptr %i.x, align 8, !tbaa !808
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = sub i64 %i.ef, %i.dr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.eg) #51
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i7.i

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i7.i: ; preds = %bb.ac, %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i5.i
  store ptr %i.ea, ptr %i.n, align 8, !tbaa !593
  store ptr %i.ed, ptr %i.p, align 8, !tbaa !800
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dy
  store ptr %i.eh, ptr %i.x, align 8, !tbaa !808
  br label %_ZN12_GLOBAL__N_116parse_key_buffer9push_backESt17basic_string_viewIcSt11char_traitsIcEEN4toml2v315source_positionES7_.exit

_ZN12_GLOBAL__N_116parse_key_buffer9push_backESt17basic_string_viewIcSt11char_traitsIcEEN4toml2v315source_positionES7_.exit: ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i7.i, %bb.z
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !583
  %i.ej = load ptr, ptr %i.f, align 8, !tbaa !584
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = icmp ugt i64 %i.em, 16384
  br i1 %i.en, label %bb.ad, label %bb.ag, !prof !173

bb.ad:                                            ; preds = %_ZN12_GLOBAL__N_116parse_key_buffer9push_backESt17basic_string_viewIcSt11char_traitsIcEEN4toml2v315source_positionES7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store i64 38, ptr %8, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.164, ptr %i.eo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store i64 29, ptr %9, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.165, ptr %i.ep, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEmS8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) @_ZN4toml2v34impl7impl_ex6parser21max_dotted_keys_depthE, ptr noundef nonnull align 8 dereferenceable(16) %9) #54
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  unreachable

.loopexit:                                        ; preds = %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit39, %bb.ai, %bb.an, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i, %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN4toml2v315source_positionESaIS2_EE12_M_check_lenEmPKc.exit.i.i2.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.af:                                            ; preds = %bb.ad
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %bb.as

bb.ag:                                            ; preds = %_ZN12_GLOBAL__N_116parse_key_buffer9push_backESt17basic_string_viewIcSt11char_traitsIcEEN4toml2v315source_positionES7_.exit
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !461 ; 2 uses
  %.not = icmp eq ptr %i.er, null
  br i1 %.not, label %bb.at, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.es = load i32, ptr %i.er, align 4, !tbaa !488
  %.not18 = icmp eq i32 %i.es, 46
  br i1 %.not18, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.aj unwind label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !461
  %.not19 = icmp eq ptr %i.et, null
  br i1 %.not19, label %bb.ak, label %bb.an, !prof !173

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  store i64 23, ptr %10, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.13, ptr %i.eu, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %10) #54
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50
  br label %bb.as

bb.an:                                            ; preds = %bb.aj
  %i.ew = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.ao unwind label %.loopexit ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !461 ; 2 uses
  %.not20 = icmp eq ptr %i.ex, null
  br i1 %.not20, label %bb.ap, label %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit, !prof !173

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  store i64 23, ptr %11, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.13, ptr %i.ey, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %11) #54
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.af, %bb.am, %bb.ar, %bb.q, %bb.k, %bb.c
  %.pn21.pn = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.al, %bb.c ], [ %.pn, %bb.k ], [ %i.eq, %bb.af ], [ %i.ev, %bb.am ], [ %i.ez, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn21.pn

bb.at:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret i1 true
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #34 comdat align 2 {
bb.a:
  %5 = alloca %"struct.toml::v3::source_position", align 8 ; 2 uses
  %6 = alloca %"struct.(anonymous namespace)::error_builder", align 8 ; 7 uses
  store i64 %1, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3472
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 512 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 520 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 511
  store ptr %i.d, ptr %i.c, align 8, !tbaa !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %6, ptr noundef nonnull readonly align 1 dereferenceable(20) @.str.67, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !140
  %spec.select.i7.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload, i64 491) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr readonly align 1 %.sroa.2.0.copyload, i64 %spec.select.i7.i, i1 false)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.i7.i ; 5 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !140
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !739  ; 3 uses
  %.not.i9.i = icmp ult ptr %i.g, %i.h
  br i1 %.not.i9.i, label %bb.b, label %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, !prof !200

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  %spec.select.i10.i = call i64 @llvm.umin.i64(i64 %i.k, i64 2) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull readonly align 1 @.str.54, i64 %spec.select.i10.i, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.i10.i ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !140
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !739
  br label %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.g, %bb.a ], [ %i.m, %bb.b ] ; 4 uses
  %i.o = phi ptr [ %i.h, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %.not.i.i = icmp ult ptr %i.n, %i.o
  br i1 %.not.i.i, label %bb.c, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit, !prof !200

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load ptr, ptr %i.p, align 8
  %.val7 = load i64, ptr %2, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
end_hunk_7
begin_hunk_8_@_ZN4toml2v34impl7impl_ex6parser14parse_documentEv:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %.1, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !124
  %i.bn = zext i32 %i.bm to i64
  %i.bo = or disjoint i64 %i.bk, %i.bn
  %i.bp = load i32, ptr %i.bg, align 4, !tbaa !122
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw i64 %i.bq, 32
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !124
  %i.bu = zext i32 %i.bt to i64
  %i.bv = or disjoint i64 %i.br, %i.bu
  %.not41 = icmp ugt i64 %i.bo, %i.bv
  br i1 %.not41, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bh, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.639, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639)
  ret void

bb.am:                                            ; preds = %bb.ah, %bb.ab, %bb.h
  %.pn20 = phi { ptr, i32 } [ %i.g, %bb.h ], [ %.pn, %bb.ab ], [ %i.ax, %bb.ah ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.639, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639)
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4toml2v34impl7impl_ex6parser18update_region_endsERNS0_4nodeE(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i8 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0) #52 ; 2 uses
  %i.e = icmp ugt i8 %i.d, 2
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.d, 1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !148, !range !120, !noundef !121
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !400, !noalias !812 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not4147 = icmp eq ptr %i.k, %i.l
  br i1 %.not4147, label %.critedge, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit: ; preds = %bb.d, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit
  %.sroa.032.048 = phi ptr [ %i.o, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.048, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !208
  tail call void @_ZN4toml2v34impl7impl_ex6parser18update_region_endsERNS0_4nodeE(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #50
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.032.048) #52 ; 2 uses
  %.not41 = icmp eq ptr %i.o, %i.l
  br i1 %.not41, label %.critedge, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.sroa.025.0.extract.trunc = trunc i64 %i.q to i32 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.q, 32    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !189  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !189  ; 2 uses
  %.not42 = icmp eq ptr %i.s, %i.u
  br i1 %.not42, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.v = zext i32 %.sroa.6.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.sroa.6.0.lcssa = phi i64 [ %.sroa.6.0.extract.shift, %bb.e ], [ %i.v, %._crit_edge.loopexit ]
  %.sroa.025.0.lcssa = phi i32 [ %.sroa.025.0.extract.trunc, %bb.e ], [ %.sroa.025.1, %._crit_edge.loopexit ]
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.lcssa, 32
  %.sroa.025.0.insert.ext = zext i32 %.sroa.025.0.lcssa to i64
  %.sroa.025.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.025.0.insert.ext
  store i64 %.sroa.025.0.insert.insert, ptr %i.p, align 8
  br label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.sroa.022.045 = phi ptr [ %i.al, %bb.g ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %.sroa.025.044 = phi i32 [ %.sroa.025.1, %bb.g ], [ %.sroa.025.0.extract.trunc, %.lr.ph.preheader ] ; 2 uses
  %.sroa.6.043 = phi i32 [ %.sroa.6.1, %bb.g ], [ %.sroa.6.0.extract.trunc, %.lr.ph.preheader ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.022.045, align 8, !tbaa !208 ; 3 uses
  tail call void @_ZN4toml2v34impl7impl_ex6parser18update_region_endsERNS0_4nodeE(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #50
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = zext i32 %.sroa.025.044 to i64
  %i.z = shl nuw i64 %i.y, 32
  %i.aa = zext i32 %.sroa.6.043 to i64
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !122
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !124
  %i.ah = zext i32 %i.ag to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  %i.aj = icmp ult i64 %i.ab, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ak = load i64, ptr %i.x, align 8             ; 2 uses
  %.sroa.025.0.extract.trunc27 = trunc i64 %i.ak to i32
  %.sroa.6.0.extract.shift28 = lshr i64 %i.ak, 32
  %.sroa.6.0.extract.trunc29 = trunc nuw i64 %.sroa.6.0.extract.shift28 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.sroa.6.1 = phi i32 [ %.sroa.6.0.extract.trunc29, %bb.f ], [ %.sroa.6.043, %.lr.ph ] ; 2 uses
  %.sroa.025.1 = phi i32 [ %.sroa.025.0.extract.trunc27, %bb.f ], [ %.sroa.025.044, %.lr.ph ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.022.045, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.u
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

.critedge:                                        ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit, %bb.d, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116parse_key_bufferD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(104) dereferenceable(104) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !593  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !808
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #51
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !593  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !808
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #51
  br label %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2

_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2: ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !584  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !802
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #51
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorIN4toml2v315source_positionESaIS2_EED2Ev.exit2, %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !17
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN4toml2v34impl7impl_ex6parser18parse_table_headerEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6429 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %23 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %28 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %29 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %30 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %31 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %32 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %33 = alloca %"class.toml::v3::impl::table_iterator", align 8 ; 5 uses
  %34 = alloca %"class.toml::v3::impl::table_iterator.42", align 8 ; 3 uses
  %35 = alloca %"class.toml::v3::key", align 8    ; 9 uses
  %36 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %37 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %38 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %39 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %40 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %41 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %42 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %43 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %44 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %45 = alloca %"class.toml::v3::key", align 8    ; 10 uses
  %46 = alloca %"class.toml::v3::impl::table_iterator", align 8 ; 5 uses
  %47 = alloca %"class.toml::v3::impl::table_iterator.42", align 8 ; 3 uses
  %48 = alloca %"class.toml::v3::impl::table_iterator", align 8 ; 5 uses
  %49 = alloca %"class.toml::v3::impl::table_iterator.42", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !461, !nonnull !121, !noundef !121
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6429)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6429, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !460
  store i64 12, ptr %i.c, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.172, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.093.0.copyload = load i64, ptr %i.d, align 8 ; 8 uses
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !461
  %.not143 = icmp eq ptr %i.e, null
  br i1 %.not143, label %bb.c, label %bb.g, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 23, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.13, ptr %i.f, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.gz

bb.g:                                             ; preds = %bb.b
  %i.i = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !461  ; 3 uses
  %.not144 = icmp eq ptr %i.j, null
  br i1 %.not144, label %bb.i, label %bb.m, !prof !173

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.k, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.bz, %bb.bx, %_ZNK4toml2v34impl7impl_ex6parser16current_positionEj.exit, %bb.bs, %bb.bg, %_ZN4toml2v34impl7impl_ex6parser14stop_recordingEm.exit, %_ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit, %bb.w, %bb.r, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.gz

bb.m:                                             ; preds = %bb.h
  %i.n = load i32, ptr %i.j, align 4, !tbaa !488  ; 2 uses
  %i.o = icmp eq i32 %i.n, 91                     ; 9 uses
  br i1 %i.o, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  br i1 %i.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 80, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.173, ptr %i.p, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.gz

bb.r:                                             ; preds = %bb.n
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.s unwind label %bb.k

bb.s:                                             ; preds = %bb.r
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !461
  %.not145 = icmp eq ptr %i.r, null
  br i1 %.not145, label %bb.t, label %bb.w, !prof !173

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 23, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.13, ptr %i.s, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.gz

bb.w:                                             ; preds = %bb.s
  %i.u = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser26consume_leading_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.x unwind label %bb.k       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !461  ; 3 uses
  %.not146 = icmp eq ptr %i.v, null
  br i1 %.not146, label %bb.y, label %._crit_edge506, !prof !173

._crit_edge506:                                   ; preds = %bb.x
  %.pre = load i32, ptr %i.v, align 4, !tbaa !488
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 23, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.13, ptr %i.w, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #54
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %bb.gz

bb.ab:                                            ; preds = %._crit_edge506, %bb.m
  %i.y = phi i32 [ %.pre, %._crit_edge506 ], [ %i.n, %bb.m ] ; 8 uses
  %i.z = phi ptr [ %i.v, %._crit_edge506 ], [ %i.j, %bb.m ] ; 2 uses
  %i.aa = icmp eq i32 %i.y, 93
  br i1 %i.aa, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store i64 53, ptr %6, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.174, ptr %i.ab, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %6) #54
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %bb.gz

bb.af:                                            ; preds = %bb.ab
  %i.ad = add i32 %i.y, -123
  %or.cond.i.i = icmp ult i32 %i.ad, -78
  br i1 %or.cond.i.i, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit

_ZN4toml2v34impl21is_bare_key_characterEDi.exit:  ; preds = %bb.af
  %i.ae = zext nneg i32 %i.y to i64
  %i.af = add nsw i64 %i.ae, -45
  %.not.i.i = icmp samesign ugt i32 %i.y, 108
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = and i64 %i.ag, -3307330977390599
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = select i1 %.not.i.i, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.am, label %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread

_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread: ; preds = %bb.af, %_ZN4toml2v34impl21is_bare_key_characterEDi.exit
  switch i32 %i.y, label %bb.ag [
    i32 39, label %bb.am
    i32 34, label %bb.am
  ]

bb.ag:                                            ; preds = %_ZN4toml2v34impl21is_bare_key_characterEDi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 63, ptr %7, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.163, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  %i.al = icmp ult i32 %i.y, 32
  br i1 %i.al, label %bb.ah, label %bb.ai

end_hunk_8
begin_hunk_9_@_ZN4toml2v34impl7impl_ex6parser18parse_table_headerEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #50
  br label %bb.gz

.critedge:                                        ; preds = %bb.cj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit230
  %.0.lcssa.i.i.i.i.i225441 = phi ptr [ %.1.i.i.i.i.i222, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit230 ], [ %.1.i.i.i.i.i222, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.1.i.i.i.i.i222, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit ], [ %i.fp, %bb.cj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #50
  store ptr %.0.lcssa.i.i.i.i.i225441, ptr %34, align 8, !tbaa !594
  store i8 0, ptr %i.ej, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #50
  invoke void @_ZNK4toml2v34impl7impl_ex6parser8make_keyEm(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::key") align 8 %35, ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 noundef %.0139488)
          to label %bb.cz unwind label %bb.dv

bb.cz:                                            ; preds = %.critedge
  invoke void @_ZN4toml2v35table12emplace_hintIS1_NS0_3keyEJETnNSt9enable_ifIXoo21is_key_or_convertibleIOT0_Esr4implE14is_wide_stringIS5_EEiE4typeELi0EEENS0_4impl14table_iteratorILb0EEENSA_ILb1EEES6_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::impl::table_iterator") align 8 %33, ptr noundef nonnull align 8 dereferenceable(89) %.0136489, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(64) %35)
          to label %bb.da unwind label %bb.dw

bb.da:                                            ; preds = %bb.cz
  %i.ia = load i64, ptr %33, align 8, !tbaa !191
  %i.ib = inttoptr i64 %i.ia to ptr
  %i.ic = load ptr, ptr %i.ek, align 8, !tbaa !167 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i.i, label %_ZN4toml2v313source_regionD2Ev.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.ie = load atomic i64, ptr %i.id acquire, align 8 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 4294967297
  %i.ig = trunc i64 %i.ie to i32                  ; 2 uses
  br i1 %i.if, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.id, align 8, !tbaa !168
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 0, ptr %i.ih, align 4, !tbaa !170
  %i.ii = load ptr, ptr %i.ic, align 8, !tbaa !70
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #50, !inline_history !595
  %i.il = load ptr, ptr %i.ic, align 8, !tbaa !70
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #50, !inline_history !595
  br label %_ZN4toml2v313source_regionD2Ev.exit.i

bb.dd:                                            ; preds = %bb.db
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i250 = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i.i.i250, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.df:                                            ; preds = %bb.dd
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.df, %bb.de
  %.0.i.i.i.i.i.i = phi i32 [ %i.ig, %bb.de ], [ %i.iq, %bb.df ]
  %i.ir = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ir, label %bb.dg, label %_ZN4toml2v313source_regionD2Ev.exit.i, !prof !173

bb.dg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit.i

_ZN4toml2v313source_regionD2Ev.exit.i:            ; preds = %bb.dg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dc, %bb.da
  %i.is = load ptr, ptr %35, align 8, !tbaa !8    ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.el
  br i1 %i.it, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i
  %i.iu = load i64, ptr %i.el, align 8, !tbaa !17
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #51
  br label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit251

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit251: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #50
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !208 ; 8 uses
  %i.iy = load ptr, ptr %0, align 8, !tbaa !526, !nonnull !121, !align !527 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !70
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = call noundef nonnull align 8 dereferenceable(16) ptr %i.ja(ptr noundef nonnull align 8 dereferenceable(8) %i.iy) #50, !inline_history !575 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !167 ; 2 uses
  %i.je = load <2 x ptr>, ptr %i.jb, align 8, !tbaa !180
  %.not.i.i.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit, label %bb.dh

bb.dh:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit251
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 3 uses
  %i.jg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i252 = icmp eq i8 %i.jg, 0
  br i1 %.not.i.i.i.i252, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jh = load i32, ptr %i.jf, align 4, !tbaa !172
  %i.ji = add nsw i32 %i.jh, 1
  store i32 %i.ji, ptr %i.jf, align 4, !tbaa !172
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit

bb.dj:                                            ; preds = %bb.dh
  %i.jj = atomicrmw volatile add ptr %i.jf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit

_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit: ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit251, %bb.di, %bb.dj
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i64 %.sroa.093.0.copyload, ptr %i.jk, align 8
  %.sroa.4407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sroa.4407.0..sroa_idx, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !167 ; 8 uses
  store <2 x ptr> %i.je, ptr %i.jl, align 8, !tbaa !180
  %.not.i.i.i.i.i253 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i.i253, label %_ZN4toml2v313source_regionD2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 4 uses
  %i.jp = load atomic i64, ptr %i.jo acquire, align 8 ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 4294967297
  %i.jr = trunc i64 %i.jp to i32                  ; 2 uses
  br i1 %i.jq, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 0, ptr %i.jo, align 8, !tbaa !168
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 12
  store i32 0, ptr %i.js, align 4, !tbaa !170
  %i.jt = load ptr, ptr %i.jn, align 8, !tbaa !70
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(16) %i.jn) #50, !inline_history !182
  %i.jw = load ptr, ptr %i.jn, align 8, !tbaa !70
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jn) #50, !inline_history !182
  br label %_ZN4toml2v313source_regionD2Ev.exit

bb.dm:                                            ; preds = %bb.dk
  %i.jz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i = icmp eq i8 %i.jz, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ka = add nsw i32 %i.jr, -1
  store i32 %i.ka, ptr %i.jo, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.do:                                            ; preds = %bb.dm
  %i.kb = atomicrmw volatile add ptr %i.jo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.do, %bb.dn
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jr, %bb.dn ], [ %i.kb, %bb.do ]
  %i.kc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kc, label %bb.dp, label %_ZN4toml2v313source_regionD2Ev.exit, !prof !173

bb.dp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jn) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit

_ZN4toml2v313source_regionD2Ev.exit:              ; preds = %bb.dp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dl, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit
  %i.kd = load ptr, ptr %i.en, align 8, !tbaa !576 ; 4 uses
  %i.ke = load ptr, ptr %i.eo, align 8, !tbaa !577
  %.not.i.i256 = icmp eq ptr %i.kd, %i.ke
  br i1 %.not.i.i256, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit
  store ptr %i.ix, ptr %i.kd, align 8, !tbaa !578
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr %i.kf, ptr %i.en, align 8, !tbaa !576
  br label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit

bb.dr:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit
  %i.kg = load ptr, ptr %i.em, align 8, !tbaa !580 ; 4 uses
  %i.kh = ptrtoint ptr %i.kd to i64
  %i.ki = ptrtoint ptr %i.kg to i64               ; 2 uses
  %i.kj = sub i64 %i.kh, %i.ki                    ; 5 uses
  %i.kk = icmp eq i64 %i.kj, 9223372036854775800
  br i1 %i.kk, label %bb.ds, label %_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.ds
  unreachable

_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dr
  %i.kl = ashr exact i64 %i.kj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kl, i64 1)
  %i.km = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kl ; 2 uses
  %i.kn = icmp ult i64 %i.km, %i.kl
  %i.ko = call i64 @llvm.umin.i64(i64 %i.km, i64 1152921504606846975)
  %i.kp = select i1 %i.kn, i64 1152921504606846975, i64 %i.ko ; 2 uses
  %i.kq = shl nuw nsw i64 %i.kp, 3
  %i.kr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kq) #55
          to label %.noexc258 unwind label %.loopexit471 ; 4 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 %i.kj ; 2 uses
  store ptr %i.ix, ptr %i.ks, align 8, !tbaa !578
  %i.kt = icmp sgt i64 %i.kj, 0
  br i1 %i.kt, label %bb.dt, label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.dt:                                            ; preds = %.noexc258
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kr, ptr align 8 %i.kg, i64 %i.kj, i1 false)
  br label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.dt, %.noexc258
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.kg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.kv = load ptr, ptr %i.eo, align 8, !tbaa !577
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = sub i64 %i.kw, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kx) #51
  br label %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.du, %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.kr, ptr %i.em, align 8, !tbaa !580
  store ptr %i.ku, ptr %i.en, align 8, !tbaa !576
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kp
  store ptr %i.ky, ptr %i.eo, align 8, !tbaa !577
  br label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit

bb.dv:                                            ; preds = %.critedge
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dw:                                            ; preds = %bb.cz
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4toml2v33keyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %35) #50
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.pn162 = phi { ptr, i32 } [ %i.la, %bb.dw ], [ %i.kz, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #50
  br label %bb.gz

.loopexit471:                                     ; preds = %_ZNKSt6vectorIPN4toml2v35tableESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

.loopexit.split-lp:                               ; preds = %bb.ds
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit: ; preds = %.lr.ph.i, %bb.dq, %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit, %bb.cl
  %.2138 = phi ptr [ %i.gl, %bb.cl ], [ %i.hj, %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit ], [ %i.ix, %bb.dq ], [ %i.ix, %_ZNSt6vectorIPN4toml2v35tableESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.gl, %.lr.ph.i ] ; 2 uses
  %i.lb = add nuw i64 %.0139488, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.lb, %i.ee
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.cj, !llvm.loop !825

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit259: ; preds = %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.lc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 32
  %i.ld = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 96
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !208 ; 5 uses
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !8
  %i.lg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 40
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !14
  %i.li = icmp eq i64 %i.lh, %i.ev
  br i1 %i.li, label %bb.dy, label %.critedge6

bb.dy:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit259
  %i.lj = icmp eq i64 %i.ev, 0
  br i1 %i.lj, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit266, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262: ; preds = %bb.dy
  %bcmp.i263 = call i32 @bcmp(ptr %i.lf, ptr %i.et, i64 %i.ev)
  %i.lk = icmp eq i32 %bcmp.i263, 0
  br i1 %i.lk, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit266, label %.critedge6

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit266: ; preds = %bb.dy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262
  %i.ll = load ptr, ptr %i.le, align 8, !tbaa !70 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 152
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = call noundef ptr %i.ln(ptr noundef nonnull align 8 dereferenceable(40) %i.le) #52 ; 3 uses
  %i.lp = icmp ne ptr %i.lo, null
  %or.cond = and i1 %i.o, %i.lp
  br i1 %or.cond, label %bb.dz, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread

bb.dz:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit266
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 3272
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !821 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !821 ; 2 uses
  %.not6.i267 = icmp eq ptr %i.lr, %i.lt
  br i1 %.not6.i267, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread, label %.lr.ph.i268

.lr.ph.i268:                                      ; preds = %bb.dz, %bb.ea
  %.sroa.02.07.i269 = phi ptr [ %i.lw, %bb.ea ], [ %i.lr, %bb.dz ] ; 2 uses
  %i.lu = load ptr, ptr %.sroa.02.07.i269, align 8, !tbaa !822
  %i.lv = icmp eq ptr %i.lu, %i.lo
  br i1 %i.lv, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i268
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i269, i64 8 ; 2 uses
  %.not.i270 = icmp eq ptr %i.lw, %i.lt
  br i1 %.not.i270, label %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread, label %.lr.ph.i268, !llvm.loop !824

_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272: ; preds = %.lr.ph.i268
  %i.lx = invoke noundef nonnull align 8 dereferenceable(89) ptr @_ZN4toml2v35array12emplace_backINS0_5tableEJEEEDcDpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.lo)
          to label %bb.eb unwind label %bb.el     ; 8 uses

bb.eb:                                            ; preds = %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272
  %i.ly = load ptr, ptr %0, align 8, !tbaa !526, !nonnull !121, !align !527 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !70
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = call noundef nonnull align 8 dereferenceable(16) ptr %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.ly) #50, !inline_history !575 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !167 ; 2 uses
  %i.me = load <2 x ptr>, ptr %i.mb, align 8, !tbaa !180
  %.not.i.i.i273 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i273, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 3 uses
  %i.mg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i274 = icmp eq i8 %i.mg, 0
  br i1 %.not.i.i.i.i274, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mh = load i32, ptr %i.mf, align 4, !tbaa !172
  %i.mi = add nsw i32 %i.mh, 1
  store i32 %i.mi, ptr %i.mf, align 4, !tbaa !172
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275

bb.ee:                                            ; preds = %bb.ec
  %i.mj = atomicrmw volatile add ptr %i.mf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275

_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275: ; preds = %bb.eb, %bb.ed, %bb.ee
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i64 %.sroa.093.0.copyload, ptr %i.mk, align 8
  %.sroa.4383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sroa.4383.0..sroa_idx, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !167 ; 8 uses
  store <2 x ptr> %i.me, ptr %i.ml, align 8, !tbaa !180
  %.not.i.i.i.i.i276 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i.i.i276, label %_ZN4toml2v313source_regionD2Ev.exit285.thread, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 4 uses
  %i.mp = load atomic i64, ptr %i.mo acquire, align 8 ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 4294967297
  %i.mr = trunc i64 %i.mp to i32                  ; 2 uses
  br i1 %i.mq, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.mo, align 8, !tbaa !168
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  store i32 0, ptr %i.ms, align 4, !tbaa !170
  %i.mt = load ptr, ptr %i.mn, align 8, !tbaa !70
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #50, !inline_history !182
  %i.mw = load ptr, ptr %i.mn, align 8, !tbaa !70
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #50, !inline_history !182
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

bb.eh:                                            ; preds = %bb.ef
  %i.mz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i277 = icmp eq i8 %i.mz, 0
  br i1 %.not.i.i.i.i.i.i277, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.na = add nsw i32 %i.mr, -1
  store i32 %i.na, ptr %i.mo, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278

bb.ej:                                            ; preds = %bb.eh
  %i.nb = atomicrmw volatile add ptr %i.mo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i.i.i.i279 = phi i32 [ %i.mr, %bb.ei ], [ %i.nb, %bb.ej ]
  %i.nc = icmp eq i32 %.0.i.i.i.i.i.i.i279, 1
  br i1 %i.nc, label %bb.ek, label %_ZN4toml2v313source_regionD2Ev.exit285.thread, !prof !173

bb.ek:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mn) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

end_hunk_9
begin_hunk_10_@_ZN4toml2v34impl7impl_ex6parser18parse_table_headerEv:bb.a
bb.eq:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292, %bb.ep
  %i.of = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0375.0491) #52 ; 2 uses
  %.not466 = icmp eq ptr %i.of, %i.nv
  br i1 %.not466, label %.thread454, label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit292

.thread454:                                       ; preds = %bb.eq, %bb.eo, %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5tableESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit291
  %i.og = ptrtoint ptr %.sroa.02.07.i288 to i64
  %i.oh = ptrtoint ptr %i.nj to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = getelementptr inbounds i8, ptr %i.nj, i64 %i.oi ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 4 uses
  %.not.i.i293 = icmp eq ptr %i.ok, %i.nl
  br i1 %.not.i.i293, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %.thread454
  %i.ol = ptrtoint ptr %i.nl to i64
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = sub i64 %i.ol, %i.om                    ; 3 uses
  %i.oo = icmp sgt i64 %i.on, 8
  br i1 %i.oo, label %bb.es, label %bb.et, !prof !200

bb.es:                                            ; preds = %bb.er
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.oj, ptr nonnull align 8 %i.ok, i64 %i.on, i1 false)
  %.pre.i.i = load ptr, ptr %i.nk, align 8, !tbaa !576
  br label %bb.ev

bb.et:                                            ; preds = %bb.er
  %i.op = icmp eq i64 %i.on, 8
  br i1 %i.op, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.oq = load ptr, ptr %i.ok, align 8, !tbaa !578
  store ptr %i.oq, ptr %i.oj, align 8, !tbaa !578
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es, %.thread454
  %i.or = phi ptr [ %i.nl, %bb.eu ], [ %i.nl, %bb.et ], [ %.pre.i.i, %bb.es ], [ %i.nl, %.thread454 ]
  %i.os = getelementptr inbounds i8, ptr %i.or, i64 -8
  store ptr %i.os, ptr %i.nk, align 8, !tbaa !576
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  store i64 %.sroa.093.0.copyload, ptr %i.ot, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ou, align 8
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

_ZN4toml2v313source_regionD2Ev.exit285:           ; preds = %bb.en, %bb.ep, %_ZN4toml2v34impl4findIN9__gnu_cxx17__normal_iteratorIPPNS0_5arrayESt6vectorIS6_SaIS6_EEEES6_EEDTaddefp_ET_SD_RKT0_.exit272.thread
  br i1 %i.o, label %_ZN4toml2v313source_regionD2Ev.exit285._crit_edge, label %_ZN4toml2v313source_regionD2Ev.exit285.thread464

_ZN4toml2v313source_regionD2Ev.exit285._crit_edge: ; preds = %_ZN4toml2v313source_regionD2Ev.exit285
  %.phi.trans.insert510 = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %.pre511 = load ptr, ptr %.phi.trans.insert510, align 8
  br label %bb.ez

_ZN4toml2v313source_regionD2Ev.exit285.thread464: ; preds = %bb.em, %_ZN4toml2v313source_regionD2Ev.exit285
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %i.ow = load ptr, ptr %i.ov, align 8            ; 2 uses
  %i.ox = call noundef zeroext i8 %i.ow(ptr noundef nonnull align 8 dereferenceable(40) %i.le) #52
  %i.oy = icmp eq i8 %i.ox, 1
  br i1 %i.oy, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit285.thread464
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #50
  store i64 32, ptr %36, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr @.str.178, ptr %i.oz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #50
  %.val180 = load ptr, ptr %i.ax, align 8, !tbaa !8
  %.val181 = load i64, ptr %i.ay, align 8, !tbaa !14
  store i64 %.val181, ptr %37, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %.val180, ptr %i.pa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #50
  store i64 1, ptr %38, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr @.str.16, ptr %i.pb, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %.sroa.093.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %38) #54
          to label %bb.ex unwind label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  unreachable

bb.ey:                                            ; preds = %bb.ew
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #50
  br label %bb.gz

bb.ez:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit285._crit_edge, %_ZN4toml2v313source_regionD2Ev.exit285.thread464
  %i.pd = phi ptr [ %.pre511, %_ZN4toml2v313source_regionD2Ev.exit285._crit_edge ], [ %i.ow, %_ZN4toml2v313source_regionD2Ev.exit285.thread464 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #50
  store i64 25, ptr %39, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr @.str.156, ptr %i.pe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #50
  %i.pf = call noundef zeroext i8 %i.pd(ptr noundef nonnull align 8 dereferenceable(40) %i.le) #52
  %i.pg = zext i8 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl24node_type_friendly_namesE, i64 %i.pg ; 2 uses
  %.sroa.0.0.copyload.i296 = load i64, ptr %i.ph, align 16, !tbaa !139
  %.sroa.2.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %.sroa.2.0.copyload.i298 = load ptr, ptr %.sroa.2.0..sroa_idx.i297, align 8, !tbaa !140
  store i64 %.sroa.0.0.copyload.i296, ptr %40, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %.sroa.2.0.copyload.i298, ptr %i.pi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #50
  store i64 2, ptr %41, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr @.str.158, ptr %i.pj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #50
  %.val = load ptr, ptr %i.ax, align 8, !tbaa !8
  %.val179 = load i64, ptr %i.ay, align 8, !tbaa !14
  store i64 %.val179, ptr %42, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %.val, ptr %i.pk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #50
  store i64 5, ptr %43, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr @.str.179, ptr %i.pl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #50
  %spec.select599 = select i1 %i.o, i64 15, i64 5
  %spec.select600 = select i1 %i.o, ptr @.str.180, ptr @.str.167
  store i64 %spec.select599, ptr %44, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %spec.select600, ptr %i.pm, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %.sroa.093.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %44) #54
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %i.pn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #50
  br label %bb.gz

.critedge6:                                       ; preds = %._crit_edge, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit259, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.0.lcssa.i.i.i.i.i438 = phi ptr [ %.1.i.i.i.i.i, %_ZN4toml2v35table11lower_boundESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.1.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i262 ], [ %.1.i.i.i.i.i, %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit259 ], [ %i.ex, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #50
  invoke void @_ZNK4toml2v34impl7impl_ex6parser8make_keyEm(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::key") align 8 %45, ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 noundef %.pre-phi520)
          to label %bb.fc unwind label %bb.gc

bb.fc:                                            ; preds = %.critedge6
  br i1 %i.o, label %bb.fd, label %bb.gg

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #50
  store ptr %.0.lcssa.i.i.i.i.i438, ptr %47, align 8, !tbaa !594
  %i.po = getelementptr inbounds nuw i8, ptr %47, i64 24
  store i8 0, ptr %i.po, align 8, !tbaa !450
  invoke void @_ZN4toml2v35table12emplace_hintINS0_5arrayENS0_3keyEJETnNSt9enable_ifIXoo21is_key_or_convertibleIOT0_Esr4implE14is_wide_stringIS6_EEiE4typeELi0EEENS0_4impl14table_iteratorILb0EEENSB_ILb1EEES7_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::impl::table_iterator") align 8 %46, ptr noundef nonnull align 8 dereferenceable(89) %.0136.lcssa, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(64) %45)
          to label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit303 unwind label %bb.gd

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit303: ; preds = %bb.fd
  %i.pp = load i64, ptr %46, align 8, !tbaa !191
  %i.pq = inttoptr i64 %i.pp to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #50
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 96
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !208 ; 7 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 3272 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 3280 ; 3 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !829 ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 3288 ; 3 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !618
  %.not.i.i304 = icmp eq ptr %i.pv, %i.px
  br i1 %.not.i.i304, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit303
  store ptr %i.ps, ptr %i.pv, align 8, !tbaa !822
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store ptr %i.py, ptr %i.pu, align 8, !tbaa !829
  br label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE9push_backEOS3_.exit

bb.ff:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit303
  %i.pz = load ptr, ptr %i.pt, align 8, !tbaa !617 ; 4 uses
  %i.qa = ptrtoint ptr %i.pv to i64
  %i.qb = ptrtoint ptr %i.pz to i64               ; 2 uses
  %i.qc = sub i64 %i.qa, %i.qb                    ; 5 uses
  %i.qd = icmp eq i64 %i.qc, 9223372036854775800
  br i1 %i.qd, label %bb.fg, label %_ZNKSt6vectorIPN4toml2v35arrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc308 unwind label %bb.ge

.noexc308:                                        ; preds = %bb.fg
  unreachable

_ZNKSt6vectorIPN4toml2v35arrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ff
  %i.qe = ashr exact i64 %i.qc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i305 = call i64 @llvm.umax.i64(i64 %i.qe, i64 1)
  %i.qf = add nsw i64 %.sroa.speculated.i.i.i.i305, %i.qe ; 2 uses
  %i.qg = icmp ult i64 %i.qf, %i.qe
  %i.qh = call i64 @llvm.umin.i64(i64 %i.qf, i64 1152921504606846975)
  %i.qi = select i1 %i.qg, i64 1152921504606846975, i64 %i.qh ; 2 uses
  %i.qj = shl nuw nsw i64 %i.qi, 3
  %i.qk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qj) #55
          to label %.noexc309 unwind label %bb.ge ; 4 uses

.noexc309:                                        ; preds = %_ZNKSt6vectorIPN4toml2v35arrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ql = getelementptr inbounds i8, ptr %i.qk, i64 %i.qc ; 2 uses
  store ptr %i.ps, ptr %i.ql, align 8, !tbaa !822
  %i.qm = icmp sgt i64 %i.qc, 0
  br i1 %i.qm, label %bb.fh, label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.fh:                                            ; preds = %.noexc309
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qk, ptr align 8 %i.pz, i64 %i.qc, i1 false)
  br label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.fh, %.noexc309
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %.not.i17.i.i.i307 = icmp eq ptr %i.pz, null
  br i1 %.not.i17.i.i.i307, label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.qo = load ptr, ptr %i.pw, align 8, !tbaa !618
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = sub i64 %i.qp, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %i.pz, i64 noundef %i.qq) #51
  br label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.fi, %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.qk, ptr %i.pt, align 8, !tbaa !617
  store ptr %i.qn, ptr %i.pu, align 8, !tbaa !829
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.qi
  store ptr %i.qr, ptr %i.pw, align 8, !tbaa !618
  br label %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.fe
  %i.qs = load ptr, ptr %0, align 8, !tbaa !526, !nonnull !121, !align !527 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !70
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = call noundef nonnull align 8 dereferenceable(16) ptr %i.qu(ptr noundef nonnull align 8 dereferenceable(8) %i.qs) #50, !inline_history !575 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !167 ; 2 uses
  %i.qy = load <2 x ptr>, ptr %i.qv, align 8, !tbaa !180
  %.not.i.i.i310 = icmp eq ptr %i.qx, null
  br i1 %.not.i.i.i310, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit312, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE9push_backEOS3_.exit
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 8 ; 3 uses
  %i.ra = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i311 = icmp eq i8 %i.ra, 0
  br i1 %.not.i.i.i.i311, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.rb = load i32, ptr %i.qz, align 4, !tbaa !172
  %i.rc = add nsw i32 %i.rb, 1
  store i32 %i.rc, ptr %i.qz, align 4, !tbaa !172
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit312

bb.fl:                                            ; preds = %bb.fj
  %i.rd = atomicrmw volatile add ptr %i.qz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit312

_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit312: ; preds = %_ZNSt6vectorIPN4toml2v35arrayESaIS3_EE9push_backEOS3_.exit, %bb.fk, %bb.fl
  %i.re = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store i64 %.sroa.093.0.copyload, ptr %i.re, align 8
  %.sroa.4365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sroa.4365.0..sroa_idx, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !167 ; 8 uses
  store <2 x ptr> %i.qy, ptr %i.rf, align 8, !tbaa !180
  %.not.i.i.i.i.i313 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i.i313, label %_ZN4toml2v313source_regionD2Ev.exit322, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit312
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8 ; 4 uses
  %i.rj = load atomic i64, ptr %i.ri acquire, align 8 ; 2 uses
  %i.rk = icmp eq i64 %i.rj, 4294967297
  %i.rl = trunc i64 %i.rj to i32                  ; 2 uses
  br i1 %i.rk, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  store i32 0, ptr %i.ri, align 8, !tbaa !168
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 12
  store i32 0, ptr %i.rm, align 4, !tbaa !170
  %i.rn = load ptr, ptr %i.rh, align 8, !tbaa !70
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #50, !inline_history !182
  %i.rq = load ptr, ptr %i.rh, align 8, !tbaa !70
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8
  call void %i.rs(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #50, !inline_history !182
  br label %_ZN4toml2v313source_regionD2Ev.exit322

bb.fo:                                            ; preds = %bb.fm
  %i.rt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i314 = icmp eq i8 %i.rt, 0
  br i1 %.not.i.i.i.i.i.i314, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ru = add nsw i32 %i.rl, -1
  store i32 %i.ru, ptr %i.ri, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i315

bb.fq:                                            ; preds = %bb.fo
  %i.rv = atomicrmw volatile add ptr %i.ri, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i315

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i315: ; preds = %bb.fq, %bb.fp
  %.0.i.i.i.i.i.i.i316 = phi i32 [ %i.rl, %bb.fp ], [ %i.rv, %bb.fq ]
  %i.rw = icmp eq i32 %.0.i.i.i.i.i.i.i316, 1
  br i1 %i.rw, label %bb.fr, label %_ZN4toml2v313source_regionD2Ev.exit322, !prof !173

bb.fr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i315
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rh) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit322

_ZN4toml2v313source_regionD2Ev.exit322:           ; preds = %bb.fr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i315, %bb.fn, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit312
  %i.rx = invoke noundef nonnull align 8 dereferenceable(89) ptr @_ZN4toml2v35array12emplace_backINS0_5tableEJEEEDcDpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ps)
          to label %bb.fs unwind label %bb.gf     ; 8 uses

bb.fs:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit322
  %i.ry = load ptr, ptr %0, align 8, !tbaa !526, !nonnull !121, !align !527 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !70
  %i.sa = load ptr, ptr %i.rz, align 8
  %i.sb = call noundef nonnull align 8 dereferenceable(16) ptr %i.sa(ptr noundef nonnull align 8 dereferenceable(8) %i.ry) #50, !inline_history !575 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !167 ; 2 uses
  %i.se = load <2 x ptr>, ptr %i.sb, align 8, !tbaa !180
  %.not.i.i.i323 = icmp eq ptr %i.sd, null
  br i1 %.not.i.i.i323, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit325, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 8 ; 3 uses
  %i.sg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i324 = icmp eq i8 %i.sg, 0
  br i1 %.not.i.i.i.i324, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.sh = load i32, ptr %i.sf, align 4, !tbaa !172
  %i.si = add nsw i32 %i.sh, 1
  store i32 %i.si, ptr %i.sf, align 4, !tbaa !172
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit325

bb.fv:                                            ; preds = %bb.ft
  %i.sj = atomicrmw volatile add ptr %i.sf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit325

_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit325: ; preds = %bb.fs, %bb.fu, %bb.fv
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  store i64 %.sroa.093.0.copyload, ptr %i.sk, align 8
  %.sroa.4360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sroa.4360.0..sroa_idx, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rx, i64 32
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !167 ; 8 uses
  store <2 x ptr> %i.se, ptr %i.sl, align 8, !tbaa !180
  %.not.i.i.i.i.i326 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i.i.i.i326, label %_ZN4toml2v313source_regionD2Ev.exit335, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit325
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 4 uses
  %i.sp = load atomic i64, ptr %i.so acquire, align 8 ; 2 uses
  %i.sq = icmp eq i64 %i.sp, 4294967297
  %i.sr = trunc i64 %i.sp to i32                  ; 2 uses
  br i1 %i.sq, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store i32 0, ptr %i.so, align 8, !tbaa !168
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  store i32 0, ptr %i.ss, align 4, !tbaa !170
  %i.st = load ptr, ptr %i.sn, align 8, !tbaa !70
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #50, !inline_history !182
  %i.sw = load ptr, ptr %i.sn, align 8, !tbaa !70
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #50, !inline_history !182
  br label %_ZN4toml2v313source_regionD2Ev.exit335

bb.fy:                                            ; preds = %bb.fw
  %i.sz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i327 = icmp eq i8 %i.sz, 0
  br i1 %.not.i.i.i.i.i.i327, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ta = add nsw i32 %i.sr, -1
  store i32 %i.ta, ptr %i.so, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i328

bb.ga:                                            ; preds = %bb.fy
  %i.tb = atomicrmw volatile add ptr %i.so, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i328

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i328: ; preds = %bb.ga, %bb.fz
  %.0.i.i.i.i.i.i.i329 = phi i32 [ %i.sr, %bb.fz ], [ %i.tb, %bb.ga ]
  %i.tc = icmp eq i32 %.0.i.i.i.i.i.i.i329, 1
  br i1 %i.tc, label %bb.gb, label %_ZN4toml2v313source_regionD2Ev.exit335, !prof !173

bb.gb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i328
end_hunk_10
begin_hunk_11_@_ZN4toml2v34impl7impl_ex6parser18parse_table_headerEv:bb.a
          cleanup
  br label %bb.gy

bb.gd:                                            ; preds = %bb.fd
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #50
  br label %bb.gx

bb.ge:                                            ; preds = %_ZNKSt6vectorIPN4toml2v35arrayESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.fg
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gf:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit322
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gg:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #50
  store ptr %.0.lcssa.i.i.i.i.i438, ptr %49, align 8, !tbaa !594
  %i.th = getelementptr inbounds nuw i8, ptr %49, i64 24
  store i8 0, ptr %i.th, align 8, !tbaa !450
  invoke void @_ZN4toml2v35table12emplace_hintIS1_NS0_3keyEJETnNSt9enable_ifIXoo21is_key_or_convertibleIOT0_Esr4implE14is_wide_stringIS5_EEiE4typeELi0EEENS0_4impl14table_iteratorILb0EEENSA_ILb1EEES6_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.toml::v3::impl::table_iterator") align 8 %48, ptr noundef nonnull align 8 dereferenceable(89) %.0136.lcssa, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(64) %45)
          to label %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit336 unwind label %bb.gq

_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit336: ; preds = %bb.gg
  %i.ti = load i64, ptr %48, align 8, !tbaa !191
  %i.tj = inttoptr i64 %i.ti to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #50
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 96
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !208 ; 8 uses
  %i.tm = load ptr, ptr %0, align 8, !tbaa !526, !nonnull !121, !align !527 ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !70
  %i.to = load ptr, ptr %i.tn, align 8
  %i.tp = call noundef nonnull align 8 dereferenceable(16) ptr %i.to(ptr noundef nonnull align 8 dereferenceable(8) %i.tm) #50, !inline_history !575 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !167 ; 2 uses
  %i.ts = load <2 x ptr>, ptr %i.tp, align 8, !tbaa !180
  %.not.i.i.i337 = icmp eq ptr %i.tr, null
  br i1 %.not.i.i.i337, label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339, label %bb.gh

bb.gh:                                            ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit336
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 8 ; 3 uses
  %i.tu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i338 = icmp eq i8 %i.tu, 0
  br i1 %.not.i.i.i.i338, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.tv = load i32, ptr %i.tt, align 4, !tbaa !172
  %i.tw = add nsw i32 %i.tv, 1
  store i32 %i.tw, ptr %i.tt, align 4, !tbaa !172
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339

bb.gj:                                            ; preds = %bb.gh
  %i.tx = atomicrmw volatile add ptr %i.tt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339

_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339: ; preds = %_ZNK4toml2v34impl14table_iteratorILb0EE9get_proxyEv.exit336, %bb.gi, %bb.gj
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store i64 %.sroa.093.0.copyload, ptr %i.ty, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !167 ; 8 uses
  store <2 x ptr> %i.ts, ptr %i.tz, align 8, !tbaa !180
  %.not.i.i.i.i.i340 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i.i.i.i340, label %_ZN4toml2v313source_regionD2Ev.exit335, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8 ; 4 uses
  %i.ud = load atomic i64, ptr %i.uc acquire, align 8 ; 2 uses
  %i.ue = icmp eq i64 %i.ud, 4294967297
  %i.uf = trunc i64 %i.ud to i32                  ; 2 uses
  br i1 %i.ue, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  store i32 0, ptr %i.uc, align 8, !tbaa !168
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ub, i64 12
  store i32 0, ptr %i.ug, align 4, !tbaa !170
  %i.uh = load ptr, ptr %i.ub, align 8, !tbaa !70
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8
  call void %i.uj(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #50, !inline_history !182
  %i.uk = load ptr, ptr %i.ub, align 8, !tbaa !70
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #50, !inline_history !182
  br label %_ZN4toml2v313source_regionD2Ev.exit335

bb.gm:                                            ; preds = %bb.gk
  %i.un = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i341 = icmp eq i8 %i.un, 0
  br i1 %.not.i.i.i.i.i.i341, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.uo = add nsw i32 %i.uf, -1
  store i32 %i.uo, ptr %i.uc, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342

bb.go:                                            ; preds = %bb.gm
  %i.up = atomicrmw volatile add ptr %i.uc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342: ; preds = %bb.go, %bb.gn
  %.0.i.i.i.i.i.i.i343 = phi i32 [ %i.uf, %bb.gn ], [ %i.up, %bb.go ]
  %i.uq = icmp eq i32 %.0.i.i.i.i.i.i.i343, 1
  br i1 %i.uq, label %bb.gp, label %_ZN4toml2v313source_regionD2Ev.exit335, !prof !173

bb.gp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ub) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit335

bb.gq:                                            ; preds = %bb.gg
  %i.ur = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #50
  br label %bb.gx

_ZN4toml2v313source_regionD2Ev.exit335:           ; preds = %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339, %bb.gl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342, %bb.gp, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit325, %bb.fx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i328, %bb.gb
  %.6 = phi ptr [ %i.rx, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit325 ], [ %i.rx, %bb.gb ], [ %i.rx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i328 ], [ %i.rx, %bb.fx ], [ %i.tl, %bb.gp ], [ %i.tl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i342 ], [ %i.tl, %bb.gl ], [ %i.tl, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit339 ]
  %i.us = getelementptr inbounds nuw i8, ptr %45, i64 56
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !167 ; 8 uses
  %.not.i.i.i.i350 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i.i.i350, label %_ZN4toml2v313source_regionD2Ev.exit.i354, label %bb.gr

bb.gr:                                            ; preds = %_ZN4toml2v313source_regionD2Ev.exit335
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8 ; 4 uses
  %i.uv = load atomic i64, ptr %i.uu acquire, align 8 ; 2 uses
  %i.uw = icmp eq i64 %i.uv, 4294967297
  %i.ux = trunc i64 %i.uv to i32                  ; 2 uses
  br i1 %i.uw, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  store i32 0, ptr %i.uu, align 8, !tbaa !168
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ut, i64 12
  store i32 0, ptr %i.uy, align 4, !tbaa !170
  %i.uz = load ptr, ptr %i.ut, align 8, !tbaa !70
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.vb = load ptr, ptr %i.va, align 8
  call void %i.vb(ptr noundef nonnull align 8 dereferenceable(16) %i.ut) #50, !inline_history !595
  %i.vc = load ptr, ptr %i.ut, align 8, !tbaa !70
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8
  call void %i.ve(ptr noundef nonnull align 8 dereferenceable(16) %i.ut) #50, !inline_history !595
  br label %_ZN4toml2v313source_regionD2Ev.exit.i354

bb.gt:                                            ; preds = %bb.gr
  %i.vf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i351 = icmp eq i8 %i.vf, 0
  br i1 %.not.i.i.i.i.i351, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.vg = add nsw i32 %i.ux, -1
  store i32 %i.vg, ptr %i.uu, align 8, !tbaa !172
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352

bb.gv:                                            ; preds = %bb.gt
  %i.vh = atomicrmw volatile add ptr %i.uu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352: ; preds = %bb.gv, %bb.gu
  %.0.i.i.i.i.i.i353 = phi i32 [ %i.ux, %bb.gu ], [ %i.vh, %bb.gv ]
  %i.vi = icmp eq i32 %.0.i.i.i.i.i.i353, 1
  br i1 %i.vi, label %bb.gw, label %_ZN4toml2v313source_regionD2Ev.exit.i354, !prof !173

bb.gw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ut) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit.i354

_ZN4toml2v313source_regionD2Ev.exit.i354:         ; preds = %bb.gw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i352, %bb.gs, %_ZN4toml2v313source_regionD2Ev.exit335
  %i.vj = load ptr, ptr %45, align 8, !tbaa !8    ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.vl = icmp eq ptr %i.vj, %i.vk
  br i1 %i.vl, label %_ZN4toml2v33keyD2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355: ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i354
  %i.vm = load i64, ptr %i.vk, align 8, !tbaa !17
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vn) #51
  br label %_ZN4toml2v33keyD2Ev.exit357

_ZN4toml2v33keyD2Ev.exit357:                      ; preds = %_ZN4toml2v313source_regionD2Ev.exit.i354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i355
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit285.thread

bb.gx:                                            ; preds = %bb.ge, %bb.gf, %bb.gq, %bb.gd
  %.pn.pn = phi { ptr, i32 } [ %i.ur, %bb.gq ], [ %i.te, %bb.gd ], [ %i.tg, %bb.gf ], [ %i.tf, %bb.ge ]
  call void @_ZN4toml2v33keyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #50
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gc
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.gx ], [ %i.td, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #50
  br label %bb.gz

_ZN4toml2v313source_regionD2Ev.exit285.thread:    ; preds = %bb.ev, %bb.eg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278, %bb.ek, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275, %_ZN4toml2v33keyD2Ev.exit357
  %.7 = phi ptr [ %.6, %_ZN4toml2v33keyD2Ev.exit357 ], [ %i.ng, %bb.ev ], [ %i.lx, %bb.eg ], [ %i.lx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i278 ], [ %i.lx, %bb.ek ], [ %i.lx, %_ZNSt10shared_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit275 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6429, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6429)
  ret ptr %.7

bb.gz:                                            ; preds = %.loopexit471, %.loopexit.split-lp, %bb.gy, %bb.fb, %bb.ey, %bb.el, %bb.dx, %bb.cw, %bb.cy, %bb.cp, %bb.k, %bb.l, %bb.q, %bb.v, %bb.aa, %bb.ae, %bb.al, %bb.ax, %bb.be, %bb.bk, %bb.br, %bb.ch, %bb.f, %bb.e
  %.pn176 = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.g, %bb.e ], [ %i.au, %bb.al ], [ %i.m, %bb.l ], [ %i.q, %bb.q ], [ %i.t, %bb.v ], [ %i.x, %bb.aa ], [ %i.ac, %bb.ae ], [ %i.bt, %bb.ax ], [ %i.cf, %bb.be ], [ %i.ci, %bb.bk ], [ %i.cu, %bb.br ], [ %i.dt, %bb.ch ], [ %i.l, %bb.k ], [ %i.hp, %bb.cw ], [ %.pn162, %bb.dx ], [ %i.nd, %bb.el ], [ %i.gx, %bb.cp ], [ %i.hz, %bb.cy ], [ %.pn.pn.pn, %bb.gy ], [ %i.pn, %bb.fb ], [ %i.pc, %bb.ey ], [ %lpad.loopexit, %.loopexit471 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6429, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6429)
  resume { ptr, i32 } %.pn176
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNK4toml2v34impl7impl_ex6parser16current_positionEj(ptr noundef nonnull align 8 dereferenceable(3496) %0, i32 noundef 1) #50
  tail call void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #54
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(89) ptr @_ZN4toml2v35array12emplace_backINS0_5tableEJEEEDcDpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #55 ; 6 uses
  tail call void @_ZN4toml2v35tableC1Ev(ptr noundef nonnull align 8 dereferenceable(89) %i.a) #50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !263
  %.not.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.a to i64
  store i64 %i.f, ptr %i.c, align 8, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !205
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !207  ; 10 uses
  %i.j = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc7 unwind label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit6

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #55
          to label %.noexc8 unwind label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit6 ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !208
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %i.w = add i64 %i.j, -8
  %i.x = sub i64 %i.w, %i.k                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = add i64 %i.j, -8
  %i.ab = sub i64 %i.aa, %i.k
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ad
  %scevgep15 = getelementptr i8, ptr %i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.t, %scevgep15
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ah ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.i, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.ai = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !208, !alias.scope !835, !noalias !830
  %wide.load17 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !208, !alias.scope !835, !noalias !830
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !208, !alias.scope !838, !noalias !835
  store <2 x i64> %wide.load17, ptr %i.aj, align 8, !tbaa !208, !alias.scope !838, !noalias !835
  %i.ak = getelementptr i8, ptr %next.gep16, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep16, align 8, !tbaa !208, !alias.scope !835, !noalias !830
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !208, !alias.scope !835, !noalias !830
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !840

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader19

.lr.ph.i.i.i.i.preheader19:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader19, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader19 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader19 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !208, !alias.scope !833, !noalias !830
  store i64 %i.am, ptr %.012.i.i.i.i, align 8, !tbaa !208, !alias.scope !830, !noalias !833
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !208, !alias.scope !833, !noalias !830
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !841

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.t, %.noexc8 ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !263
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.as) #51
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.t, ptr %i.h, align 8, !tbaa !207
  store ptr %i.ap, ptr %i.b, align 8, !tbaa !205
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.at, ptr %i.d, align 8, !tbaa !263
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %.noexc
  ret ptr %i.a

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit6: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #50, !inline_history !312
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress noinline noreturn uwtable
define linkonce_odr void @_ZNK4toml2v34impl7impl_ex6parser12set_error_atIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_S8_EEEvNS0_15source_positionEDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #34 comdat align 2 {
bb.a:
  %8 = alloca %"struct.toml::v3::source_position", align 8 ; 2 uses
  %9 = alloca %"struct.(anonymous namespace)::error_builder", align 8 ; 7 uses
  store i64 %1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3472
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 512 ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 520 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 511
  store ptr %i.d, ptr %i.c, align 8, !tbaa !739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %9, ptr noundef nonnull readonly align 1 dereferenceable(20) @.str.67, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !140
  %spec.select.i7.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload, i64 491) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr readonly align 1 %.sroa.2.0.copyload, i64 %spec.select.i7.i, i1 false)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.i7.i ; 5 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !140
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !739  ; 3 uses
  %.not.i9.i = icmp ult ptr %i.g, %i.h
  br i1 %.not.i9.i, label %bb.b, label %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, !prof !200

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  %spec.select.i10.i = call i64 @llvm.umin.i64(i64 %i.k, i64 2) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull readonly align 1 @.str.54, i64 %spec.select.i10.i, i1 false)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.i10.i ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !140
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !739
  br label %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.g, %bb.a ], [ %i.m, %bb.b ] ; 4 uses
  %i.o = phi ptr [ %i.h, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %.not.i.i = icmp ult ptr %i.n, %i.o
  br i1 %.not.i.i, label %bb.c, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit, !prof !200

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val17 = load ptr, ptr %i.p, align 8
  %.val16 = load i64, ptr %2, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.s, i64 %.val16) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr readonly align 1 %.val17, i64 %spec.select.i.i, i1 false)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %spec.select.i.i ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !140
  %.pre33 = load ptr, ptr %i.c, align 8, !tbaa !739
  br label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit

_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit: ; preds = %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.c
  %i.v = phi ptr [ %i.n, %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.u, %bb.c ] ; 4 uses
  %i.w = phi ptr [ %i.o, %_ZN12_GLOBAL__N_113error_builderC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.pre33, %bb.c ] ; 3 uses
  %.not.i.i18 = icmp ult ptr %i.v, %i.w
  br i1 %.not.i.i18, label %bb.d, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit20, !prof !200

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val15 = load ptr, ptr %i.x, align 8
  %.val14 = load i64, ptr %3, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  %spec.select.i.i19 = call i64 @llvm.umin.i64(i64 %i.aa, i64 %.val14) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr readonly align 1 %.val15, i64 %spec.select.i.i19, i1 false)
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %spec.select.i.i19 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !140
  %.pre34 = load ptr, ptr %i.c, align 8, !tbaa !739
  br label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit20

_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit20: ; preds = %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit, %bb.d
  %i.ad = phi ptr [ %i.v, %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit ], [ %i.ac, %bb.d ] ; 4 uses
  %i.ae = phi ptr [ %i.w, %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit ], [ %.pre34, %bb.d ] ; 3 uses
  %.not.i.i21 = icmp ult ptr %i.ad, %i.ae
  br i1 %.not.i.i21, label %bb.e, label %_ZN12_GLOBAL__N_113error_builder6appendISt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_.exit23, !prof !200

end_hunk_11
begin_hunk_12_@_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_:bb.a
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 %i.r, ptr %i.a, align 8, !tbaa !139
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.f
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i unwind label %bb.k ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i
  store ptr %i.t, ptr %i.m, align 8, !tbaa !8
  %i.u = load i64, ptr %i.a, align 8, !tbaa !139
  store i64 %i.u, ptr %i.o, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i, %bb.f
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i ], [ %i.o, %bb.f ] ; 2 uses
  switch i64 %i.r, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !17
  store i8 %i.w, ptr %i.v, align 1, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %i.x, ptr %i.y, align 8, !tbaa !14
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.ab = icmp eq i16 %i.j, -1
  br i1 %i.ab, label %bb.j, label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEDaS8_.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !749
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEDaS8_.exit

bb.k:                                             ; preds = %.noexc.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #53
  unreachable

_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEDaS8_.exit: ; preds = %bb.i, %bb.j
  %i.ag = phi i16 [ %i.ad, %bb.j ], [ %i.j, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i16 %i.ag, ptr %i.ah, align 8, !tbaa !749
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.l:                                             ; preds = %bb.a
  %i.ai = load i16, ptr %0, align 2, !tbaa !297   ; 2 uses
  %i.aj = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIlEE, i64 16), ptr %i.aj, align 8, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !226
  store i64 %i.an, ptr %i.al, align 8, !tbaa !226
  %i.ao = icmp eq i16 %i.ai, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i16, ptr %i.ap, align 8
  %i.ar = select i1 %i.ao, i16 %i.aq, i16 %i.ai
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i16 %i.ar, ptr %i.as, align 8, !tbaa !562
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.m:                                             ; preds = %bb.a
  %i.at = load i16, ptr %0, align 2, !tbaa !297   ; 2 uses
  %i.au = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.au, align 8, !tbaa !70
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !231
  store double %i.ay, ptr %i.aw, align 8, !tbaa !231
  %i.az = icmp eq i16 %i.at, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = select i1 %i.az, i16 %i.bb, i16 %i.at
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i16 %i.bc, ptr %i.bd, align 8, !tbaa !563
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.n:                                             ; preds = %bb.a
  %i.be = load i16, ptr %0, align 2, !tbaa !297   ; 2 uses
  %i.bf = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #55 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIbEE, i64 16), ptr %i.bf, align 8, !tbaa !70
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !234, !range !120, !noundef !121
  store i8 %i.bj, ptr %i.bh, align 8, !tbaa !234
  %i.bk = icmp eq i16 %i.be, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = select i1 %i.bk, i16 %i.bm, i16 %i.be
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 42
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !751
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.o:                                             ; preds = %bb.a
  %i.bp = load i16, ptr %0, align 2, !tbaa !297   ; 2 uses
  %i.bq = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #55 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_4dateEEE, i64 16), ptr %i.bq, align 8, !tbaa !70
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bu = load i32, ptr %i.bt, align 8
  store i32 %i.bu, ptr %i.bs, align 8
  %i.bv = icmp eq i16 %i.bp, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bx = load i16, ptr %i.bw, align 4
  %i.by = select i1 %i.bv, i16 %i.bx, i16 %i.bp
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  store i16 %i.by, ptr %i.bz, align 4, !tbaa !566
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.p:                                             ; preds = %bb.a
  %i.ca = load i16, ptr %0, align 2, !tbaa !297   ; 2 uses
  %i.cb = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_4timeEEE, i64 16), ptr %i.cb, align 8, !tbaa !70
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cf = load i64, ptr %i.ce, align 8
  store i64 %i.cf, ptr %i.cd, align 8
  %i.cg = icmp eq i16 %i.ca, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ci = load i16, ptr %i.ch, align 8
  %i.cj = select i1 %i.cg, i16 %i.ci, i16 %i.ca
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store i16 %i.cj, ptr %i.ck, align 8, !tbaa !564
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.q:                                             ; preds = %bb.a
  %i.cl = load i16, ptr %0, align 2, !tbaa !297   ; 2 uses
  %i.cm = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #55 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINS0_6stdopt9date_timeEEE, i64 16), ptr %i.cm, align 8, !tbaa !70
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cq = icmp eq i16 %i.cl, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cs = load i16, ptr %i.cr, align 8
  %i.ct = select i1 %i.cq, i16 %i.cs, i16 %i.cl
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  store i16 %i.ct, ptr %i.cu, align 8, !tbaa !568
  br label %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit

bb.r:                                             ; preds = %bb.a
  unreachable

_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5tableEEEDaS8_.exit: ; preds = %bb.d, %bb.b, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEDaS8_.exit
  %.0 = phi ptr [ %i.cm, %bb.q ], [ %i.f, %bb.b ], [ %i.k, %_ZZN4toml2v34impl14make_node_implIRKNS0_4nodeEEEPDaOT_NS0_11value_flagsEENKUlS8_E_clIRKNS0_5valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEDaS8_.exit ], [ %i.aj, %bb.l ], [ %i.au, %bb.m ], [ %i.bf, %bb.n ], [ %i.bq, %bb.o ], [ %i.cb, %bb.p ], [ %i.h, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !207    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #55 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !208
  store i64 %i.r, ptr %i.q, align 8, !tbaa !208
  store ptr null, ptr %2, align 8, !tbaa !208
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.m, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !208, !alias.scope !863, !noalias !858
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !208, !alias.scope !863, !noalias !858
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !208, !alias.scope !866, !noalias !863
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !tbaa !208, !alias.scope !866, !noalias !863
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !208, !alias.scope !863, !noalias !858
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !208, !alias.scope !863, !noalias !858
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !868

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !tbaa !208, !alias.scope !861, !noalias !858
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !tbaa !208, !alias.scope !858, !noalias !861
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !208, !alias.scope !861, !noalias !858
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !869

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.am = add i64 %i.d, -8
  %i.an = sub i64 %i.am, %i.m                     ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.an, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.aq = add i64 %i.d, -8
  %i.ar = sub i64 %i.aq, %i.m
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.as
  %scevgep40 = getelementptr i8, ptr %i.at, i64 16
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  %scevgep41 = getelementptr i8, ptr %i.au, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec48, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.ay = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.ay ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.az = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !208, !alias.scope !875, !noalias !870
  %wide.load54 = load <2 x i64>, ptr %i.az, align 8, !tbaa !208, !alias.scope !875, !noalias !870
  %i.ba = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !208, !alias.scope !878, !noalias !875
  store <2 x i64> %wide.load54, ptr %i.ba, align 8, !tbaa !208, !alias.scope !878, !noalias !875
  %i.bb = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !208, !alias.scope !875, !noalias !870
  store <2 x ptr> splat (ptr null), ptr %i.bb, align 8, !tbaa !208, !alias.scope !875, !noalias !870
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.bc, label %middle.block56, label %vector.body49, !llvm.loop !880

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.ap, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.ax, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bf, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !208, !alias.scope !873, !noalias !870
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !208, !alias.scope !870, !noalias !873
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !208, !alias.scope !873, !noalias !870
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !881

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.aw, %middle.block56 ], [ %i.bf, %.lr.ph.i.i.i17 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !263
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !207
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !205
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !263
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !207    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !263
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_12
