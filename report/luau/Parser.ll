Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Parser?download=true
inline.NumInlined: 5874
inline.NumDeleted: 2424
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4Luau6Parser4copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.010.i.prol
  %i.x = load i8, ptr %i.w, align 1, !tbaa !44
  store i8 %i.x, ptr %i.v, align 1, !tbaa !44
  %i.y = add nuw i64 %.010.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1173

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.unr = phi i64 [ %.010.i.ph, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i.prol ]
  %i.z = icmp ult i64 %i.u, 3
  br i1 %i.z, label %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %.010.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %.010.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !44
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !44
  %i.ad = add nuw i64 %.010.i, 1                  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !44
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !44
  %i.ah = add nuw i64 %.010.i, 2                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !44
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !44
  %i.al = add nuw i64 %.010.i, 3                  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !44
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !44
  %i.ap = add nuw i64 %.010.i, 4
  %exitcond.not.i.3 = icmp eq i64 %i.al, %i.c
  br i1 %exitcond.not.i.3, label %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit, label %.lr.ph.i, !llvm.loop !1174

_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre = load i64, ptr %i.b, align 8, !tbaa !45
  br label %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit

_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit: ; preds = %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit, %bb.a
  %i.aq = phi i64 [ -1, %bb.a ], [ %.pre, %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit ]
  %i.ar = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6Parser4copyIcEENS_8AstArrayIT_EEPKS3_m.exit.loopexit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.ar, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.aq, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZN4Luau5Lexer17fixupQuotedStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4Luau5Lexer20fixupMultilineStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i64 @_ZN4Luau5Lexer17peekBraceStackTopEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEixERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !461  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !328  ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !341    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !341  ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = lshr i64 %i.m, 9
  %i.p = xor i64 %i.n, %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !218
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !341  ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !14

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !328
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = lshr i64 %i.aa, 9
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = load ptr, ptr %0, align 8, !tbaa !218   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !341 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !341 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERS7_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store i64 %i.aa, ptr %.lcssa, align 8, !tbaa !61
  %i.al = load i64, ptr %i.a, align 8, !tbaa !461
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !461
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !341 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7AstNameESt4pairIS2_PNS_8AstLocalEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN4Luau6Parser33expectAndConsumeFailWithLookaheadENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #19 align 2 {
bb.a:
  %3 = alloca %"struct.Luau::Lexeme", align 8     ; 4 uses
  tail call void @_ZN4Luau6Parser20expectAndConsumeFailENS_6Lexeme4TypeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef %1, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.a)
  %i.b = load i32, ptr %3, align 8, !tbaa !119
  %i.c = icmp eq i32 %i.b, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN4Luau6Parser28expectMatchAndConsumeRecoverEcRKNS0_11MatchLexemeEb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i8 noundef signext %1, ptr nofree nonnull readnone align 4 captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #19 align 2 {
bb.a:
  %4 = alloca %"struct.Luau::Lexeme", align 8     ; 4 uses
  %i.a = zext i8 %1 to i32                        ; 3 uses
  br i1 %3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1176 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %.01116 = load i32, ptr %i.d, align 8, !tbaa !119 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !406
  %i.g = icmp ne i32 %i.c, %i.f
  %.not17 = icmp eq i32 %.01116, %i.a             ; 2 uses
  %or.cond18 = select i1 %i.g, i1 true, i1 %.not17
  br i1 %or.cond18, label %.critedge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.b, %bb.c
  %.01119 = phi i32 [ %.011, %bb.c ], [ %.01116, %bb.b ]
  %i.h = zext i32 %.01119 to i64
  %i.i = load ptr, ptr %5, align 8, !tbaa !211
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %.critedge15

bb.c:                                             ; preds = %.lr.ph.a
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %.011 = load i32, ptr %i.d, align 8, !tbaa !119 ; 2 uses
  %i.m = load i32, ptr %i.e, align 4, !tbaa !406
  %i.n = icmp ne i32 %i.c, %i.m
  %.not = icmp eq i32 %.011, %i.a                 ; 2 uses
  %or.cond = select i1 %i.n, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %.lr.ph.a, !llvm.loop !1175

.critedge:                                        ; preds = %bb.c, %bb.b
  %.not.lcssa = phi i1 [ %.not17, %bb.b ], [ %.not, %bb.c ]
  br i1 %.not.lcssa, label %bb.d, label %.critedge15

bb.d:                                             ; preds = %.critedge
  tail call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %.critedge15

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.o)
  %i.p = load i32, ptr %4, align 8, !tbaa !119
  %i.q = icmp eq i32 %i.p, %i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %i.q, label %bb.f, label %.critedge15

bb.f:                                             ; preds = %bb.e
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %.critedge15

.critedge15:                                      ; preds = %.lr.ph.a, %bb.e, %.critedge, %bb.d, %bb.f
  %.1 = phi i1 [ true, %bb.f ], [ true, %bb.d ], [ false, %.critedge ], [ false, %bb.e ], [ false, %.lr.ph.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN4Luau6Parser41expectMatchEndAndConsumeFailWithLookaheadENS_6Lexeme4TypeERKNS0_11MatchLexemeE(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.Luau::Lexeme", align 8     ; 4 uses
  %5 = alloca %"struct.Luau::Location", align 4   ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"struct.Luau::Lexeme", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1177 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1178
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !454
  %i.g = icmp ugt i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZN4Luau6LexemeC1ERKNS_8LocationENS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.b)
  call void @_ZNK4Luau6Lexeme8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.h = load ptr, ptr %3, align 8, !tbaa !43
  %i.i = load i32, ptr %i.c, align 4, !tbaa !1178
  %i.j = add i32 %i.i, 1
  invoke void (ptr, ptr, ...) @_ZN4Luau6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.319, ptr noundef %i.h, i32 noundef %i.j)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %6, align 8, !tbaa !43
  invoke void @_ZN4Luau6Parser25expectMatchAndConsumeFailENS_6Lexeme4TypeERKNS0_11MatchLexemeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef %i.k)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %6, align 8, !tbaa !43     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !44
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.q = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !44
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !43     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !44
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ac = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !44
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4Luau6Parser25expectMatchAndConsumeFailENS_6Lexeme4TypeERKNS0_11MatchLexemeEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef null)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN4Luau5Lexer9lookaheadEv(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Lexeme") align 8 %7, ptr noundef nonnull align 8 dereferenceable(120) %i.ah)
  %i.ai = load i32, ptr %7, align 8, !tbaa !119
  %i.aj = icmp eq i32 %i.ai, %1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret i1 %i.aj
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6Parser6reportERKNS_8LocationEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK4Luau8LocationeqERKS0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -48
  %i.g = load <2 x i32>, ptr %1, align 4
  %i.h = load <2 x i32>, ptr %i.f, align 4
  %i.i = icmp eq <2 x i32> %i.g, %i.h             ; 2 uses
  %i.j = extractelement <2 x i1> %i.i, i64 0
  %i.k = extractelement <2 x i1> %i.i, i64 1
  %i.l = select i1 %i.k, i1 %i.j, i1 false
  br i1 %i.l, label %_ZNK4Luau8LocationeqERKS0_.exit, label %_ZNK4Luau8LocationeqERKS0_.exit.thread

_ZNK4Luau8LocationeqERKS0_.exit:                  ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 -40
  %i.o = load <2 x i32>, ptr %i.m, align 4
  %i.p = load <2 x i32>, ptr %i.n, align 4
end_hunk_0
