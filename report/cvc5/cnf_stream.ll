inline.NumInlined: 2861
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4cvc58internal4prop9CnfStream9handleIteENS0_12NodeTemplateILb0EEE:.critedge59
  store ptr %i.cw, ptr %4, align 8, !tbaa !118
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !119
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !107
  store i64 %i.ap, ptr %i.cw, align 8, !tbaa !76
  store i64 %i.cu, ptr %i.cz, align 8, !tbaa !76
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %i.cv, ptr %i.db, align 8, !tbaa !76
  %i.dc = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull readonly align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc114 unwind label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i108 ; 0 uses

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i108: ; preds = %.noexc109
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body110

.noexc114:                                        ; preds = %.noexc109
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.de = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 7 uses
  store ptr %i.de, ptr %3, align 8, !tbaa !118
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !119
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.df, ptr %i.di, align 8, !tbaa !107
  store i64 %i.ap, ptr %i.de, align 8, !tbaa !76
  store i64 %i.bj, ptr %i.dh, align 8, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %i.cu, ptr %i.dj, align 8, !tbaa !76
  %i.dk = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull readonly align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc119 unwind label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i113 ; 0 uses

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i113: ; preds = %.noexc114
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body110

.noexc119:                                        ; preds = %.noexc114
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dm = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 7 uses
  store ptr %i.dm, ptr %2, align 8, !tbaa !118
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !119
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !107
  store i64 %i.ap, ptr %i.dm, align 8, !tbaa !76
  store i64 %i.n, ptr %i.dp, align 8, !tbaa !76
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %i.cv, ptr %i.dr, align 8, !tbaa !76
  %i.ds = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull readonly align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.o unwind label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i118 ; 0 uses

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i118: ; preds = %.noexc119
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body110

bb.o:                                             ; preds = %.noexc119
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.p:                                             ; preds = %.critedge59
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.du, %bb.p ], [ %i.ay, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.body110

bb.q:                                             ; preds = %bb.e
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body96

.body96:                                          ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i94, %bb.q
  %eh.lpad-body97 = phi { ptr, i32 } [ %i.dv, %bb.q ], [ %i.br, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i94 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body110

bb.r:                                             ; preds = %bb.j
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body103

.body103:                                         ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i101, %bb.r
  %eh.lpad-body104 = phi { ptr, i32 } [ %i.dw, %bb.r ], [ %i.cj, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i101 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.body110

.body110:                                         ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i118, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i113, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i108, %.body103, %.body96, %.body
  %.pn50.pn.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body97, %.body96 ], [ %i.dt, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i118 ], [ %eh.lpad-body104, %.body103 ], [ %i.dl, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i113 ], [ %eh.lpad-body, %.body ], [ %i.dd, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit7.i108 ]
  resume { ptr, i32 } %.pn50.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !80 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #24
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !209

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !186
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !188
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !186    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !188
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal4prop9CnfStream19convertAndAssertAndENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef align 8 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %4 = alloca %"class.std::vector.296", align 8   ; 8 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.307", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 2                      ; 2 uses
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.v.i.i = select i1 %i.i, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.v.i.i ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = lshr i64 %i.m, 32
  %i.o = and i64 %i.n, 67108863
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.o ; 2 uses
  %.not36 = icmp eq ptr %spec.select.i.i, %i.p
  br i1 %.not36, label %.loopexit35, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.031.037 = phi ptr [ %i.r, %.lr.ph ], [ %spec.select.i.i, %bb.b ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.q = load ptr, ptr %.sroa.031.037, align 8, !tbaa !172, !noalias !272
  store ptr %i.q, ptr %3, align 8, !tbaa !122, !alias.scope !272
  call void @_ZN4cvc58internal4prop9CnfStream16convertAndAssertENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %3, i1 noundef zeroext false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.031.037, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.p
  br i1 %.not, label %.loopexit35, label %.lr.ph, !llvm.loop !275

bb.c:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.b, align 8
  %i.t = lshr i64 %i.s, 32
  %i.u = and i64 %i.t, 67108863
  %i.v = sext i1 %i.i to i64
  %i.w = add nsw i64 %i.u, %i.v                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %.noexc, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #27
  unreachable

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i64 %i.w, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i, label %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.y = shl nuw nsw i64 %i.w, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #23 ; 6 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !119
  %min.iters.check = icmp ult i64 %i.w, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i
  %n.vec = and i64 %i.w, 1152921504606846972      ; 3 uses
  %i.ac = shl nuw nsw i64 %n.vec, 3
  %i.ad = getelementptr i8, ptr %i.z, i64 %i.ac   ; 2 uses
  %i.ae = and i64 %i.w, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 -2), ptr %next.gep, align 8, !tbaa !103
  store <2 x i64> splat (i64 -2), ptr %i.ag, align 8, !tbaa !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !276

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i, %middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.z, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i ], [ %i.ad, %middle.block ]
  %.01012.i.i.i.i.i.ph = phi i64 [ %i.w, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i64 -2, ptr %.013.i.i.i.i.i, align 8, !tbaa !103
  %i.ai = add nsw i64 %.01012.i.i.i.i.i, -1       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !277

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.ad, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i ]
  %i.ak = ptrtoint ptr %i.aa to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.al = phi i64 [ 0, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.ak, %.loopexit.loopexit ] ; 2 uses
  %i.am = phi ptr [ null, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.z, %.loopexit.loopexit ] ; 7 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %.lcssa, %.loopexit.loopexit ]
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.an, align 8, !tbaa !107
  %i.ao = load ptr, ptr %1, align 8, !tbaa !122   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1023                     ; 2 uses
  %i.at = icmp eq i32 %i.as, 1023
  %i.au = select i1 %i.at, i32 -1, i32 %i.as
  %i.av = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.au)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.loopexit
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.d
  %i.aw = icmp eq i32 %i.av, 2
  %spec.select.v.i.i23 = select i1 %i.aw, i64 32, i64 24
  %spec.select.i.i24 = getelementptr inbounds nuw i8, ptr %i.ao, i64 %spec.select.v.i.i23
  br label %bb.f

._crit_edge:                                      ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE6negateEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.307") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.i unwind label %bb.o

bb.e:                                             ; preds = %.loopexit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %.lr.ph40, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.sroa.0.038 = phi ptr [ %spec.select.i.i24, %.lr.ph40 ], [ %i.bb, %bb.g ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.ay = load ptr, ptr %.sroa.0.038, align 8, !tbaa !172, !noalias !278
  store ptr %i.ay, ptr %5, align 8, !tbaa !122, !alias.scope !278
  %i.az = invoke i64 @_ZN4cvc58internal4prop9CnfStream5toCNFENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %5, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !281

bb.h:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %._crit_edge
  %i.bd = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.j unwind label %bb.p       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %6, align 8, !tbaa !125   ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = and i64 %i.bf, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bg, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.k, !prof !128

bb.k:                                             ; preds = %bb.j
  %i.bh = add i64 %i.bf, 1152920405095219200
  %i.bi = and i64 %i.bh, 1152920405095219200      ; 2 uses
  %i.bj = and i64 %i.bf, -1152920405095219201
  %i.bk = or disjoint i64 %i.bi, %i.bj
  store i64 %i.bk, ptr %i.be, align 8
  %i.bl = icmp eq i64 %i.bi, 0
  br i1 %i.bl, label %bb.l, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !128

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bo = ptrtoint ptr %i.am to i64
  %i.bp = sub i64 %i.al, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bp) #24
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.loopexit35

bb.o:                                             ; preds = %._crit_edge
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.br, %bb.p ], [ %i.bq, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %bb.q, %bb.e
  %.pn16.pn = phi { ptr, i32 } [ %i.ax, %bb.e ], [ %.pn, %bb.q ], [ %i.bc, %bb.h ]
  %.not.i.i.i26 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit27, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = ptrtoint ptr %i.am to i64
  %i.bt = sub i64 %i.al, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bt) #24
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit27

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit27: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn16.pn

.loopexit35:                                      ; preds = %.lr.ph, %bb.b, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal4prop9CnfStream16convertAndAssertENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef align 8 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %10 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.307", align 8 ; 6 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.307", align 8 ; 8 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %i.a = tail call noundef ptr @_ZNK4cvc58internal6EnvObj15resourceManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  tail call void @_ZN4cvc58internal15ResourceManager13spendResourceENS0_8ResourceE(ptr noundef nonnull align 8 dereferenceable(3560) %i.a, i32 noundef 5)
  %i.b = load ptr, ptr %1, align 8, !tbaa !122    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 1023
  switch i32 %i.f, label %bb.r [
    i32 21, label %bb.b
    i32 23, label %bb.c
    i32 24, label %bb.d
    i32 22, label %bb.e
    i32 25, label %bb.f
    i32 20, label %bb.g
    i32 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !122
  call void @_ZN4cvc58internal4prop9CnfStream19convertAndAssertAndENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %4, i1 noundef zeroext %2)
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  store ptr %i.b, ptr %5, align 8, !tbaa !122
  call void @_ZN4cvc58internal4prop9CnfStream18convertAndAssertOrENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %5, i1 noundef zeroext %2)
  br label %bb.aq

bb.d:                                             ; preds = %bb.a
  store ptr %i.b, ptr %6, align 8, !tbaa !122
  call void @_ZN4cvc58internal4prop9CnfStream19convertAndAssertXorENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %6, i1 noundef zeroext %2)
  br label %bb.aq

bb.e:                                             ; preds = %bb.a
  store ptr %i.b, ptr %7, align 8, !tbaa !122
  call void @_ZN4cvc58internal4prop9CnfStream23convertAndAssertImpliesENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %7, i1 noundef zeroext %2)
  br label %bb.aq

bb.f:                                             ; preds = %bb.a
  store ptr %i.b, ptr %8, align 8, !tbaa !122
  call void @_ZN4cvc58internal4prop9CnfStream19convertAndAssertIteENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %8, i1 noundef zeroext %2)
  br label %bb.aq

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.g = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 20), !noalias !282
  %i.h = icmp eq i32 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = zext i1 %i.h to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172, !noalias !282
  store ptr %i.l, ptr %9, align 8, !tbaa !122, !alias.scope !282
  %i.m = xor i1 %2, true
  call void @_ZN4cvc58internal4prop9CnfStream16convertAndAssertENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %9, i1 noundef zeroext %i.m)
  br label %bb.aq

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.n = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 5), !noalias !285
  %i.o = icmp eq i32 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = zext i1 %i.o to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !172, !noalias !285
  store ptr %i.s, ptr %11, align 8, !tbaa !122, !alias.scope !285
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %11, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isBooleanEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %10, align 8, !tbaa !167   ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = and i64 %i.v, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.w, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.k, !prof !128

bb.k:                                             ; preds = %bb.j
  %i.x = add i64 %i.v, 1152920405095219200
  %i.y = and i64 %i.x, 1152920405095219200        ; 2 uses
  %i.z = and i64 %i.v, -1152920405095219201
  %i.aa = or disjoint i64 %i.y, %i.z
  store i64 %i.aa, ptr %i.u, align 8
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %bb.l, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !128

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal4prop9CnfStream16convertAndAssertENS0_12NodeTemplateILb0EEEb:bb.a
  br i1 %.not.i.i23, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.y, !prof !128

bb.y:                                             ; preds = %bb.x
  %i.aw = add i64 %i.au, 1152920405095219200
  %i.ax = and i64 %i.aw, 1152920405095219200      ; 2 uses
  %i.ay = and i64 %i.au, -1152920405095219201
  %i.az = or disjoint i64 %i.ax, %i.ay
  store i64 %i.az, ptr %i.ag, align 8
  %i.ba = icmp eq i64 %i.ax, 0
  br i1 %i.ba, label %bb.z, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !128

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge unwind label %bb.ah

._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge: ; preds = %bb.z
  %.pre32 = load ptr, ptr %14, align 8, !tbaa !125
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge, %bb.y, %bb.x
  %i.bb = phi ptr [ %.pre32, %._ZN4cvc58internal4expr9NodeValue3decEv.exit.i_crit_edge ], [ %i.at, %bb.y ], [ %i.at, %bb.x ] ; 8 uses
  store ptr %i.bb, ptr %13, align 8, !tbaa !125
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = lshr i64 %i.bc, 40
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = and i32 %i.be, 1048575                  ; 3 uses
  %i.bg = icmp samesign ult i32 %i.bf, 1048574
  br i1 %i.bg, label %bb.aa, label %bb.ab, !prof !127

bb.aa:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bh = add nuw nsw i32 %i.bf, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 40
  %i.bk = and i64 %i.bc, -1152920405095219201
  %i.bl = or i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.bb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.ab:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bm = icmp eq i32 %i.bf, 1048574
  br i1 %i.bm, label %bb.ac, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !128

bb.ac:                                            ; preds = %bb.ab
  %i.bn = or i64 %i.bc, 1152920405095219200
  store i64 %i.bn, ptr %i.bb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.ah

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.ab, %bb.aa, %bb.w, %bb.ac
  %i.bo = phi ptr [ %i.bb, %bb.ab ], [ %i.bb, %bb.aa ], [ %i.ag, %bb.w ], [ %i.bb, %bb.ac ]
  %i.bp = load ptr, ptr %14, align 8, !tbaa !125  ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.br = and i64 %i.bq, 1152920405095219200
  %.not.i.i25 = icmp eq i64 %i.br, 1152920405095219200
  br i1 %.not.i.i25, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ad, !prof !128

bb.ad:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.bs = add i64 %i.bq, 1152920405095219200
  %i.bt = and i64 %i.bs, 1152920405095219200      ; 2 uses
  %i.bu = and i64 %i.bq, -1152920405095219201
  %i.bv = or disjoint i64 %i.bt, %i.bu
  store i64 %i.bv, ptr %i.bp, align 8
  %i.bw = icmp eq i64 %i.bt, 0
  br i1 %i.bw, label %bb.ae, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !128

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.aj

bb.ag:                                            ; preds = %bb.v
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac, %bb.z
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn17 = phi { ptr, i32 } [ %i.ca, %bb.ah ], [ %i.bz, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.body

bb.aj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.cb = phi ptr [ %i.bo, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %i.ag, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit ] ; 3 uses
  %i.cc = load ptr, ptr %1, align 8, !tbaa !122
  store ptr %i.cc, ptr %15, align 8, !tbaa !122
  %i.cd = invoke i64 @_ZN4cvc58internal4prop9CnfStream5toCNFENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %15, i1 noundef zeroext %2)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ce = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23
          to label %.noexc27 unwind label %bb.ap  ; 5 uses

.noexc27:                                         ; preds = %bb.ak
  store ptr %i.ce, ptr %3, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !119
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !107
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !76
  %i.ci = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull readonly align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.al unwind label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit5.i ; 0 uses

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit5.i: ; preds = %.noexc27
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

bb.al:                                            ; preds = %.noexc27
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ck = load i64, ptr %i.cb, align 8            ; 3 uses
  %i.cl = and i64 %i.ck, 1152920405095219200
  %.not.i.i28 = icmp eq i64 %i.cl, 1152920405095219200
  br i1 %.not.i.i28, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30, label %bb.am, !prof !128

bb.am:                                            ; preds = %bb.al
  %i.cm = add i64 %i.ck, 1152920405095219200
  %i.cn = and i64 %i.cm, 1152920405095219200      ; 2 uses
  %i.co = and i64 %i.ck, -1152920405095219201
  %i.cp = or disjoint i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.cb, align 8
  %i.cq = icmp eq i64 %i.cn, 0
  br i1 %i.cq, label %bb.an, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30, !prof !128

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30: ; preds = %bb.al, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak, %bb.aj
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ap, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit5.i, %bb.ai
  %.pn19 = phi { ptr, i32 } [ %.pn17, %bb.ai ], [ %i.ct, %bb.ap ], [ %i.cj, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit5.i ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ar

bb.aq:                                            ; preds = %bb.n, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit30
  ret void

bb.ar:                                            ; preds = %.body, %bb.q
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %.body ], [ %.pn, %bb.q ]
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal4prop9CnfStream18convertAndAssertOrENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr nofree noundef readonly align 8 captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.296", align 8   ; 8 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 2                      ; 2 uses
  br i1 %2, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8
  %i.k = lshr i64 %i.j, 32
  %i.l = and i64 %i.k, 67108863
  %i.m = sext i1 %i.i to i64
  %i.n = add nsw i64 %i.l, %i.m                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.o = icmp ugt i64 %i.n, 1152921504606846975
  br i1 %i.o, label %.noexc, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #27
  unreachable

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.n, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i, label %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.loopexit33

_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 6 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.n ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !119
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i
  %n.vec = and i64 %i.n, 1152921504606846972      ; 3 uses
  %i.t = shl nuw nsw i64 %n.vec, 3
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t     ; 2 uses
  %i.v = and i64 %i.n, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 -2), ptr %next.gep, align 8, !tbaa !103
  store <2 x i64> splat (i64 -2), ptr %i.x, align 8, !tbaa !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !288

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit33.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i, %middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i ], [ %i.u, %middle.block ]
  %.01012.i.i.i.i.i.ph = phi i64 [ %i.n, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.i ], [ %i.v, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i64 -2, ptr %.013.i.i.i.i.i, align 8, !tbaa !103
  %i.z = add nsw i64 %.01012.i.i.i.i.i, -1        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit33.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !289

.loopexit33.loopexit:                             ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.u, %middle.block ], [ %i.aa, %.lr.ph.i.i.i.i.i ]
  %i.ab = ptrtoint ptr %i.r to i64
  br label %.loopexit33

.loopexit33:                                      ; preds = %.loopexit33.loopexit, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.ac = phi i64 [ 0, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.ab, %.loopexit33.loopexit ] ; 2 uses
  %i.ad = phi ptr [ null, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.q, %.loopexit33.loopexit ] ; 7 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %.lcssa, %.loopexit33.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !107
  %i.af = load ptr, ptr %1, align 8, !tbaa !122   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1023                     ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1023
  %i.al = select i1 %i.ak, i32 -1, i32 %i.aj
  %i.am = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.al)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.loopexit33
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.an = icmp eq i32 %i.am, 2
  %spec.select.v.i.i = select i1 %i.an, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 %spec.select.v.i.i
  br label %bb.e

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %i.ao = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %.loopexit33
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.sroa.029.034 = phi ptr [ %spec.select.i.i, %.lr.ph ], [ %i.at, %bb.f ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.aq = load ptr, ptr %.sroa.029.034, align 8, !tbaa !172, !noalias !290
  store ptr %i.aq, ptr %4, align 8, !tbaa !122, !alias.scope !290
  %i.ar = invoke i64 @_ZN4cvc58internal4prop9CnfStream5toCNFENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %4, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.029.034, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !293

bb.g:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = ptrtoint ptr %i.ad to i64
  %i.aw = sub i64 %i.ac, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.aw) #24
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit

bb.j:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.d ], [ %i.ax, %bb.j ], [ %i.au, %bb.g ]
  %.not.i.i.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = ptrtoint ptr %i.ad to i64
  %i.az = sub i64 %i.ac, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.az) #24
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit23

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit23: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn

bb.m:                                             ; preds = %bb.a
  %spec.select.v.i.i24 = select i1 %i.i, i64 32, i64 24
  %spec.select.i.i25 = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.v.i.i24 ; 2 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !122   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = lshr i64 %i.bd, 32
  %i.bf = and i64 %i.be, 67108863
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bf ; 2 uses
  %.not36 = icmp eq ptr %spec.select.i.i25, %i.bg
  br i1 %.not36, label %.loopexit, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.m, %.lr.ph39
  %.sroa.026.037 = phi ptr [ %i.bi, %.lr.ph39 ], [ %spec.select.i.i25, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.bh = load ptr, ptr %.sroa.026.037, align 8, !tbaa !172, !noalias !294
  store ptr %i.bh, ptr %5, align 8, !tbaa !122, !alias.scope !294
  call void @_ZN4cvc58internal4prop9CnfStream16convertAndAssertENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %5, i1 noundef zeroext true)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.026.037, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.bg
  br i1 %.not, label %.loopexit, label %.lr.ph39, !llvm.loop !297

.loopexit:                                        ; preds = %.lr.ph39, %bb.m, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal4prop9CnfStream19convertAndAssertXorENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef align 8 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %5 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %6 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %9 = alloca %"class.std::vector.296", align 8   ; 7 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.307", align 8 ; 6 uses
  %11 = alloca %"class.std::vector.296", align 8  ; 7 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.307", align 8 ; 6 uses
  br i1 %2, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.a = load ptr, ptr %1, align 8, !tbaa !122, !noalias !298 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noalias !298
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g), !noalias !298
  %i.i = icmp eq i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = zext i1 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !172, !noalias !298
  store ptr %i.m, ptr %3, align 8, !tbaa !122, !alias.scope !298
  %i.n = call i64 @_ZN4cvc58internal4prop9CnfStream5toCNFENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %3, i1 noundef zeroext false) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.o = load ptr, ptr %1, align 8, !tbaa !122, !noalias !301 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !301
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 1023                       ; 2 uses
  %i.t = icmp eq i32 %i.s, 1023
  %i.u = select i1 %i.t, i32 -1, i32 %i.s
  %i.v = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.u), !noalias !301
  %i.w = icmp eq i32 %i.v, 2
  %spec.select.i.i = select i1 %i.w, i64 2, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %spec.select.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !172, !noalias !301
  store ptr %i.z, ptr %4, align 8, !tbaa !122, !alias.scope !301
  %i.aa = call i64 @_ZN4cvc58internal4prop9CnfStream5toCNFENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 %4, i1 noundef zeroext false) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ab = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc unwind label %bb.d     ; 7 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.ab, ptr %5, align 8, !tbaa !118
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !119
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !107
  %i.ah = xor i64 %i.n, 1
  store i64 %i.ah, ptr %i.ab, align 8, !tbaa !76
  %i.ai = xor i64 %i.aa, 1
  store i64 %i.ai, ptr %i.ae, align 8, !tbaa !76
  %i.aj = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ak = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc43 unwind label %bb.f   ; 7 uses

.noexc43:                                         ; preds = %bb.c
  store ptr %i.ak, ptr %6, align 8, !tbaa !118
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !119
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !107
  store i64 %i.n, ptr %i.ak, align 8, !tbaa !76
  store i64 %i.aa, ptr %i.an, align 8, !tbaa !76
  %i.aq = invoke noundef zeroext i1 @_ZN4cvc58internal4prop9CnfStream12assertClauseENS0_12NodeTemplateILb0EEERSt6vectorINS1_10SatLiteralESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit46 unwind label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit48 ; 0 uses

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit46: ; preds = %.noexc43
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ac

bb.d:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %.noexc
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit50

bb.f:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit48: ; preds = %.noexc43
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 16) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit48, %bb.f
  %.pn = phi { ptr, i32 } [ %i.au, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit48 ], [ %i.at, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit50

_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit50: ; preds = %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.as, %bb.e ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 16) #24
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit50, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN4cvc58internal4prop10SatLiteralESaIS3_EED2Ev.exit50 ], [ %i.ar, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ad

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
end_hunk_1
begin_hunk_2_@_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_:bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
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
  tail call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !383    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #27
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !125    ; 5 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !125
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = lshr i64 %i.s, 40
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 1048575                    ; 3 uses
  %i.w = icmp samesign ult i32 %i.v, 1048574
  br i1 %i.w, label %bb.c, label %bb.d, !prof !127

bb.c:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.x = add nuw nsw i32 %i.v, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 40
  %i.aa = and i64 %i.s, -1152920405095219201
  %i.ab = or i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.r, align 8
  br label %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp eq i32 %i.v, 1048574
  br i1 %i.ac, label %bb.e, label %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit, !prof !128

bb.e:                                             ; preds = %bb.d
  %i.ad = or i64 %i.s, 1152920405095219200
  store i64 %i.ad, ptr %i.r, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit unwind label %bb.k

_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit: ; preds = %bb.d, %bb.c, %bb.e
  %i.ae = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit unwind label %bb.j

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.af)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 unwind label %bb.k

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 ] ; 2 uses
  %i.ah = load ptr, ptr %.05.i.i, align 8, !tbaa !125 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = and i64 %i.ai, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.aj, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, label %bb.f, !prof !128

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = add i64 %i.ai, 1152920405095219200
  %i.al = and i64 %i.ak, 1152920405095219200      ; 2 uses
  %i.am = and i64 %i.ai, -1152920405095219201
  %i.an = or disjoint i64 %i.al, %i.am
  store i64 %i.an, ptr %i.ah, align 8
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %bb.g, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, !prof !128

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !386

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !387
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.av) #24
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !383
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !385
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !387
  ret void

bb.j:                                             ; preds = %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #25 ; 0 uses
  tail call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #25
  br label %bb.m

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %bb.e
  %.0.ph = phi ptr [ %i.p, %bb.e ], [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %i.az) #25 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.ph)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %bb.j, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #24
  invoke void @__cxa_rethrow() #27
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bb

bb.o:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !15, i64 16}
!11 = !{!"_ZTSN4cvc58internal4prop9CnfStreamE", !12, i64 0, !15, i64 16, !16, i64 24, !30, i64 104, !33, i64 160, !35, i64 216, !37, i64 272, !38, i64 280, !39, i64 288, !28, i64 320, !42, i64 328, !43, i64 336}
!12 = !{!"_ZTSN4cvc58internal6EnvObjE", !13, i64 8}
!13 = !{!"p1 _ZTSN4cvc58internal3EnvE", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTSN4cvc58internal4prop9SatSolverE", !14, i64 0}
!16 = !{!"_ZTSN4cvc57context6CDListINS_8internal12NodeTemplateILb0EEENS0_14DefaultCleanUpIS4_EESaIS4_EEE", !17, i64 0, !22, i64 40, !27, i64 64, !28, i64 72, !29, i64 73}
!17 = !{!"_ZTSN4cvc57context10ContextObjE", !18, i64 8, !19, i64 16, !19, i64 24, !20, i64 32}
!18 = !{!"p1 _ZTSN4cvc57context5ScopeE", !14, i64 0}
!19 = !{!"p1 _ZTSN4cvc57context10ContextObjE", !14, i64 0}
!20 = !{!"p2 _ZTSN4cvc57context10ContextObjE", !21, i64 0}
!21 = !{!"any p2 pointer", !14, i64 0}
!22 = !{!"_ZTSSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSN4cvc58internal12NodeTemplateILb0EEE", !14, i64 0}
!27 = !{!"long", !6, i64 0}
!28 = !{!"bool", !6, i64 0}
!29 = !{!"_ZTSN4cvc57context14DefaultCleanUpINS_8internal12NodeTemplateILb0EEEEE"}
!30 = !{!"_ZTSN4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EEE", !31, i64 0}
!31 = !{!"_ZTSN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE", !17, i64 0, !32, i64 40, !27, i64 48}
!32 = !{!"p1 _ZTSN4cvc57context13InsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE", !14, i64 0}
!33 = !{!"_ZTSN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEENS2_4prop10SatLiteralESt4hashIS4_EEE", !17, i64 0, !34, i64 40, !27, i64 48}
!34 = !{!"p1 _ZTSN4cvc57context13InsertHashMapINS_8internal12NodeTemplateILb1EEENS2_4prop10SatLiteralESt4hashIS4_EEE", !14, i64 0}
!35 = !{!"_ZTSN4cvc57context15CDInsertHashMapINS_8internal4prop10SatLiteralENS2_12NodeTemplateILb0EEENS3_22SatLiteralHashFunctionEEE", !17, i64 0, !36, i64 40, !27, i64 48}
!36 = !{!"p1 _ZTSN4cvc57context13InsertHashMapINS_8internal4prop10SatLiteralENS2_12NodeTemplateILb0EEENS3_22SatLiteralHashFunctionEEE", !14, i64 0}
!37 = !{!"_ZTSN4cvc58internal4prop16FormulaLitPolicyE", !6, i64 0}
!38 = !{!"p1 _ZTSN4cvc58internal4prop9RegistrarE", !14, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !40, i64 0, !27, i64 8, !6, i64 16}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !41, i64 0}
!41 = !{!"p1 omnipotent char", !14, i64 0}
!42 = !{!"p1 _ZTSN4cvc58internal15ResourceManagerE", !14, i64 0}
!43 = !{!"_ZTSN4cvc58internal4prop9CnfStream10StatisticsE", !44, i64 0, !46, i64 8}
!44 = !{!"_ZTSN4cvc58internal9TimerStatE", !45, i64 0}
!45 = !{!"p1 _ZTSN4cvc58internal19StatisticTimerValueE", !14, i64 0}
!46 = !{!"_ZTSN4cvc58internal7IntStatE", !47, i64 0}
!47 = !{!"_ZTSN4cvc58internal9ValueStatIlEE", !48, i64 0}
!48 = !{!"p1 _ZTSN4cvc58internal20StatisticBackedValueIlEE", !14, i64 0}
!49 = !{!16, !28, i64 72}
!50 = !{!51, !52, i64 0}
!51 = !{!"_ZTSSt10_HashtableIKN4cvc58internal12NodeTemplateILb1EEESt4pairIS4_KbESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !52, i64 0, !27, i64 8, !53, i64 16, !27, i64 24, !55, i64 32, !54, i64 48}
!52 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !21, i64 0}
!53 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !54, i64 0}
!54 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!55 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !56, i64 0, !27, i64 8}
!56 = !{!"float", !6, i64 0}
!57 = !{!51, !27, i64 8}
!58 = !{!55, !56, i64 0}
!59 = !{!31, !32, i64 40}
!60 = !{!31, !27, i64 48}
!61 = !{!62, !52, i64 0}
!62 = !{!"_ZTSSt10_HashtableIKN4cvc58internal12NodeTemplateILb1EEESt4pairIS4_KNS1_4prop10SatLiteralEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !52, i64 0, !27, i64 8, !53, i64 16, !27, i64 24, !55, i64 32, !54, i64 48}
!63 = !{!62, !27, i64 8}
!64 = !{!33, !34, i64 40}
!65 = !{!33, !27, i64 48}
!66 = !{!67, !52, i64 0}
!67 = !{!"_ZTSSt10_HashtableIKN4cvc58internal4prop10SatLiteralESt4pairIS4_KNS1_12NodeTemplateILb0EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS4_ENS2_22SatLiteralHashFunctionENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !52, i64 0, !27, i64 8, !53, i64 16, !27, i64 24, !55, i64 32, !54, i64 48}
!68 = !{!67, !27, i64 8}
!69 = !{!35, !36, i64 40}
!70 = !{!35, !27, i64 48}
!71 = !{!11, !37, i64 272}
!72 = !{!11, !38, i64 280}
!73 = !{!40, !41, i64 0}
!74 = !{!39, !41, i64 0}
!75 = !{!39, !27, i64 8}
!76 = !{!27, !27, i64 0}
!77 = !{!6, !6, i64 0}
!78 = !{!11, !28, i64 320}
!79 = !{!67, !54, i64 16}
!80 = !{!53, !54, i64 0}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!84, !85, i64 0}
!84 = !{!"_ZTSNSt11_Deque_baseIN4cvc58internal4prop10SatLiteralESaIS3_EE16_Deque_impl_dataE", !85, i64 0, !27, i64 8, !86, i64 16, !86, i64 48}
!85 = !{!"p2 _ZTSN4cvc58internal4prop10SatLiteralE", !21, i64 0}
!86 = !{!"_ZTSSt15_Deque_iteratorIN4cvc58internal4prop10SatLiteralERS3_PS3_E", !87, i64 0, !87, i64 8, !87, i64 16, !85, i64 24}
!87 = !{!"p1 _ZTSN4cvc58internal4prop10SatLiteralE", !14, i64 0}
!88 = !{!84, !85, i64 40}
!89 = !{!84, !85, i64 72}
!90 = !{!87, !87, i64 0}
!91 = distinct !{!91, !82}
!92 = !{!84, !27, i64 8}
!93 = !{i8 0, i8 2}
!94 = !{}
!95 = !{!25, !26, i64 0}
!96 = !{!16, !27, i64 64}
!97 = !{!26, !26, i64 0}
!98 = !{!25, !26, i64 8}
!99 = !{!25, !26, i64 16}
!100 = !{!101, !52, i64 0}
!101 = !{!"_ZTSSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !52, i64 0, !27, i64 8, !53, i64 16, !27, i64 24, !55, i64 32, !54, i64 48}
!102 = !{!101, !27, i64 8}
!103 = !{!104, !27, i64 0}
!104 = !{!"_ZTSN4cvc58internal4prop10SatLiteralE", !27, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEEE", !14, i64 0}
!107 = !{!108, !87, i64 8}
!108 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal4prop10SatLiteralESaIS3_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZSt19__relocate_object_aIN4cvc58internal4prop10SatLiteralES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!111 = distinct !{!111, !"_ZSt19__relocate_object_aIN4cvc58internal4prop10SatLiteralES3_SaIS3_EEvPT_PT0_RT1_"}
!112 = !{!113}
!113 = distinct !{!113, !111, !"_ZSt19__relocate_object_aIN4cvc58internal4prop10SatLiteralES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!114 = distinct !{!114, !82, !115, !116}
!115 = !{!"llvm.loop.isvectorized", i32 1}
!116 = !{!"llvm.loop.unroll.runtime.disable"}
!117 = distinct !{!117, !82, !115}
!118 = !{!108, !87, i64 0}
!119 = !{!108, !87, i64 16}
!120 = !{!101, !54, i64 16}
!121 = distinct !{!121, !82}
!122 = !{!123, !124, i64 0}
!123 = !{!"_ZTSN4cvc58internal12NodeTemplateILb0EEE", !124, i64 0}
!124 = !{!"p1 _ZTSN4cvc58internal4expr9NodeValueE", !14, i64 0}
!125 = !{!126, !124, i64 0}
!126 = !{!"_ZTSN4cvc58internal12NodeTemplateILb1EEE", !124, i64 0}
!127 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!128 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!129 = !{!62, !27, i64 24}
!130 = distinct !{!130, !82}
!131 = !{!54, !54, i64 0}
!132 = !{!133, !27, i64 0}
!133 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !27, i64 0}
!134 = distinct !{!134, !82}
!135 = !{!67, !27, i64 24}
!136 = distinct !{!136, !82}
!137 = distinct !{!137, !82}
!138 = !{!17, !18, i64 8}
!139 = !{!140, !141, i64 0}
!140 = !{!"_ZTSN4cvc57context5ScopeE", !141, i64 0, !142, i64 8, !5, i64 16, !19, i64 24, !143, i64 32}
!141 = !{!"p1 _ZTSN4cvc57context7ContextE", !14, i64 0}
!142 = !{!"p1 _ZTSN4cvc57context20ContextMemoryManagerE", !14, i64 0}
!143 = !{!"_ZTSSt6vectorIPN4cvc57context10ContextObjESaIS3_EE", !144, i64 0}
!144 = !{!"_ZTSSt12_Vector_baseIPN4cvc57context10ContextObjESaIS3_EE", !145, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseIPN4cvc57context10ContextObjESaIS3_EE12_Vector_implE", !146, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseIPN4cvc57context10ContextObjESaIS3_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!147 = !{!148, !148, i64 0}
!148 = !{!"p2 _ZTSN4cvc57context5ScopeE", !21, i64 0}
!149 = !{!18, !18, i64 0}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZSt9make_pairIRKN4cvc58internal4prop10SatLiteralERKNS1_12NodeTemplateILb0EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_: argument 0"}
!152 = distinct !{!152, !"_ZSt9make_pairIRKN4cvc58internal4prop10SatLiteralERKNS1_12NodeTemplateILb0EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_"}
!153 = !{!84, !87, i64 48}
!154 = !{!84, !87, i64 64}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZNK4cvc58internal12NodeTemplateILb0EE7notNodeEv: argument 0"}
!157 = distinct !{!157, !"_ZNK4cvc58internal12NodeTemplateILb0EE7notNodeEv"}
!158 = !{!159, !156}
!159 = distinct !{!159, !160, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE: argument 0"}
!160 = distinct !{!160, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE"}
!161 = !{!162, !163, i64 16}
!162 = !{!"_ZTSN4cvc58internal4expr9NodeValueE", !27, i64 0, !5, i64 5, !5, i64 8, !5, i64 12, !163, i64 16, !6, i64 24}
!163 = !{!"p1 _ZTSN4cvc58internal11NodeManagerE", !14, i64 0}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_ZSt9make_pairIRKN4cvc58internal4prop10SatLiteralERKNS1_12NodeTemplateILb0EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_: argument 0"}
!166 = distinct !{!166, !"_ZSt9make_pairIRKN4cvc58internal4prop10SatLiteralERKNS1_12NodeTemplateILb0EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSB_INSC_IT0_E4typeEE6__typeEEOSD_OSI_"}
end_hunk_2
