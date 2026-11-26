Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1285
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4toml2v35arrayC2ERKS1_:bb.a

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i20.preheader
  %i.bl = and i64 %i.bi, -8
  %i.bm = add i64 %i.bl, 8                        ; 2 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.at, i64 %i.bm
  %bound0 = icmp ult ptr %i.be, %i.bo
  %bound1 = icmp ult ptr %i.at, %i.bn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i20.preheader86, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck
  %n.vec74 = and i64 %i.bk, 4611686018427387900   ; 3 uses
  %i.bp = shl i64 %n.vec74, 3                     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.be, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.at, i64 %i.bp
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next81, %vector.body75 ] ; 2 uses
  %i.bs = shl i64 %index76, 3                     ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.be, i64 %i.bs ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.at, i64 %i.bs ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.bt = getelementptr i8, ptr %next.gep78, i64 16 ; 2 uses
  %wide.load79 = load <2 x i64>, ptr %next.gep78, align 8, !tbaa !176, !alias.scope !496
  %wide.load80 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !176, !alias.scope !496
  %i.bu = getelementptr i8, ptr %next.gep77, i64 16
  store <2 x i64> %wide.load79, ptr %next.gep77, align 8, !tbaa !176, !alias.scope !497, !noalias !498
  store <2 x i64> %wide.load80, ptr %i.bu, align 8, !tbaa !176, !alias.scope !497, !noalias !498
  store <2 x ptr> splat (ptr null), ptr %next.gep78, align 8, !tbaa !176, !alias.scope !496
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !176, !alias.scope !496
  %index.next81 = add nuw i64 %index76, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.bv, label %middle.block82, label %vector.body75, !llvm.loop !489

middle.block82:                                   ; preds = %vector.body75
  %cmp.n83 = icmp eq i64 %i.bk, %n.vec74
  br i1 %cmp.n83, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20.preheader86

.lr.ph.i.i.i.i20.preheader86:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i20.preheader, %middle.block82
  %.012.i.i.i.i21.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i20.preheader ], [ %i.bq, %middle.block82 ]
  %.0911.i.i.i.i22.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.i20.preheader ], [ %i.br, %middle.block82 ]
  br label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %.lr.ph.i.i.i.i20.preheader86, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i21 = phi ptr [ %i.by, %.lr.ph.i.i.i.i20 ], [ %.012.i.i.i.i21.ph, %.lr.ph.i.i.i.i20.preheader86 ] ; 2 uses
  %.0911.i.i.i.i22 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i20 ], [ %.0911.i.i.i.i22.ph, %.lr.ph.i.i.i.i20.preheader86 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.bw = load i64, ptr %.0911.i.i.i.i22, align 8, !tbaa !176, !alias.scope !495
  store i64 %i.bw, ptr %.012.i.i.i.i21, align 8, !tbaa !176, !alias.scope !494
  store ptr null, ptr %.0911.i.i.i.i22, align 8, !tbaa !176, !alias.scope !495
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i22, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21, i64 8 ; 2 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bx, %i.ap
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i20, !llvm.loop !490

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i20, %middle.block82, %.noexc27
  %.0.lcssa.i.i.i.i = phi ptr [ %i.be, %.noexc27 ], [ %i.bq, %middle.block82 ], [ %i.by, %.lr.ph.i.i.i.i20 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.at, null
  br i1 %.not.i23.i, label %.noexc14, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !195
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.cc) #51
  br label %.noexc14

.noexc14:                                         ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.be, ptr %i.b, align 8, !tbaa !175
  store ptr %i.bz, ptr %i.am, align 8, !tbaa !174
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.cd, ptr %i.k, align 8, !tbaa !195
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.g, %.noexc14
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.e

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.b, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

.loopexit.split-lp35.loopexit.split-lp:           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i16 = icmp eq ptr %i.ao, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17: ; preds = %.loopexit.split-lp35.loopexit.split-lp
  %i.cf = load ptr, ptr %i.ao, align 8, !tbaa !76
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #50, !inline_history !19
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp35.loopexit.split-lp, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i17 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp35.loopexit.split-lp ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #50
  call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #50
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4toml2v35arrayC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v34nodeE, i64 16), ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !158, !noalias !505
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !158, !alias.scope !505
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !161
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !161
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !195
  store ptr %i.k, ptr %i.i, align 8, !tbaa !195
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !152
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4toml2v34nodeaSERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !154
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !155
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50, !inline_history !20
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50, !inline_history !20
  br label %_ZN4toml2v34nodeaSERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !156
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZN4toml2v34nodeaSERKS1_.exit, !prof !157

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50
  br label %_ZN4toml2v34nodeaSERKS1_.exit

_ZN4toml2v34nodeaSERKS1_.exit:                    ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !175  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !174  ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4toml2v34nodeaSERKS1_.exit, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.t, %_ZN4toml2v34nodeaSERKS1_.exit ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !176 ; 3 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i10, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #50, !inline_history !21
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.t, ptr %i.u, align 8, !tbaa !174
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5clearEv.exit: ; preds = %_ZN4toml2v34nodeaSERKS1_.exit, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %3 = phi ptr [ %i.v, %_ZN4toml2v34nodeaSERKS1_.exit ], [ %i.t, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !174 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !175 ; 2 uses
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
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !195
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !175
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.ah
  br i1 %i.ap, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.aq = ptrtoint ptr %3 to i64
  %i.ar = sub i64 %i.aq, %i.an
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #55 ; 6 uses
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !175 ; 8 uses
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !174 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11.preheader

.lr.ph.i.i.i.i11.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = ptrtoaddr ptr %i.at to i64
  %i.ax = add i64 %i.av, -8
  %i.ay = sub i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i11.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i11.preheader
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.at, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.be ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.at, i64 %i.be ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.bf = getelementptr i8, ptr %next.gep66, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep66, align 8, !tbaa !176, !alias.scope !522
  %wide.load67 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !176, !alias.scope !522
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !176, !alias.scope !521
  store <2 x i64> %wide.load67, ptr %i.bg, align 8, !tbaa !176, !alias.scope !521
  store <2 x ptr> splat (ptr null), ptr %next.gep66, align 8, !tbaa !176, !alias.scope !522
  store <2 x ptr> splat (ptr null), ptr %i.bf, align 8, !tbaa !176, !alias.scope !522
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !509

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11.preheader92

.lr.ph.i.i.i.i11.preheader92:                     ; preds = %.lr.ph.i.i.i.i11.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i11.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i11.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %.lr.ph.i.i.i.i11.preheader92, %.lr.ph.i.i.i.i11
  %.012.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i11 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i11.preheader92 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i11 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i11.preheader92 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.bi = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !176, !alias.scope !522
  store i64 %i.bi, ptr %.012.i.i.i.i, align 8, !tbaa !176, !alias.scope !521
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !176, !alias.scope !522
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i12 = icmp eq ptr %i.bj, %i.au
  br i1 %.not.i.i.i.i12, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i11, !llvm.loop !510

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i11, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.at, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.bl = load ptr, ptr %i.aj, align 8, !tbaa !195
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.at to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bo) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.as, ptr %i.s, align 8, !tbaa !175
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store ptr %i.bp, ptr %i.u, align 8, !tbaa !174
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ah
  store ptr %i.bq, ptr %i.aj, align 8, !tbaa !195
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !161
  %.pre42 = load ptr, ptr %i.ac, align 8, !tbaa !161
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.j, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.br = phi ptr [ %i.ad, %bb.j ], [ %.pre42, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.bs = phi ptr [ %i.ae, %bb.j ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %.not3337 = icmp eq ptr %i.bs, %i.br
  br i1 %.not3337, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit
  %.sroa.030.038 = phi ptr [ %i.dk, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.bs, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit ] ; 2 uses
  %i.bt = load ptr, ptr %.sroa.030.038, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50, !noalias !523
  store i16 -1, ptr %2, align 2, !tbaa !198, !noalias !523
  %i.bu = call noundef ptr @_ZN4toml2v34node8do_visitIZNS0_4impl14make_node_implIRKS1_EEPDaOT_NS0_11value_flagsEEUlS9_E_S6_EEDcS9_OT0_(ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.bt), !noalias !523, !inline_history !18 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50, !noalias !523
  %i.bv = load ptr, ptr %i.u, align 8, !tbaa !174 ; 6 uses
  %i.bw = load ptr, ptr %i.aj, align 8, !tbaa !195
  %.not.i = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bx = ptrtoint ptr %i.bu to i64
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !176
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.by, ptr %i.u, align 8, !tbaa !174
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bz = load ptr, ptr %i.s, align 8, !tbaa !175 ; 10 uses
  %i.ca = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i17 = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i17)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #55
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  %i.cm = ptrtoint ptr %i.bu to i64
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !176
  %.not10.i.i.i.i18 = icmp eq ptr %i.bz, %i.bv
  br i1 %.not10.i.i.i.i18, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader

.lr.ph.i.i.i.i19.preheader:                       ; preds = %.noexc26
  %i.cn = add i64 %i.ca, -8
  %i.co = sub i64 %i.cn, %i.cb                    ; 3 uses
  %i.cp = lshr i64 %i.co, 3
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.co, 56
  br i1 %min.iters.check73, label %.lr.ph.i.i.i.i19.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i19.preheader
  %i.cr = and i64 %i.co, -8
  %i.cs = add i64 %i.cr, 8                        ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ck, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.bz, i64 %i.cs
  %bound0 = icmp ult ptr %i.ck, %i.cu
  %bound1 = icmp ult ptr %i.bz, %i.ct
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i19.preheader87, label %vector.ph74

vector.ph74:                                      ; preds = %vector.memcheck
  %n.vec75 = and i64 %i.cq, 4611686018427387900   ; 3 uses
  %i.cv = shl i64 %n.vec75, 3                     ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ck, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.bz, i64 %i.cv
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.cy = shl i64 %index77, 3                     ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.ck, i64 %i.cy ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.bz, i64 %i.cy ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.cz = getelementptr i8, ptr %next.gep79, i64 16 ; 2 uses
  %wide.load80 = load <2 x i64>, ptr %next.gep79, align 8, !tbaa !176, !alias.scope !526
  %wide.load81 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !176, !alias.scope !526
  %i.da = getelementptr i8, ptr %next.gep78, i64 16
  store <2 x i64> %wide.load80, ptr %next.gep78, align 8, !tbaa !176, !alias.scope !527, !noalias !528
  store <2 x i64> %wide.load81, ptr %i.da, align 8, !tbaa !176, !alias.scope !527, !noalias !528
  store <2 x ptr> splat (ptr null), ptr %next.gep79, align 8, !tbaa !176, !alias.scope !526
  store <2 x ptr> splat (ptr null), ptr %i.cz, align 8, !tbaa !176, !alias.scope !526
  %index.next82 = add nuw i64 %index77, 4         ; 2 uses
  %i.db = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.db, label %middle.block83, label %vector.body76, !llvm.loop !519

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.cq, %n.vec75
  br i1 %cmp.n84, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader87

.lr.ph.i.i.i.i19.preheader87:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i19.preheader, %middle.block83
  %.012.i.i.i.i20.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i19.preheader ], [ %i.cw, %middle.block83 ]
  %.0911.i.i.i.i21.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i.i.i.i19.preheader ], [ %i.cx, %middle.block83 ]
  br label %.lr.ph.i.i.i.i19

end_hunk_0
begin_hunk_1_@_ZN4toml2v35array7reserveEm:bb.a
  %wide.load4 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !176, !alias.scope !545
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !176, !alias.scope !544
  store <2 x i64> %wide.load4, ptr %i.ad, align 8, !tbaa !176, !alias.scope !544
  store <2 x ptr> splat (ptr null), ptr %next.gep3, align 8, !tbaa !176, !alias.scope !545
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !176, !alias.scope !545
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !542

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader6

.lr.ph.i.i.i.i.preheader6:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader6, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader6 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.af = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !176, !alias.scope !545
  store i64 %i.af, ptr %.012.i.i.i.i, align 8, !tbaa !176, !alias.scope !544
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !176, !alias.scope !545
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !543

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.q to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.al) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.p, ptr %i.a, align 8, !tbaa !175
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.am, ptr %i.k, align 8, !tbaa !174
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %1
  store ptr %i.an, ptr %i.c, align 8, !tbaa !195
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35array13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !174
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS4_EESaIS7_EELb1EE8_S_do_itERS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #50 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35array8truncateEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !176 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #50, !inline_history !23
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.j, ptr %i.b, align 8, !tbaa !174
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @_ZN4toml2v35array5eraseENS0_4impl14array_iteratorILb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !161  ; 4 uses
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.v, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !176
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !176
  %i.p = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !176 ; 3 uses
  store ptr %i.o, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !176
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #50, !inline_history !26
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.v = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.w = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !27

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !174
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.b, %bb.a
  %i.x = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.i, %bb.b ], [ %i.i, %bb.a ]
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8 ; 2 uses
  store ptr %i.y, ptr %i.h, align 8, !tbaa !174
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !176  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #50, !inline_history !28
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @_ZN4toml2v35array5eraseENS0_4impl14array_iteratorILb1EEES4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161  ; 3 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h
  %.not.i.i = icmp eq ptr %1, %2
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EESD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !161  ; 4 uses
  %.not11.i.i = icmp eq ptr %2, %i.k
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.w, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.f, %bb.c ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !176
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !176
  %i.q = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !176 ; 3 uses
  store ptr %i.p, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !176
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #50, !inline_history !546
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.x = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !27

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !161
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.c, %bb.b
  %3 = phi ptr [ %i.k, %bb.c ], [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.k, %bb.b ] ; 3 uses
  %4 = ptrtoint ptr %3 to i64
  %i.y = sub i64 %4, %i.g
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp eq ptr %3, %i.z
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EESD_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i ], [ %i.z, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i ] ; 2 uses
  %i.aa = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !176 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #50, !inline_history !547
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %3
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.z, ptr %i.j, align 8, !tbaa !174
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EESD_.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EESD_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %bb.a
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef i64 @_ZNK4toml2v35array16total_leaf_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %.not12 = icmp eq ptr %i.c, %i.d
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.08.lcssa = phi i64 [ 0, %bb.a ], [ %i.q, %bb.c ]
  ret i64 %.08.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.011 = phi i64 [ %i.r, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0810 = phi i64 [ %i.q, %bb.c ], [ 0, %.lr.ph.preheader ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.011
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !176  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #52 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = tail call noundef i64 @_ZNK4toml2v35array16total_leaf_countEv(ptr noundef nonnull align 8 dereferenceable(64) %i.n) #50
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.p = phi i64 [ %i.o, %bb.b ], [ 1, %.lr.ph ]
  %i.q = add i64 %i.p, %.0810                     ; 2 uses
  %i.r = add nuw i64 %.011, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !548
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35array13flatten_childEOS1_Rm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !175
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.015 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !176  ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #52
  %i.q = icmp eq i8 %i.p, 2
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !161
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4toml2v35array13flatten_childEOS1_Rm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %2) #50
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit

bb.e:                                             ; preds = %bb.b
  %i.w = load i64, ptr %2, align 8, !tbaa !125    ; 2 uses
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %2, align 8, !tbaa !125
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !175
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !176 ; 3 uses
  store ptr %i.l, ptr %i.z, align 8, !tbaa !176
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i: ; preds = %bb.e
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %i.aa) #50, !inline_history !24
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i, %bb.e, %bb.c, %bb.d
  %i.ae = add nuw i64 %.015, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !549
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNR4toml2v35array7flattenEv(ptr noundef nonnull returned align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  br label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread, %.lr.ph.preheader
  %.in.ph = phi i64 [ %i.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread ], [ %i.j, %.lr.ph.preheader ]
  %.02041.ph = phi i1 [ true, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread ], [ false, %.lr.ph.preheader ]
  %.02240.ph = phi i64 [ %i.aq, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread ], [ %i.j, %.lr.ph.preheader ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit
  br i1 %.02041.ph, label %._crit_edge.thread, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.outer, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit
  %.in = phi i64 [ %i.k, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit ], [ %.in.ph, %.lr.ph.outer ]
  %.02240 = phi i64 [ %.224, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit ], [ %.02240.ph, %.lr.ph.outer ] ; 2 uses
  %i.k = add i64 %.in, -1                         ; 5 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !175
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !176  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #52 ; 2 uses
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %bb.b, !llvm.loop !550

bb.b:                                             ; preds = %.lr.ph
  %i.s = add i64 %.02240, -1                      ; 3 uses
  %i.t = tail call noundef i64 @_ZNK4toml2v35array16total_leaf_countEv(ptr noundef nonnull align 8 dereferenceable(64) %i.r) #50 ; 2 uses
  %.not31 = icmp eq i64 %i.t, 0
  br i1 %.not31, label %bb.c, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !161  ; 4 uses
  %.not.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %i.v to i64
end_hunk_1
begin_hunk_2_@_ZN4toml2v34impl7impl_ex6parser11parse_arrayEv:bb.a
  %i.ac = icmp ult i32 %i.v, 9
  br i1 %i.ac, label %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread.i, label %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.i, !prof !171

_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.i: ; preds = %_ZN4toml2v34impl7impl_ex6parser18consume_line_breakEv.exit45
  %i.ad = icmp ne i32 %i.v, 9
  %i.ae = icmp ult i32 %i.v, 32
  %or.cond.i.i = and i1 %i.ad, %i.ae
  %i.af = icmp eq i32 %i.v, 127
  %spec.select.i.i = or i1 %i.af, %or.cond.i.i
  br i1 %spec.select.i.i, label %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread.i, label %bb.ac, !prof !246

_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread.i: ; preds = %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.i, %_ZN4toml2v34impl7impl_ex6parser18consume_line_breakEv.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 80, ptr %7, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.72, ptr %i.ag, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %7) #54
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread.i
  unreachable

bb.ab:                                            ; preds = %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.thread.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %.loopexit.split-lp.i

bb.ac:                                            ; preds = %_ZN4toml2v34impl27is_nontab_control_characterEDi.exit.i
  %i.ai = and i32 %i.v, -2048
  %i.aj = icmp eq i32 %i.ai, 55296
  br i1 %i.aj, label %bb.ad, label %.invoke.i, !prof !157

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store i64 75, ptr %8, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.73, ptr %i.ak, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %8) #54
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %.loopexit.split-lp.i

.invoke.i:                                        ; preds = %bb.ac, %bb.s
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !32

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af, %bb.ab
  %.pn.i = phi { ptr, i32 } [ %i.ah, %bb.ab ], [ %i.al, %bb.af ], [ %lpad.loopexit.split-lp269, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

_ZN4toml2v34impl7impl_ex6parser15consume_commentEv.exit: ; preds = %.preheader.i, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %_ZN4toml2v34impl7impl_ex6parser15consume_commentEv.exit, %bb.r, %bb.i
  br label %.critedge, !llvm.loop !609

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge, %bb.n, %bb.r, %bb.aj, %.invoke178, %bb.q, %bb.ar
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #50
  store i64 23, ptr %15, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.13, ptr %i.am, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %15) #54
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.thread
  unreachable

bb.ah:                                            ; preds = %.thread
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.ai:                                            ; preds = %bb.m
  br i1 %i.k, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !241
  %.not16 = icmp eq ptr %i.ao, null
  br i1 %.not16, label %bb.al, label %.backedge.backedge, !prof !157

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #50
  store i64 23, ptr %16, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @.str.13, ptr %i.ap, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %16) #54
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #50
  store i64 40, ptr %17, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @.str.14, ptr %i.ar, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %17) #54
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.ar:                                            ; preds = %bb.m
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.m
  br i1 %i.k, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #50
  store i64 36, ptr %18, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str.15, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #50
  %i.au = icmp ult i32 %i.n, 32
  br i1 %i.au, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.av = zext nneg i32 %i.n to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.av ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.aw, align 16, !tbaa !125
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !126
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.av:                                            ; preds = %bb.at
  %i.ax = icmp eq i32 %i.n, 127
  br i1 %i.ax, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !248
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.au, %bb.av, %bb.aw
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.au ], [ %i.ay, %bb.aw ], [ @.str.29, %bb.av ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.au ], [ %i.ba, %bb.aw ], [ 6, %bb.av ]
  store i64 %.sroa.0.0.i, ptr %19, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.sroa.4.0.i, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #50
  store i64 1, ptr %20, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.16, ptr %i.bc, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20) #54
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

bb.az:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #50
  invoke void @_ZN4toml2v34impl7impl_ex6parser11parse_valueEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !195 ; 2 uses
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !175 ; 3 uses
  %.not14 = icmp eq ptr %i.be, %i.bf
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !174 ; 2 uses
  br i1 %.not14, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i, label %bb.bd

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i: ; preds = %bb.ba
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %.pre to i64
  %i.bi = sub i64 %i.bh, %i.bg
  %i.bj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #55
          to label %.noexc27 unwind label %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc27:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !175 ; 11 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !174 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc27
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = ptrtoaddr ptr %i.bk to i64
  %i.bo = add i64 %i.bm, -8
  %i.bp = sub i64 %i.bo, %i.bn                    ; 3 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check244 = icmp ult i64 %i.bp, 56
  br i1 %min.iters.check244, label %.lr.ph.i.i.i.i.i.preheader264, label %vector.memcheck245

vector.memcheck245:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bs = and i64 %i.bp, -8
  %i.bt = add i64 %i.bs, 8                        ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bj, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bk, i64 %i.bt
  %bound0246 = icmp ult ptr %i.bj, %i.bv
  %bound1247 = icmp ult ptr %i.bk, %i.bu
  %found.conflict248 = and i1 %bound0246, %bound1247
  br i1 %found.conflict248, label %.lr.ph.i.i.i.i.i.preheader264, label %vector.ph249

vector.ph249:                                     ; preds = %vector.memcheck245
  %n.vec250 = and i64 %i.br, 4611686018427387900  ; 3 uses
  %i.bw = shl i64 %n.vec250, 3                    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bj, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bk, i64 %i.bw
  br label %vector.body251

vector.body251:                                   ; preds = %vector.body251, %vector.ph249
  %index252 = phi i64 [ 0, %vector.ph249 ], [ %index.next257, %vector.body251 ] ; 2 uses
  %i.bz = shl i64 %index252, 3                    ; 2 uses
  %next.gep253 = getelementptr i8, ptr %i.bj, i64 %i.bz ; 2 uses
  %next.gep254 = getelementptr i8, ptr %i.bk, i64 %i.bz ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.ca = getelementptr i8, ptr %next.gep254, i64 16 ; 2 uses
  %wide.load255 = load <2 x i64>, ptr %next.gep254, align 8, !tbaa !176, !alias.scope !629
  %wide.load256 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !176, !alias.scope !629
  %i.cb = getelementptr i8, ptr %next.gep253, i64 16
  store <2 x i64> %wide.load255, ptr %next.gep253, align 8, !tbaa !176, !alias.scope !630, !noalias !631
  store <2 x i64> %wide.load256, ptr %i.cb, align 8, !tbaa !176, !alias.scope !630, !noalias !631
  store <2 x ptr> splat (ptr null), ptr %next.gep254, align 8, !tbaa !176, !alias.scope !629
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !176, !alias.scope !629
  %index.next257 = add nuw i64 %index252, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next257, %n.vec250
  br i1 %i.cc, label %middle.block258, label %vector.body251, !llvm.loop !616

middle.block258:                                  ; preds = %vector.body251
  %cmp.n259 = icmp eq i64 %i.br, %n.vec250
  br i1 %cmp.n259, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader264

.lr.ph.i.i.i.i.i.preheader264:                    ; preds = %vector.memcheck245, %.lr.ph.i.i.i.i.i.preheader, %middle.block258
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bj, %vector.memcheck245 ], [ %i.bj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bx, %middle.block258 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck245 ], [ %i.bk, %.lr.ph.i.i.i.i.i.preheader ], [ %i.by, %middle.block258 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader264, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader264 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader264 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !176, !alias.scope !628
  store i64 %i.cd, ptr %.012.i.i.i.i.i, align 8, !tbaa !176, !alias.scope !627
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !176, !alias.scope !628
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, %i.bl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !617

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block258, %.noexc27
  %.not.i8.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i8.i.i, label %_ZN4toml2v35array7reserveEm.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !195
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.bk to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cj) #51
  br label %_ZN4toml2v35array7reserveEm.exit

_ZN4toml2v35array7reserveEm.exit:                 ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i.i, %bb.bb
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !175
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 2 uses
  store ptr %i.ck, ptr %i.j, align 8, !tbaa !174
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  store ptr %i.cl, ptr %i.i, align 8, !tbaa !195
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i.i, %bb.bf
  %lpad.loopexit.split-lp275 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %21, align 8, !tbaa !176  ; 3 uses
  %.not.i28 = icmp eq ptr %i.cn, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i: ; preds = %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !76
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #50, !inline_history !19
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit

bb.bd:                                            ; preds = %_ZN4toml2v35array7reserveEm.exit, %bb.ba
  %i.cr = phi ptr [ %i.bj, %_ZN4toml2v35array7reserveEm.exit ], [ %i.bf, %bb.ba ] ; 10 uses
  %i.cs = phi ptr [ %i.cl, %_ZN4toml2v35array7reserveEm.exit ], [ %i.be, %bb.ba ] ; 4 uses
  %i.ct = phi ptr [ %i.ck, %_ZN4toml2v35array7reserveEm.exit ], [ %.pre, %bb.ba ] ; 4 uses
  %22 = ptrtoaddr ptr %i.cs to i64
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.cs
  br i1 %.not.i.i.i.i, label %bb.be, label %.thread57

.thread57:                                        ; preds = %bb.bd
  %i.cu = load i64, ptr %21, align 8, !tbaa !176
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !176
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cv, ptr %i.j, align 8, !tbaa !174
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32

bb.be:                                            ; preds = %bb.bd
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = ptrtoint ptr %i.cr to i64               ; 3 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.bf, label %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #54
          to label %.noexc47 unwind label %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.bf
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.be
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #55
          to label %.noexc48 unwind label %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  %i.di = load i64, ptr %21, align 8, !tbaa !176
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !176
  store ptr null, ptr %21, align 8, !tbaa !176
  %.not10.i.i.i.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc48
  %i.dj = add i64 %22, -8
  %i.dk = sub i64 %i.dj, %i.cx                    ; 3 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader263, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dn = and i64 %i.dk, -8
  %i.do = add i64 %i.dn, 8                        ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dg, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.cr, i64 %i.do
  %bound0 = icmp ult ptr %i.dg, %i.dq
  %bound1 = icmp ult ptr %i.cr, %i.dp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader263, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.dr = shl i64 %n.vec, 3                       ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dg, i64 %i.dr  ; 2 uses
  %i.dt = getelementptr i8, ptr %i.cr, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.du ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.cr, i64 %i.du ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.dv = getelementptr i8, ptr %next.gep233, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep233, align 8, !tbaa !176, !alias.scope !634
  %wide.load234 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !176, !alias.scope !634
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !176, !alias.scope !635, !noalias !636
  store <2 x i64> %wide.load234, ptr %i.dw, align 8, !tbaa !176, !alias.scope !635, !noalias !636
  store <2 x ptr> splat (ptr null), ptr %next.gep233, align 8, !tbaa !176, !alias.scope !634
  store <2 x ptr> splat (ptr null), ptr %i.dv, align 8, !tbaa !176, !alias.scope !634
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !624

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader263

.lr.ph.i.i.i.i.preheader263:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i.i.i.i.preheader ], [ %i.dt, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader263, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader263 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader263 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.dy = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !176, !alias.scope !633
  store i64 %i.dy, ptr %.012.i.i.i.i, align 8, !tbaa !176, !alias.scope !632
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !176, !alias.scope !633
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.dz, %i.cs
  br i1 %.not.i.i.i.i46, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !625

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc48
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dg, %.noexc48 ], [ %i.ds, %middle.block ], [ %i.ea, %.lr.ph.i.i.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cr, null
  br i1 %.not.i23.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !195
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.ee) #51
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.bg
  store ptr %i.dg, ptr %i.h, align 8, !tbaa !175
  store ptr %i.eb, ptr %i.j, align 8, !tbaa !174
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.ef, ptr %i.i, align 8, !tbaa !195
  %.pr56 = load ptr, ptr %21, align 8, !tbaa !176 ; 3 uses
  %.not.i30 = icmp eq ptr %.pr56, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31: ; preds = %bb.bh
  %i.eg = load ptr, ptr %.pr56, align 8, !tbaa !76
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(40) %.pr56) #50, !inline_history !19
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32: ; preds = %.thread57, %bb.bh, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32, %bb.ak
  %.be = phi i1 [ false, %bb.ak ], [ true, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit32 ]
  br label %.backedge, !llvm.loop !626

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i, %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.bc ], [ %lpad.loopexit.split-lp275, %.loopexit.split-lp69.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp275, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.an, %bb.aq, %bb.ay, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit, %.loopexit.split-lp.i
  %.pn17 = phi { ptr, i32 } [ %i.an, %bb.ah ], [ %i.aq, %bb.an ], [ %.pn, %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit ], [ %i.as, %bb.aq ], [ %i.bd, %bb.ay ], [ %.pn.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ej = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #50, !inline_history !19
  br label %_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35

bb.bi:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_ZNSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS2_EED2Ev.exit35: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34, %bb.f, %bb.e
  %.pn19 = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ], [ %.pn17, %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i34 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn19
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241, !nonnull !107, !noundef !107
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.e = load i64, ptr %i.c, align 8, !tbaa !156
  store i64 %i.e, ptr %i.d, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !249  ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !249
  %.not9.i = icmp eq i64 %i.h, 0
  br i1 %.not9.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !250
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.m = load i64, ptr %i.l, align 8, !tbaa !251
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.o = load i64, ptr %i.n, align 8, !tbaa !252
  %reass.sub = sub i64 %i.m, %i.g
  %i.p = add i64 %reass.sub, 1
  %i.q = add i64 %i.p, %i.o
  %i.r = urem i64 %i.q, 127
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.r
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3056 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !252  ; 4 uses
  %.not6.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.x, null               ; 2 uses
  %i.y = select i1 %.not6.i, i1 %.not7.i, i1 false
  br i1 %i.y, label %bb.f, label %bb.g, !prof !157

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !253, !nonnull !107, !align !254 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z), !inline_history !33 ; 2 uses
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !250
  br label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit

bb.g:                                             ; preds = %bb.e
  br i1 %.not7.i, label %_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread, label %bb.h

_ZN12_GLOBAL__N_120utf8_buffered_reader9read_nextEv.exit.thread: ; preds = %bb.g
  store ptr null, ptr %i.a, align 8, !tbaa !241
  br label %_ZN4toml2v34impl13is_whitespaceEDi.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ult i64 %i.v, 127
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !157

bb.i:                                             ; preds = %bb.h
  %i.af = add nuw nsw i64 %i.v, 1
  store i64 %i.af, ptr %i.u, align 8, !tbaa !252
  br label %bb.k

end_hunk_2
